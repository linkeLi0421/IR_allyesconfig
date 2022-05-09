; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vhci_hcd.c_pt.bc'
source_filename = "../drivers/usb/usbip/vhci_hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.anon.81 = type <{ %struct.usb_bos_descriptor, %struct.usb_ss_cap_descriptor }>
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.vhci_device = type { ptr, i32, i32, i32, %struct.usbip_device, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.vhci_hcd = type { ptr, [8 x i32], i8, i32, %struct.atomic_t, [8 x %struct.vhci_device] }
%struct.vhci = type { %struct.spinlock, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.vhci_priv = type { i32, %struct.list_head, ptr, ptr }
%struct.vhci_unlink = type { i32, %struct.list_head, i32 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.78 }>
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { [4 x i8], [4 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }

@vhci_num_controllers = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@usbip_debug_flag = external dso_local local_unnamed_addr global i32, align 4
@rh_port_connect.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rh_port_connect\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/usbip/vhci_hcd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rh_port_connect %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vhci_hcd: %s:%d: rh_port_connect %d\0A\00", [59 x i8] zeroinitializer }, align 32
@vhci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vhci_hcd_probe, ptr @vhci_hcd_remove, ptr null, ptr @vhci_hcd_suspend, ptr @vhci_hcd_resume, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vhcis = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_vhci_hcd__287_1574_vhci_hcd_init6 = internal global ptr @vhci_hcd_init, section ".initcall6.init", align 4
@__exitcall_vhci_hcd_exit = internal global ptr @vhci_hcd_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author288 = internal constant [35 x i8] c"vhci_hcd.author=Takahiro Hirofuchi\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [68 x i8] c"vhci_hcd.description=USB/IP 'Virtual' Host Controller (VHCI) Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [41 x i8] c"vhci_hcd.file=drivers/usb/usbip/vhci-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [21 x i8] c"vhci_hcd.license=GPL\00", section ".modinfo", align 1
@platform_bus = external dso_local global %struct.device, align 8
@driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@vhci_hcd_probe.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vhci_hcd_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"name %s id %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vhci_hcd: %s:%d: name %s id %d\0A\00", [32 x i8] zeroinitializer }, align 32
@vhci_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @driver_name, ptr @driver_desc, i32 3120, ptr null, i32 68, ptr @vhci_setup, ptr @vhci_start, ptr null, ptr null, ptr @vhci_stop, ptr null, ptr @vhci_get_frame_number, ptr @vhci_urb_enqueue, ptr @vhci_urb_dequeue, ptr null, ptr null, ptr null, ptr null, ptr @vhci_hub_status, ptr @vhci_hub_control, ptr @vhci_bus_suspend, ptr @vhci_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vhci_alloc_streams, ptr @vhci_free_streams, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hcd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013vhci_hcd: %s:%d: create primary hcd failed\0A\00", [50 x i8] zeroinitializer }, align 32
@vhci_hcd_probe._entry_ptr = internal global ptr @vhci_hcd_probe._entry, section ".printk_index", align 4
@vhci_hcd_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013vhci_hcd: %s:%d: usb_add_hcd hs failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@vhci_hcd_probe._entry_ptr.11 = internal global ptr @vhci_hcd_probe._entry.9, section ".printk_index", align 4
@vhci_hcd_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013vhci_hcd: %s:%d: create shared hcd failed\0A\00", [51 x i8] zeroinitializer }, align 32
@vhci_hcd_probe._entry_ptr.14 = internal global ptr @vhci_hcd_probe._entry.12, section ".printk_index", align 4
@vhci_hcd_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013vhci_hcd: %s:%d: usb_add_hcd ss failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@vhci_hcd_probe._entry_ptr.17 = internal global ptr @vhci_hcd_probe._entry.15, section ".printk_index", align 4
@vhci_hcd_probe.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.18, i8 1, i8 89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bye\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vhci_hcd: %s:%d: bye\0A\00", [42 x i8] zeroinitializer }, align 32
@driver_desc = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"USB/IP Virtual Host Controller\00", [33 x i8] zeroinitializer }, align 32
@vhci_start.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vhci_start\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enter vhci_start\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vhci_hcd: %s:%d: enter vhci_start\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vhci_hcd->vhci->lock\00", [42 x i8] zeroinitializer }, align 32
@vhci_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013vhci_hcd: %s:%d: invalid vhci name %s\0A\00", [55 x i8] zeroinitializer }, align 32
@vhci_start._entry_ptr = internal global ptr @vhci_start._entry, section ".printk_index", align 4
@vhci_start._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.2, i32 1210, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"init attr group failed, err = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vhci_start._entry_ptr.29 = internal global ptr @vhci_start._entry.25, section ".printk_index", align 4
@vhci_attr_group = external dso_local global %struct.attribute_group, align 4
@vhci_start._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.2, i32 1215, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"create sysfs files failed, err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@vhci_start._entry_ptr.32 = internal global ptr @vhci_start._entry.30, section ".printk_index", align 4
@vhci_start._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016vhci_hcd: %s:%d: created sysfs %s\0A\00", [59 x i8] zeroinitializer }, align 32
@vhci_start._entry_ptr.35 = internal global ptr @vhci_start._entry.33, section ".printk_index", align 4
@vhci_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vdev->ud.lock\00", [17 x i8] zeroinitializer }, align 32
@vhci_device_init.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&vdev->ud.sysfs_lock\00", [43 x i8] zeroinitializer }, align 32
@vhci_device_init.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vdev->priv_lock\00", [47 x i8] zeroinitializer }, align 32
@vhci_device_init.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vdev->waitq_tx\00", [16 x i8] zeroinitializer }, align 32
@vhci_shutdown_connection.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -2, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vhci_shutdown_connection\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"shutdown tcp_socket %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"vhci_hcd: %s:%d: shutdown tcp_socket %d\0A\00", [55 x i8] zeroinitializer }, align 32
@vhci_shutdown_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.2, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016vhci_hcd: %s:%d: stop threads\0A\00", [63 x i8] zeroinitializer }, align 32
@vhci_shutdown_connection._entry_ptr = internal global ptr @vhci_shutdown_connection._entry, section ".printk_index", align 4
@vhci_shutdown_connection._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016vhci_hcd: %s:%d: release socket\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_shutdown_connection._entry_ptr.49 = internal global ptr @vhci_shutdown_connection._entry.47, section ".printk_index", align 4
@vhci_shutdown_connection._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016vhci_hcd: %s:%d: disconnect device\0A\00", [58 x i8] zeroinitializer }, align 32
@vhci_shutdown_connection._entry_ptr.52 = internal global ptr @vhci_shutdown_connection._entry.50, section ".printk_index", align 4
@rh_port_disconnect.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 48, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rh_port_disconnect\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rh_port_disconnect %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vhci_hcd: %s:%d: rh_port_disconnect %d\0A\00", [56 x i8] zeroinitializer }, align 32
@vhci_stop.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 1, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vhci_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stop VHCI controller\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vhci_hcd: %s:%d: stop VHCI controller\0A\00", [57 x i8] zeroinitializer }, align 32
@vhci_get_frame_number._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vhci_get_frame_number = private unnamed_addr constant [22 x i8] c"vhci_get_frame_number\00", align 1
@vhci_get_frame_number._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @__func__.vhci_get_frame_number, ptr @.str.2, i32 1250, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not yet implemented\0A\00", [43 x i8] zeroinitializer }, align 32
@vhci_get_frame_number._entry_ptr = internal global ptr @vhci_get_frame_number._entry, section ".printk_index", align 4
@vhci_urb_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013vhci_hcd: %s:%d: invalid port number %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vhci_urb_enqueue\00", [47 x i8] zeroinitializer }, align 32
@vhci_urb_enqueue._entry_ptr = internal global ptr @vhci_urb_enqueue._entry, section ".printk_index", align 4
@vhci_urb_enqueue.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 -79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Null URB transfer buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@vhci_urb_enqueue._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.2, i32 718, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"URB already unlinked!, status %d\0A\00", [62 x i8] zeroinitializer }, align 32
@vhci_urb_enqueue._entry_ptr.66 = internal global ptr @vhci_urb_enqueue._entry.64, section ".printk_index", align 4
@vhci_urb_enqueue._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.62, ptr @.str.2, i32 727, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enqueue for inactive port %d\0A\00", [34 x i8] zeroinitializer }, align 32
@vhci_urb_enqueue._entry_ptr.69 = internal global ptr @vhci_urb_enqueue._entry.67, section ".printk_index", align 4
@vhci_urb_enqueue._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.62, ptr @.str.2, i32 753, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid request to devnum 0\0A\00", [35 x i8] zeroinitializer }, align 32
@vhci_urb_enqueue._entry_ptr.72 = internal global ptr @vhci_urb_enqueue._entry.70, section ".printk_index", align 4
@vhci_urb_enqueue._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.62, ptr @.str.2, i32 762, ptr @.str.75, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SetAddress Request (%d) to port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vhci_urb_enqueue._entry_ptr.76 = internal global ptr @vhci_urb_enqueue._entry.73, section ".printk_index", align 4
@vhci_urb_enqueue.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.77, i8 0, i8 -61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Not yet?:Get_Descriptor to device 0 (get max pipe size)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"vhci_hcd: %s:%d: Not yet?:Get_Descriptor to device 0 (get max pipe size)\0A\00", [54 x i8] zeroinitializer }, align 32
@vhci_urb_enqueue._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.62, ptr @.str.2, i32 793, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid request to devnum 0 bRequest %u, wValue %u\0A\00", [44 x i8] zeroinitializer }, align 32
@vhci_urb_enqueue._entry_ptr.81 = internal global ptr @vhci_urb_enqueue._entry.79, section ".printk_index", align 4
@vhci_tx_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 680, ptr @.str.75, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"seqnum max\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vhci_tx_urb\00", [20 x i8] zeroinitializer }, align 32
@vhci_tx_urb._entry_ptr = internal global ptr @vhci_tx_urb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vhci_urb_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016vhci_hcd: %s:%d: seqnum max\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vhci_urb_dequeue\00", [47 x i8] zeroinitializer }, align 32
@vhci_urb_dequeue._entry_ptr = internal global ptr @vhci_urb_dequeue._entry, section ".printk_index", align 4
@vhci_urb_dequeue.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 0, i8 -19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"leave\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhci_hcd: %s:%d: leave\0A\00", [40 x i8] zeroinitializer }, align 32
@vhci_hub_status.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vhci_hub_status\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hw accessible flag not on?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vhci_hcd: %s:%d: hw accessible flag not on?\0A\00", [51 x i8] zeroinitializer }, align 32
@vhci_hub_status.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.91, i8 0, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"port %d status changed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"vhci_hcd: %s:%d: port %d status changed\0A\00", [55 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vhci_hub_control\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"typeReq %x wValue %x wIndex %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"vhci_hcd: %s:%d: typeReq %x wValue %x wIndex %x\0A\00", [47 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.93, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr = internal global ptr @vhci_hub_control._entry, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.96, i8 0, i8 91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" ClearHubFeature\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vhci_hcd: %s:%d:  ClearHubFeature\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.93, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.99 = internal global ptr @vhci_hub_control._entry.98, section ".printk_index", align 4
@vhci_hub_control._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013vhci_hcd: %s:%d:  ClearPortFeature: USB_PORT_FEAT_SUSPEND req not supported for USB 3.0 roothub\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.102 = internal global ptr @vhci_hub_control._entry.100, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.103, i8 0, i8 95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" ClearPortFeature: USB_PORT_FEAT_SUSPEND\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"vhci_hcd: %s:%d:  ClearPortFeature: USB_PORT_FEAT_SUSPEND\0A\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vhci_hub_control.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.105, i8 0, i8 97, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" ClearPortFeature: USB_PORT_FEAT_POWER\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"vhci_hcd: %s:%d:  ClearPortFeature: USB_PORT_FEAT_POWER\0A\00", [39 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.107, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" ClearPortFeature: default %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"vhci_hcd: %s:%d:  ClearPortFeature: default %x\0A\00", [48 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.109, i8 0, i8 101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" GetHubDescriptor\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vhci_hcd: %s:%d:  GetHubDescriptor\0A\00", [60 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.93, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013vhci_hcd: %s:%d: Wrong hub descriptor type for USB 3.0 roothub.\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.113 = internal global ptr @vhci_hub_control._entry.111, section ".printk_index", align 4
@usb3_bos_desc = internal constant { %struct.anon.81, [17 x i8] } { %struct.anon.81 <{ %struct.usb_bos_descriptor <{ i8 5, i8 15, i16 3840, i8 1 }>, %struct.usb_ss_cap_descriptor { i8 10, i8 16, i8 3, i8 0, i16 2048, i8 3, i8 0, i16 0 } }>, [17 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.114, i8 0, i8 107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" GetHubStatus\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vhci_hcd: %s:%d:  GetHubStatus\0A\00", [32 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.116, i8 0, i8 108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" GetPortStatus port %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"vhci_hcd: %s:%d:  GetPortStatus port %x\0A\00", [55 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.93, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.119 = internal global ptr @vhci_hub_control._entry.118, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.120, i8 0, i8 117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" enable rhport %d (status %u)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"vhci_hcd: %s:%d:  enable rhport %d (status %u)\0A\00", [48 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.93, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013vhci_hcd: %s:%d: vhci_device speed not set\0A\00", [50 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.124 = internal global ptr @vhci_hub_control._entry.122, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.125, i8 0, i8 123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" GetPortStatus bye %x %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"vhci_hcd: %s:%d:  GetPortStatus bye %x %x\0A\00", [53 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.127, i8 0, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" SetHubFeature\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vhci_hcd: %s:%d:  SetHubFeature\0A\00", [63 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.129, i8 0, i8 126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c" SetPortFeature: USB_PORT_FEAT_LINK_STATE\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"vhci_hcd: %s:%d:  SetPortFeature: USB_PORT_FEAT_LINK_STATE\0A\00", [36 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.93, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013vhci_hcd: %s:%d: USB_PORT_FEAT_LINK_STATE req not supported for USB 2.0 roothub\0A\00", [45 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.133 = internal global ptr @vhci_hub_control._entry.131, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.134, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c" SetPortFeature: USB_PORT_FEAT_U1_TIMEOUT\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"vhci_hcd: %s:%d:  SetPortFeature: USB_PORT_FEAT_U1_TIMEOUT\0A\00", [36 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.136, i8 0, i8 -126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c" SetPortFeature: USB_PORT_FEAT_U2_TIMEOUT\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"vhci_hcd: %s:%d:  SetPortFeature: USB_PORT_FEAT_U2_TIMEOUT\0A\00", [36 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.93, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013vhci_hcd: %s:%d: USB_PORT_FEAT_U1/2_TIMEOUT req not supported for USB 2.0 roothub\0A\00", [43 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.140 = internal global ptr @vhci_hub_control._entry.138, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.141, i8 0, i8 -123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" SetPortFeature: USB_PORT_FEAT_SUSPEND\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"vhci_hcd: %s:%d:  SetPortFeature: USB_PORT_FEAT_SUSPEND\0A\00", [39 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.93, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013vhci_hcd: %s:%d: USB_PORT_FEAT_SUSPEND req not supported for USB 3.0 roothub\0A\00", [48 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.145 = internal global ptr @vhci_hub_control._entry.143, section ".printk_index", align 4
@vhci_hub_control._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.93, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.147 = internal global ptr @vhci_hub_control._entry.146, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.148, i8 0, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" SetPortFeature: USB_PORT_FEAT_POWER\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"vhci_hcd: %s:%d:  SetPortFeature: USB_PORT_FEAT_POWER\0A\00", [41 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.93, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.151 = internal global ptr @vhci_hub_control._entry.150, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.152, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c" SetPortFeature: USB_PORT_FEAT_BH_PORT_RESET\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"vhci_hcd: %s:%d:  SetPortFeature: USB_PORT_FEAT_BH_PORT_RESET\0A\00", [33 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.93, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.155 = internal global ptr @vhci_hub_control._entry.154, section ".printk_index", align 4
@vhci_hub_control._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.93, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013vhci_hcd: %s:%d: USB_PORT_FEAT_BH_PORT_RESET req not supported for USB 2.0 roothub\0A\00", [42 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.158 = internal global ptr @vhci_hub_control._entry.156, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.159, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" SetPortFeature: USB_PORT_FEAT_RESET\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"vhci_hcd: %s:%d:  SetPortFeature: USB_PORT_FEAT_RESET\0A\00", [41 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.93, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.162 = internal global ptr @vhci_hub_control._entry.161, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.163, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" SetPortFeature: default %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"vhci_hcd: %s:%d:  SetPortFeature: default %d\0A\00", [50 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.93, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.166 = internal global ptr @vhci_hub_control._entry.165, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.167, i8 0, i8 -102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" GetPortErrorCount\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vhci_hcd: %s:%d:  GetPortErrorCount\0A\00", [59 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.93, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013vhci_hcd: %s:%d: GetPortErrorCount req not supported for USB 2.0 roothub\0A\00", [52 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.171 = internal global ptr @vhci_hub_control._entry.169, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.172, i8 0, i8 -99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" SetHubDepth\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vhci_hcd: %s:%d:  SetHubDepth\0A\00", [33 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.93, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013vhci_hcd: %s:%d: SetHubDepth req not supported for USB 2.0 roothub\0A\00", [58 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.176 = internal global ptr @vhci_hub_control._entry.174, section ".printk_index", align 4
@vhci_hub_control._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.93, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013vhci_hcd: %s:%d: default hub control req: %04x v%04x i%04x l%d\0A\00", [62 x i8] zeroinitializer }, align 32
@vhci_hub_control._entry_ptr.179 = internal global ptr @vhci_hub_control._entry.177, section ".printk_index", align 4
@vhci_hub_control.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.180, i8 0, i8 -95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"port %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vhci_hcd: %s:%d: port %d\0A\00", [38 x i8] zeroinitializer }, align 32
@vhci_hub_control.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.182, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" bye\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vhci_hcd: %s:%d:  bye\0A\00", [41 x i8] zeroinitializer }, align 32
@bit_desc = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223], [32 x i8] zeroinitializer }, align 32
@bit_desc_ss = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.224, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223], [32 x i8] zeroinitializer }, align 32
@dump_port_status_diff.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.184, ptr @.str.2, ptr @.str.185, i8 0, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dump_port_status_diff\00", [42 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"status prev -> new: %08x -> %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"vhci_hcd: %s:%d: status prev -> new: %08x -> %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@dump_port_status_diff.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.184, ptr @.str.2, ptr @.str.187, i8 0, i8 35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %c%s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhci_hcd: %s:%d:  %c%s\0A\00", [40 x i8] zeroinitializer }, align 32
@dump_port_status_diff.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.184, ptr @.str.2, ptr @.str.187, i8 0, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USB_PORT_STAT_SPEED_5GBPS\00", [38 x i8] zeroinitializer }, align 32
@dump_port_status_diff.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.184, ptr @.str.2, ptr @.str.190, i8 0, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vhci_hcd: %s:%d: \0A\00", [45 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CONNECTION\00", [21 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENABLE\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUSPEND\00", [24 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OVER_CURRENT\00", [19 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RESET\00", [26 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"L1\00", [29 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R6\00", [29 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R7\00", [29 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"POWER\00", [26 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOWSPEED\00", [23 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HIGHSPEED\00", [22 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PORT_TEST\00", [22 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INDICATOR\00", [22 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R13\00", [28 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R14\00", [28 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R15\00", [28 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"C_CONNECTION\00", [19 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"C_ENABLE\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"C_SUSPEND\00", [22 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"C_OVER_CURRENT\00", [17 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"C_RESET\00", [24 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"C_L1\00", [27 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R22\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R23\00", [28 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R24\00", [28 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R25\00", [28 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R26\00", [28 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R27\00", [28 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R28\00", [28 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R29\00", [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R30\00", [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R31\00", [28 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R8\00", [29 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"C_BH_RESET\00", [21 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"C_LINK_STATE\00", [19 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"C_CONFIG_ERROR\00", [17 x i8] zeroinitializer }, align 32
@vhci_bus_suspend.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.228, ptr @.str.2, ptr @.str.229, i8 1, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.228 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vhci_bus_suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@vhci_bus_resume.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.230, ptr @.str.2, ptr @.str.229, i8 1, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vhci_bus_resume\00", [16 x i8] zeroinitializer }, align 32
@vhci_alloc_streams.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.231, ptr @.str.2, ptr @.str.232, i8 1, i8 69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.231 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vhci_alloc_streams\00", [45 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vhci_alloc_streams not implemented\0A\00", [60 x i8] zeroinitializer }, align 32
@vhci_free_streams.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.233, ptr @.str.2, ptr @.str.234, i8 1, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.233 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vhci_free_streams\00", [46 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vhci_free_streams not implemented\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_hcd_suspend.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.235, ptr @.str.2, ptr @.str.229, i8 1, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.235 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vhci_hcd_suspend\00", [47 x i8] zeroinitializer }, align 32
@vhci_hcd_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.235, ptr @.str.2, i32 1454, ptr @.str.75, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"We have %d active connection%s. Do not suspend.\0A\00", [47 x i8] zeroinitializer }, align 32
@vhci_hcd_suspend._entry_ptr = internal global ptr @vhci_hcd_suspend._entry, section ".printk_index", align 4
@.str.237 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.238 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@vhci_hcd_suspend._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.235, ptr @.str.2, i32 1457, ptr @.str.75, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"suspend vhci_hcd\00", [47 x i8] zeroinitializer }, align 32
@vhci_hcd_suspend._entry_ptr.241 = internal global ptr @vhci_hcd_suspend._entry.239, section ".printk_index", align 4
@vhci_hcd_resume.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.242, ptr @.str.2, ptr @.str.229, i8 1, i8 111, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.242 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vhci_hcd_resume\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.245 = internal global [12 x i64] [i64 10, i64 16, i64 8193, i64 8195, i64 8204, i64 8961, i64 8963, i64 32774, i64 40960, i64 40966, i64 41728, i64 41741]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.248 = internal global [9 x i64] [i64 7, i64 16, i64 2, i64 4, i64 5, i64 8, i64 23, i64 24, i64 28]
@___asan_gen_.249 = private unnamed_addr constant [21 x i8] c"vhci_num_controllers\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 46, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 161, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [12 x i8] c"vhci_driver\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1486, i32 31 }
@___asan_gen_.270 = private unnamed_addr constant [6 x i8] c"vhcis\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 47, i32 14 }
@___asan_gen_.273 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 43, i32 19 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1345, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [15 x i8] c"vhci_hc_driver\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1313, i32 31 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1353, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1364, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1372, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1378, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1382, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [12 x i8] c"driver_desc\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 44, i32 19 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1177, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1180, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1202, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1210, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1215, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1219, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1105, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1106, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1112, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1114, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1017, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1030, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1038, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1064, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 195, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1230, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1250, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 704, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 711, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 718, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 727, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 753, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 761, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 781, i32 5 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 790, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 680, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 936, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 950, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 241, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 249, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 335, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 348, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 366, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 370, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 376, i32 5 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 380, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 389, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 397, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 406, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 410, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant [14 x i8] c"usb3_bos_desc\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 268, i32 12 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 429, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 433, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 435, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 466, i32 5 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 485, i32 6 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 494, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 498, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 504, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 507, i32 5 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 517, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 521, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 525, i32 5 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 531, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 535, i32 5 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 541, i32 5 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 548, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 551, i32 5 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 560, i32 4 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 563, i32 5 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 568, i32 5 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 574, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 577, i32 5 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 597, i32 4 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 600, i32 5 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 618, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 620, i32 4 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 628, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 630, i32 4 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 636, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 644, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 652, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant [9 x i8] c"bit_desc\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 49, i32 27 }
@___asan_gen_.768 = private unnamed_addr constant [12 x i8] c"bit_desc_ss\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 84, i32 27 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 128, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 142, i32 4 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 145, i32 5 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 150, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 50, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 51, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 52, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 53, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 54, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 55, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 56, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 57, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 58, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 59, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 60, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 61, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 62, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 63, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 64, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 65, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 66, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 67, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 68, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 69, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 70, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 71, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 72, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 73, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 74, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 75, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 76, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 77, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 78, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 79, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 80, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 81, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 93, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 106, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 107, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 108, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1262, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1277, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1300, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1309, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1429, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1452, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1457, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.946 = private constant [32 x i8] c"../drivers/usb/usbip/vhci_hcd.c\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1468, i32 2 }
@llvm.compiler.used = appending global [280 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_vhci_hcd_exit, ptr @__initcall__kmod_vhci_hcd__287_1574_vhci_hcd_init6, ptr @vhci_get_frame_number._entry, ptr @vhci_get_frame_number._entry_ptr, ptr @vhci_hcd_exit, ptr @vhci_hcd_probe._entry, ptr @vhci_hcd_probe._entry.12, ptr @vhci_hcd_probe._entry.15, ptr @vhci_hcd_probe._entry.9, ptr @vhci_hcd_probe._entry_ptr, ptr @vhci_hcd_probe._entry_ptr.11, ptr @vhci_hcd_probe._entry_ptr.14, ptr @vhci_hcd_probe._entry_ptr.17, ptr @vhci_hcd_suspend._entry, ptr @vhci_hcd_suspend._entry.239, ptr @vhci_hcd_suspend._entry_ptr, ptr @vhci_hcd_suspend._entry_ptr.241, ptr @vhci_hub_control._entry, ptr @vhci_hub_control._entry.100, ptr @vhci_hub_control._entry.111, ptr @vhci_hub_control._entry.118, ptr @vhci_hub_control._entry.122, ptr @vhci_hub_control._entry.131, ptr @vhci_hub_control._entry.138, ptr @vhci_hub_control._entry.143, ptr @vhci_hub_control._entry.146, ptr @vhci_hub_control._entry.150, ptr @vhci_hub_control._entry.154, ptr @vhci_hub_control._entry.156, ptr @vhci_hub_control._entry.161, ptr @vhci_hub_control._entry.165, ptr @vhci_hub_control._entry.169, ptr @vhci_hub_control._entry.174, ptr @vhci_hub_control._entry.177, ptr @vhci_hub_control._entry.98, ptr @vhci_hub_control._entry_ptr, ptr @vhci_hub_control._entry_ptr.102, ptr @vhci_hub_control._entry_ptr.113, ptr @vhci_hub_control._entry_ptr.119, ptr @vhci_hub_control._entry_ptr.124, ptr @vhci_hub_control._entry_ptr.133, ptr @vhci_hub_control._entry_ptr.140, ptr @vhci_hub_control._entry_ptr.145, ptr @vhci_hub_control._entry_ptr.147, ptr @vhci_hub_control._entry_ptr.151, ptr @vhci_hub_control._entry_ptr.155, ptr @vhci_hub_control._entry_ptr.158, ptr @vhci_hub_control._entry_ptr.162, ptr @vhci_hub_control._entry_ptr.166, ptr @vhci_hub_control._entry_ptr.171, ptr @vhci_hub_control._entry_ptr.176, ptr @vhci_hub_control._entry_ptr.179, ptr @vhci_hub_control._entry_ptr.99, ptr @vhci_shutdown_connection._entry, ptr @vhci_shutdown_connection._entry.47, ptr @vhci_shutdown_connection._entry.50, ptr @vhci_shutdown_connection._entry_ptr, ptr @vhci_shutdown_connection._entry_ptr.49, ptr @vhci_shutdown_connection._entry_ptr.52, ptr @vhci_start._entry, ptr @vhci_start._entry.25, ptr @vhci_start._entry.30, ptr @vhci_start._entry.33, ptr @vhci_start._entry_ptr, ptr @vhci_start._entry_ptr.29, ptr @vhci_start._entry_ptr.32, ptr @vhci_start._entry_ptr.35, ptr @vhci_tx_urb._entry, ptr @vhci_tx_urb._entry_ptr, ptr @vhci_urb_dequeue._entry, ptr @vhci_urb_dequeue._entry_ptr, ptr @vhci_urb_enqueue._entry, ptr @vhci_urb_enqueue._entry.64, ptr @vhci_urb_enqueue._entry.67, ptr @vhci_urb_enqueue._entry.70, ptr @vhci_urb_enqueue._entry.73, ptr @vhci_urb_enqueue._entry.79, ptr @vhci_urb_enqueue._entry_ptr, ptr @vhci_urb_enqueue._entry_ptr.66, ptr @vhci_urb_enqueue._entry_ptr.69, ptr @vhci_urb_enqueue._entry_ptr.72, ptr @vhci_urb_enqueue._entry_ptr.76, ptr @vhci_urb_enqueue._entry_ptr.81, ptr @vhci_num_controllers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vhci_driver, ptr @vhcis, ptr @driver_name, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vhci_hc_driver, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @driver_desc, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @vhci_start.__key, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @vhci_device_init.__key, ptr @.str.36, ptr @vhci_device_init.__key.37, ptr @.str.38, ptr @vhci_device_init.__key.39, ptr @.str.40, ptr @vhci_device_init.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @vhci_get_frame_number._rs, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @usb3_bos_desc, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.148, ptr @.str.149, ptr @.str.152, ptr @.str.153, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.163, ptr @.str.164, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @bit_desc, ptr @bit_desc_ss, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.240, ptr @.str.242], section "llvm.metadata"
@0 = internal global [233 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_num_controllers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhcis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hcd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hcd_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hcd_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hcd_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_desc to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_start._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_start._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_start._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_device_init.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_device_init.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_device_init.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_shutdown_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_shutdown_connection._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_shutdown_connection._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_get_frame_number._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_get_frame_number._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_urb_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_urb_enqueue._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_urb_enqueue._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_urb_enqueue._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_urb_enqueue._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_urb_enqueue._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_tx_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_urb_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3_bos_desc to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hub_control._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_desc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_desc_ss to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hcd_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_hcd_suspend._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rh_port_connect(ptr noundef %vdev, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rhport.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %rhport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rhport.i, align 4
  %idx.neg.i = sub i32 0, %1
  %add.ptr.i = getelementptr %struct.vhci_device, ptr %vdev, i32 %idx.neg.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -48
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %4 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %do.body3

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rh_port_connect.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rh_port_connect, %do.body14)) #10
          to label %if.then9 [label %do.body14], !srcloc !474

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rh_port_connect.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 161, i32 noundef %1) #10
  br label %do.body14

do.body14:                                        ; preds = %if.then9, %do.body3, %entry.do.body14_crit_edge
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %arrayidx = getelementptr %struct.vhci_hcd, ptr %add.ptr1.i, i32 0, i32 1, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %or = or i32 %6, 65537
  %7 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %do.body14.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb23
  ]

do.body14.sw.epilog_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %or22 = or i32 %6, 66561
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %or24 = or i32 %6, 66049
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb, %do.body14.sw.epilog_crit_edge
  %status.0 = phi i32 [ %or, %do.body14.sw.epilog_crit_edge ], [ %or24, %sw.bb23 ], [ %or22, %sw.bb ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %status.0, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call17) #10
  %add.ptr.i39 = getelementptr i8, ptr %add.ptr1.i, i32 -600
  tail call void @usb_hcd_poll_rh_status(ptr noundef %add.ptr.i39) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vhci_hcd_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp9.i = icmp sgt i32 %0, 0
  br i1 %cmp9.i, label %entry.for.body.i_crit_edge, label %entry.del_platform_devices.exit_crit_edge

entry.del_platform_devices.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %del_platform_devices.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %1 = load ptr, ptr @vhcis, align 4
  %pdev1.i = getelementptr %struct.vhci, ptr %1, i32 %i.010.i, i32 1
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 4
  %cmp2.not.i = icmp eq ptr %3, null
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %4 = load ptr, ptr @vhcis, align 4
  %pdev4.i = getelementptr %struct.vhci, ptr %4, i32 %i.010.i, i32 1
  %5 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pdev4.i, align 4
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %6 = load i32, ptr @vhci_num_controllers, align 4
  %cmp.i = icmp slt i32 %inc.i, %6
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.del_platform_devices.exit_crit_edge

if.end.i.del_platform_devices.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %del_platform_devices.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

del_platform_devices.exit:                        ; preds = %if.end.i.del_platform_devices.exit_crit_edge, %entry.del_platform_devices.exit_crit_edge
  tail call void @sysfs_remove_link(ptr noundef nonnull @platform_bus, ptr noundef nonnull @driver_name) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @vhci_driver) #10
  %7 = load ptr, ptr @vhcis, align 4
  tail call void @kfree(ptr noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_hcd_init() #3 section ".init.text" align 64 {
entry:
  %vhci = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @vhci_num_controllers, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %1 = load i32, ptr @vhci_num_controllers, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 56) #10
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !475

kcalloc.exit.thread:                              ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  store ptr null, ptr @vhcis, align 4
  br label %cleanup63

if.end7.i.i:                                      ; preds = %if.end2
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #13
  store ptr %call8.i.i, ptr @vhcis, align 4
  %cmp4 = icmp eq ptr %call8.i.i, null
  br i1 %cmp4, label %if.end7.i.i.cleanup63_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup63_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

for.cond.preheader:                               ; preds = %if.end7.i.i
  %5 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp795 = icmp sgt i32 %5, 0
  br i1 %cmp795, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end30_crit_edge

for.cond.preheader.for.end30_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond18.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1997 = icmp sgt i32 %14, 0
  br i1 %cmp1997, label %for.cond18.preheader.for.body20_crit_edge, label %for.cond18.preheader.for.end30_crit_edge

for.cond18.preheader.for.end30_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.cond18.preheader.for.body20_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call8 = tail call ptr @platform_device_alloc(ptr noundef nonnull @driver_name, i32 noundef %i.096) #10
  %6 = load ptr, ptr @vhcis, align 4
  %pdev = getelementptr %struct.vhci, ptr %6, i32 %i.096, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %pdev, align 4
  %8 = load ptr, ptr @vhcis, align 4
  %pdev10 = getelementptr %struct.vhci, ptr %8, i32 %i.096, i32 1
  %9 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev10, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.096)
  %cmp13107.not = icmp eq i32 %i.096, 0
  br i1 %cmp13107.not, label %while.cond.preheader.err_device_alloc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.err_device_alloc_crit_edge:  ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_device_alloc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.1108.in = phi i32 [ %i.1108, %while.body.while.body_crit_edge ], [ %i.096, %while.cond.preheader.while.body_crit_edge ]
  %i.1108 = add nsw i32 %i.1108.in, -1
  %11 = load ptr, ptr @vhcis, align 4
  %pdev16 = getelementptr %struct.vhci, ptr %11, i32 %i.1108, i32 1
  %12 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev16, align 4
  tail call void @platform_device_put(ptr noundef %13) #10
  %cmp13 = icmp sgt i32 %i.1108.in, 1
  br i1 %cmp13, label %while.body.while.body_crit_edge, label %while.body.err_device_alloc_crit_edge

while.body.err_device_alloc_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_device_alloc

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.096, 1
  %14 = load i32, ptr @vhci_num_controllers, align 4
  %cmp7 = icmp slt i32 %inc, %14
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.cond18.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond18:                                       ; preds = %for.body20
  %inc29 = add nuw nsw i32 %i.298, 1
  %15 = load i32, ptr @vhci_num_controllers, align 4
  %cmp19 = icmp slt i32 %inc29, %15
  br i1 %cmp19, label %for.cond18.for.body20_crit_edge, label %for.cond18.for.end30_crit_edge

for.cond18.for.end30_crit_edge:                   ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.cond18.for.body20_crit_edge:                  ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

for.body20:                                       ; preds = %for.cond18.for.body20_crit_edge, %for.cond18.preheader.for.body20_crit_edge
  %i.298 = phi i32 [ %inc29, %for.cond18.for.body20_crit_edge ], [ 0, %for.cond18.preheader.for.body20_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhci) #10
  %16 = load ptr, ptr @vhcis, align 4
  %arrayidx21 = getelementptr %struct.vhci, ptr %16, i32 %i.298
  %17 = ptrtoint ptr %vhci to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx21, ptr %vhci, align 4
  %pdev23 = getelementptr %struct.vhci, ptr %16, i32 %i.298, i32 1
  %18 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev23, align 4
  %call24 = call i32 @platform_device_add_data(ptr noundef %19, ptr noundef nonnull %vhci, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhci) #10
  br i1 %tobool25.not, label %for.cond18, label %for.body20.err_driver_register_crit_edge

for.body20.err_driver_register_crit_edge:         ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_driver_register

for.end30:                                        ; preds = %for.cond18.for.end30_crit_edge, %for.cond18.preheader.for.end30_crit_edge, %for.cond.preheader.for.end30_crit_edge
  %call31 = call i32 @__platform_driver_register(ptr noundef nonnull @vhci_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.cond35.preheader, label %for.end30.err_driver_register_crit_edge

for.end30.err_driver_register_crit_edge:          ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_driver_register

for.cond35.preheader:                             ; preds = %for.end30
  %20 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3699 = icmp sgt i32 %20, 0
  br i1 %cmp3699, label %for.cond35.preheader.for.body37_crit_edge, label %for.cond35.preheader.cleanup63_crit_edge

for.cond35.preheader.cleanup63_crit_edge:         ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

for.cond35.preheader.for.body37_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body37

for.body37:                                       ; preds = %for.inc52.for.body37_crit_edge, %for.cond35.preheader.for.body37_crit_edge
  %i.3100 = phi i32 [ %inc53, %for.inc52.for.body37_crit_edge ], [ 0, %for.cond35.preheader.for.body37_crit_edge ]
  %21 = load ptr, ptr @vhcis, align 4
  %pdev39 = getelementptr %struct.vhci, ptr %21, i32 %i.3100, i32 1
  %22 = ptrtoint ptr %pdev39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev39, align 4
  %call40 = call i32 @platform_device_add(ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %while.cond44.preheader, label %for.inc52

while.cond44.preheader:                           ; preds = %for.body37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3100)
  %cmp45102.not = icmp eq i32 %i.3100, 0
  br i1 %cmp45102.not, label %while.cond44.preheader.err_add_hcd_crit_edge, label %while.cond44.preheader.while.body46_crit_edge

while.cond44.preheader.while.body46_crit_edge:    ; preds = %while.cond44.preheader
  br label %while.body46

while.cond44.preheader.err_add_hcd_crit_edge:     ; preds = %while.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_add_hcd

while.body46:                                     ; preds = %while.body46.while.body46_crit_edge, %while.cond44.preheader.while.body46_crit_edge
  %i.4103.in = phi i32 [ %i.4103, %while.body46.while.body46_crit_edge ], [ %i.3100, %while.cond44.preheader.while.body46_crit_edge ]
  %i.4103 = add nsw i32 %i.4103.in, -1
  %24 = load ptr, ptr @vhcis, align 4
  %pdev49 = getelementptr %struct.vhci, ptr %24, i32 %i.4103, i32 1
  %25 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev49, align 4
  call void @platform_device_del(ptr noundef %26) #10
  %cmp45 = icmp sgt i32 %i.4103.in, 1
  br i1 %cmp45, label %while.body46.while.body46_crit_edge, label %while.body46.err_add_hcd_crit_edge

while.body46.err_add_hcd_crit_edge:               ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_add_hcd

while.body46.while.body46_crit_edge:              ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body46

for.inc52:                                        ; preds = %for.body37
  %inc53 = add nuw nsw i32 %i.3100, 1
  %27 = load i32, ptr @vhci_num_controllers, align 4
  %cmp36 = icmp slt i32 %inc53, %27
  br i1 %cmp36, label %for.inc52.for.body37_crit_edge, label %for.inc52.cleanup63_crit_edge

for.inc52.cleanup63_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

for.inc52.for.body37_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37

err_add_hcd:                                      ; preds = %while.body46.err_add_hcd_crit_edge, %while.cond44.preheader.err_add_hcd_crit_edge
  call void @platform_driver_unregister(ptr noundef nonnull @vhci_driver) #10
  br label %err_driver_register

err_driver_register:                              ; preds = %err_add_hcd, %for.end30.err_driver_register_crit_edge, %for.body20.err_driver_register_crit_edge
  %ret.1 = phi i32 [ %call31, %for.end30.err_driver_register_crit_edge ], [ %call40, %err_add_hcd ], [ %call24, %for.body20.err_driver_register_crit_edge ]
  %28 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp56104 = icmp sgt i32 %28, 0
  br i1 %cmp56104, label %err_driver_register.for.body57_crit_edge, label %err_driver_register.err_device_alloc_crit_edge

err_driver_register.err_device_alloc_crit_edge:   ; preds = %err_driver_register
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_device_alloc

err_driver_register.for.body57_crit_edge:         ; preds = %err_driver_register
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %err_driver_register.for.body57_crit_edge
  %i.5105 = phi i32 [ %inc61, %for.body57.for.body57_crit_edge ], [ 0, %err_driver_register.for.body57_crit_edge ]
  %29 = load ptr, ptr @vhcis, align 4
  %pdev59 = getelementptr %struct.vhci, ptr %29, i32 %i.5105, i32 1
  %30 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev59, align 4
  call void @platform_device_put(ptr noundef %31) #10
  %inc61 = add nuw nsw i32 %i.5105, 1
  %32 = load i32, ptr @vhci_num_controllers, align 4
  %cmp56 = icmp slt i32 %inc61, %32
  br i1 %cmp56, label %for.body57.for.body57_crit_edge, label %for.body57.err_device_alloc_crit_edge

for.body57.err_device_alloc_crit_edge:            ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_device_alloc

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body57

err_device_alloc:                                 ; preds = %for.body57.err_device_alloc_crit_edge, %err_driver_register.err_device_alloc_crit_edge, %while.body.err_device_alloc_crit_edge, %while.cond.preheader.err_device_alloc_crit_edge
  %ret.2 = phi i32 [ -12, %while.cond.preheader.err_device_alloc_crit_edge ], [ %ret.1, %err_driver_register.err_device_alloc_crit_edge ], [ -12, %while.body.err_device_alloc_crit_edge ], [ %ret.1, %for.body57.err_device_alloc_crit_edge ]
  %33 = load ptr, ptr @vhcis, align 4
  call void @kfree(ptr noundef %33) #10
  br label %cleanup63

cleanup63:                                        ; preds = %err_device_alloc, %for.inc52.cleanup63_crit_edge, %for.cond35.preheader.cleanup63_crit_edge, %if.end7.i.i.cleanup63_crit_edge, %kcalloc.exit.thread, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_device_alloc ], [ -19, %entry.cleanup63_crit_edge ], [ -12, %if.end7.i.i.cleanup63_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond35.preheader.cleanup63_crit_edge ], [ %call40, %for.inc52.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_hcd_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %4 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hcd_probe.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hcd_probe, %do.end10)) #10
          to label %if.then7 [label %do.end10], !srcloc !474

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hcd_probe.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 1345, ptr noundef %6, i32 noundef %8) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end10.dev_name.exit_crit_edge

do.end10.dev_name.exit_crit_edge:                 ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end10.dev_name.exit_crit_edge
  %retval.0.i101 = phi ptr [ %12, %if.end.i ], [ %10, %do.end10.dev_name.exit_crit_edge ]
  %call14 = tail call ptr @usb_create_hcd(ptr noundef nonnull @vhci_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i101) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 1353) #14
  br label %cleanup

if.end22:                                         ; preds = %dev_name.exit
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %call14, i32 0, i32 14
  %13 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %has_tt, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %has_tt, align 4
  %call23 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call14, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp.not = icmp eq i32 %call23, 0
  br i1 %cmp.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef 1364, i32 noundef %call23) #14
  br label %put_usb2_hcd

if.end30:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i103 = icmp eq ptr %15, null
  br i1 %tobool.not.i103, label %if.end.i104, label %if.end30.dev_name.exit106_crit_edge

if.end30.dev_name.exit106_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit106

if.end.i104:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %dev_name.exit106

dev_name.exit106:                                 ; preds = %if.end.i104, %if.end30.dev_name.exit106_crit_edge
  %retval.0.i105 = phi ptr [ %17, %if.end.i104 ], [ %15, %if.end30.dev_name.exit106_crit_edge ]
  %call34 = tail call ptr @usb_create_shared_hcd(ptr noundef nonnull @vhci_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i105, ptr noundef nonnull %call14) #10
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end42

if.then36:                                        ; preds = %dev_name.exit106
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef 1372) #14
  br label %remove_usb2_hcd

if.end42:                                         ; preds = %dev_name.exit106
  %call43 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call34, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body52, label %do.end48

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 1378, i32 noundef %call43) #14
  tail call void @usb_put_hcd(ptr noundef nonnull %call34) #10
  br label %remove_usb2_hcd

do.body52:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %18 = load i32, ptr @usbip_debug_flag, align 4
  %and53 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.cleanup_crit_edge, label %do.body56

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body56:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hcd_probe.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hcd_probe, %cleanup)) #10
          to label %if.then70 [label %cleanup], !srcloc !474

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hcd_probe.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5, i32 noundef 1382) #10
  br label %cleanup

remove_usb2_hcd:                                  ; preds = %do.end48, %if.then36
  %ret.0 = phi i32 [ %call43, %do.end48 ], [ -12, %if.then36 ]
  tail call void @usb_remove_hcd(ptr noundef nonnull %call14) #10
  br label %put_usb2_hcd

put_usb2_hcd:                                     ; preds = %remove_usb2_hcd, %do.end27
  %ret.1 = phi i32 [ %call23, %do.end27 ], [ %ret.0, %remove_usb2_hcd ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call14) #10
  %vhci_hcd_hs = getelementptr inbounds %struct.vhci, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %vhci_hcd_hs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vhci_hcd_hs, align 4
  %vhci_hcd_ss = getelementptr inbounds %struct.vhci, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %vhci_hcd_ss to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %vhci_hcd_ss, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_usb2_hcd, %if.then70, %do.body56, %do.body52.cleanup_crit_edge, %do.end19
  %retval.0 = phi i32 [ %ret.1, %put_usb2_hcd ], [ -12, %do.end19 ], [ 0, %if.then70 ], [ 0, %do.body52.cleanup_crit_edge ], [ 0, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_hcd_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vhci_hcd_ss = getelementptr inbounds %struct.vhci, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vhci_hcd_ss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vhci_hcd_ss, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -600
  tail call void @usb_remove_hcd(ptr noundef %add.ptr.i) #10
  %6 = ptrtoint ptr %vhci_hcd_ss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vhci_hcd_ss, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 -600
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i14) #10
  %vhci_hcd_hs = getelementptr inbounds %struct.vhci, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %vhci_hcd_hs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vhci_hcd_hs, align 4
  %add.ptr.i15 = getelementptr i8, ptr %9, i32 -600
  tail call void @usb_remove_hcd(ptr noundef %add.ptr.i15) #10
  %10 = ptrtoint ptr %vhci_hcd_hs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vhci_hcd_hs, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 -600
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i16) #10
  %12 = ptrtoint ptr %vhci_hcd_hs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vhci_hcd_hs, align 4
  %13 = ptrtoint ptr %vhci_hcd_ss to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %vhci_hcd_ss, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_hcd_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hcd_suspend.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hcd_suspend, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !474

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vhci_hcd_suspend.__UNIQUE_ID_ddebug285, ptr noundef %dev, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.235) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %vhci_hcd_hs = getelementptr inbounds %struct.vhci, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %vhci_hcd_hs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vhci_hcd_hs, align 4
  %vhci_hcd_ss = getelementptr inbounds %struct.vhci, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %vhci_hcd_ss to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vhci_hcd_ss, align 4
  %arrayidx = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %and = and i32 %13, 1
  %arrayidx24 = getelementptr %struct.vhci_hcd, ptr %11, i32 0, i32 1, i32 0
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %and25 = and i32 %15, 1
  %connected.2 = add nuw nsw i32 %and, %and25
  %arrayidx.1 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  %and.1 = and i32 %17, 1
  %spec.select.1 = add nuw nsw i32 %and.1, %connected.2
  %arrayidx24.1 = getelementptr %struct.vhci_hcd, ptr %11, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx24.1, align 4
  %and25.1 = and i32 %19, 1
  %connected.2.1 = add nuw nsw i32 %spec.select.1, %and25.1
  %arrayidx.2 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  %and.2 = and i32 %21, 1
  %spec.select.2 = add nuw nsw i32 %and.2, %connected.2.1
  %arrayidx24.2 = getelementptr %struct.vhci_hcd, ptr %11, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24.2, align 4
  %and25.2 = and i32 %23, 1
  %connected.2.2 = add nuw nsw i32 %spec.select.2, %and25.2
  %arrayidx.3 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.3, align 4
  %and.3 = and i32 %25, 1
  %spec.select.3 = add nuw nsw i32 %and.3, %connected.2.2
  %arrayidx24.3 = getelementptr %struct.vhci_hcd, ptr %11, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24.3, align 4
  %and25.3 = and i32 %27, 1
  %connected.2.3 = add nuw nsw i32 %spec.select.3, %and25.3
  %arrayidx.4 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.4, align 4
  %and.4 = and i32 %29, 1
  %spec.select.4 = add nuw nsw i32 %and.4, %connected.2.3
  %arrayidx24.4 = getelementptr %struct.vhci_hcd, ptr %11, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx24.4, align 4
  %and25.4 = and i32 %31, 1
  %connected.2.4 = add nuw nsw i32 %spec.select.4, %and25.4
  %arrayidx.5 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 4
  %and.5 = and i32 %33, 1
  %spec.select.5 = add nuw nsw i32 %and.5, %connected.2.4
  %arrayidx24.5 = getelementptr %struct.vhci_hcd, ptr %11, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx24.5, align 4
  %and25.5 = and i32 %35, 1
  %connected.2.5 = add nuw nsw i32 %spec.select.5, %and25.5
  %arrayidx.6 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.6, align 4
  %and.6 = and i32 %37, 1
  %spec.select.6 = add nuw nsw i32 %and.6, %connected.2.5
  %arrayidx24.6 = getelementptr %struct.vhci_hcd, ptr %11, i32 0, i32 1, i32 6
  %38 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx24.6, align 4
  %and25.6 = and i32 %39, 1
  %connected.2.6 = add nuw nsw i32 %spec.select.6, %and25.6
  %arrayidx.7 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 1, i32 7
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.7, align 4
  %and.7 = and i32 %41, 1
  %spec.select.7 = add nuw nsw i32 %and.7, %connected.2.6
  %arrayidx24.7 = getelementptr %struct.vhci_hcd, ptr %11, i32 0, i32 1, i32 7
  %42 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx24.7, align 4
  %and25.7 = and i32 %43, 1
  %connected.2.7 = add nuw nsw i32 %spec.select.7, %and25.7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %connected.2.7)
  %cmp31.not = icmp eq i32 %connected.2.7, 0
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp31.not, label %do.end42, label %do.end36

