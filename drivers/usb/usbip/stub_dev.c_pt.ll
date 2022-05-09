; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/stub_dev.c_pt.bc'
source_filename = "../drivers/usb/usbip/stub_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usbdrv_wrap, ptr, i8 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.bus_id_priv = type { [32 x i8], i8, i32, ptr, ptr, i8, %struct.spinlock }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.stub_device = type { ptr, %struct.usbip_device, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }
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

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip-host\00", [21 x i8] zeroinitializer }, align 32
@usbip_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @usbip_group, ptr null], [24 x i8] zeroinitializer }, align 32
@stub_driver = dso_local global { %struct.usb_device_driver, [44 x i8] } { %struct.usb_device_driver { ptr @.str, ptr null, ptr @stub_probe, ptr @stub_disconnect, ptr @stub_suspend, ptr @stub_resume, ptr @usbip_groups, %struct.usbdrv_wrap zeroinitializer, ptr null, i8 0 }, [44 x i8] zeroinitializer }, align 32
@stub_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_host\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stub_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/usbip/stub_dev.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Enter probe\0A\00", [19 x i8] zeroinitializer }, align 32
@stub_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 331, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s is not in match_busid table... skip!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stub_probe._entry_ptr = internal global ptr @stub_probe._entry, section ".printk_index", align 4
@stub_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s is a usb hub device... skip!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@stub_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s is attached on vhci_hcd... skip!\0A\00", [59 x i8] zeroinitializer }, align 32
@stub_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 364, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"usbip-host: register new device (bus %u dev %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@stub_probe._entry_ptr.13 = internal global ptr @stub_probe._entry.11, section ".printk_index", align 4
@stub_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to claim port\0A\00", [42 x i8] zeroinitializer }, align 32
@stub_device_alloc.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stub_device_alloc\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"allocating stub device\00", [41 x i8] zeroinitializer }, align 32
@stub_device_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sdev->ud.lock\00", [17 x i8] zeroinitializer }, align 32
@stub_device_alloc.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdev->ud.sysfs_lock\00", [43 x i8] zeroinitializer }, align 32
@stub_device_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sdev->priv_lock\00", [47 x i8] zeroinitializer }, align 32
@stub_device_alloc.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sdev->tx_waitq\00", [16 x i8] zeroinitializer }, align 32
@stub_device_alloc.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.24, i8 0, i8 74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"register new device\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stub_shutdown_connection.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stub_shutdown_connection\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shutdown sockfd %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stub_device_reset.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stub_device_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device reset\00", [19 x i8] zeroinitializer }, align 32
@stub_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 220, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lock for reset\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@stub_device_reset._entry_ptr = internal global ptr @stub_device_reset._entry, section ".printk_index", align 4
@stub_device_reset._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 233, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device reset\0A\00", [18 x i8] zeroinitializer }, align 32
@stub_device_reset._entry_ptr.33 = internal global ptr @stub_device_reset._entry.31, section ".printk_index", align 4
@stub_device_reset._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 236, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@stub_device_reset._entry_ptr.35 = internal global ptr @stub_device_reset._entry.34, section ".printk_index", align 4
@stub_disconnect.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stub_disconnect\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enter disconnect\0A\00", [46 x i8] zeroinitializer }, align 32
@stub_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 447, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not get device\00", [43 x i8] zeroinitializer }, align 32
@stub_disconnect._entry_ptr = internal global ptr @stub_disconnect._entry, section ".printk_index", align 4
@stub_disconnect.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.39, i8 0, i8 116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to release port\0A\00", [40 x i8] zeroinitializer }, align 32
@stub_suspend.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stub_suspend\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stub_suspend\0A\00", [18 x i8] zeroinitializer }, align 32
@stub_resume.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stub_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stub_resume\0A\00", [19 x i8] zeroinitializer }, align 32
@usbip_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usbip_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usbip_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_usbip_status, ptr @dev_attr_usbip_sockfd, ptr @dev_attr_usbip_debug, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_usbip_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usbip_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usbip_sockfd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @usbip_sockfd_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usbip_debug = external dso_local global %struct.device_attribute, align 4
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbip_status\00", [19 x i8] zeroinitializer }, align 32
@usbip_status_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 25, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdev is null\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbip_status_show\00", [46 x i8] zeroinitializer }, align 32
@usbip_status_show._entry_ptr = internal global ptr @usbip_status_show._entry, section ".printk_index", align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbip_sockfd\00", [19 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.49, ptr @.str.3, i32 53, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbip_sockfd_store\00", [45 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr = internal global ptr @usbip_sockfd_store._entry, section ".printk_index", align 4
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.3, i32 64, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stub up\0A\00", [23 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.53 = internal global ptr @usbip_sockfd_store._entry.51, section ".printk_index", align 4
@usbip_sockfd_store._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.3, i32 70, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not ready\0A\00", [21 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.56 = internal global ptr @usbip_sockfd_store._entry.54, section ".printk_index", align 4
@usbip_sockfd_store._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.3, i32 76, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to lookup sock\00", [42 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.59 = internal global ptr @usbip_sockfd_store._entry.57, section ".printk_index", align 4
@usbip_sockfd_store._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.49, ptr @.str.3, i32 82, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Expecting SOCK_STREAM - found %d\00", [63 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.62 = internal global ptr @usbip_sockfd_store._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stub_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stub_tx\00", [24 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.49, ptr @.str.3, i32 119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stub down\0A\00", [21 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.67 = internal global ptr @usbip_sockfd_store._entry.65, section ".printk_index", align 4
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 521, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"usbip_groups\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"stub_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 520, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 316, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 329, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 346, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 352, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 353, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 362, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 388, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 261, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 278, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 279, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 288, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 290, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 298, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 162, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 216, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 220, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 233, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 236, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 435, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 447, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 466, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 506, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 513, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [12 x i8] c"usbip_group\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 149, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"usbip_attrs\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 143, i32 26 }
@___asan_gen_.215 = private unnamed_addr constant [22 x i8] c"dev_attr_usbip_status\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [22 x i8] c"dev_attr_usbip_sockfd\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 35, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 25, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 33, i32 34 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 141, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 53, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 57, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 64, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 70, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 76, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 81, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 88, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 93, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [32 x i8] c"../drivers/usb/usbip/stub_dev.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 119, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @stub_device_reset._entry, ptr @stub_device_reset._entry.31, ptr @stub_device_reset._entry.34, ptr @stub_device_reset._entry_ptr, ptr @stub_device_reset._entry_ptr.33, ptr @stub_device_reset._entry_ptr.35, ptr @stub_disconnect._entry, ptr @stub_disconnect._entry_ptr, ptr @stub_probe._entry, ptr @stub_probe._entry.11, ptr @stub_probe._entry_ptr, ptr @stub_probe._entry_ptr.13, ptr @usbip_sockfd_store._entry, ptr @usbip_sockfd_store._entry.51, ptr @usbip_sockfd_store._entry.54, ptr @usbip_sockfd_store._entry.57, ptr @usbip_sockfd_store._entry.60, ptr @usbip_sockfd_store._entry.65, ptr @usbip_sockfd_store._entry_ptr, ptr @usbip_sockfd_store._entry_ptr.53, ptr @usbip_sockfd_store._entry_ptr.56, ptr @usbip_sockfd_store._entry_ptr.59, ptr @usbip_sockfd_store._entry_ptr.62, ptr @usbip_sockfd_store._entry_ptr.67, ptr @usbip_status_show._entry, ptr @usbip_status_show._entry_ptr, ptr @.str, ptr @usbip_groups, ptr @stub_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @stub_device_alloc.__key, ptr @.str.17, ptr @stub_device_alloc.__key.18, ptr @.str.19, ptr @stub_device_alloc.__key.20, ptr @.str.21, ptr @stub_device_alloc.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @usbip_group, ptr @usbip_attrs, ptr @dev_attr_usbip_status, ptr @dev_attr_usbip_sockfd, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_device_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_device_alloc.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_device_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_device_alloc.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_device_reset._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_device_reset._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usbip_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usbip_sockfd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_status_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stub_probe(ptr noundef %udev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i164 = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_probe, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !147

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %dev_name.exit
  %call6 = tail call fastcc ptr @stub_device_alloc(ptr noundef %udev)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %call10 = tail call ptr @get_busid_priv(ptr noundef %retval.0.i164) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %sdev_free.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %status = getelementptr inbounds %struct.bus_id_priv, ptr %call10, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch = icmp ult i8 %5, 2
  br i1 %switch, label %call_put_busid_priv.critedge, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false
  %bDeviceClass = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bDeviceClass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cmp28 = icmp eq i8 %7, 9
  br i1 %cmp28, label %do.body31, label %if.end50

do.body31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_probe, %call_put_busid_priv)) #10
          to label %if.then45 [label %call_put_busid_priv], !srcloc !147

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i164) #10
  br label %call_put_busid_priv