do.end36:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %connected.2.7)
  %cmp38 = icmp eq i32 %connected.2.7, 1
  %cond = select i1 %cmp38, ptr @.str.237, ptr @.str.238
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.236, i32 noundef %connected.2.7, ptr noundef nonnull %cond) #14
  br label %cleanup

do.end42:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.240) #14
  %flags44 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags44) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end36, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ -16, %do.end36 ], [ 0, %do.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_hcd_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hcd_resume.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hcd_resume, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !474

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vhci_hcd_resume.__UNIQUE_ID_ddebug286, ptr noundef %dev, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.242) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #10
  tail call void @usb_hcd_poll_rh_status(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_shared_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_setup(ptr noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %hcd_priv.i30 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %vhci_hcd_ss = getelementptr inbounds %struct.vhci, ptr %5, i32 0, i32 3
  %vhci_hcd_hs = getelementptr inbounds %struct.vhci, ptr %5, i32 0, i32 2
  %vhci_hcd_ss.sink = select i1 %tobool.not, ptr %vhci_hcd_ss, ptr %vhci_hcd_hs
  %.sink32 = select i1 %tobool.not, i32 64, i32 32
  %.sink = select i1 %tobool.not, i32 5, i32 3
  %6 = ptrtoint ptr %vhci_hcd_ss.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hcd_priv.i30, ptr %vhci_hcd_ss.sink, align 4
  %7 = ptrtoint ptr %hcd_priv.i30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %hcd_priv.i30, align 8
  %speed10 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %8 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink32, ptr %speed10, align 8
  %root_hub12 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %9 = ptrtoint ptr %root_hub12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root_hub12, align 8
  %speed13 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %speed13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %speed13, align 4
  %sg_tablesize = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 7
  %12 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %sg_tablesize, align 4
  %no_sg_constraint = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 6
  %13 = ptrtoint ptr %no_sg_constraint to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %no_sg_constraint, align 2
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %no_sg_constraint, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_start(ptr noundef %hcd) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %0 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_start.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_start, %do.end10)) #10
          to label %if.then7 [label %do.end10], !srcloc !474

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_start.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 1177) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %call11 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end10.for.body.preheader_crit_edge, label %do.body14

do.end10.for.body.preheader_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

do.body14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hcd_priv.i, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @vhci_start.__key, i16 noundef signext 3) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body14, %do.end10.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %rhport.099 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099
  %ud.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 4
  %status.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 4, i32 1
  %3 = call ptr @memset(ptr %arrayidx, i32 0, i32 384)
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %status.i, align 4
  %lock.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @vhci_device_init.__key, i16 noundef signext 3) #10
  %sysfs_lock.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 4, i32 3
  tail call void @__mutex_init(ptr noundef %sysfs_lock.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @vhci_device_init.__key.37) #10
  %priv_rx.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 7
  %5 = ptrtoint ptr %priv_rx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %priv_rx.i, ptr %priv_rx.i, align 4
  %prev.i.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv_rx.i, ptr %prev.i.i, align 4
  %priv_tx.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 6
  %7 = ptrtoint ptr %priv_tx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %priv_tx.i, ptr %priv_tx.i, align 4
  %prev.i32.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 6, i32 1
  %8 = ptrtoint ptr %prev.i32.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv_tx.i, ptr %prev.i32.i, align 4
  %unlink_tx.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 8
  %9 = ptrtoint ptr %unlink_tx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %unlink_tx.i, ptr %unlink_tx.i, align 4
  %prev.i33.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 8, i32 1
  %10 = ptrtoint ptr %prev.i33.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %unlink_tx.i, ptr %prev.i33.i, align 4
  %unlink_rx.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 9
  %11 = ptrtoint ptr %unlink_rx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %unlink_rx.i, ptr %unlink_rx.i, align 4
  %prev.i34.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 9, i32 1
  %12 = ptrtoint ptr %prev.i34.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %unlink_rx.i, ptr %prev.i34.i, align 4
  %priv_lock.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %priv_lock.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @vhci_device_init.__key.39, i16 noundef signext 3) #10
  %waitq_tx.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %waitq_tx.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @vhci_device_init.__key.41) #10
  %eh_ops.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 4, i32 10
  %13 = ptrtoint ptr %eh_ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vhci_shutdown_connection, ptr %eh_ops.i, align 8
  %reset.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 4, i32 10, i32 1
  %14 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vhci_device_reset, ptr %reset.i, align 4
  %unusable.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 4, i32 10, i32 2
  %15 = ptrtoint ptr %unusable.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vhci_device_unusable, ptr %unusable.i, align 8
  %call17.i = tail call i32 @usbip_start_eh(ptr noundef %ud.i) #10
  %rhport20 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.099, i32 3
  %16 = ptrtoint ptr %rhport20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rhport.099, ptr %rhport20, align 4
  %inc = add nuw nsw i32 %rhport.099, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %seqnum = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqnum, i32 noundef 4) #10
  %17 = ptrtoint ptr %seqnum to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %seqnum, align 4
  %power_budget = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 19
  %18 = ptrtoint ptr %power_budget to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %power_budget, align 8
  %uses_new_polling = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %19 = ptrtoint ptr %uses_new_polling to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %uses_new_polling, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %uses_new_polling, align 4
  %otg_port = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 5
  %20 = ptrtoint ptr %otg_port to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %otg_port, align 1
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 3
  %21 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i, align 4, !annotation !476
  %call.i = tail call ptr @strchr(ptr noundef %22, i32 noundef 46) #10
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end31.thread, label %if.end.i