if.end50:                                         ; preds = %if.end26
  %bus = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 12
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %bus_name = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_name, align 4
  %call51 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(9) @.str.9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body54, label %do.end76

do.body54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_probe, %call_put_busid_priv)) #10
          to label %if.then68 [label %call_put_busid_priv], !srcloc !147

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_probe.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i164) #10
  br label %call_put_busid_priv

do.end76:                                         ; preds = %if.end50
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %busnum, align 4
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %udev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %13, i32 noundef %15) #14
  %shutdown_busid = getelementptr inbounds %struct.bus_id_priv, ptr %call10, i32 0, i32 5
  %16 = ptrtoint ptr %shutdown_busid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %shutdown_busid, align 4
  %driver_data.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6, ptr %driver_data.i, align 4
  %sdev80 = getelementptr inbounds %struct.bus_id_priv, ptr %call10, i32 0, i32 3
  %18 = ptrtoint ptr %sdev80 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6, ptr %sdev80, align 4
  %udev81 = getelementptr inbounds %struct.bus_id_priv, ptr %call10, i32 0, i32 4
  %19 = ptrtoint ptr %udev81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %udev, ptr %udev81, align 4
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status, align 4
  store i8 3, ptr %status, align 4
  tail call void @put_busid_priv(ptr noundef nonnull %call10) #10
  %parent = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 11
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 4
  %portnum = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 25
  %24 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %portnum, align 2
  %conv84 = zext i8 %25 to i32
  %call85 = tail call i32 @usb_hub_claim_port(ptr noundef %23, i32 noundef %conv84, ptr noundef %udev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.end76.cleanup_crit_edge, label %do.body88

do.end76.cleanup_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body88:                                        ; preds = %do.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_probe, %err_port)) #10
          to label %if.then102 [label %err_port], !srcloc !147

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_probe.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %err_port