if.end31.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %land.lhs.true

if.end.i:                                         ; preds = %for.end
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %call.i.i86 = call i32 @_kstrtol(ptr noundef %add.ptr.i, i32 noundef 10, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %cmp2.i = icmp slt i32 %call.i.i86, 0
  br i1 %cmp2.i, label %hcd_name_to_id.exit.thread, label %hcd_name_to_id.exit

hcd_name_to_id.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %do.end27

hcd_name_to_id.exit:                              ; preds = %if.end.i
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp23 = icmp slt i32 %25, 0
  br i1 %cmp23, label %hcd_name_to_id.exit.do.end27_crit_edge, label %if.end31

hcd_name_to_id.exit.do.end27_crit_edge:           ; preds = %hcd_name_to_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.end27:                                         ; preds = %hcd_name_to_id.exit.do.end27_crit_edge, %hcd_name_to_id.exit.thread
  %26 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_name.i, align 4
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef 1202, ptr noundef %27) #14
  br label %cleanup

if.end31:                                         ; preds = %hcd_name_to_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp32 = icmp eq i32 %25, 0
  br i1 %cmp32, label %if.end31.land.lhs.true_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31.land.lhs.true_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end31.land.lhs.true_crit_edge, %if.end31.thread
  %call33 = call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true.cleanup_crit_edge, label %if.then35

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true
  %call36 = call i32 @vhci_init_attr_group() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  %28 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hcd, align 8
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.26, i32 noundef %call36) #14
  br label %cleanup

if.end43:                                         ; preds = %if.then35
  %call45 = call i32 @sysfs_create_group(ptr noundef %29, ptr noundef nonnull @vhci_attr_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.end55, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.31, i32 noundef %call45) #14
  call void @vhci_finish_attr_group() #10
  br label %cleanup

do.end55:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus_name.i, align 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.20, i32 noundef 1219, ptr noundef %33) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end50, %do.end41, %land.lhs.true.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end27
  %retval.0 = phi i32 [ -22, %do.end27 ], [ %call36, %do.end41 ], [ %call45, %do.end50 ], [ 0, %do.end55 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhci_stop(ptr noundef %hcd) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %0 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_stop.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_stop, %do.end10)) #10
          to label %if.then7 [label %do.end10], !srcloc !474

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_stop.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef 1230) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 3
  %1 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !476
  %call.i = tail call ptr @strchr(ptr noundef %2, i32 noundef 46) #10
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %hcd_name_to_id.exit.thread, label %if.end.i

hcd_name_to_id.exit.thread:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %land.lhs.true

if.end.i:                                         ; preds = %do.end10
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %call.i.i = call i32 @_kstrtol(ptr noundef %add.ptr.i, i32 noundef 10, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %hcd_name_to_id.exit.thread31, label %hcd_name_to_id.exit

hcd_name_to_id.exit.thread31:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %if.end17

hcd_name_to_id.exit:                              ; preds = %if.end.i
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %hcd_name_to_id.exit.land.lhs.true_crit_edge, label %hcd_name_to_id.exit.if.end17_crit_edge

hcd_name_to_id.exit.if.end17_crit_edge:           ; preds = %hcd_name_to_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

hcd_name_to_id.exit.land.lhs.true_crit_edge:      ; preds = %hcd_name_to_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %hcd_name_to_id.exit.land.lhs.true_crit_edge, %hcd_name_to_id.exit.thread
  %call13 = call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end17_crit_edge, label %if.then15

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  call void @sysfs_remove_group(ptr noundef %7, ptr noundef nonnull @vhci_attr_group) #10
  call void @vhci_finish_attr_group() #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true.if.end17_crit_edge, %hcd_name_to_id.exit.if.end17_crit_edge, %hcd_name_to_id.exit.thread31
  %ud = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 7) #10
  call void @usbip_stop_eh(ptr noundef %ud) #10
  %ud.1 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 3, i32 1
  call void @usbip_event_add(ptr noundef %ud.1, i32 noundef 7) #10
  call void @usbip_stop_eh(ptr noundef %ud.1) #10
  %ud.2 = getelementptr %struct.usb_hcd, ptr %hcd, i32 2, i32 5, i32 4, i32 1, i32 1
  call void @usbip_event_add(ptr noundef %ud.2, i32 noundef 7) #10
  call void @usbip_stop_eh(ptr noundef %ud.2) #10
  %ud.3 = getelementptr %struct.usb_hcd, ptr %hcd, i32 3, i32 0, i32 4
  call void @usbip_event_add(ptr noundef %ud.3, i32 noundef 7) #10
  call void @usbip_stop_eh(ptr noundef %ud.3) #10
  %ud.4 = getelementptr %struct.usb_hcd, ptr %hcd, i32 3, i32 20, i32 1, i32 0, i32 0, i32 2
  call void @usbip_event_add(ptr noundef %ud.4, i32 noundef 7) #10
  call void @usbip_stop_eh(ptr noundef %ud.4) #10
  %ud.5 = getelementptr %struct.usb_hcd, ptr %hcd, i32 4, i32 4, i32 4
  call void @usbip_event_add(ptr noundef %ud.5, i32 noundef 7) #10
  call void @usbip_stop_eh(ptr noundef %ud.5) #10
  %ud.6 = getelementptr %struct.usb_hcd, ptr %hcd, i32 4, i32 25
  call void @usbip_event_add(ptr noundef %ud.6, i32 noundef 7) #10
  call void @usbip_stop_eh(ptr noundef %ud.6) #10
  %ud.7 = getelementptr %struct.usb_hcd, ptr %hcd, i32 5, i32 11
  call void @usbip_event_add(ptr noundef %ud.7, i32 noundef 7) #10
  call void @usbip_stop_eh(ptr noundef %ud.7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_get_frame_number(ptr nocapture noundef readonly %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vhci_get_frame_number._rs, ptr noundef nonnull @__func__.vhci_get_frame_number) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %0 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_hub, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %dev2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %portnum5 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %portnum5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %portnum5, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp = icmp ugt i8 %5, 8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 704, i32 noundef %conv) #14
  br label %cleanup172

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.body28_crit_edge

if.end.do.body28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

land.lhs.true:                                    ; preds = %if.end
  %num_sgs = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 18
  %8 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true.do.body28_crit_edge

land.lhs.true.do.body28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

land.lhs.true12:                                  ; preds = %land.lhs.true
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %land.lhs.true12.do.body28_crit_edge, label %do.body15

land.lhs.true12.do.body28_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

do.body15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_urb_enqueue.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_urb_enqueue, %cleanup172)) #10
          to label %if.then22 [label %cleanup172], !srcloc !474

if.then22:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vhci_urb_enqueue.__UNIQUE_ID_ddebug273, ptr noundef %dev3, ptr noundef nonnull @.str.63) #10
  br label %cleanup172

do.body28:                                        ; preds = %land.lhs.true12.do.body28_crit_edge, %land.lhs.true.do.body28_crit_edge, %if.end.do.body28_crit_edge
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %13)
  %cmp38.not = icmp eq i32 %13, -115
  br i1 %cmp38.not, label %if.end47, label %do.end43

do.end43:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.65, i32 noundef %13) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call33) #10
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  br label %cleanup172

if.end47:                                         ; preds = %do.body28
  %lock48 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 4, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock48) #10
  %status50 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 4, i32 1
  %16 = ptrtoint ptr %status50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status50, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %17, label %if.end64 [
    i32 4, label %if.end47.do.end60_crit_edge
    i32 7, label %if.end47.do.end60_crit_edge252
  ]

if.end47.do.end60_crit_edge252:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

if.end47.do.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

do.end60:                                         ; preds = %if.end47.do.end60_crit_edge, %if.end47.do.end60_crit_edge252
  %rhport = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 3
  %19 = ptrtoint ptr %rhport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rhport, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.68, i32 noundef %20) #14
  tail call void @_raw_spin_unlock(ptr noundef %lock48) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call33) #10
  br label %cleanup172

if.end64:                                         ; preds = %if.end47
  tail call void @_raw_spin_unlock(ptr noundef %lock48) #10
  %call67 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %no_need_unlink.thread

no_need_unlink.thread:                            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call33) #10
  br label %cleanup172

if.end70:                                         ; preds = %if.end64
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %21 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pipe, align 4
  %23 = and i32 %22, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp71 = icmp eq i32 %23, 0
  br i1 %cmp71, label %if.then73, label %if.end70.out_crit_edge

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then73:                                        ; preds = %if.end70
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %24 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setup_packet, align 4
  %shr75.mask = and i32 %22, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr75.mask)
  %cmp79.not = icmp ne i32 %shr75.mask, -2147483648
  %tobool82.not = icmp eq ptr %25, null
  %or.cond = select i1 %cmp79.not, i1 true, i1 %tobool82.not
  br i1 %or.cond, label %do.end86, label %if.end87

do.end86:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.71) #14
  br label %no_need_unlink

if.end87:                                         ; preds = %if.then73
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bRequest, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.244)
  switch i8 %27, label %do.end147 [
    i8 5, label %do.end91
    i8 6, label %sw.bb109
  ]

do.end91:                                         ; preds = %if.end87
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %25, i32 0, i32 2
  %29 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %wValue, align 1
  %conv92 = zext i16 %30 to i32
  %rhport93 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 3
  %31 = ptrtoint ptr %rhport93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rhport93, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.74, i32 noundef %conv92, i32 noundef %32) #14
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 8
  tail call void @usb_put_dev(ptr noundef %34) #10
  %35 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev2, align 4
  %call95 = tail call ptr @usb_get_dev(ptr noundef %36) #10
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call95, ptr %arrayidx, align 8
  tail call void @_raw_spin_lock(ptr noundef %lock48) #10
  %38 = ptrtoint ptr %status50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %status50, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock48) #10
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %40)
  %cmp104 = icmp eq i32 %40, -115
  br i1 %cmp104, label %if.then106, label %do.end91.no_need_unlink_crit_edge

do.end91.no_need_unlink_crit_edge:                ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_need_unlink

if.then106:                                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status, align 4
  br label %no_need_unlink

sw.bb109:                                         ; preds = %if.end87
  %wValue110 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %25, i32 0, i32 2
  %42 = ptrtoint ptr %wValue110 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %wValue110, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %43)
  %cmp112 = icmp eq i16 %43, 1
  br i1 %cmp112, label %do.body115, label %sw.bb109.cleanup_crit_edge

sw.bb109.cleanup_crit_edge:                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body115:                                       ; preds = %sw.bb109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %44 = load i32, ptr @usbip_debug_flag, align 4
  %and116 = and i32 %44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body115.cleanup_crit_edge, label %do.body119

do.body115.cleanup_crit_edge:                     ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body119:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_urb_enqueue.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_urb_enqueue, %cleanup)) #10
          to label %if.then133 [label %cleanup], !srcloc !474

if.then133:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_urb_enqueue.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.62, i32 noundef 782) #10
  br label %cleanup

do.end147:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %conv88 = zext i8 %27 to i32
  %wValue150 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %25, i32 0, i32 2
  %45 = ptrtoint ptr %wValue150 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %wValue150, align 1
  %conv151 = zext i16 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.80, i32 noundef %conv88, i32 noundef %conv151) #14
  br label %no_need_unlink

cleanup:                                          ; preds = %if.then133, %do.body119, %do.body115.cleanup_crit_edge, %sw.bb109.cleanup_crit_edge
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 8
  tail call void @usb_put_dev(ptr noundef %48) #10
  %49 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev2, align 4
  %call143 = tail call ptr @usb_get_dev(ptr noundef %50) #10
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call143, ptr %arrayidx, align 8
  br label %out

out:                                              ; preds = %cleanup, %if.end70.out_crit_edge
  %rhport.i.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 3
  %52 = ptrtoint ptr %rhport.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rhport.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 2848, i32 noundef 20) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %do.body2.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %ud.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 4
  tail call void @usbip_event_add(ptr noundef %ud.i, i32 noundef 9) #10
  br label %vhci_tx_urb.exit

do.body2.i:                                       ; preds = %out
  %idx.neg.i.i = sub i32 0, %53
  %add.ptr.i.i = getelementptr %struct.vhci_device, ptr %arrayidx, i32 %idx.neg.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -48
  %priv_lock.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #10
  %seqnum.i = getelementptr inbounds %struct.vhci_hcd, ptr %add.ptr1.i.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqnum.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !477
  tail call void @llvm.prefetch.p0(ptr %seqnum.i, i32 1, i32 3, i32 1) #10
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %seqnum.i, ptr %seqnum.i, i32 1, ptr elementtype(i32) %seqnum.i) #10, !srcloc !478
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !479
  %56 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %asmresult.i.i.i.i.i, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %asmresult.i.i.i.i.i)
  %cmp10.i = icmp eq i32 %asmresult.i.i.i.i.i, 65535
  br i1 %cmp10.i, label %do.end15.i, label %do.body2.i.if.end17.i_crit_edge

do.body2.i.if.end17.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

do.end15.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2, align 4
  %dev16.i = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16.i, ptr noundef nonnull @.str.82) #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end15.i, %do.body2.i.if.end17.i_crit_edge
  %vdev18.i = getelementptr inbounds %struct.vhci_priv, ptr %call7.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %vdev18.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx, ptr %vdev18.i, align 4
  %urb19.i = getelementptr inbounds %struct.vhci_priv, ptr %call7.i.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %urb19.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %urb, ptr %urb19.i, align 8
  %hcpriv.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %61 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i, ptr %hcpriv.i, align 4
  %list.i = getelementptr inbounds %struct.vhci_priv, ptr %call7.i.i.i, i32 0, i32 1
  %priv_tx.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 6
  %prev.i.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 6, i32 1
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %call.i.i37.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %63, ptr noundef %priv_tx.i) #10
  br i1 %call.i.i37.i, label %if.end.i.i.i, label %if.end17.i.list_add_tail.exit.i_crit_edge

if.end17.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %list.i, ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %priv_tx.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vhci_priv, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i, align 8
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %list.i, ptr %63, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end17.i.list_add_tail.exit.i_crit_edge
  %waitq_tx.i = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %sub, i32 10
  tail call void @__wake_up(ptr noundef %waitq_tx.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call4.i) #10
  br label %vhci_tx_urb.exit

vhci_tx_urb.exit:                                 ; preds = %list_add_tail.exit.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call33) #10
  br label %cleanup172

no_need_unlink:                                   ; preds = %do.end147, %if.then106, %do.end91.no_need_unlink_crit_edge, %do.end86
  %tobool156.not = phi i1 [ true, %do.end91.no_need_unlink_crit_edge ], [ true, %if.then106 ], [ false, %do.end147 ], [ false, %do.end86 ]
  %ret.0.ph = phi i32 [ 0, %do.end91.no_need_unlink_crit_edge ], [ 0, %if.then106 ], [ -22, %do.end147 ], [ -22, %do.end86 ]
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call33) #10
  br i1 %tobool156.not, label %do.body158, label %no_need_unlink.cleanup172_crit_edge

no_need_unlink.cleanup172_crit_edge:              ; preds = %no_need_unlink
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup172

do.body158:                                       ; preds = %no_need_unlink
  %68 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !480
  %and.i.i = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool160.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !481
  br i1 %tobool160.not, label %if.then163, label %do.body158.if.end164_crit_edge

do.body158.if.end164_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then163:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %do.body158.if.end164_crit_edge
  %69 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %70) #10
  tail call void @trace_hardirqs_on() #10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !482
  br label %cleanup172

cleanup172:                                       ; preds = %if.end164, %no_need_unlink.cleanup172_crit_edge, %vhci_tx_urb.exit, %no_need_unlink.thread, %do.end60, %do.end43, %if.then22, %do.body15, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %15, %do.end43 ], [ -19, %do.end60 ], [ 0, %vhci_tx_urb.exit ], [ -22, %if.then22 ], [ 0, %if.end164 ], [ %ret.0.ph, %no_need_unlink.cleanup172_crit_edge ], [ %call67, %no_need_unlink.thread ], [ -22, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %2 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  br label %cleanup79

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.cont.critedge, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  br label %cleanup79

cleanup.cont.critedge:                            ; preds = %if.end
  %vdev13 = getelementptr inbounds %struct.vhci_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vdev13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev13, align 4
  %ud = getelementptr inbounds %struct.vhci_device, ptr %5, i32 0, i32 4
  %tcp_socket = getelementptr inbounds %struct.vhci_device, ptr %5, i32 0, i32 4, i32 5
  %6 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcp_socket, align 4
  %tobool14.not = icmp eq ptr %7, null
  %priv_lock = getelementptr inbounds %struct.vhci_device, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %priv_lock) #10
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %cleanup.cont.critedge
  %list = getelementptr inbounds %struct.vhci_priv, ptr %3, i32 0, i32 1
  %call.i.i122 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i122, label %if.end.i.i, label %if.then15.list_del.exit_crit_edge

if.then15.list_del.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.vhci_priv, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then15.list_del.exit_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.vhci_priv, ptr %3, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %3) #10
  %16 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %hcpriv, align 4
  tail call void @_raw_spin_unlock(ptr noundef %priv_lock) #10
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  %status19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %17 = ptrtoint ptr %status19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status19, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %18) #10
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  br label %if.end60

if.else:                                          ; preds = %cleanup.cont.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2848, i32 noundef 16) #15
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %cleanup57.thread, label %if.end41

cleanup57.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %priv_lock) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  tail call void @usbip_event_add(ptr noundef %ud, i32 noundef 9) #10
  br label %cleanup79

if.end41:                                         ; preds = %if.else
  %seqnum = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqnum, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !477
  tail call void @llvm.prefetch.p0(ptr %seqnum, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %seqnum, ptr %seqnum, i32 1, ptr elementtype(i32) %seqnum) #10, !srcloc !478
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !479
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %asmresult.i.i.i.i, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %asmresult.i.i.i.i)
  %cmp45 = icmp eq i32 %asmresult.i.i.i.i, 65535
  br i1 %cmp45, label %do.end50, label %if.end41.if.end53_crit_edge

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 936) #14
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %if.end41.if.end53_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %unlink_seqnum = getelementptr inbounds %struct.vhci_unlink, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %unlink_seqnum to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %unlink_seqnum, align 4
  %list55 = getelementptr inbounds %struct.vhci_unlink, ptr %call7.i.i, i32 0, i32 1
  %unlink_tx = getelementptr inbounds %struct.vhci_device, ptr %5, i32 0, i32 8
  %prev.i124 = getelementptr inbounds %struct.vhci_device, ptr %5, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i124, align 4
  %call.i.i125 = tail call zeroext i1 @__list_add_valid(ptr noundef %list55, ptr noundef %26, ptr noundef %unlink_tx) #10
  br i1 %call.i.i125, label %if.end.i.i126, label %if.end53.cleanup57_crit_edge