err_port:                                         ; preds = %if.then102, %do.body88
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @usb_put_dev(ptr noundef %udev) #10
  %busid_lock = getelementptr inbounds %struct.bus_id_priv, ptr %call10, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %busid_lock) #10
  %27 = ptrtoint ptr %sdev80 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %sdev80, align 4
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %21, ptr %status, align 4
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock) #10
  br label %sdev_free

call_put_busid_priv.critedge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i164) #14
  br label %call_put_busid_priv

call_put_busid_priv:                              ; preds = %call_put_busid_priv.critedge, %if.then68, %do.body54, %if.then45, %do.body31
  tail call void @put_busid_priv(ptr noundef nonnull %call10) #10
  br label %sdev_free

sdev_free.critedge:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i164) #14
  br label %sdev_free

sdev_free:                                        ; preds = %sdev_free.critedge, %call_put_busid_priv, %err_port
  %rc.1 = phi i32 [ -19, %call_put_busid_priv ], [ %call85, %err_port ], [ -19, %sdev_free.critedge ]
  tail call void @kfree(ptr noundef nonnull %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %sdev_free, %do.end76.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %sdev_free ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %do.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stub_disconnect(ptr noundef %udev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i96 = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_disconnect.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_disconnect, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !147

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_disconnect.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %dev_name.exit
  %call6 = tail call ptr @get_busid_priv(ptr noundef %retval.0.i96) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.body9, label %if.end15

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/usbip/stub_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 439, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

if.end15:                                         ; preds = %do.end
  %driver_data.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool18.not = icmp eq ptr %5, null
  br i1 %tobool18.not, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #14
  tail call void @put_busid_priv(ptr noundef nonnull %call6) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @put_busid_priv(ptr noundef nonnull %call6) #10
  %parent = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 11
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %portnum = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 25
  %9 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %portnum, align 2
  %conv = zext i8 %10 to i32
  %call26 = tail call i32 @usb_hub_release_port(ptr noundef %8, i32 noundef %conv, ptr noundef %udev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end48, label %do.body29

do.body29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_disconnect.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_disconnect, %cleanup)) #10
          to label %if.then43 [label %cleanup], !srcloc !147

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_disconnect.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end24
  %11 = tail call i32 @llvm.read_register.i32(metadata !137) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %call50 = tail call i32 @usbip_in_eh(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %busid_lock = getelementptr inbounds %struct.bus_id_priv, ptr %call6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %busid_lock) #10
  %shutdown_busid = getelementptr inbounds %struct.bus_id_priv, ptr %call6, i32 0, i32 5
  %15 = ptrtoint ptr %shutdown_busid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shutdown_busid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool54.not = icmp eq i8 %16, 0
  br i1 %tobool54.not, label %if.then55, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %shutdown_busid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %shutdown_busid, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock) #10
  %sdev.i = getelementptr inbounds %struct.bus_id_priv, ptr %call6, i32 0, i32 3
  %18 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev.i, align 4
  %ud.i = getelementptr inbounds %struct.stub_device, ptr %19, i32 0, i32 1
  tail call void @usbip_event_add(ptr noundef %ud.i, i32 noundef 3) #10
  %20 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev.i, align 4
  %ud2.i = getelementptr inbounds %struct.stub_device, ptr %21, i32 0, i32 1
  tail call void @usbip_stop_eh(ptr noundef %ud2.i) #10
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 8
  tail call void @usb_put_dev(ptr noundef %23) #10
  tail call void @_raw_spin_lock(ptr noundef %busid_lock) #10
  %24 = ptrtoint ptr %sdev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sdev.i, align 4
  tail call void @kfree(ptr noundef nonnull %5) #10
  %status = getelementptr inbounds %struct.bus_id_priv, ptr %call6, i32 0, i32 1
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp = icmp eq i8 %26, 3
  br i1 %cmp, label %if.then64, label %if.end57.if.end66_crit_edge

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then64:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %status, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end57.if.end66_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end48.cleanup_crit_edge, %if.then43, %do.body29, %do.end22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stub_suspend(ptr noundef %udev, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_suspend.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_suspend, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_suspend.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stub_resume(ptr noundef %udev, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_resume.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_resume, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_resume.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stub_device_alloc(ptr noundef %udev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 12
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %busnum1 = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %busnum1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busnum1, align 4
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %udev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_device_alloc.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_device_alloc, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_device_alloc.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 392) #15
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call ptr @usb_get_dev(ptr noundef %udev) #10
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %call7.i.i, align 8
  %shl = shl i32 %3, 16
  %or = or i32 %shl, %5
  %devid = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %devid, align 8
  %ud = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ud to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ud, align 8
  %status = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %status, align 4
  %lock = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @stub_device_alloc.__key, i16 noundef signext 3) #10
  %sysfs_lock = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @__mutex_init(ptr noundef %sysfs_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @stub_device_alloc.__key.18) #10
  %tcp_socket = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tcp_socket, align 4
  %sockfd = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %sockfd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %sockfd, align 8
  %priv_init = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %priv_init to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %priv_init, ptr %priv_init, align 8
  %prev.i = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %priv_init, ptr %prev.i, align 4
  %priv_tx = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %priv_tx to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %priv_tx, ptr %priv_tx, align 8
  %prev.i86 = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv_tx, ptr %prev.i86, align 4
  %priv_free = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %priv_free to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %priv_free, ptr %priv_free, align 8
  %prev.i87 = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %priv_free, ptr %prev.i87, align 4
  %unlink_free = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %unlink_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %unlink_free, ptr %unlink_free, align 8
  %prev.i88 = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %unlink_free, ptr %prev.i88, align 4
  %unlink_tx = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %unlink_tx to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %unlink_tx, ptr %unlink_tx, align 8
  %prev.i89 = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %unlink_tx, ptr %prev.i89, align 4
  %priv_lock = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %priv_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @stub_device_alloc.__key.20, i16 noundef signext 3) #10
  %tx_waitq = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %tx_waitq, ptr noundef nonnull @.str.23, ptr noundef nonnull @stub_device_alloc.__key.22) #10
  %eh_ops = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1, i32 10
  %23 = ptrtoint ptr %eh_ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @stub_shutdown_connection, ptr %eh_ops, align 8
  %reset = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 1
  %24 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @stub_device_reset, ptr %reset, align 4
  %unusable = getelementptr inbounds %struct.stub_device, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 2
  %25 = ptrtoint ptr %unusable to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @stub_device_unusable, ptr %unusable, align 8
  %call37 = tail call i32 @usbip_start_eh(ptr noundef %ud) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_device_alloc.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_device_alloc, %cleanup)) #10
          to label %if.then52 [label %cleanup], !srcloc !147