if.end53.cleanup57_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end.i.i126:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list55, ptr %prev.i124, align 4
  %28 = ptrtoint ptr %list55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %unlink_tx, ptr %list55, align 4
  %prev3.i.i = getelementptr inbounds %struct.vhci_unlink, ptr %call7.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 8
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list55, ptr %26, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %if.end.i.i126, %if.end53.cleanup57_crit_edge
  %waitq_tx = getelementptr inbounds %struct.vhci_device, ptr %5, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %waitq_tx, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @_raw_spin_unlock(ptr noundef %priv_lock) #10
  br label %if.end60

if.end60:                                         ; preds = %cleanup57, %list_del.exit
  %flags.0 = phi i32 [ %call4, %cleanup57 ], [ %call29, %list_del.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %31 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %if.end60.cleanup79_crit_edge, label %do.body65

if.end60.cleanup79_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

do.body65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_urb_dequeue.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_urb_dequeue, %cleanup79)) #10
          to label %if.then72 [label %cleanup79], !srcloc !474

if.then72:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_urb_dequeue.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, i32 noundef 950) #10
  br label %cleanup79

cleanup79:                                        ; preds = %if.then72, %do.body65, %if.end60.cleanup79_crit_edge, %cleanup57.thread, %if.then10, %if.then
  %retval.2 = phi i32 [ -43, %if.then ], [ %call8, %if.then10 ], [ 0, %if.then72 ], [ 0, %if.end60.cleanup79_crit_edge ], [ -12, %cleanup57.thread ], [ 0, %do.body65 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_hub_status(ptr noundef %hcd, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 0, ptr %buf, align 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %flags8 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %3 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags8, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.body9:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %5 = load i32, ptr @usbip_debug_flag, align 4
  %and10 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.done.thread_crit_edge, label %do.body13

do.body9.done.thread_crit_edge:                   ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.thread

do.body13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_status.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_status, %done.thread)) #10
          to label %if.then20 [label %done.thread], !srcloc !474

if.then20:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_status.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88, i32 noundef 241) #10
  br label %done.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rhport.096 = phi i32 [ %inc.pre-phi, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %changed.095 = phi i32 [ %changed.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.096
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and29 = and i32 %7, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %do.body32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add nuw nsw i32 %rhport.096, 1
  br label %for.inc

do.body32:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %8 = load i32, ptr @usbip_debug_flag, align 4
  %and33 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.do.end56_crit_edge, label %do.body36

do.body32.do.end56_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.body36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_status.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_status, %do.end56)) #10
          to label %if.then50 [label %do.end56], !srcloc !474

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_status.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.88, i32 noundef 249, i32 noundef %rhport.096) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then50, %do.body36, %do.body32.do.end56_crit_edge
  %add = add nuw nsw i32 %rhport.096, 1
  %rem83 = and i32 %add, 7
  %shl = shl nuw nsw i32 1, %rem83
  %div94 = lshr i32 %add, 3
  %arrayidx58 = getelementptr i8, ptr %buf, i32 %div94
  %9 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx58, align 1
  %11 = trunc i32 %shl to i8
  %conv60 = or i8 %10, %11
  store i8 %conv60, ptr %arrayidx58, align 1
  br label %for.inc

for.inc:                                          ; preds = %do.end56, %for.body.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %do.end56 ]
  %changed.1 = phi i32 [ %changed.095, %for.body.for.inc_crit_edge ], [ 1, %do.end56 ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp62 = icmp eq i32 %13, 4
  br i1 %cmp62, label %land.lhs.true, label %done

land.lhs.true:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %changed.1)
  %cmp64 = icmp eq i32 %changed.1, 1
  br i1 %cmp64, label %done.thread91, label %land.lhs.true.done.thread_crit_edge

land.lhs.true.done.thread_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.thread

done.thread91:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_hcd_resume_root_hub(ptr noundef %hcd) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #10
  br label %15

done.thread:                                      ; preds = %land.lhs.true.done.thread_crit_edge, %if.then20, %do.body13, %do.body9.done.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #10
  br label %14

done:                                             ; preds = %for.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.1)
  %tobool69.not = icmp eq i32 %changed.1, 0
  br i1 %tobool69.not, label %done._crit_edge, label %done._crit_edge99

done._crit_edge99:                                ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %15

done._crit_edge:                                  ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %14

14:                                               ; preds = %done._crit_edge, %done.thread
  br label %15

15:                                               ; preds = %14, %done._crit_edge99, %done.thread91
  %16 = phi i32 [ 0, %14 ], [ 2, %done._crit_edge99 ], [ 2, %done.thread91 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef %buf, i16 noundef zeroext %wLength) #0 align 64 {
entry:
  %prev_port_status = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prev_port_status) #10
  %flags2 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %0 = call ptr @memset(ptr %prev_port_status, i32 255, i32 32)
  %1 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags2, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv5 = and i16 %wIndex, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %3 = load i32, ptr @usbip_debug_flag, align 4
  %and6 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.do.end21_crit_edge, label %do.body9

if.end.do.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end21)) #10
          to label %if.then14 [label %do.end21], !srcloc !474

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %conv15 = zext i16 %typeReq to i32
  %conv16 = zext i16 %wValue to i32
  %conv17 = zext i16 %conv5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef 336, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then14, %do.body9, %if.end.do.end21_crit_edge
  %conv22 = zext i16 %conv5 to i32
  %4 = add nsw i16 %conv5, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %4)
  %5 = icmp ult i16 %4, -8
  br i1 %5, label %if.then27, label %if.else

if.then27:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %conv5)
  %cmp25 = icmp ugt i16 %conv5, 8
  br i1 %cmp25, label %do.end34, label %if.then27.if.end40_crit_edge

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.93, i32 noundef 348, i32 noundef %conv22) #14
  br label %if.end40

if.else:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add nsw i32 %conv22, -1
  br label %if.end40

if.end40:                                         ; preds = %if.else, %do.end34, %if.then27.if.end40_crit_edge
  %rhport.0 = phi i32 [ -1, %do.end34 ], [ -1, %if.then27.if.end40_crit_edge ], [ %sub, %if.else ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %6 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd_priv.i, align 8
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %8 = load i32, ptr @usbip_debug_flag, align 4
  %and54 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %brmerge = or i1 %5, %tobool55.not
  br i1 %brmerge, label %if.end40.if.end61_crit_edge, label %if.then58

if.end40.if.end61_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then58:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %port_status = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %prev_port_status, ptr %port_status, i32 32)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end40.if.end61_crit_edge
  %10 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.245)
  switch i16 %typeReq, label %do.end949 [
    i16 8193, label %do.body63
    i16 8961, label %sw.bb88
    i16 -24570, label %do.body214
    i16 -32762, label %sw.bb262
    i16 -24576, label %do.body274
    i16 -23808, label %do.body300
    i16 8195, label %do.body480
    i16 8963, label %sw.bb505
    i16 -23795, label %do.body875
    i16 8204, label %do.body911
  ]

do.body63:                                        ; preds = %if.end61
  br i1 %tobool55.not, label %do.body63.sw.epilog956_crit_edge, label %do.body67

do.body63.sw.epilog956_crit_edge:                 ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

do.body67:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %sw.epilog956)) #10
          to label %if.then81 [label %sw.epilog956], !srcloc !474

if.then81:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93, i32 noundef 366) #10
  br label %sw.epilog956

sw.bb88:                                          ; preds = %if.end61
  br i1 %5, label %do.end93, label %if.end97

do.end93:                                         ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #12
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.93, i32 noundef 370, i32 noundef %conv22) #14
  br label %sw.epilog956

if.end97:                                         ; preds = %sw.bb88
  %conv98 = zext i16 %wValue to i32
  %11 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.246)
  switch i16 %wValue, label %do.body178 [
    i16 2, label %sw.bb99
    i16 8, label %do.body141
  ]

sw.bb99:                                          ; preds = %if.end97
  %speed = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp100 = icmp eq i32 %13, 64
  br i1 %cmp100, label %do.end105, label %do.body109

do.end105:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #12
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.93, i32 noundef 377) #14
  br label %sw.epilog956

do.body109:                                       ; preds = %sw.bb99
  br i1 %tobool55.not, label %do.body109.do.end133_crit_edge, label %do.body113

do.body109.do.end133_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end133

do.body113:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end133)) #10
          to label %if.then127 [label %do.end133], !srcloc !474

if.then127:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.93, i32 noundef 381) #10
  br label %do.end133

do.end133:                                        ; preds = %if.then127, %do.body113, %do.body109.do.end133_crit_edge
  %arrayidx = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %and135 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.end133.sw.epilog956_crit_edge, label %if.then137

do.end133.sw.epilog956_crit_edge:                 ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

if.then137:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #12
  %resuming = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 1
  %16 = ptrtoint ptr %resuming to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %resuming, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %resuming, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %17, 2
  %re_timeout = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 2
  %18 = ptrtoint ptr %re_timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %re_timeout, align 8
  br label %sw.epilog956

do.body141:                                       ; preds = %if.end97
  br i1 %tobool55.not, label %do.body141.do.end165_crit_edge, label %do.body145

do.body141.do.end165_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end165

do.body145:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end165)) #10
          to label %if.then159 [label %do.end165], !srcloc !474

if.then159:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.93, i32 noundef 390) #10
  br label %do.end165

do.end165:                                        ; preds = %if.then159, %do.body145, %do.body141.do.end165_crit_edge
  %speed166 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %19 = ptrtoint ptr %speed166 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed166, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %20)
  %cmp167 = icmp eq i32 %20, 64
  %arrayidx171 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %21 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx171, align 4
  br i1 %cmp167, label %if.then169, label %if.else173

if.then169:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #12
  %and172 = and i32 %22, -513
  %23 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and172, ptr %arrayidx171, align 4
  br label %sw.epilog956

if.else173:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #12
  %and176 = and i32 %22, -257
  %24 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and176, ptr %arrayidx171, align 4
  br label %sw.epilog956

do.body178:                                       ; preds = %if.end97
  br i1 %tobool55.not, label %do.body178.do.end203_crit_edge, label %do.body182

do.body178.do.end203_crit_edge:                   ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end203

do.body182:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end203)) #10
          to label %if.then196 [label %do.end203], !srcloc !474

if.then196:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.93, i32 noundef 398, i32 noundef %conv98) #10
  br label %do.end203

do.end203:                                        ; preds = %if.then196, %do.body182, %do.body178.do.end203_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %wValue)
  %cmp205 = icmp ugt i16 %wValue, 31
  br i1 %cmp205, label %do.end203.sw.epilog956_crit_edge, label %if.end208

do.end203.sw.epilog956_crit_edge:                 ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

if.end208:                                        ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %conv98
  %neg = xor i32 %shl, -1
  %arrayidx211 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %25 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx211, align 4
  %and212 = and i32 %26, %neg
  store i32 %and212, ptr %arrayidx211, align 4
  br label %sw.epilog956

do.body214:                                       ; preds = %if.end61
  br i1 %tobool55.not, label %do.body214.do.end238_crit_edge, label %do.body218

do.body214.do.end238_crit_edge:                   ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end238

do.body218:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end238)) #10
          to label %if.then232 [label %do.end238], !srcloc !474

if.then232:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.93, i32 noundef 406) #10
  br label %do.end238

do.end238:                                        ; preds = %if.then232, %do.body218, %do.body214.do.end238_crit_edge
  %speed239 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %27 = ptrtoint ptr %speed239 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed239, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %28)
  %cmp240 = icmp eq i32 %28, 64
  br i1 %cmp240, label %land.lhs.true, label %if.else260

land.lhs.true:                                    ; preds = %do.end238
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %wLength)
  %cmp243 = icmp ugt i16 %wLength, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 10752, i16 %wValue)
  %cmp247.not = icmp eq i16 %wValue, 10752
  %or.cond1169 = and i1 %cmp247.not, %cmp243
  br i1 %or.cond1169, label %if.then259, label %do.end252

do.end252:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.93, i32 noundef 410) #14
  br label %sw.epilog956

if.then259:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %29 = getelementptr inbounds i8, ptr %buf, i32 5
  %30 = call ptr @memset(ptr %29, i32 0, i32 10)
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %31 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 42, ptr %bDescriptorType.i, align 1
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 12, ptr %buf, align 1
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %33 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 256, ptr %wHubCharacteristics.i, align 1
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %34 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %bNbrPorts.i, align 1
  %u.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %35 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %u.i, align 1
  %DeviceRemovable.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %DeviceRemovable.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 -1, ptr %DeviceRemovable.i, align 1
  br label %sw.epilog956

if.else260:                                       ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #12
  %37 = getelementptr inbounds i8, ptr %buf, i32 5
  %38 = call ptr @memset(ptr %37, i32 0, i32 10)
  %bDescriptorType.i1239 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %39 = ptrtoint ptr %bDescriptorType.i1239 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 41, ptr %bDescriptorType.i1239, align 1
  %wHubCharacteristics.i1240 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %40 = ptrtoint ptr %wHubCharacteristics.i1240 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 256, ptr %wHubCharacteristics.i1240, align 1
  %bNbrPorts.i1241 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %41 = ptrtoint ptr %bNbrPorts.i1241 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %bNbrPorts.i1241, align 1
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 11, ptr %buf, align 1
  %arrayidx6.i = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 -1, ptr %arrayidx6.i, align 1
  br label %sw.epilog956

sw.bb262:                                         ; preds = %if.end61
  %speed263 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %44 = ptrtoint ptr %speed263 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %speed263, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %45)
  %cmp264.not = icmp eq i32 %45, 64
  %.mask = and i16 %wValue, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %.mask)
  %cmp269.not = icmp eq i16 %.mask, 3840
  %or.cond1170 = and i1 %cmp269.not, %cmp264.not
  br i1 %or.cond1170, label %if.end272, label %sw.bb262.sw.epilog956_crit_edge

sw.bb262.sw.epilog956_crit_edge:                  ; preds = %sw.bb262
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

if.end272:                                        ; preds = %sw.bb262
  call void @__sanitizer_cov_trace_pc() #12
  %46 = call ptr @memcpy(ptr %buf, ptr @usb3_bos_desc, i32 15)
  br label %sw.epilog956

do.body274:                                       ; preds = %if.end61
  br i1 %tobool55.not, label %do.body274.do.end298_crit_edge, label %do.body278

do.body274.do.end298_crit_edge:                   ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end298

do.body278:                                       ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end298)) #10
          to label %if.then292 [label %do.end298], !srcloc !474

if.then292:                                       ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.93, i32 noundef 429) #10
  br label %do.end298

do.end298:                                        ; preds = %if.then292, %do.body278, %do.body274.do.end298_crit_edge
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %buf, align 4
  br label %sw.epilog956

do.body300:                                       ; preds = %if.end61
  br i1 %tobool55.not, label %do.body300.do.end325_crit_edge, label %do.body304

do.body300.do.end325_crit_edge:                   ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end325

do.body304:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end325)) #10
          to label %if.then318 [label %do.end325], !srcloc !474

if.then318:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.93, i32 noundef 433, i32 noundef %conv22) #10
  br label %do.end325

do.end325:                                        ; preds = %if.then318, %do.body304, %do.body300.do.end325_crit_edge
  br i1 %5, label %do.end330, label %if.end334

do.end330:                                        ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #12
  %call333 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.93, i32 noundef 435, i32 noundef %conv22) #14
  br label %sw.epilog956

if.end334:                                        ; preds = %do.end325
  %resuming335 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 1
  %48 = ptrtoint ptr %resuming335 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load336 = load i8, ptr %resuming335, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load336)
  %tobool337.not = icmp sgt i8 %bf.load336, -1
  br i1 %tobool337.not, label %if.end334.if.end354_crit_edge, label %land.lhs.true338

if.end334.if.end354_crit_edge:                    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end354

land.lhs.true338:                                 ; preds = %if.end334
  %re_timeout339 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 2
  %49 = ptrtoint ptr %re_timeout339 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %re_timeout339, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub340 = sub i32 %50, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub340)
  %cmp341 = icmp slt i32 %sub340, 0
  br i1 %cmp341, label %if.then343, label %land.lhs.true338.if.end354_crit_edge

land.lhs.true338.if.end354_crit_edge:             ; preds = %land.lhs.true338
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end354

if.then343:                                       ; preds = %land.lhs.true338
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx345 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %52 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx345, align 4
  %or = and i32 %53, -262149
  %and348 = or i32 %or, 262144
  store i32 %and348, ptr %arrayidx345, align 4
  %54 = ptrtoint ptr %resuming335 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load350 = load i8, ptr %resuming335, align 4
  %bf.clear351 = and i8 %bf.load350, 127
  store i8 %bf.clear351, ptr %resuming335, align 4
  %55 = ptrtoint ptr %re_timeout339 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %re_timeout339, align 8
  br label %if.end354

if.end354:                                        ; preds = %if.then343, %land.lhs.true338.if.end354_crit_edge, %if.end334.if.end354_crit_edge
  %arrayidx356 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %56 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx356, align 4
  %and357 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357)
  %cmp358.not = icmp eq i32 %and357, 0
  br i1 %cmp358.not, label %if.end354.if.end440_crit_edge, label %land.lhs.true360

if.end354.if.end440_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end440

land.lhs.true360:                                 ; preds = %if.end354
  %re_timeout361 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 2
  %58 = ptrtoint ptr %re_timeout361 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %re_timeout361, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %sub362 = sub i32 %59, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub362)
  %cmp363 = icmp slt i32 %sub362, 0
  br i1 %cmp363, label %if.then365, label %land.lhs.true360.if.end440_crit_edge

land.lhs.true360.if.end440_crit_edge:             ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end440

if.then365:                                       ; preds = %land.lhs.true360
  %or368 = and i32 %57, -1048593
  %and371 = or i32 %or368, 1048576
  %61 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and371, ptr %arrayidx356, align 4
  %62 = ptrtoint ptr %re_timeout361 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %re_timeout361, align 8
  %status = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.0, i32 4, i32 1
  %63 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %status, align 4
  %.off = add i32 %64, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.body384, label %if.then365.if.end416_crit_edge

if.then365.if.end416_crit_edge:                   ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end416

do.body384:                                       ; preds = %if.then365
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %65 = load i32, ptr @usbip_debug_flag, align 4
  %and385 = and i32 %65, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and385)
  %tobool386.not = icmp eq i32 %and385, 0
  br i1 %tobool386.not, label %do.body384.do.end412_crit_edge, label %do.body388

do.body384.do.end412_crit_edge:                   ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end412

do.body388:                                       ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end412)) #10
          to label %if.then402 [label %do.end412], !srcloc !474

if.then402:                                       ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.93, i32 noundef 469, i32 noundef %rhport.0, i32 noundef %67) #10
  br label %do.end412

do.end412:                                        ; preds = %if.then402, %do.body388, %do.body384.do.end412_crit_edge
  %68 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx356, align 4
  %or415 = or i32 %69, 2
  store i32 %or415, ptr %arrayidx356, align 4
  br label %if.end416

if.end416:                                        ; preds = %do.end412, %if.then365.if.end416_crit_edge
  %speed417 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %70 = ptrtoint ptr %speed417 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %speed417, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %71)
  %cmp418 = icmp slt i32 %71, 64
  br i1 %cmp418, label %if.then420, label %if.end416.if.end440_crit_edge

if.end416.if.end440_crit_edge:                    ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end440

if.then420:                                       ; preds = %if.end416
  %speed423 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %rhport.0, i32 2
  %72 = ptrtoint ptr %speed423 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %speed423, align 8
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %73, label %do.end435 [
    i32 3, label %sw.bb424
    i32 1, label %sw.bb428
  ]

sw.bb424:                                         ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx356, align 4
  %or427 = or i32 %76, 1024
  store i32 %or427, ptr %arrayidx356, align 4
  br label %if.end440

sw.bb428:                                         ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx356, align 4
  %or431 = or i32 %78, 512
  store i32 %or431, ptr %arrayidx356, align 4
  br label %if.end440

do.end435:                                        ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #12
  %call437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.93, i32 noundef 485) #14
  br label %if.end440

if.end440:                                        ; preds = %do.end435, %sw.bb428, %sw.bb424, %if.end416.if.end440_crit_edge, %land.lhs.true360.if.end440_crit_edge, %if.end354.if.end440_crit_edge
  %79 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx356, align 4
  %conv443 = trunc i32 %80 to i16
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv443)
  %82 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %buf, align 2
  %83 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx356, align 4
  %shr447 = lshr i32 %84, 16
  %conv448 = trunc i32 %shr447 to i16
  %85 = tail call i16 @llvm.bswap.i16(i16 %conv448)
  %arrayidx449 = getelementptr i16, ptr %buf, i32 1
  %86 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %arrayidx449, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %87 = load i32, ptr @usbip_debug_flag, align 4
  %and451 = and i32 %87, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and451)
  %tobool452.not = icmp eq i32 %and451, 0
  br i1 %tobool452.not, label %if.end440.sw.epilog956_crit_edge, label %do.body454

if.end440.sw.epilog956_crit_edge:                 ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

do.body454:                                       ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %sw.epilog956)) #10
          to label %if.then468 [label %sw.epilog956], !srcloc !474

if.then468:                                       ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %buf, align 2
  %conv470 = zext i16 %89 to i32
  %90 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx449, align 2
  %conv472 = zext i16 %91 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.93, i32 noundef 495, i32 noundef %conv470, i32 noundef %conv472) #10
  br label %sw.epilog956

do.body480:                                       ; preds = %if.end61
  br i1 %tobool55.not, label %do.body480.sw.epilog956_crit_edge, label %do.body484

do.body480.sw.epilog956_crit_edge:                ; preds = %do.body480
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

do.body484:                                       ; preds = %do.body480
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %sw.epilog956)) #10
          to label %if.then498 [label %sw.epilog956], !srcloc !474

if.then498:                                       ; preds = %do.body484
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.93, i32 noundef 498) #10
  br label %sw.epilog956

sw.bb505:                                         ; preds = %if.end61
  %conv506 = zext i16 %wValue to i32
  %92 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.248)
  switch i16 %wValue, label %sw.bb505.do.body803_crit_edge [
    i16 5, label %do.body508
    i16 23, label %do.body544
    i16 24, label %sw.bb505.do.body570_crit_edge
    i16 2, label %do.body606
    i16 8, label %do.body654
    i16 28, label %do.body701
    i16 4, label %sw.bb505.do.body746_crit_edge
  ]

sw.bb505.do.body746_crit_edge:                    ; preds = %sw.bb505
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body746

sw.bb505.do.body570_crit_edge:                    ; preds = %sw.bb505
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body570

sw.bb505.do.body803_crit_edge:                    ; preds = %sw.bb505
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body803

do.body508:                                       ; preds = %sw.bb505
  br i1 %tobool55.not, label %do.body508.do.end532_crit_edge, label %do.body512

do.body508.do.end532_crit_edge:                   ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end532

do.body512:                                       ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end532)) #10
          to label %if.then526 [label %do.end532], !srcloc !474

if.then526:                                       ; preds = %do.body512
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.93, i32 noundef 505) #10
  br label %do.end532

do.end532:                                        ; preds = %if.then526, %do.body512, %do.body508.do.end532_crit_edge
  %speed533 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %93 = ptrtoint ptr %speed533 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %speed533, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %94)
  %cmp534.not = icmp eq i32 %94, 64
  br i1 %cmp534.not, label %do.end532.sw.epilog956_crit_edge, label %do.end539

do.end532.sw.epilog956_crit_edge:                 ; preds = %do.end532
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

do.end539:                                        ; preds = %do.end532
  call void @__sanitizer_cov_trace_pc() #12
  %call541 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.93, i32 noundef 508) #14
  br label %sw.epilog956

do.body544:                                       ; preds = %sw.bb505
  br i1 %tobool55.not, label %do.body544.do.body570_crit_edge, label %do.body548

do.body544.do.body570_crit_edge:                  ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body570

do.body548:                                       ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.body570)) #10
          to label %if.then562 [label %do.body570], !srcloc !474

if.then562:                                       ; preds = %do.body548
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.93, i32 noundef 518) #10
  br label %do.body570

do.body570:                                       ; preds = %if.then562, %do.body548, %do.body544.do.body570_crit_edge, %sw.bb505.do.body570_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %95 = load i32, ptr @usbip_debug_flag, align 4
  %and571 = and i32 %95, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and571)
  %tobool572.not = icmp eq i32 %and571, 0
  br i1 %tobool572.not, label %do.body570.do.end594_crit_edge, label %do.body574

do.body570.do.end594_crit_edge:                   ; preds = %do.body570
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end594

do.body574:                                       ; preds = %do.body570
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end594)) #10
          to label %if.then588 [label %do.end594], !srcloc !474

if.then588:                                       ; preds = %do.body574
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.93, i32 noundef 522) #10
  br label %do.end594

do.end594:                                        ; preds = %if.then588, %do.body574, %do.body570.do.end594_crit_edge
  %speed595 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %96 = ptrtoint ptr %speed595 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %speed595, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %97)
  %cmp596.not = icmp eq i32 %97, 64
  br i1 %cmp596.not, label %do.end594.sw.epilog956_crit_edge, label %do.end601

do.end594.sw.epilog956_crit_edge:                 ; preds = %do.end594
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

do.end601:                                        ; preds = %do.end594
  call void @__sanitizer_cov_trace_pc() #12
  %call603 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.93, i32 noundef 526) #14
  br label %sw.epilog956

do.body606:                                       ; preds = %sw.bb505
  br i1 %tobool55.not, label %do.body606.do.end630_crit_edge, label %do.body610

do.body606.do.end630_crit_edge:                   ; preds = %do.body606
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end630

do.body610:                                       ; preds = %do.body606
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end630)) #10
          to label %if.then624 [label %do.end630], !srcloc !474

if.then624:                                       ; preds = %do.body610
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.93, i32 noundef 532) #10
  br label %do.end630

do.end630:                                        ; preds = %if.then624, %do.body610, %do.body606.do.end630_crit_edge
  %speed631 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %98 = ptrtoint ptr %speed631 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %speed631, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %99)
  %cmp632 = icmp eq i32 %99, 64
  br i1 %cmp632, label %do.end637, label %if.end640

do.end637:                                        ; preds = %do.end630
  call void @__sanitizer_cov_trace_pc() #12
  %call639 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.93, i32 noundef 536) #14
  br label %sw.epilog956

if.end640:                                        ; preds = %do.end630
  br i1 %5, label %do.end645, label %if.end649

do.end645:                                        ; preds = %if.end640
  call void @__sanitizer_cov_trace_pc() #12
  %call648 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.93, i32 noundef 541, i32 noundef %conv22) #14
  br label %sw.epilog956

if.end649:                                        ; preds = %if.end640
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx651 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %100 = ptrtoint ptr %arrayidx651 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx651, align 4
  %or652 = or i32 %101, 4
  store i32 %or652, ptr %arrayidx651, align 4
  br label %sw.epilog956

do.body654:                                       ; preds = %sw.bb505
  br i1 %tobool55.not, label %do.body654.do.end678_crit_edge, label %do.body658

do.body654.do.end678_crit_edge:                   ; preds = %do.body654
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end678

do.body658:                                       ; preds = %do.body654
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end678)) #10
          to label %if.then672 [label %do.end678], !srcloc !474

if.then672:                                       ; preds = %do.body658
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.93, i32 noundef 549) #10
  br label %do.end678

do.end678:                                        ; preds = %if.then672, %do.body658, %do.body654.do.end678_crit_edge
  br i1 %5, label %do.end683, label %if.end687

do.end683:                                        ; preds = %do.end678
  call void @__sanitizer_cov_trace_pc() #12
  %call686 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.93, i32 noundef 551, i32 noundef %conv22) #14
  br label %sw.epilog956

if.end687:                                        ; preds = %do.end678
  %speed688 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %102 = ptrtoint ptr %speed688 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %speed688, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %103)
  %cmp689 = icmp eq i32 %103, 64
  %arrayidx693 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %104 = ptrtoint ptr %arrayidx693 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx693, align 4
  br i1 %cmp689, label %if.then691, label %if.else695

if.then691:                                       ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #12
  %or694 = or i32 %105, 512
  %106 = ptrtoint ptr %arrayidx693 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or694, ptr %arrayidx693, align 4
  br label %sw.epilog956

if.else695:                                       ; preds = %if.end687
  call void @__sanitizer_cov_trace_pc() #12
  %or698 = or i32 %105, 256
  %107 = ptrtoint ptr %arrayidx693 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or698, ptr %arrayidx693, align 4
  br label %sw.epilog956

do.body701:                                       ; preds = %sw.bb505
  br i1 %tobool55.not, label %do.body701.do.end725_crit_edge, label %do.body705

do.body701.do.end725_crit_edge:                   ; preds = %do.body701
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end725

do.body705:                                       ; preds = %do.body701
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end725)) #10
          to label %if.then719 [label %do.end725], !srcloc !474

if.then719:                                       ; preds = %do.body705
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.93, i32 noundef 561) #10
  br label %do.end725

do.end725:                                        ; preds = %if.then719, %do.body705, %do.body701.do.end725_crit_edge
  br i1 %5, label %do.end730, label %if.end734

do.end730:                                        ; preds = %do.end725
  call void @__sanitizer_cov_trace_pc() #12
  %call733 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.93, i32 noundef 563, i32 noundef %conv22) #14
  br label %sw.epilog956

if.end734:                                        ; preds = %do.end725
  %speed735 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %108 = ptrtoint ptr %speed735 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %speed735, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %109)
  %cmp736.not = icmp eq i32 %109, 64
  br i1 %cmp736.not, label %if.end734.do.body746_crit_edge, label %do.end741

if.end734.do.body746_crit_edge:                   ; preds = %if.end734
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body746

do.end741:                                        ; preds = %if.end734
  call void @__sanitizer_cov_trace_pc() #12
  %call743 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.93, i32 noundef 569) #14
  br label %sw.epilog956

do.body746:                                       ; preds = %if.end734.do.body746_crit_edge, %sw.bb505.do.body746_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %110 = load i32, ptr @usbip_debug_flag, align 4
  %and747 = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and747)
  %tobool748.not = icmp eq i32 %and747, 0
  br i1 %tobool748.not, label %do.body746.do.end770_crit_edge, label %do.body750

do.body746.do.end770_crit_edge:                   ; preds = %do.body746
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end770

do.body750:                                       ; preds = %do.body746
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end770)) #10
          to label %if.then764 [label %do.end770], !srcloc !474

if.then764:                                       ; preds = %do.body750
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.93, i32 noundef 575) #10
  br label %do.end770

do.end770:                                        ; preds = %if.then764, %do.body750, %do.body746.do.end770_crit_edge
  br i1 %5, label %do.end775, label %if.end779

do.end775:                                        ; preds = %do.end770
  call void @__sanitizer_cov_trace_pc() #12
  %call778 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.93, i32 noundef 577, i32 noundef %conv22) #14
  br label %sw.epilog956

if.end779:                                        ; preds = %do.end770
  %speed780 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %111 = ptrtoint ptr %speed780 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %speed780, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %112)
  %cmp781 = icmp eq i32 %112, 64
  %arrayidx785 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  br i1 %cmp781, label %if.end779.if.end798.sink.split_crit_edge, label %if.else788

if.end779.if.end798.sink.split_crit_edge:         ; preds = %if.end779
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end798.sink.split

if.else788:                                       ; preds = %if.end779
  %113 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx785, align 4
  %and791 = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and791)
  %tobool792.not = icmp eq i32 %and791, 0
  br i1 %tobool792.not, label %if.else788.if.end798_crit_edge, label %if.then793

if.else788.if.end798_crit_edge:                   ; preds = %if.else788
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end798

if.then793:                                       ; preds = %if.else788
  call void @__sanitizer_cov_trace_pc() #12
  %and796 = and i32 %114, -1539
  br label %if.end798.sink.split

if.end798.sink.split:                             ; preds = %if.then793, %if.end779.if.end798.sink.split_crit_edge
  %and796.sink = phi i32 [ %and796, %if.then793 ], [ 529, %if.end779.if.end798.sink.split_crit_edge ]
  %115 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and796.sink, ptr %arrayidx785, align 4
  br label %if.end798

if.end798:                                        ; preds = %if.end798.sink.split, %if.else788.if.end798_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %add800 = add i32 %116, 5
  %re_timeout801 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 2
  %117 = ptrtoint ptr %re_timeout801 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add800, ptr %re_timeout801, align 8
  br label %do.body803

do.body803:                                       ; preds = %if.end798, %sw.bb505.do.body803_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %118 = load i32, ptr @usbip_debug_flag, align 4
  %and804 = and i32 %118, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and804)
  %tobool805.not = icmp eq i32 %and804, 0
  br i1 %tobool805.not, label %do.body803.do.end828_crit_edge, label %do.body807

do.body803.do.end828_crit_edge:                   ; preds = %do.body803
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end828

do.body807:                                       ; preds = %do.body803
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end828)) #10
          to label %if.then821 [label %do.end828], !srcloc !474

if.then821:                                       ; preds = %do.body807
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.93, i32 noundef 598, i32 noundef %conv506) #10
  br label %do.end828

do.end828:                                        ; preds = %if.then821, %do.body807, %do.body803.do.end828_crit_edge
  br i1 %5, label %do.end833, label %if.end837

do.end833:                                        ; preds = %do.end828
  call void @__sanitizer_cov_trace_pc() #12
  %call836 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.93, i32 noundef 600, i32 noundef %conv22) #14
  br label %sw.epilog956

if.end837:                                        ; preds = %do.end828
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %wValue)
  %cmp839 = icmp ugt i16 %wValue, 31
  br i1 %cmp839, label %if.end837.sw.epilog956_crit_edge, label %if.end842

if.end837.sw.epilog956_crit_edge:                 ; preds = %if.end837
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

if.end842:                                        ; preds = %if.end837
  %speed843 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %119 = ptrtoint ptr %speed843 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %speed843, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %120)
  %cmp844 = icmp eq i32 %120, 64
  %arrayidx848 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %121 = ptrtoint ptr %arrayidx848 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx848, align 4
  br i1 %cmp844, label %if.then846, label %if.else859

if.then846:                                       ; preds = %if.end842
  %and849 = and i32 %122, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and849)
  %cmp850.not = icmp eq i32 %and849, 0
  br i1 %cmp850.not, label %if.then846.sw.epilog956_crit_edge, label %if.then852

if.then846.sw.epilog956_crit_edge:                ; preds = %if.then846
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

if.then852:                                       ; preds = %if.then846
  call void @__sanitizer_cov_trace_pc() #12
  %shl854 = shl nuw i32 1, %conv506
  %or857 = or i32 %122, %shl854
  %123 = ptrtoint ptr %arrayidx848 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or857, ptr %arrayidx848, align 4
  br label %sw.epilog956

if.else859:                                       ; preds = %if.end842
  %and862 = and i32 %122, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and862)
  %cmp863.not = icmp eq i32 %and862, 0
  br i1 %cmp863.not, label %if.else859.sw.epilog956_crit_edge, label %if.then865

if.else859.sw.epilog956_crit_edge:                ; preds = %if.else859
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

if.then865:                                       ; preds = %if.else859
  call void @__sanitizer_cov_trace_pc() #12
  %shl867 = shl nuw i32 1, %conv506
  %or870 = or i32 %122, %shl867
  %124 = ptrtoint ptr %arrayidx848 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or870, ptr %arrayidx848, align 4
  br label %sw.epilog956

do.body875:                                       ; preds = %if.end61
  br i1 %tobool55.not, label %do.body875.do.end899_crit_edge, label %do.body879

do.body875.do.end899_crit_edge:                   ; preds = %do.body875
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end899

do.body879:                                       ; preds = %do.body875
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end899)) #10
          to label %if.then893 [label %do.end899], !srcloc !474

if.then893:                                       ; preds = %do.body879
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.93, i32 noundef 618) #10
  br label %do.end899

do.end899:                                        ; preds = %if.then893, %do.body879, %do.body875.do.end899_crit_edge
  %speed900 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %125 = ptrtoint ptr %speed900 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %speed900, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %126)
  %cmp901.not = icmp eq i32 %126, 64
  br i1 %cmp901.not, label %if.end909, label %do.end906

do.end906:                                        ; preds = %do.end899
  call void @__sanitizer_cov_trace_pc() #12
  %call908 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.93, i32 noundef 621) #14
  br label %sw.epilog956

if.end909:                                        ; preds = %do.end899
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %buf, align 4
  br label %sw.epilog956

do.body911:                                       ; preds = %if.end61
  br i1 %tobool55.not, label %do.body911.do.end935_crit_edge, label %do.body915

do.body911.do.end935_crit_edge:                   ; preds = %do.body911
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end935

do.body915:                                       ; preds = %do.body911
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end935)) #10
          to label %if.then929 [label %do.end935], !srcloc !474