if.then52:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %dev53 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_device_alloc.__UNIQUE_ID_ddebug244, ptr noundef %dev53, ptr noundef nonnull @.str.24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end9, %do.end.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_busid_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_busid_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_claim_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stub_shutdown_connection(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ud, i32 -8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_shutdown_connection.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_shutdown_connection, %do.end)) #10
          to label %if.then6 [label %do.end], !srcloc !147

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %sockfd = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 4
  %4 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sockfd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_shutdown_connection.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %6 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcp_socket, align 4
  %call8 = tail call i32 @kernel_sock_shutdown(ptr noundef %7, i32 noundef 2) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %tcp_rx = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 6
  %8 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcp_rx, align 8
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.if.end19_crit_edge, label %do.body12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body12:                                        ; preds = %if.end9
  %call14 = tail call i32 @kthread_stop(ptr noundef nonnull %9) #10
  %10 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcp_rx, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @__put_task_struct(ptr noundef %11) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %13 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %tcp_rx, align 8
  br label %if.end19

if.end19:                                         ; preds = %put_task_struct.exit, %if.end9.if.end19_crit_edge
  %tcp_tx = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 7
  %14 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcp_tx, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %if.end19.if.end29_crit_edge, label %do.body22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.body22:                                        ; preds = %if.end19
  %call24 = tail call i32 @kthread_stop(ptr noundef nonnull %15) #10
  %16 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcp_tx, align 4
  %usage.i129 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 2
  %call.i.i.i.i.i.i130 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i129, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %usage.i129, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i129, ptr %usage.i129, i32 1, ptr elementtype(i32) %usage.i129) #10, !srcloc !150
  %asmresult.i.i.i.i.i.i.i131 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i131)
  %cmp.i.i.i.i132 = icmp eq i32 %asmresult.i.i.i.i.i.i.i131, 1
  br i1 %cmp.i.i.i.i132, label %if.then.i136, label %if.end5.i.i.i.i134

if.end5.i.i.i.i134:                               ; preds = %do.body22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i131)
  %.not.i.i.i.i133 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i131, 0
  br i1 %.not.i.i.i.i133, label %if.end5.i.i.i.i134.put_task_struct.exit137_crit_edge, label %if.then10.i.i.i.i135, !prof !151

if.end5.i.i.i.i134.put_task_struct.exit137_crit_edge: ; preds = %if.end5.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit137

if.then10.i.i.i.i135:                             ; preds = %if.end5.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i129, i32 noundef 3) #10
  br label %put_task_struct.exit137

if.then.i136:                                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @__put_task_struct(ptr noundef %17) #10
  br label %put_task_struct.exit137

put_task_struct.exit137:                          ; preds = %if.then.i136, %if.then10.i.i.i.i135, %if.end5.i.i.i.i134.put_task_struct.exit137_crit_edge
  %19 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tcp_tx, align 4
  br label %if.end29

if.end29:                                         ; preds = %put_task_struct.exit137, %if.end19.if.end29_crit_edge
  %20 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tcp_socket, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.end29.if.end36_crit_edge, label %if.then32

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %file = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %23) #10
  %24 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tcp_socket, align 4
  %sockfd35 = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 4
  %25 = ptrtoint ptr %sockfd35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %sockfd35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end29.if.end36_crit_edge
  tail call void @stub_device_cleanup_urbs(ptr noundef %add.ptr) #10
  %priv_lock = getelementptr i8, ptr %ud, i32 244
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock) #10
  %unlink_tx = getelementptr i8, ptr %ud, i32 312
  %26 = ptrtoint ptr %unlink_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unlink_tx, align 8
  %cmp56.not145 = icmp eq ptr %27, %unlink_tx
  br i1 %cmp56.not145, label %if.end36.for.end_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end36.for.body_crit_edge
  %.pn.in146 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %27, %if.end36.for.body_crit_edge ]
  %unlink.0 = getelementptr i8, ptr %.pn.in146, i32 -4
  %28 = ptrtoint ptr %.pn.in146 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn.in146, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in146) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in146, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %.pn.in146 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn.in146, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %35 = ptrtoint ptr %.pn.in146 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in146, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in146, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %unlink.0) #10
  %cmp56.not = icmp eq ptr %.pn, %unlink_tx
  br i1 %cmp56.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end36.for.end_crit_edge
  %unlink_free = getelementptr i8, ptr %ud, i32 320
  %37 = ptrtoint ptr %unlink_free to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %unlink_free, align 8
  %cmp78.not148 = icmp eq ptr %38, %unlink_free
  br i1 %cmp78.not148, label %for.end.for.end90_crit_edge, label %for.end.for.body82_crit_edge

for.end.for.body82_crit_edge:                     ; preds = %for.end
  br label %for.body82

for.end.for.end90_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90

for.body82:                                       ; preds = %list_del.exit143.for.body82_crit_edge, %for.end.for.body82_crit_edge
  %.pn126.in149 = phi ptr [ %.pn126, %list_del.exit143.for.body82_crit_edge ], [ %38, %for.end.for.body82_crit_edge ]
  %unlink.1 = getelementptr i8, ptr %.pn126.in149, i32 -4
  %39 = ptrtoint ptr %.pn126.in149 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn126 = load ptr, ptr %.pn126.in149, align 4
  %call.i.i138 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn126.in149) #10
  br i1 %call.i.i138, label %if.end.i.i141, label %for.body82.list_del.exit143_crit_edge