if.then929:                                       ; preds = %do.body915
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.93, i32 noundef 628) #10
  br label %do.end935

do.end935:                                        ; preds = %if.then929, %do.body915, %do.body911.do.end935_crit_edge
  %speed936 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %128 = ptrtoint ptr %speed936 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %speed936, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %129)
  %cmp937.not = icmp eq i32 %129, 64
  br i1 %cmp937.not, label %do.end935.sw.epilog956_crit_edge, label %do.end942

do.end935.sw.epilog956_crit_edge:                 ; preds = %do.end935
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog956

do.end942:                                        ; preds = %do.end935
  call void @__sanitizer_cov_trace_pc() #12
  %call944 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.93, i32 noundef 631) #14
  br label %sw.epilog956

do.end949:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %conv62 = zext i16 %typeReq to i32
  %conv952 = zext i16 %wValue to i32
  %conv954 = zext i16 %wLength to i32
  %call955 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.93, i32 noundef 637, i32 noundef %conv62, i32 noundef %conv952, i32 noundef %conv22, i32 noundef %conv954) #14
  br label %sw.epilog956

sw.epilog956:                                     ; preds = %do.end949, %do.end942, %do.end935.sw.epilog956_crit_edge, %if.end909, %do.end906, %if.then865, %if.else859.sw.epilog956_crit_edge, %if.then852, %if.then846.sw.epilog956_crit_edge, %if.end837.sw.epilog956_crit_edge, %do.end833, %do.end775, %do.end741, %do.end730, %if.else695, %if.then691, %do.end683, %if.end649, %do.end645, %do.end637, %do.end601, %do.end594.sw.epilog956_crit_edge, %do.end539, %do.end532.sw.epilog956_crit_edge, %if.then498, %do.body484, %do.body480.sw.epilog956_crit_edge, %if.then468, %do.body454, %if.end440.sw.epilog956_crit_edge, %do.end330, %do.end298, %if.end272, %sw.bb262.sw.epilog956_crit_edge, %if.else260, %if.then259, %do.end252, %if.end208, %do.end203.sw.epilog956_crit_edge, %if.else173, %if.then169, %if.then137, %do.end133.sw.epilog956_crit_edge, %do.end105, %do.end93, %if.then81, %do.body67, %do.body63.sw.epilog956_crit_edge
  %retval1.0 = phi i32 [ 0, %do.end935.sw.epilog956_crit_edge ], [ 0, %if.end909 ], [ 0, %if.then852 ], [ 0, %if.then846.sw.epilog956_crit_edge ], [ 0, %if.then865 ], [ 0, %if.else859.sw.epilog956_crit_edge ], [ 0, %if.then691 ], [ 0, %if.else695 ], [ 0, %if.end649 ], [ 0, %do.end594.sw.epilog956_crit_edge ], [ 0, %do.end532.sw.epilog956_crit_edge ], [ 0, %if.then468 ], [ 0, %if.end440.sw.epilog956_crit_edge ], [ 0, %do.end298 ], [ 15, %if.end272 ], [ 0, %if.then259 ], [ 0, %if.else260 ], [ 0, %if.end208 ], [ 0, %if.then169 ], [ 0, %if.else173 ], [ 0, %if.then137 ], [ 0, %do.end133.sw.epilog956_crit_edge ], [ 0, %if.then81 ], [ 0, %do.body63.sw.epilog956_crit_edge ], [ -32, %if.then498 ], [ -32, %do.body480.sw.epilog956_crit_edge ], [ -32, %if.end837.sw.epilog956_crit_edge ], [ -32, %sw.bb262.sw.epilog956_crit_edge ], [ -32, %do.end203.sw.epilog956_crit_edge ], [ -32, %do.end949 ], [ -32, %do.end942 ], [ -32, %do.end906 ], [ -32, %do.end833 ], [ -32, %do.end775 ], [ -32, %do.end741 ], [ -32, %do.end730 ], [ -32, %do.end683 ], [ -32, %do.end645 ], [ -32, %do.end637 ], [ -32, %do.end601 ], [ -32, %do.end539 ], [ -32, %do.end330 ], [ -32, %do.end252 ], [ -32, %do.end105 ], [ -32, %do.end93 ], [ 0, %do.body67 ], [ 0, %do.body454 ], [ -32, %do.body484 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %130 = load i32, ptr @usbip_debug_flag, align 4
  %and957 = and i32 %130, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and957)
  %tobool958.not = icmp eq i32 %and957, 0
  br i1 %tobool958.not, label %sw.epilog956.do.body988_crit_edge, label %do.body960

sw.epilog956.do.body988_crit_edge:                ; preds = %sw.epilog956
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body988

do.body960:                                       ; preds = %sw.epilog956
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end977)) #10
          to label %if.then974 [label %do.end977], !srcloc !474

if.then974:                                       ; preds = %do.body960
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.93, i32 noundef 644, i32 noundef %rhport.0) #10
  br label %do.end977

do.end977:                                        ; preds = %if.then974, %do.body960
  br i1 %5, label %do.end977.do.body988_crit_edge, label %if.then979

do.end977.do.body988_crit_edge:                   ; preds = %do.end977
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body988

if.then979:                                       ; preds = %do.end977
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx980 = getelementptr [8 x i32], ptr %prev_port_status, i32 0, i32 %rhport.0
  %131 = ptrtoint ptr %arrayidx980 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx980, align 4
  %arrayidx982 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %133 = ptrtoint ptr %arrayidx982 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx982, align 4
  %speed983 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %135 = ptrtoint ptr %speed983 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %speed983, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %136)
  %cmp984 = icmp eq i32 %136, 64
  tail call fastcc void @dump_port_status_diff(i32 noundef %132, i32 noundef %134, i1 noundef zeroext %cmp984)
  br label %do.body988

do.body988:                                       ; preds = %if.then979, %do.end977.do.body988_crit_edge, %sw.epilog956.do.body988_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %137 = load i32, ptr @usbip_debug_flag, align 4
  %and989 = and i32 %137, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and989)
  %tobool990.not = icmp eq i32 %and989, 0
  br i1 %tobool990.not, label %do.body988.do.end1012_crit_edge, label %do.body992

do.body988.do.end1012_crit_edge:                  ; preds = %do.body988
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end1012

do.body992:                                       ; preds = %do.body988
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_hub_control.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_hub_control, %do.end1012)) #10
          to label %if.then1006 [label %do.end1012], !srcloc !474

if.then1006:                                      ; preds = %do.body992
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_hub_control.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.93, i32 noundef 652) #10
  br label %do.end1012

do.end1012:                                       ; preds = %if.then1006, %do.body992, %do.body988.do.end1012_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call49) #10
  br i1 %5, label %do.end1012.cleanup_crit_edge, label %land.lhs.true1015

do.end1012.cleanup_crit_edge:                     ; preds = %do.end1012
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true1015:                                ; preds = %do.end1012
  %arrayidx1017 = getelementptr %struct.vhci_hcd, ptr %hcd_priv.i, i32 0, i32 1, i32 %rhport.0
  %138 = ptrtoint ptr %arrayidx1017 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx1017, align 4
  %and1018 = and i32 %139, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1018)
  %cmp1019.not = icmp eq i32 %and1018, 0
  br i1 %cmp1019.not, label %land.lhs.true1015.cleanup_crit_edge, label %if.then1021

land.lhs.true1015.cleanup_crit_edge:              ; preds = %land.lhs.true1015
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1021:                                      ; preds = %land.lhs.true1015
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_hcd_poll_rh_status(ptr noundef %hcd) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then1021, %land.lhs.true1015.cleanup_crit_edge, %do.end1012.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ %retval1.0, %if.then1021 ], [ %retval1.0, %land.lhs.true1015.cleanup_crit_edge ], [ %retval1.0, %do.end1012.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prev_port_status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_bus_suspend(ptr nocapture noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_bus_suspend.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_bus_suspend, %do.body7)) #10
          to label %if.then [label %do.body7], !srcloc !474

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %6 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_hub, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vhci_bus_suspend.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.228) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call10) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_bus_resume(ptr nocapture noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_bus_resume.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_bus_resume, %do.body7)) #10
          to label %if.then [label %do.body7], !srcloc !474

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %6 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_hub, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vhci_bus_resume.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.230) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %flags15 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %8 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags15, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body7.if.end18_crit_edge, label %if.else

do.body7.if.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.else:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.body7.if.end18_crit_edge
  %rc.0 = phi i32 [ 0, %if.else ], [ -108, %do.body7.if.end18_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call10) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_alloc_streams(ptr nocapture noundef readonly %hcd, ptr nocapture noundef readnone %udev, ptr nocapture noundef readnone %eps, i32 noundef %num_eps, i32 noundef %num_streams, i32 noundef %mem_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_alloc_streams.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_alloc_streams, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !474

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %0 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_hub, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vhci_alloc_streams.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.232) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_free_streams(ptr nocapture noundef readonly %hcd, ptr nocapture noundef readnone %udev, ptr nocapture noundef readnone %eps, i32 noundef %num_eps, i32 noundef %mem_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_free_streams.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_free_streams, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !474

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %0 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_hub, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vhci_free_streams.__UNIQUE_ID_ddebug282, ptr noundef %dev, ptr noundef nonnull @.str.234) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhci_init_attr_group() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhci_finish_attr_group() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhci_shutdown_connection(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp_socket = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 5
  %0 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcp_socket, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_shutdown_connection.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_shutdown_connection, %do.end)) #10
          to label %if.then6 [label %do.end], !srcloc !474

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sockfd = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 4
  %2 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sockfd, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_shutdown_connection.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 1017, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %4 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcp_socket, align 4
  %call8 = tail call i32 @kernel_sock_shutdown(ptr noundef %5, i32 noundef 2) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %tcp_rx = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 6
  %6 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcp_rx, align 8
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end9.if.end23_crit_edge, label %do.body13

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.body13:                                        ; preds = %if.end9
  %call16 = tail call i32 @kthread_stop(ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcp_rx, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !483
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !484
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !485

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !486
  tail call void @__put_task_struct(ptr noundef %9) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %11 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tcp_rx, align 8
  br label %if.end23

if.end23:                                         ; preds = %put_task_struct.exit, %if.end9.if.end23_crit_edge
  %tcp_tx = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 7
  %12 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tcp_tx, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end23.do.end40_crit_edge, label %do.body27

if.end23.do.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.body27:                                        ; preds = %if.end23
  %call30 = tail call i32 @kthread_stop(ptr noundef nonnull %13) #10
  %14 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcp_tx, align 4
  %usage.i82 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 2
  %call.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i82, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !483
  tail call void @llvm.prefetch.p0(ptr %usage.i82, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i82, ptr %usage.i82, i32 1, ptr elementtype(i32) %usage.i82) #10, !srcloc !484
  %asmresult.i.i.i.i.i.i.i84 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i84)
  %cmp.i.i.i.i85 = icmp eq i32 %asmresult.i.i.i.i.i.i.i84, 1
  br i1 %cmp.i.i.i.i85, label %if.then.i89, label %if.end5.i.i.i.i87

if.end5.i.i.i.i87:                                ; preds = %do.body27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i84)
  %.not.i.i.i.i86 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i84, 0
  br i1 %.not.i.i.i.i86, label %if.end5.i.i.i.i87.put_task_struct.exit90_crit_edge, label %if.then10.i.i.i.i88, !prof !485

if.end5.i.i.i.i87.put_task_struct.exit90_crit_edge: ; preds = %if.end5.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit90

if.then10.i.i.i.i88:                              ; preds = %if.end5.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i82, i32 noundef 3) #10
  br label %put_task_struct.exit90

if.then.i89:                                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !486
  tail call void @__put_task_struct(ptr noundef %15) #10
  br label %put_task_struct.exit90

put_task_struct.exit90:                           ; preds = %if.then.i89, %if.then10.i.i.i.i88, %if.end5.i.i.i.i87.put_task_struct.exit90_crit_edge
  %17 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tcp_tx, align 4
  br label %do.end40

do.end40:                                         ; preds = %put_task_struct.exit90, %if.end23.do.end40_crit_edge
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43, i32 noundef 1030) #14
  %18 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tcp_socket, align 4
  %tobool45.not = icmp eq ptr %19, null
  br i1 %tobool45.not, label %do.end40.do.end56_crit_edge, label %if.then46

do.end40.do.end56_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

if.then46:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %file = getelementptr inbounds %struct.socket, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %21) #10
  %22 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %tcp_socket, align 4
  %sockfd52 = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 4
  %23 = ptrtoint ptr %sockfd52 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %sockfd52, align 8
  br label %do.end56

do.end56:                                         ; preds = %if.then46, %do.end40.do.end56_crit_edge
  %add.ptr = getelementptr i8, ptr %ud, i32 -16
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43, i32 noundef 1038) #14
  %unlink_tx.i = getelementptr i8, ptr %ud, i32 300
  tail call fastcc void @vhci_cleanup_unlink_list(ptr noundef %add.ptr, ptr noundef %unlink_tx.i) #10
  %unlink_rx.i = getelementptr i8, ptr %ud, i32 308
  tail call fastcc void @vhci_cleanup_unlink_list(ptr noundef %add.ptr, ptr noundef %unlink_rx.i) #10
  %rhport.i.i = getelementptr i8, ptr %ud, i32 -4
  %24 = ptrtoint ptr %rhport.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rhport.i.i, align 4
  %idx.neg.i.i = sub i32 0, %25
  %add.ptr.i.i = getelementptr %struct.vhci_device, ptr %add.ptr, i32 %idx.neg.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -48
  %26 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr1.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %28 = load i32, ptr @usbip_debug_flag, align 4
  %and.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end56.rh_port_disconnect.exit_crit_edge, label %do.body3.i

do.end56.rh_port_disconnect.exit_crit_edge:       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %rh_port_disconnect.exit

do.body3.i:                                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rh_port_disconnect.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_shutdown_connection, %rh_port_disconnect.exit)) #10
          to label %if.then9.i [label %rh_port_disconnect.exit], !srcloc !474

if.then9.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rh_port_disconnect.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef 195, i32 noundef %25) #10
  br label %rh_port_disconnect.exit

rh_port_disconnect.exit:                          ; preds = %if.then9.i, %do.body3.i, %do.end56.rh_port_disconnect.exit_crit_edge
  %call17.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #10
  %arrayidx.i = getelementptr %struct.vhci_hcd, ptr %add.ptr1.i.i, i32 0, i32 1, i32 %25
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %and22.i = and i32 %30, -65538
  %or.i = or i32 %and22.i, 65536
  store i32 %or.i, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call17.i) #10
  %add.ptr.i36.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -600
  tail call void @usb_hcd_poll_rh_status(ptr noundef %add.ptr.i36.i) #10
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.43, i32 noundef 1064) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhci_device_reset(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ud, i32 -16
  %lock = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %speed = getelementptr i8, ptr %ud, i32 -8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %speed, align 8
  %devid = getelementptr i8, ptr %ud, i32 -12
  %1 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %devid, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void @usb_put_dev(ptr noundef %3) #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %add.ptr, align 8
  %tcp_socket = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 5
  %5 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcp_socket, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %file = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %8) #10
  %9 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tcp_socket, align 4
  %sockfd = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 4
  %10 = ptrtoint ptr %sockfd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %sockfd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 1
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhci_device_unusable(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %status = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_start_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhci_cleanup_unlink_list(ptr noundef %vdev, ptr noundef readonly %unlink_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rhport.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %rhport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rhport.i, align 4
  %idx.neg.i = sub i32 0, %1
  %add.ptr.i = getelementptr %struct.vhci_device, ptr %vdev, i32 %idx.neg.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -48
  %add.ptr.i69 = getelementptr i8, ptr %add.ptr1.i, i32 -600
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr1.i, align 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %priv_lock = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %priv_lock) #10
  %4 = ptrtoint ptr %unlink_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlink_list, align 4
  %cmp15.not78 = icmp eq ptr %5, %unlink_list
  br i1 %cmp15.not78, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in80 = phi ptr [ %.pn84, %cleanup.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %flags.079 = phi i32 [ %flags.1, %cleanup.for.body_crit_edge ], [ %call6, %entry.for.body_crit_edge ]
  %unlink.083 = getelementptr i8, ptr %.pn.in80, i32 -4
  %6 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn84 = load ptr, ptr %.pn.in80, align 4
  %unlink_seqnum = getelementptr i8, ptr %.pn.in80, i32 8
  %7 = ptrtoint ptr %unlink_seqnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %unlink_seqnum, align 4
  %call17 = tail call ptr @pickup_urb_and_free_priv(ptr noundef %vdev, i32 noundef %8) #10
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in80) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in80, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in80, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %status = getelementptr inbounds %struct.urb, ptr %call17, i32 0, i32 12
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -19, ptr %status, align 4
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i69, ptr noundef nonnull %call17) #10
  %call.i.i70 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in80) #10
  br i1 %call.i.i70, label %if.end.i.i73, label %if.end.list_del.exit75_crit_edge

if.end.list_del.exit75_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit75

if.end.i.i73:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i71 = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i71, align 4
  %20 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in80, align 4
  %prev1.i.i.i72 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i72, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit75

list_del.exit75:                                  ; preds = %if.end.i.i73, %if.end.list_del.exit75_crit_edge
  %24 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in80, align 4
  %prev.i74 = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i74, align 4
  tail call void @_raw_spin_unlock(ptr noundef %priv_lock) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %flags.079) #10
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i69, ptr noundef nonnull %call17, i32 noundef %27) #10
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  tail call void @_raw_spin_lock(ptr noundef %priv_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit75, %list_del.exit
  %flags.1 = phi i32 [ %call32, %list_del.exit75 ], [ %flags.079, %list_del.exit ]
  tail call void @kfree(ptr noundef %unlink.083) #10
  %cmp15.not = icmp eq ptr %.pn84, %unlink_list
  br i1 %cmp15.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call6, %entry.for.end_crit_edge ], [ %flags.1, %cleanup.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %priv_lock) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %flags.0.lcssa) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pickup_urb_and_free_priv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_stop_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_port_status_diff(i32 noundef %prev_status, i32 noundef %new_status, i1 noundef zeroext %usb3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.store.select = select i1 %usb3, ptr @bit_desc_ss, ptr @bit_desc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_port_status_diff.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_port_status_diff, %do.end)) #10
          to label %if.then6 [label %do.end], !srcloc !474

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_port_status_diff.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.184, i32 noundef 128, i32 noundef %prev_status, i32 noundef %new_status) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %entry
  %0 = or i32 %new_status, %prev_status
  br label %while.body