for.body82.list_del.exit143_crit_edge:            ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit143

if.end.i.i141:                                    ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i139 = getelementptr inbounds %struct.list_head, ptr %.pn126.in149, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i139 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i139, align 4
  %42 = ptrtoint ptr %.pn126.in149 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn126.in149, align 4
  %prev1.i.i.i140 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i140, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit143

list_del.exit143:                                 ; preds = %if.end.i.i141, %for.body82.list_del.exit143_crit_edge
  %46 = ptrtoint ptr %.pn126.in149 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn126.in149, align 4
  %prev.i142 = getelementptr inbounds %struct.list_head, ptr %.pn126.in149, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i142 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i142, align 4
  tail call void @kfree(ptr noundef %unlink.1) #10
  %cmp78.not = icmp eq ptr %.pn126, %unlink_free
  br i1 %cmp78.not, label %list_del.exit143.for.end90_crit_edge, label %list_del.exit143.for.body82_crit_edge

list_del.exit143.for.body82_crit_edge:            ; preds = %list_del.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body82

list_del.exit143.for.end90_crit_edge:             ; preds = %list_del.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90

for.end90:                                        ; preds = %list_del.exit143.for.end90_crit_edge, %for.end.for.end90_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock, i32 noundef %call42) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stub_device_reset(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ud, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_device_reset.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_device_reset, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_device_reset.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call i32 @usb_lock_device_for_reset(ptr noundef %1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.29) #14
  %lock = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %call14 = tail call i32 @usb_reset_device(ptr noundef %1) #10
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  %lock16 = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool17.not = icmp eq i32 %call14, 0
  br i1 %tobool17.not, label %do.end26, label %do.end21

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.32) #14
  br label %cleanup

do.end26:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.32) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end21, %do.end10
  %.sink.sink = phi i32 [ 3, %do.end10 ], [ 1, %do.end26 ], [ 3, %do.end21 ]
  %lock16.sink = phi ptr [ %lock, %do.end10 ], [ %lock16, %do.end26 ], [ %lock16, %do.end21 ]
  %2 = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.sink, ptr %2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock16.sink) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stub_device_unusable(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %status = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_start_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stub_device_cleanup_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_release_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_in_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_stop_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbip_status_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %status2 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbip_sockfd_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %sockfd = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sockfd) #10
  %2 = ptrtoint ptr %sockfd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sockfd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #14
  br label %cleanup93

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.50, ptr noundef nonnull %sockfd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup93_crit_edge

if.end.cleanup93_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sockfd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp4.not = icmp eq i32 %4, -1
  br i1 %cmp4.not, label %do.end72, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %err, align 4, !annotation !153
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.52) #14
  %ud = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1
  %sysfs_lock = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 3
  call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #10
  %lock = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %status = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp11.not = icmp eq i32 %7, 1
  br i1 %cmp11.not, label %if.end16, label %if.then5.cleanup.thread143_crit_edge

if.then5.cleanup.thread143_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread143

if.end16:                                         ; preds = %if.then5
  %8 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sockfd, align 4
  %call17 = call ptr @sockfd_lookup(i32 noundef %9, ptr noundef nonnull %err) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.cleanup.thread143_crit_edge, label %if.end23

if.end16.cleanup.thread143_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread143

if.end23:                                         ; preds = %if.end16
  %type = getelementptr inbounds %struct.socket, ptr %call17, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp24.not = icmp eq i16 %11, 1
  br i1 %cmp24.not, label %if.end32, label %sock_err

if.end32:                                         ; preds = %if.end23
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %call36 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @stub_rx_loop, ptr noundef %ud, i32 noundef -1, ptr noundef nonnull @.str.63) #10
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end32.cleanup.thread_crit_edge, label %if.end39

if.end32.cleanup.thread_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end39:                                         ; preds = %if.end32
  %call41 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @stub_tx_loop, ptr noundef %ud, i32 noundef -1, ptr noundef nonnull @.str.64) #10
  %cmp.i139 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then43, label %cleanup.thread146

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = call i32 @kthread_stop(ptr noundef %call36) #10
  br label %cleanup.thread

cleanup.thread146:                                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @get_task_struct(ptr noundef %call36)
  call fastcc void @get_task_struct(ptr noundef %call41)
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %tcp_socket = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call17, ptr %tcp_socket, align 4
  %13 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sockfd, align 4
  %sockfd53 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %sockfd53 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sockfd53, align 8
  %tcp_rx55 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %tcp_rx55 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call36, ptr %tcp_rx55, align 8
  %tcp_tx57 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %tcp_tx57 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call41, ptr %tcp_tx57, align 4
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %status, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %19 = ptrtoint ptr %tcp_rx55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tcp_rx55, align 8
  %call64 = call i32 @wake_up_process(ptr noundef %20) #10
  %21 = ptrtoint ptr %tcp_tx57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tcp_tx57, align 4
  %call67 = call i32 @wake_up_process(ptr noundef %22) #10
  call void @mutex_unlock(ptr noundef %sysfs_lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  br label %cleanup93

cleanup.thread:                                   ; preds = %if.then43, %if.end32.cleanup.thread_crit_edge
  %file = getelementptr inbounds %struct.socket, ptr %call17, i32 0, i32 3
  %23 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  br label %unlock_mutex

cleanup.thread143:                                ; preds = %if.end16.cleanup.thread143_crit_edge, %if.then5.cleanup.thread143_crit_edge
  %.str.55.sink = phi ptr [ @.str.55, %if.then5.cleanup.thread143_crit_edge ], [ @.str.58, %if.end16.cleanup.thread143_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.55.sink) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  br label %err88

do.end72:                                         ; preds = %if.end3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.66) #14
  %lock74 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %lock74) #10
  %status76 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %status76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp77.not = icmp eq i32 %26, 2
  br i1 %cmp77.not, label %if.end80, label %do.end72.err88_crit_edge

do.end72.err88_crit_edge:                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %err88

if.end80:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  %ud73 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock74) #10
  call void @usbip_event_add(ptr noundef %ud73, i32 noundef 5) #10
  %sysfs_lock85 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 3
  call void @mutex_unlock(ptr noundef %sysfs_lock85) #10
  br label %cleanup93

sock_err:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %conv = sext i16 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %conv) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  %file87 = getelementptr inbounds %struct.socket, ptr %call17, i32 0, i32 3
  %27 = ptrtoint ptr %file87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %file87, align 4
  call void @fput(ptr noundef %28) #10
  br label %err88

err88:                                            ; preds = %sock_err, %do.end72.err88_crit_edge, %cleanup.thread143
  %lock90 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %lock90) #10
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %err88, %cleanup.thread
  %sysfs_lock92 = getelementptr inbounds %struct.stub_device, ptr %1, i32 0, i32 1, i32 3
  call void @mutex_unlock(ptr noundef %sysfs_lock92) #10
  br label %cleanup93