while.body:                                       ; preds = %if.end63.while.body_crit_edge, %do.end
  %i.0112 = phi i32 [ 0, %do.end ], [ %inc, %if.end63.while.body_crit_edge ]
  %bit.0110 = phi i32 [ 1, %do.end ], [ %shl, %if.end63.while.body_crit_edge ]
  %and = and i32 %bit.0110, %prev_status
  %and9 = and i32 %bit.0110, %new_status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool11.not = icmp eq i32 %and9, 0
  %or.cond = or i1 %tobool10.not, %tobool11.not
  %or.cond95 = and i1 %tobool10.not, %tobool11.not
  %spec.select = select i1 %or.cond95, i32 45, i32 32
  %change.0 = select i1 %or.cond, i32 %spec.select, i32 43
  %1 = and i32 %bit.0110, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %while.body.if.end63_crit_edge, label %do.body23

while.body.if.end63_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.body23:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_port_status_diff.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_port_status_diff, %do.end40)) #10
          to label %if.then37 [label %do.end40], !srcloc !474

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr ptr, ptr %spec.store.select, i32 %i.0112
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_port_status_diff.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.184, i32 noundef 142, i32 noundef %change.0, ptr noundef %4) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bit.0110)
  %cmp = icmp eq i32 %bit.0110, 1
  br i1 %cmp, label %do.body43, label %do.end40.if.end63_crit_edge

do.end40.if.end63_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.body43:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_port_status_diff.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_port_status_diff, %if.end63)) #10
          to label %if.then57 [label %if.end63], !srcloc !474

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_port_status_diff.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.184, i32 noundef 145, i32 noundef %change.0, ptr noundef nonnull @.str.189) #10
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %do.body43, %do.end40.if.end63_crit_edge, %while.body.if.end63_crit_edge
  %shl = shl i32 %bit.0110, 1
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond = icmp eq i32 %inc, 32
  br i1 %exitcond, label %do.body64, label %if.end63.while.body_crit_edge

if.end63.while.body_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.body64:                                        ; preds = %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_port_status_diff.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_port_status_diff, %do.end81)) #10
          to label %if.then78 [label %do.end81], !srcloc !474

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_port_status_diff.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.184, i32 noundef 150) #10
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 233)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 233)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !282, !283, !284, !286, !287, !289, !290, !291, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !307, !308, !309, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !356, !357, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !437, !438, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !454, !455, !456, !457, !458, !460, !461, !462, !464}
!llvm.module.flags = !{!465, !466, !467, !468, !469, !470, !471, !472}
!llvm.ident = !{!473}

!0 = !{ptr @vhci_num_controllers, !1, !"vhci_num_controllers", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 46, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 161, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rh_port_connect.__UNIQUE_ID_ddebug245, !3, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_vhci_hcd__287_1574_vhci_hcd_init6, !10, !"__initcall__kmod_vhci_hcd__287_1574_vhci_hcd_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1574, i32 1}
!11 = !{ptr @__exitcall_vhci_hcd_exit, !12, !"__exitcall_vhci_hcd_exit", i1 false, i1 false}
!12 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1575, i32 1}
!13 = !{ptr @__UNIQUE_ID_author288, !14, !"__UNIQUE_ID_author288", i1 false, i1 false}
!14 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1577, i32 1}
!15 = !{ptr @__UNIQUE_ID_description289, !16, !"__UNIQUE_ID_description289", i1 false, i1 false}
!16 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1578, i32 1}
!17 = !{ptr @__UNIQUE_ID_file290, !18, !"__UNIQUE_ID_file290", i1 false, i1 false}
!18 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1579, i32 1}
!19 = !{ptr @__UNIQUE_ID_license291, !18, !"__UNIQUE_ID_license291", i1 false, i1 false}
!20 = !{ptr @vhcis, !21, !"vhcis", i1 false, i1 false}
!21 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 47, i32 14}
!22 = !{ptr @driver_name, !23, !"driver_name", i1 false, i1 false}
!23 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 43, i32 19}
!24 = !{ptr @vhci_driver, !25, !"vhci_driver", i1 false, i1 false}
!25 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1486, i32 31}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1345, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vhci_hcd_probe.__UNIQUE_ID_ddebug283, !27, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1353, i32 3}
!33 = !{ptr @vhci_hcd_probe._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @vhci_hcd_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1364, i32 3}
!37 = !{ptr @vhci_hcd_probe._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @vhci_hcd_probe._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1372, i32 3}
!41 = !{ptr @vhci_hcd_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @vhci_hcd_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1378, i32 3}
!45 = !{ptr @vhci_hcd_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vhci_hcd_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1382, i32 2}
!49 = !{ptr @vhci_hcd_probe.__UNIQUE_ID_ddebug284, !48, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!50 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @vhci_hc_driver, !52, !"vhci_hc_driver", i1 false, i1 false}
!52 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1313, i32 31}
!53 = !{ptr @driver_desc, !54, !"driver_desc", i1 false, i1 false}
!54 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 44, i32 19}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1177, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vhci_start.__UNIQUE_ID_ddebug277, !56, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!59 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vhci_start.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1180, i32 3}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1202, i32 3}
!65 = !{ptr @vhci_start._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @vhci_start._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1210, i32 4}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vhci_start._entry.25, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @vhci_start._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1215, i32 4}
!75 = !{ptr @vhci_start._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @vhci_start._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1219, i32 3}
!79 = !{ptr @vhci_start._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @vhci_start._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @vhci_device_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1105, i32 2}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @vhci_device_init.__key.37, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1106, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @vhci_device_init.__key.39, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1112, i32 2}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @vhci_device_init.__key.41, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1114, i32 2}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1017, i32 3}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @vhci_shutdown_connection.__UNIQUE_ID_ddebug276, !94, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!97 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1030, i32 2}
!100 = !{ptr @vhci_shutdown_connection._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @vhci_shutdown_connection._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1038, i32 2}
!104 = !{ptr @vhci_shutdown_connection._entry.47, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @vhci_shutdown_connection._entry_ptr.49, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1064, i32 2}
!108 = !{ptr @vhci_shutdown_connection._entry.50, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @vhci_shutdown_connection._entry_ptr.52, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 195, i32 2}
!112 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @rh_port_disconnect.__UNIQUE_ID_ddebug246, !111, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!114 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1230, i32 2}
!117 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vhci_stop.__UNIQUE_ID_ddebug278, !116, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!119 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1250, i32 2}
!122 = !{ptr @vhci_get_frame_number._rs, !121, !"_rs", i1 false, i1 false}
!123 = !{ptr @__func__.vhci_get_frame_number, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @vhci_get_frame_number._entry, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @vhci_get_frame_number._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 704, i32 3}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @vhci_urb_enqueue._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @vhci_urb_enqueue._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 711, i32 3}
!134 = !{ptr @vhci_urb_enqueue.__UNIQUE_ID_ddebug273, !133, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 718, i32 3}
!137 = !{ptr @vhci_urb_enqueue._entry.64, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @vhci_urb_enqueue._entry_ptr.66, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 727, i32 3}
!141 = !{ptr @vhci_urb_enqueue._entry.67, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @vhci_urb_enqueue._entry_ptr.69, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 753, i32 4}
!145 = !{ptr @vhci_urb_enqueue._entry.70, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @vhci_urb_enqueue._entry_ptr.72, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 761, i32 4}
!149 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @vhci_urb_enqueue._entry.73, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @vhci_urb_enqueue._entry_ptr.76, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 781, i32 5}
!154 = !{ptr @vhci_urb_enqueue.__UNIQUE_ID_ddebug274, !153, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!155 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 790, i32 4}
!158 = !{ptr @vhci_urb_enqueue._entry.79, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @vhci_urb_enqueue._entry_ptr.81, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 680, i32 3}
!162 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @vhci_tx_urb._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @vhci_tx_urb._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 936, i32 4}
!167 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @vhci_urb_dequeue._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @vhci_urb_dequeue._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 950, i32 2}
!172 = !{ptr @vhci_urb_dequeue.__UNIQUE_ID_ddebug275, !171, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!173 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 241, i32 3}
!176 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @vhci_hub_status.__UNIQUE_ID_ddebug247, !175, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!178 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 249, i32 4}
!181 = !{ptr @vhci_hub_status.__UNIQUE_ID_ddebug248, !180, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!182 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.93, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 335, i32 2}
!185 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug250, !184, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!187 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @vhci_hub_control._entry, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 348, i32 4}
!190 = !{ptr @vhci_hub_control._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 366, i32 3}
!193 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug251, !192, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!194 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @vhci_hub_control._entry.98, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 370, i32 4}
!197 = !{ptr @vhci_hub_control._entry_ptr.99, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 376, i32 5}
!200 = !{ptr @vhci_hub_control._entry.100, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @vhci_hub_control._entry_ptr.102, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 380, i32 4}
!204 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug252, !203, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!205 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 389, i32 4}
!208 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug253, !207, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!209 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 397, i32 4}
!212 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug254, !211, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!213 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 406, i32 3}
!216 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug255, !215, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!217 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 410, i32 4}
!220 = !{ptr @vhci_hub_control._entry.111, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @vhci_hub_control._entry_ptr.113, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 429, i32 3}
!224 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug256, !223, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!225 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.116, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 433, i32 3}
!228 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug257, !227, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!229 = !{ptr @.str.117, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @vhci_hub_control._entry.118, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 435, i32 4}
!232 = !{ptr @vhci_hub_control._entry_ptr.119, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.120, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 466, i32 5}
!235 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug258, !234, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!236 = !{ptr @.str.121, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 485, i32 6}
!239 = !{ptr @vhci_hub_control._entry.122, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @vhci_hub_control._entry_ptr.124, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 494, i32 3}
!243 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug259, !242, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!244 = !{ptr @.str.126, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.127, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 498, i32 3}
!247 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug260, !246, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!248 = !{ptr @.str.128, !246, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.129, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 504, i32 4}
!251 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug261, !250, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!252 = !{ptr @.str.130, !250, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.132, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 507, i32 5}
!255 = !{ptr @vhci_hub_control._entry.131, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @vhci_hub_control._entry_ptr.133, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.134, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 517, i32 4}
!259 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug262, !258, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!260 = !{ptr @.str.135, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.136, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 521, i32 4}
!263 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug263, !262, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!264 = !{ptr @.str.137, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.139, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 525, i32 5}
!267 = !{ptr @vhci_hub_control._entry.138, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @vhci_hub_control._entry_ptr.140, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.141, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 531, i32 4}
!271 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug264, !270, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!272 = !{ptr @.str.142, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.144, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 535, i32 5}
!275 = !{ptr @vhci_hub_control._entry.143, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @vhci_hub_control._entry_ptr.145, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @vhci_hub_control._entry.146, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 541, i32 5}
!279 = !{ptr @vhci_hub_control._entry_ptr.147, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.148, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 548, i32 4}
!282 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug265, !281, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!283 = !{ptr @.str.149, !281, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @vhci_hub_control._entry.150, !285, !"_entry", i1 false, i1 false}
!285 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 551, i32 5}
!286 = !{ptr @vhci_hub_control._entry_ptr.151, !285, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.152, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 560, i32 4}
!289 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug266, !288, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!290 = !{ptr @.str.153, !288, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @vhci_hub_control._entry.154, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 563, i32 5}
!293 = !{ptr @vhci_hub_control._entry_ptr.155, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.157, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 568, i32 5}
!296 = !{ptr @vhci_hub_control._entry.156, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @vhci_hub_control._entry_ptr.158, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.159, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 574, i32 4}
!300 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug267, !299, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!301 = !{ptr @.str.160, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @vhci_hub_control._entry.161, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 577, i32 5}
!304 = !{ptr @vhci_hub_control._entry_ptr.162, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.163, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 597, i32 4}
!307 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug268, !306, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!308 = !{ptr @.str.164, !306, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @vhci_hub_control._entry.165, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 600, i32 5}
!311 = !{ptr @vhci_hub_control._entry_ptr.166, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.167, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 618, i32 3}
!314 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug269, !313, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!315 = !{ptr @.str.168, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.170, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 620, i32 4}
!318 = !{ptr @vhci_hub_control._entry.169, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @vhci_hub_control._entry_ptr.171, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.172, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 628, i32 3}
!322 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug270, !321, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!323 = !{ptr @.str.173, !321, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.175, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 630, i32 4}
!326 = !{ptr @vhci_hub_control._entry.174, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @vhci_hub_control._entry_ptr.176, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.178, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 636, i32 3}
!330 = !{ptr @vhci_hub_control._entry.177, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @vhci_hub_control._entry_ptr.179, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.180, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 644, i32 3}
!334 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug271, !333, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!335 = !{ptr @.str.181, !333, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.182, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 652, i32 2}
!338 = !{ptr @vhci_hub_control.__UNIQUE_ID_ddebug272, !337, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!339 = !{ptr @.str.183, !337, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @usb3_bos_desc, !341, !"usb3_bos_desc", i1 false, i1 false}
!341 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 268, i32 12}
!342 = !{ptr @.str.184, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 128, i32 2}
!344 = !{ptr @.str.185, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @dump_port_status_diff.__UNIQUE_ID_ddebug241, !343, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!346 = !{ptr @.str.186, !343, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.187, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 142, i32 4}
!349 = !{ptr @dump_port_status_diff.__UNIQUE_ID_ddebug242, !348, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!350 = !{ptr @.str.188, !348, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @dump_port_status_diff.__UNIQUE_ID_ddebug243, !352, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!352 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 145, i32 5}
!353 = !{ptr @.str.189, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.190, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 150, i32 2}
!356 = !{ptr @dump_port_status_diff.__UNIQUE_ID_ddebug244, !355, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!357 = !{ptr @.str.191, !355, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.192, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 50, i32 2}
!360 = !{ptr @.str.193, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 51, i32 2}
!362 = !{ptr @.str.194, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 52, i32 2}
!364 = !{ptr @.str.195, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 53, i32 2}
!366 = !{ptr @.str.196, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 54, i32 2}
!368 = !{ptr @.str.197, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 55, i32 2}
!370 = !{ptr @.str.198, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 56, i32 2}
!372 = !{ptr @.str.199, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 57, i32 2}
!374 = !{ptr @.str.200, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 58, i32 2}
!376 = !{ptr @.str.201, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 59, i32 2}
!378 = !{ptr @.str.202, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 60, i32 2}
!380 = !{ptr @.str.203, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 61, i32 2}
!382 = !{ptr @.str.204, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 62, i32 2}
!384 = !{ptr @.str.205, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 63, i32 2}
!386 = !{ptr @.str.206, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 64, i32 2}
!388 = !{ptr @.str.207, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 65, i32 2}
!390 = !{ptr @.str.208, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 66, i32 2}
!392 = !{ptr @.str.209, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 67, i32 2}
!394 = !{ptr @.str.210, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 68, i32 2}
!396 = !{ptr @.str.211, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 69, i32 2}
!398 = !{ptr @.str.212, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 70, i32 2}
!400 = !{ptr @.str.213, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 71, i32 2}
!402 = !{ptr @.str.214, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 72, i32 2}
!404 = !{ptr @.str.215, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 73, i32 2}
!406 = !{ptr @.str.216, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 74, i32 2}
!408 = !{ptr @.str.217, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 75, i32 2}
!410 = !{ptr @.str.218, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 76, i32 2}
!412 = !{ptr @.str.219, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 77, i32 2}
!414 = !{ptr @.str.220, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 78, i32 2}
!416 = !{ptr @.str.221, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 79, i32 2}
!418 = !{ptr @.str.222, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 80, i32 2}
!420 = !{ptr @.str.223, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 81, i32 2}
!422 = !{ptr @bit_desc, !423, !"bit_desc", i1 false, i1 false}
!423 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 49, i32 27}
!424 = !{ptr @.str.224, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 93, i32 2}
!426 = !{ptr @.str.225, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 106, i32 2}
!428 = !{ptr @.str.226, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 107, i32 2}
!430 = !{ptr @.str.227, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 108, i32 2}
!432 = !{ptr @bit_desc_ss, !433, !"bit_desc_ss", i1 false, i1 false}
!433 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 84, i32 27}
!434 = !{ptr @.str.228, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1262, i32 2}
!436 = !{ptr @.str.229, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @vhci_bus_suspend.__UNIQUE_ID_ddebug279, !435, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!438 = !{ptr @.str.230, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1277, i32 2}
!440 = !{ptr @vhci_bus_resume.__UNIQUE_ID_ddebug280, !439, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!441 = !{ptr @.str.231, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1300, i32 2}
!443 = !{ptr @.str.232, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @vhci_alloc_streams.__UNIQUE_ID_ddebug281, !442, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!445 = !{ptr @.str.233, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1309, i32 2}
!447 = !{ptr @.str.234, !446, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @vhci_free_streams.__UNIQUE_ID_ddebug282, !446, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!449 = !{ptr @.str.235, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1429, i32 2}
!451 = !{ptr @vhci_hcd_suspend.__UNIQUE_ID_ddebug285, !450, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!452 = !{ptr @.str.236, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1452, i32 3}
!454 = !{ptr @vhci_hcd_suspend._entry, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @vhci_hcd_suspend._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.237, !453, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.238, !453, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @.str.240, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1457, i32 3}
!460 = !{ptr @vhci_hcd_suspend._entry.239, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @vhci_hcd_suspend._entry_ptr.241, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.242, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/usb/usbip/vhci_hcd.c", i32 1468, i32 2}
!464 = !{ptr @vhci_hcd_resume.__UNIQUE_ID_ddebug286, !463, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!465 = !{i32 1, !"wchar_size", i32 2}
!466 = !{i32 1, !"min_enum_size", i32 4}
!467 = !{i32 8, !"branch-target-enforcement", i32 0}
!468 = !{i32 8, !"sign-return-address", i32 0}
!469 = !{i32 8, !"sign-return-address-all", i32 0}
!470 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!471 = !{i32 7, !"uwtable", i32 1}
!472 = !{i32 7, !"frame-pointer", i32 2}
!473 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!474 = !{i64 2148735123, i64 2148735128, i64 2148735141, i64 2148735185, i64 2148735219, i64 2148735240}
!475 = !{!"branch_weights", i32 1, i32 2000}
!476 = !{!"auto-init"}
!477 = !{i64 2148351203}
!478 = !{i64 2148266512, i64 2148266544, i64 2148266573, i64 2148266607, i64 2148266638, i64 2148266661}
!479 = !{i64 2148351432}
!480 = !{i64 661005}
!481 = !{i64 658708}
!482 = !{i64 658518}
!483 = !{i64 2148355323}
!484 = !{i64 2148269787, i64 2148269819, i64 2148269848, i64 2148269882, i64 2148269913, i64 2148269936}
!485 = !{!"branch_weights", i32 2000, i32 1}
!486 = !{i64 2149604832}