cleanup93:                                        ; preds = %unlock_mutex, %if.end80, %cleanup.thread146, %if.end.cleanup93_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %unlock_mutex ], [ -19, %do.end ], [ -22, %if.end.cleanup93_crit_edge ], [ %count, %if.end80 ], [ %count, %cleanup.thread146 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sockfd) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stub_rx_loop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stub_tx_loop(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_task_struct(ptr noundef %t) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !154
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !155

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !151

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !96, !97, !99, !100, !101, !102, !104, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !135, !136}
!llvm.named.register.sp = !{!137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/stub_dev.c", i32 521, i32 11}
!2 = !{ptr @stub_driver, !3, !"stub_driver", i1 false, i1 false}
!3 = !{!"../drivers/usb/usbip/stub_dev.c", i32 520, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/usbip/stub_dev.c", i32 316, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @stub_probe.__UNIQUE_ID_ddebug245, !5, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/usbip/stub_dev.c", i32 329, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @stub_probe._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @stub_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/usbip/stub_dev.c", i32 346, i32 3}
!18 = !{ptr @stub_probe.__UNIQUE_ID_ddebug246, !17, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/usbip/stub_dev.c", i32 352, i32 35}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/usbip/stub_dev.c", i32 353, i32 3}
!23 = !{ptr @stub_probe.__UNIQUE_ID_ddebug247, !22, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/usbip/stub_dev.c", i32 362, i32 2}
!26 = !{ptr @stub_probe._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stub_probe._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/usbip/stub_dev.c", i32 388, i32 3}
!30 = !{ptr @stub_probe.__UNIQUE_ID_ddebug248, !29, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/usbip/stub_dev.c", i32 261, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @stub_device_alloc.__UNIQUE_ID_ddebug243, !32, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!35 = !{ptr @stub_device_alloc.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/usb/usbip/stub_dev.c", i32 278, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @stub_device_alloc.__key.18, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/usb/usbip/stub_dev.c", i32 279, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @stub_device_alloc.__key.20, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/usb/usbip/stub_dev.c", i32 288, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @stub_device_alloc.__key.22, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/usb/usbip/stub_dev.c", i32 290, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/usbip/stub_dev.c", i32 298, i32 2}
!49 = !{ptr @stub_device_alloc.__UNIQUE_ID_ddebug244, !48, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/usbip/stub_dev.c", i32 162, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @stub_shutdown_connection.__UNIQUE_ID_ddebug241, !51, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/usbip/stub_dev.c", i32 216, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @stub_device_reset.__UNIQUE_ID_ddebug242, !55, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/usbip/stub_dev.c", i32 220, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @stub_device_reset._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @stub_device_reset._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/usbip/stub_dev.c", i32 233, i32 3}
!65 = !{ptr @stub_device_reset._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @stub_device_reset._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @stub_device_reset._entry.34, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/usb/usbip/stub_dev.c", i32 236, i32 3}
!69 = !{ptr @stub_device_reset._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/usbip/stub_dev.c", i32 435, i32 2}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @stub_disconnect.__UNIQUE_ID_ddebug249, !71, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/usbip/stub_dev.c", i32 447, i32 3}
!76 = !{ptr @stub_disconnect._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @stub_disconnect._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/usbip/stub_dev.c", i32 466, i32 3}
!80 = !{ptr @stub_disconnect.__UNIQUE_ID_ddebug250, !79, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/usbip/stub_dev.c", i32 506, i32 2}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stub_suspend.__UNIQUE_ID_ddebug251, !82, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/usbip/stub_dev.c", i32 513, i32 2}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @stub_resume.__UNIQUE_ID_ddebug252, !86, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!89 = !{ptr @usbip_groups, !90, !"usbip_groups", i1 false, i1 false}
!90 = !{!"../drivers/usb/usbip/stub_dev.c", i32 149, i32 1}
!91 = !{ptr @usbip_group, !90, !"usbip_group", i1 false, i1 false}
!92 = !{ptr @usbip_attrs, !93, !"usbip_attrs", i1 false, i1 false}
!93 = !{!"../drivers/usb/usbip/stub_dev.c", i32 143, i32 26}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/usbip/stub_dev.c", i32 35, i32 8}
!96 = !{ptr @dev_attr_usbip_status, !95, !"dev_attr_usbip_status", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/usbip/stub_dev.c", i32 25, i32 3}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @usbip_status_show._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @usbip_status_show._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/usbip/stub_dev.c", i32 33, i32 34}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/usbip/stub_dev.c", i32 141, i32 8}
!106 = !{ptr @dev_attr_usbip_sockfd, !105, !"dev_attr_usbip_sockfd", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/usbip/stub_dev.c", i32 53, i32 3}
!109 = !{ptr @usbip_sockfd_store._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @usbip_sockfd_store._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/usbip/stub_dev.c", i32 57, i32 19}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/usbip/stub_dev.c", i32 64, i32 3}
!115 = !{ptr @usbip_sockfd_store._entry.51, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @usbip_sockfd_store._entry_ptr.53, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/usbip/stub_dev.c", i32 70, i32 4}
!119 = !{ptr @usbip_sockfd_store._entry.54, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @usbip_sockfd_store._entry_ptr.56, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/usbip/stub_dev.c", i32 76, i32 4}
!123 = !{ptr @usbip_sockfd_store._entry.57, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @usbip_sockfd_store._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/usbip/stub_dev.c", i32 81, i32 4}
!127 = !{ptr @usbip_sockfd_store._entry.60, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @usbip_sockfd_store._entry_ptr.62, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/usbip/stub_dev.c", i32 88, i32 12}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/usbip/stub_dev.c", i32 93, i32 12}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/usbip/stub_dev.c", i32 119, i32 3}
!135 = !{ptr @usbip_sockfd_store._entry.65, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @usbip_sockfd_store._entry_ptr.67, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{!"sp"}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 2148287797, i64 2148287802, i64 2148287815, i64 2148287859, i64 2148287893, i64 2148287914}
!148 = !{i64 2154412730, i64 2154413223, i64 2154412767, i64 2154412823, i64 2154412857, i64 2154412881, i64 2154412922, i64 2154412943, i64 2154412971, i64 2154413005}
!149 = !{i64 2148563935}
!150 = !{i64 2148478399, i64 2148478431, i64 2148478460, i64 2148478494, i64 2148478525, i64 2148478548}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2149609905}
!153 = !{!"auto-init"}
!154 = !{i64 2148475934, i64 2148475966, i64 2148475995, i64 2148476029, i64 2148476060, i64 2148476083}
!155 = !{!"branch_weights", i32 1, i32 2000}
