; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vhci_sysfs.c_pt.bc'
source_filename = "../drivers/usb/usbip/vhci_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.status_attr = type { %struct.device_attribute, [17 x i8] }
%struct.vhci = type { %struct.spinlock, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.vhci_hcd = type { ptr, [8 x i32], i8, i32, %struct.atomic_t, [8 x %struct.vhci_device] }
%struct.vhci_device = type { ptr, i32, i32, i32, %struct.usbip_device, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@vhci_attr_group = dso_local global { %struct.attribute_group, [44 x i8] } zeroinitializer, align 32
@vhci_num_controllers = external dso_local local_unnamed_addr global i32, align 4
@dev_attr_nports = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nports_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_detach = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @detach_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_attach = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @attach_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usbip_debug = external dso_local global %struct.device_attribute, align 4
@status_attrs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"status.%d\00", [22 x i8] zeroinitializer }, align 32
@set_status_attr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"hub port sta spd dev      sockfd local_busid\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hs  %04u %03u \00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"000 00000000 0000000000000000 0-0\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ss  %04u %03u \00", [17 x i8] zeroinitializer }, align 32
@vhcis = external dso_local local_unnamed_addr global ptr, align 4
@usbip_debug_flag = external dso_local local_unnamed_addr global i32, align 4
@status_show_vhci.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"status_show_vhci\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/usbip/vhci_sysfs.c\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"show status error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vhci_hcd: %s:%d: show status error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%03u %08x \00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%06u %s\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"000 00000000 \00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"000000 0-0\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nports\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"detach\00", [25 x i8] zeroinitializer }, align 32
@detach_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 252, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port is not ready %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"detach_store\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@detach_store._entry_ptr = internal global ptr @detach_store._entry, section ".printk_index", align 4
@detach_store.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str.9, ptr @.str.23, i8 0, i8 64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rhport %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vhci_hcd: %s:%d: rhport %d\0A\00", [36 x i8] zeroinitializer }, align 32
@detach_store.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str.9, ptr @.str.25, i8 0, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Leave\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhci_hcd: %s:%d: Leave\0A\00", [40 x i8] zeroinitializer }, align 32
@valid_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.9, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013vhci_hcd: %s:%d: pdev %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"valid_port\00", [21 x i8] zeroinitializer }, align 32
@valid_port._entry_ptr = internal global ptr @valid_port._entry, section ".printk_index", align 4
@valid_port._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.9, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013vhci_hcd: %s:%d: rhport %u\0A\00", [34 x i8] zeroinitializer }, align 32
@valid_port._entry_ptr.31 = internal global ptr @valid_port._entry.29, section ".printk_index", align 4
@vhci_port_disconnect.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.32, ptr @.str.9, ptr @.str.33, i8 0, i8 46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vhci_port_disconnect\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhci_hcd: %s:%d: enter\0A\00", [40 x i8] zeroinitializer }, align 32
@vhci_port_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.9, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013vhci_hcd: %s:%d: not connected %d\0A\00", [59 x i8] zeroinitializer }, align 32
@vhci_port_disconnect._entry_ptr = internal global ptr @vhci_port_disconnect._entry, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"attach\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u %u %u %u\00", [20 x i8] zeroinitializer }, align 32
@attach_store.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.38, ptr @.str.9, ptr @.str.39, i8 0, i8 83, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"attach_store\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"port(%u) pdev(%d) rhport(%u)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"vhci_hcd: %s:%d: port(%u) pdev(%d) rhport(%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@attach_store.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.38, ptr @.str.9, ptr @.str.41, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sockfd(%u) devid(%u) speed(%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"vhci_hcd: %s:%d: sockfd(%u) devid(%u) speed(%u)\0A\00", [47 x i8] zeroinitializer }, align 32
@attach_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.9, i32 345, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port %d is not ready\0A\00", [42 x i8] zeroinitializer }, align 32
@attach_store._entry_ptr = internal global ptr @attach_store._entry, section ".printk_index", align 4
@attach_store._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.9, i32 362, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to lookup sock\00", [42 x i8] zeroinitializer }, align 32
@attach_store._entry_ptr.46 = internal global ptr @attach_store._entry.44, section ".printk_index", align 4
@attach_store._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.38, ptr @.str.9, i32 368, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Expecting SOCK_STREAM - found %d\00", [63 x i8] zeroinitializer }, align 32
@attach_store._entry_ptr.49 = internal global ptr @attach_store._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vhci_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vhci_tx\00", [24 x i8] zeroinitializer }, align 32
@attach_store._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.38, ptr @.str.9, i32 406, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port %d already used\0A\00", [42 x i8] zeroinitializer }, align 32
@attach_store._entry_ptr.54 = internal global ptr @attach_store._entry.52, section ".printk_index", align 4
@attach_store._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.38, ptr @.str.9, i32 416, ptr @.str.57, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pdev(%u) rhport(%u) sockfd(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@attach_store._entry_ptr.58 = internal global ptr @attach_store._entry.55, section ".printk_index", align 4
@attach_store._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.38, ptr @.str.9, i32 418, ptr @.str.57, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"devid(%u) speed(%u) speed_str(%s)\0A\00", [61 x i8] zeroinitializer }, align 32
@attach_store._entry_ptr.61 = internal global ptr @attach_store._entry.59, section ".printk_index", align 4
@attach_store._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.38, ptr @.str.9, i32 438, ptr @.str.57, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Device attached\0A\00", [47 x i8] zeroinitializer }, align 32
@attach_store._entry_ptr.64 = internal global ptr @attach_store._entry.62, section ".printk_index", align 4
@valid_args._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.9, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013vhci_hcd: %s:%d: Failed attach request for unsupported USB speed: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"valid_args\00", [21 x i8] zeroinitializer }, align 32
@valid_args._entry_ptr = internal global ptr @valid_args._entry, section ".printk_index", align 4
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"vhci_attr_group\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 494, i32 24 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"dev_attr_nports\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"dev_attr_detach\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"dev_attr_attach\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"status_attrs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 457, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 465, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 467, i32 45 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 471, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 154, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 113, i32 23 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 116, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 121, i32 23 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 74, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 48, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 50, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 55, i32 25 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 56, i32 25 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 177, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 174, i32 22 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 271, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 252, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 256, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 267, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 219, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 225, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 186, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 195, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 448, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 329, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 334, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 336, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 345, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 362, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 367, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 375, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 381, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 406, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 415, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 417, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 438, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [34 x i8] c"../drivers/usb/usbip/vhci_sysfs.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 288, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @attach_store._entry, ptr @attach_store._entry.44, ptr @attach_store._entry.47, ptr @attach_store._entry.52, ptr @attach_store._entry.55, ptr @attach_store._entry.59, ptr @attach_store._entry.62, ptr @attach_store._entry_ptr, ptr @attach_store._entry_ptr.46, ptr @attach_store._entry_ptr.49, ptr @attach_store._entry_ptr.54, ptr @attach_store._entry_ptr.58, ptr @attach_store._entry_ptr.61, ptr @attach_store._entry_ptr.64, ptr @detach_store._entry, ptr @detach_store._entry_ptr, ptr @valid_args._entry, ptr @valid_args._entry_ptr, ptr @valid_port._entry, ptr @valid_port._entry.29, ptr @valid_port._entry_ptr, ptr @valid_port._entry_ptr.31, ptr @vhci_port_disconnect._entry, ptr @vhci_port_disconnect._entry_ptr, ptr @vhci_attr_group, ptr @dev_attr_nports, ptr @dev_attr_detach, ptr @dev_attr_attach, ptr @status_attrs, ptr @.str, ptr @.str.1, ptr @set_status_attr.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nports to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_detach to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_attach to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_status_attr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detach_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valid_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valid_port._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_port_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_store._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_store._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_store._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_store._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_store._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_store._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valid_args._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vhci_init_attr_group() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %0 = load i32, ptr @vhci_num_controllers, align 4
  %add = add i32 %0, 5
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #11
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !137

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #14
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %4 = load i32, ptr @vhci_num_controllers, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 48) #11
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !137

kcalloc.exit.thread.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store ptr null, ptr @status_attrs, align 4
  br label %if.then2

if.end7.i.i.i:                                    ; preds = %if.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #14
  store ptr %call8.i.i.i, ptr @status_attrs, align 4
  %cmp.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i, label %if.end7.i.i.i.if.then2_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.then2_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %8 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16.i = icmp sgt i32 %8, 0
  br i1 %cmp16.i, label %set_status_attr.exit.peel.i, label %for.cond.preheader.i.if.end3_crit_edge

for.cond.preheader.i.if.end3_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

set_status_attr.exit.peel.i:                      ; preds = %for.cond.preheader.i
  %9 = load ptr, ptr @status_attrs, align 4
  %name.i.peel.i = getelementptr %struct.status_attr, ptr %9, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %name.i.peel.i, ptr @.str, i32 7)
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name.i.peel.i, ptr %9, align 4
  %mode.i.peel.i = getelementptr inbounds %struct.attribute, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %mode.i.peel.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 292, ptr %mode.i.peel.i, align 4
  %show.i.peel.i = getelementptr inbounds %struct.device_attribute, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %show.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @status_show, ptr %show.i.peel.i, align 4
  %key.i.peel.i = getelementptr inbounds %struct.attribute, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %key.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @set_status_attr.__key, ptr %key.i.peel.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %15 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1.peel.i = icmp sgt i32 %15, 1
  br i1 %cmp1.peel.i, label %set_status_attr.exit.peel.i.set_status_attr.exit.i_crit_edge, label %set_status_attr.exit.peel.i.if.end3_crit_edge

set_status_attr.exit.peel.i.if.end3_crit_edge:    ; preds = %set_status_attr.exit.peel.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

set_status_attr.exit.peel.i.set_status_attr.exit.i_crit_edge: ; preds = %set_status_attr.exit.peel.i
  br label %set_status_attr.exit.i

set_status_attr.exit.i:                           ; preds = %set_status_attr.exit.i.set_status_attr.exit.i_crit_edge, %set_status_attr.exit.peel.i.set_status_attr.exit.i_crit_edge
  %id.07.i = phi i32 [ %inc.i, %set_status_attr.exit.i.set_status_attr.exit.i_crit_edge ], [ 1, %set_status_attr.exit.peel.i.set_status_attr.exit.i_crit_edge ]
  %16 = load ptr, ptr @status_attrs, align 4
  %name1.i.i = getelementptr %struct.status_attr, ptr %16, i32 %id.07.i, i32 1
  %call3.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i.i, i32 noundef 17, ptr noundef nonnull @.str.1, i32 noundef %id.07.i) #11
  %add.ptr.i.i = getelementptr %struct.status_attr, ptr %16, i32 %id.07.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name1.i.i, ptr %add.ptr.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.attribute, ptr %add.ptr.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 292, ptr %mode.i.i, align 4
  %show.i.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %show.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @status_show, ptr %show.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %add.ptr.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @set_status_attr.__key, ptr %key.i.i, align 4
  %inc.i = add nuw nsw i32 %id.07.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %21 = load i32, ptr @vhci_num_controllers, align 4
  %cmp1.i = icmp slt i32 %inc.i, %21
  br i1 %cmp1.i, label %set_status_attr.exit.i.set_status_attr.exit.i_crit_edge, label %set_status_attr.exit.i.if.end3_crit_edge, !llvm.loop !138

set_status_attr.exit.i.if.end3_crit_edge:         ; preds = %set_status_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

set_status_attr.exit.i.set_status_attr.exit.i_crit_edge: ; preds = %set_status_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_status_attr.exit.i

if.then2:                                         ; preds = %if.end7.i.i.i.if.then2_crit_edge, %kcalloc.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

if.end3:                                          ; preds = %set_status_attr.exit.i.if.end3_crit_edge, %set_status_attr.exit.peel.i.if.end3_crit_edge, %for.cond.preheader.i.if.end3_crit_edge
  %22 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dev_attr_nports, ptr %call8.i.i, align 128
  %add.ptr = getelementptr ptr, ptr %call8.i.i, i32 1
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dev_attr_detach, ptr %add.ptr, align 4
  %add.ptr4 = getelementptr ptr, ptr %call8.i.i, i32 2
  %24 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dev_attr_attach, ptr %add.ptr4, align 8
  %add.ptr5 = getelementptr ptr, ptr %call8.i.i, i32 3
  %25 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dev_attr_usbip_debug, ptr %add.ptr5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %26 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp636 = icmp sgt i32 %26, 0
  br i1 %cmp636, label %for.body.preheader, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end3
  %add.ptr9 = getelementptr ptr, ptr %call8.i.i, i32 4
  %27 = load ptr, ptr @status_attrs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %28 = load i32, ptr @vhci_num_controllers, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.037 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr7 = getelementptr %struct.status_attr, ptr %27, i32 %i.037
  %add.ptr10 = getelementptr ptr, ptr %add.ptr9, i32 %i.037
  %29 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr7, ptr %add.ptr10, align 4
  %inc = add nuw nsw i32 %i.037, 1
  %cmp6 = icmp slt i32 %inc, %28
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  store ptr %call8.i.i, ptr getelementptr inbounds (%struct.attribute_group, ptr @vhci_attr_group, i32 0, i32 3), align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then2, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then2 ], [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vhci_finish_attr_group() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @status_attrs, align 4
  tail call void @kfree(ptr noundef %0) #11
  %1 = load ptr, ptr getelementptr inbounds (%struct.attribute_group, ptr @vhci_attr_group, i32 0, i32 3), align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %out) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %out, ptr @.str.2, i32 46)
  %add.ptr = getelementptr i8, ptr %out, i32 45
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !140
  %call.i = tail call ptr @strchr(ptr noundef %2, i32 noundef 46) #11
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %status_name_to_id.exit.thread21, label %if.end.i

status_name_to_id.exit.thread21:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %if.else

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %call.i.i = call i32 @_kstrtol(ptr noundef %add.ptr.i, i32 noundef 10, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %status_name_to_id.exit.thread, label %status_name_to_id.exit

status_name_to_id.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %if.then

status_name_to_id.exit:                           ; preds = %if.end.i
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %status_name_to_id.exit.if.then_crit_edge, label %status_name_to_id.exit.if.else_crit_edge

status_name_to_id.exit.if.else_crit_edge:         ; preds = %status_name_to_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

status_name_to_id.exit.if.then_crit_edge:         ; preds = %status_name_to_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %status_name_to_id.exit.if.then_crit_edge, %status_name_to_id.exit.thread
  %retval.0.i20 = phi i32 [ %call.i.i, %status_name_to_id.exit.thread ], [ %5, %status_name_to_id.exit.if.then_crit_edge ]
  %mul.i = shl i32 %retval.0.i20, 4
  %call.i16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.3, i32 noundef %mul.i, i32 noundef 5) #11
  %add.ptr.i17 = getelementptr i8, ptr %add.ptr, i32 %call.i16
  %6 = call ptr @memcpy(ptr %add.ptr.i17, ptr @.str.4, i32 33)
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i17, i32 33
  %7 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 2560, ptr %add.ptr2.i, align 1
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 1
  %add.1.i = or i32 %mul.i, 1
  %call.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.i, ptr noundef nonnull @.str.3, i32 noundef %add.1.i, i32 noundef 5) #11
  %add.ptr.1.i = getelementptr i8, ptr %add.ptr4.i, i32 %call.1.i
  %8 = call ptr @memcpy(ptr %add.ptr.1.i, ptr @.str.4, i32 33)
  %add.ptr2.1.i = getelementptr i8, ptr %add.ptr.1.i, i32 33
  %9 = ptrtoint ptr %add.ptr2.1.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 2560, ptr %add.ptr2.1.i, align 1
  %add.ptr4.1.i = getelementptr i8, ptr %add.ptr2.1.i, i32 1
  %add.2.i = or i32 %mul.i, 2
  %call.2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.1.i, ptr noundef nonnull @.str.3, i32 noundef %add.2.i, i32 noundef 5) #11
  %add.ptr.2.i = getelementptr i8, ptr %add.ptr4.1.i, i32 %call.2.i
  %10 = call ptr @memcpy(ptr %add.ptr.2.i, ptr @.str.4, i32 34)
  %add.ptr2.2.i = getelementptr i8, ptr %add.ptr.2.i, i32 33
  %11 = ptrtoint ptr %add.ptr2.2.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2560, ptr %add.ptr2.2.i, align 1
  %add.ptr4.2.i = getelementptr i8, ptr %add.ptr2.2.i, i32 1
  %add.3.i = or i32 %mul.i, 3
  %call.3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.2.i, ptr noundef nonnull @.str.3, i32 noundef %add.3.i, i32 noundef 5) #11
  %add.ptr.3.i = getelementptr i8, ptr %add.ptr4.2.i, i32 %call.3.i
  %12 = call ptr @memcpy(ptr %add.ptr.3.i, ptr @.str.4, i32 34)
  %add.ptr2.3.i = getelementptr i8, ptr %add.ptr.3.i, i32 33
  %13 = ptrtoint ptr %add.ptr2.3.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 2560, ptr %add.ptr2.3.i, align 1
  %add.ptr4.3.i = getelementptr i8, ptr %add.ptr2.3.i, i32 1
  %add.4.i = or i32 %mul.i, 4
  %call.4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.3.i, ptr noundef nonnull @.str.3, i32 noundef %add.4.i, i32 noundef 5) #11
  %add.ptr.4.i = getelementptr i8, ptr %add.ptr4.3.i, i32 %call.4.i
  %14 = call ptr @memcpy(ptr %add.ptr.4.i, ptr @.str.4, i32 34)
  %add.ptr2.4.i = getelementptr i8, ptr %add.ptr.4.i, i32 33
  %15 = ptrtoint ptr %add.ptr2.4.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 2560, ptr %add.ptr2.4.i, align 1
  %add.ptr4.4.i = getelementptr i8, ptr %add.ptr2.4.i, i32 1
  %add.5.i = or i32 %mul.i, 5
  %call.5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.4.i, ptr noundef nonnull @.str.3, i32 noundef %add.5.i, i32 noundef 5) #11
  %add.ptr.5.i = getelementptr i8, ptr %add.ptr4.4.i, i32 %call.5.i
  %16 = call ptr @memcpy(ptr %add.ptr.5.i, ptr @.str.4, i32 34)
  %add.ptr2.5.i = getelementptr i8, ptr %add.ptr.5.i, i32 33
  %17 = ptrtoint ptr %add.ptr2.5.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 2560, ptr %add.ptr2.5.i, align 1
  %add.ptr4.5.i = getelementptr i8, ptr %add.ptr2.5.i, i32 1
  %add.6.i = or i32 %mul.i, 6
  %call.6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.5.i, ptr noundef nonnull @.str.3, i32 noundef %add.6.i, i32 noundef 5) #11
  %add.ptr.6.i = getelementptr i8, ptr %add.ptr4.5.i, i32 %call.6.i
  %18 = call ptr @memcpy(ptr %add.ptr.6.i, ptr @.str.4, i32 34)
  %add.ptr2.6.i = getelementptr i8, ptr %add.ptr.6.i, i32 33
  %19 = ptrtoint ptr %add.ptr2.6.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 2560, ptr %add.ptr2.6.i, align 1
  %add.ptr4.6.i = getelementptr i8, ptr %add.ptr2.6.i, i32 1
  %add.7.i = or i32 %mul.i, 7
  %call.7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.6.i, ptr noundef nonnull @.str.3, i32 noundef %add.7.i, i32 noundef 5) #11
  %add.ptr.7.i = getelementptr i8, ptr %add.ptr4.6.i, i32 %call.7.i
  %20 = call ptr @memcpy(ptr %add.ptr.7.i, ptr @.str.4, i32 34)
  %add.ptr2.7.i = getelementptr i8, ptr %add.ptr.7.i, i32 33
  %21 = ptrtoint ptr %add.ptr2.7.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 2560, ptr %add.ptr2.7.i, align 1
  %add.ptr4.7.i = getelementptr i8, ptr %add.ptr2.7.i, i32 1
  %add9.i = or i32 %mul.i, 8
  %call11.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.7.i, ptr noundef nonnull @.str.6, i32 noundef %add9.i, i32 noundef 5) #11
  %add.ptr12.i = getelementptr i8, ptr %add.ptr4.7.i, i32 %call11.i
  %22 = call ptr @memcpy(ptr %add.ptr12.i, ptr @.str.4, i32 34)
  %add.ptr14.i = getelementptr i8, ptr %add.ptr12.i, i32 33
  %23 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 2560, ptr %add.ptr14.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 1
  %add10.1.i = or i32 %mul.i, 9
  %call11.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.i, ptr noundef nonnull @.str.6, i32 noundef %add10.1.i, i32 noundef 5) #11
  %add.ptr12.1.i = getelementptr i8, ptr %add.ptr16.i, i32 %call11.1.i
  %24 = call ptr @memcpy(ptr %add.ptr12.1.i, ptr @.str.4, i32 34)
  %add.ptr14.1.i = getelementptr i8, ptr %add.ptr12.1.i, i32 33
  %25 = ptrtoint ptr %add.ptr14.1.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 2560, ptr %add.ptr14.1.i, align 1
  %add.ptr16.1.i = getelementptr i8, ptr %add.ptr14.1.i, i32 1
  %add10.2.i = or i32 %mul.i, 10
  %call11.2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.1.i, ptr noundef nonnull @.str.6, i32 noundef %add10.2.i, i32 noundef 5) #11
  %add.ptr12.2.i = getelementptr i8, ptr %add.ptr16.1.i, i32 %call11.2.i
  %26 = call ptr @memcpy(ptr %add.ptr12.2.i, ptr @.str.4, i32 34)
  %add.ptr14.2.i = getelementptr i8, ptr %add.ptr12.2.i, i32 33
  %27 = ptrtoint ptr %add.ptr14.2.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 2560, ptr %add.ptr14.2.i, align 1
  %add.ptr16.2.i = getelementptr i8, ptr %add.ptr14.2.i, i32 1
  %add10.3.i = or i32 %mul.i, 11
  %call11.3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.2.i, ptr noundef nonnull @.str.6, i32 noundef %add10.3.i, i32 noundef 5) #11
  %add.ptr12.3.i = getelementptr i8, ptr %add.ptr16.2.i, i32 %call11.3.i
  %28 = call ptr @memcpy(ptr %add.ptr12.3.i, ptr @.str.4, i32 34)
  %add.ptr14.3.i = getelementptr i8, ptr %add.ptr12.3.i, i32 33
  %29 = ptrtoint ptr %add.ptr14.3.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 2560, ptr %add.ptr14.3.i, align 1
  %add.ptr16.3.i = getelementptr i8, ptr %add.ptr14.3.i, i32 1
  %add10.4.i = or i32 %mul.i, 12
  %call11.4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.3.i, ptr noundef nonnull @.str.6, i32 noundef %add10.4.i, i32 noundef 5) #11
  %add.ptr12.4.i = getelementptr i8, ptr %add.ptr16.3.i, i32 %call11.4.i
  %30 = call ptr @memcpy(ptr %add.ptr12.4.i, ptr @.str.4, i32 34)
  %add.ptr14.4.i = getelementptr i8, ptr %add.ptr12.4.i, i32 33
  %31 = ptrtoint ptr %add.ptr14.4.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 2560, ptr %add.ptr14.4.i, align 1
  %add.ptr16.4.i = getelementptr i8, ptr %add.ptr14.4.i, i32 1
  %add10.5.i = or i32 %mul.i, 13
  %call11.5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.4.i, ptr noundef nonnull @.str.6, i32 noundef %add10.5.i, i32 noundef 5) #11
  %add.ptr12.5.i = getelementptr i8, ptr %add.ptr16.4.i, i32 %call11.5.i
  %32 = call ptr @memcpy(ptr %add.ptr12.5.i, ptr @.str.4, i32 34)
  %add.ptr14.5.i = getelementptr i8, ptr %add.ptr12.5.i, i32 33
  %33 = ptrtoint ptr %add.ptr14.5.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 2560, ptr %add.ptr14.5.i, align 1
  %add.ptr16.5.i = getelementptr i8, ptr %add.ptr14.5.i, i32 1
  %add10.6.i = or i32 %mul.i, 14
  %call11.6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.5.i, ptr noundef nonnull @.str.6, i32 noundef %add10.6.i, i32 noundef 5) #11
  %add.ptr12.6.i = getelementptr i8, ptr %add.ptr16.5.i, i32 %call11.6.i
  %34 = call ptr @memcpy(ptr %add.ptr12.6.i, ptr @.str.4, i32 34)
  %add.ptr14.6.i = getelementptr i8, ptr %add.ptr12.6.i, i32 33
  %35 = ptrtoint ptr %add.ptr14.6.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 2560, ptr %add.ptr14.6.i, align 1
  %add.ptr16.6.i = getelementptr i8, ptr %add.ptr14.6.i, i32 1
  %add10.7.i = or i32 %mul.i, 15
  %call11.7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.6.i, ptr noundef nonnull @.str.6, i32 noundef %add10.7.i, i32 noundef 5) #11
  %add.ptr12.7.i = getelementptr i8, ptr %add.ptr16.6.i, i32 %call11.7.i
  %36 = call ptr @memcpy(ptr %add.ptr12.7.i, ptr @.str.4, i32 34)
  %add.ptr14.7.i = getelementptr i8, ptr %add.ptr12.7.i, i32 33
  %37 = ptrtoint ptr %add.ptr14.7.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 2560, ptr %add.ptr14.7.i, align 1
  %add.ptr16.7.i = getelementptr i8, ptr %add.ptr14.7.i, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr16.7.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end

if.else:                                          ; preds = %status_name_to_id.exit.if.else_crit_edge, %status_name_to_id.exit.thread21
  %retval.0.i24 = phi i32 [ 0, %status_name_to_id.exit.thread21 ], [ %5, %status_name_to_id.exit.if.else_crit_edge ]
  %call5 = call fastcc i32 @status_show_vhci(i32 noundef %retval.0.i24, ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3.pn = phi i32 [ %sub.ptr.sub.i, %if.then ], [ %call5, %if.else ]
  %out.addr.0 = getelementptr i8, ptr %add.ptr, i32 %call3.pn
  %sub.ptr.lhs.cast = ptrtoint ptr %out.addr.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %out to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @status_show_vhci(i32 noundef %pdev_nr, ptr noundef %out) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhcis to i32))
  %0 = load ptr, ptr @vhcis, align 4
  %pdev1 = getelementptr %struct.vhci, ptr %0, i32 %pdev_nr, i32 1
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1, align 4
  %tobool.not = icmp eq ptr %2, null
  %tobool2.not = icmp eq ptr %out, null
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %3 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.body5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @status_show_vhci.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@status_show_vhci, %cleanup)) #11
          to label %if.then10 [label %cleanup], !srcloc !141

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @status_show_vhci.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 74) #11
  br label %cleanup

if.end14:                                         ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd_priv.i, align 8
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %vhci_hcd_hs = getelementptr inbounds %struct.vhci, ptr %7, i32 0, i32 2
  %mul = shl i32 %pdev_nr, 4
  br label %for.body

for.cond34.preheader:                             ; preds = %port_show_vhci.exit
  %vhci_hcd_ss = getelementptr inbounds %struct.vhci, ptr %7, i32 0, i32 3
  %add44 = or i32 %mul, 8
  br label %for.body37

for.body:                                         ; preds = %port_show_vhci.exit.for.body_crit_edge, %if.end14
  %i.0113 = phi i32 [ 0, %if.end14 ], [ %inc, %port_show_vhci.exit.for.body_crit_edge ]
  %out.addr.0112 = phi ptr [ %out, %if.end14 ], [ %add.ptr22.i, %port_show_vhci.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %vhci_hcd_hs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vhci_hcd_hs, align 4
  %lock31 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 5, i32 %i.0113, i32 4, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock31) #11
  %add = add nuw nsw i32 %i.0113, %mul
  %status.i = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 5, i32 %i.0113, i32 4, i32 1
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %out.addr.0112, ptr noundef nonnull @.str.3, i32 noundef %add, i32 noundef %11) #11
  %add.ptr4.i = getelementptr i8, ptr %out.addr.0112, i32 %call3.i
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp7.i = icmp eq i32 %13, 6
  br i1 %cmp7.i, label %if.then8.i, label %if.else15.i

if.then8.i:                                       ; preds = %for.body
  %arrayidx30 = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 5, i32 %i.0113
  %speed.i = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 5, i32 %i.0113, i32 2
  %14 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed.i, align 8
  %devid.i = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 5, i32 %i.0113, i32 1
  %16 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devid.i, align 4
  %call9.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.i, ptr noundef nonnull @.str.12, i32 noundef %15, i32 noundef %17) #11
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %call9.i
  %sockfd.i = getelementptr %struct.vhci_hcd, ptr %9, i32 0, i32 5, i32 %i.0113, i32 4, i32 4
  %18 = ptrtoint ptr %sockfd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sockfd.i, align 8
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx30, align 8
  %init_name.i.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then8.i.dev_name.exit.i_crit_edge

if.then8.i.dev_name.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then8.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %if.then8.i.dev_name.exit.i_crit_edge ]
  %call13.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10.i, ptr noundef nonnull @.str.13, i32 noundef %19, ptr noundef %retval.0.i.i) #11
  br label %port_show_vhci.exit

if.else15.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %26 = call ptr @memcpy(ptr %add.ptr4.i, ptr @.str.14, i32 13)
  %add.ptr17.i = getelementptr i8, ptr %add.ptr4.i, i32 13
  %27 = call ptr @memcpy(ptr %add.ptr17.i, ptr @.str.15, i32 11)
  br label %port_show_vhci.exit

port_show_vhci.exit:                              ; preds = %if.else15.i, %dev_name.exit.i
  %28 = phi i32 [ %call9.i, %dev_name.exit.i ], [ 13, %if.else15.i ]
  %.sink44.i = phi i32 [ %call13.i, %dev_name.exit.i ], [ 10, %if.else15.i ]
  %29 = getelementptr i8, ptr %add.ptr4.i, i32 %28
  %add.ptr19.i = getelementptr i8, ptr %29, i32 %.sink44.i
  %30 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 2560, ptr %add.ptr19.i, align 1
  %add.ptr22.i = getelementptr i8, ptr %add.ptr19.i, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock31) #11
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond34.preheader, label %port_show_vhci.exit.for.body_crit_edge

port_show_vhci.exit.for.body_crit_edge:           ; preds = %port_show_vhci.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body37:                                       ; preds = %port_show_vhci.exit98.for.body37_crit_edge, %for.cond34.preheader
  %i.1116 = phi i32 [ 0, %for.cond34.preheader ], [ %inc49, %port_show_vhci.exit98.for.body37_crit_edge ]
  %out.addr.2115 = phi ptr [ %add.ptr22.i, %for.cond34.preheader ], [ %add.ptr22.i97, %port_show_vhci.exit98.for.body37_crit_edge ]
  %31 = ptrtoint ptr %vhci_hcd_ss to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vhci_hcd_ss, align 4
  %lock42 = getelementptr %struct.vhci_hcd, ptr %32, i32 0, i32 5, i32 %i.1116, i32 4, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock42) #11
  %add45 = add nuw nsw i32 %add44, %i.1116
  %status.i75 = getelementptr %struct.vhci_hcd, ptr %32, i32 0, i32 5, i32 %i.1116, i32 4, i32 1
  %33 = ptrtoint ptr %status.i75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status.i75, align 4
  %call3.i76 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %out.addr.2115, ptr noundef nonnull @.str.6, i32 noundef %add45, i32 noundef %34) #11
  %add.ptr4.i77 = getelementptr i8, ptr %out.addr.2115, i32 %call3.i76
  %35 = ptrtoint ptr %status.i75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp7.i79 = icmp eq i32 %36, 6
  br i1 %cmp7.i79, label %if.then8.i87, label %if.else15.i94

if.then8.i87:                                     ; preds = %for.body37
  %arrayidx40 = getelementptr %struct.vhci_hcd, ptr %32, i32 0, i32 5, i32 %i.1116
  %speed.i80 = getelementptr %struct.vhci_hcd, ptr %32, i32 0, i32 5, i32 %i.1116, i32 2
  %37 = ptrtoint ptr %speed.i80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed.i80, align 8
  %devid.i81 = getelementptr %struct.vhci_hcd, ptr %32, i32 0, i32 5, i32 %i.1116, i32 1
  %39 = ptrtoint ptr %devid.i81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %devid.i81, align 4
  %call9.i82 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.i77, ptr noundef nonnull @.str.12, i32 noundef %38, i32 noundef %40) #11
  %add.ptr10.i83 = getelementptr i8, ptr %add.ptr4.i77, i32 %call9.i82
  %sockfd.i84 = getelementptr %struct.vhci_hcd, ptr %32, i32 0, i32 5, i32 %i.1116, i32 4, i32 4
  %41 = ptrtoint ptr %sockfd.i84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sockfd.i84, align 8
  %43 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx40, align 8
  %init_name.i.i85 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15, i32 3
  %45 = ptrtoint ptr %init_name.i.i85 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i85, align 8
  %tobool.not.i.i86 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i86, label %if.end.i.i89, label %if.then8.i87.dev_name.exit.i92_crit_edge

if.then8.i87.dev_name.exit.i92_crit_edge:         ; preds = %if.then8.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i92

if.end.i.i89:                                     ; preds = %if.then8.i87
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i88 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  %47 = ptrtoint ptr %dev.i88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i88, align 4
  br label %dev_name.exit.i92

dev_name.exit.i92:                                ; preds = %if.end.i.i89, %if.then8.i87.dev_name.exit.i92_crit_edge
  %retval.0.i.i90 = phi ptr [ %48, %if.end.i.i89 ], [ %46, %if.then8.i87.dev_name.exit.i92_crit_edge ]
  %call13.i91 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10.i83, ptr noundef nonnull @.str.13, i32 noundef %42, ptr noundef %retval.0.i.i90) #11
  br label %port_show_vhci.exit98

if.else15.i94:                                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #13
  %49 = call ptr @memcpy(ptr %add.ptr4.i77, ptr @.str.14, i32 13)
  %add.ptr17.i93 = getelementptr i8, ptr %add.ptr4.i77, i32 13
  %50 = call ptr @memcpy(ptr %add.ptr17.i93, ptr @.str.15, i32 11)
  br label %port_show_vhci.exit98

port_show_vhci.exit98:                            ; preds = %if.else15.i94, %dev_name.exit.i92
  %51 = phi i32 [ %call9.i82, %dev_name.exit.i92 ], [ 13, %if.else15.i94 ]
  %.sink44.i95 = phi i32 [ %call13.i91, %dev_name.exit.i92 ], [ 10, %if.else15.i94 ]
  %52 = getelementptr i8, ptr %add.ptr4.i77, i32 %51
  %add.ptr19.i96 = getelementptr i8, ptr %52, i32 %.sink44.i95
  %53 = ptrtoint ptr %add.ptr19.i96 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 2560, ptr %add.ptr19.i96, align 1
  %add.ptr22.i97 = getelementptr i8, ptr %add.ptr19.i96, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock42) #11
  %inc49 = add nuw nsw i32 %i.1116, 1
  %exitcond118.not = icmp eq i32 %inc49, 8
  br i1 %exitcond118.not, label %for.end50, label %port_show_vhci.exit98.for.body37_crit_edge

port_show_vhci.exit98.for.body37_crit_edge:       ; preds = %port_show_vhci.exit98
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body37

for.end50:                                        ; preds = %port_show_vhci.exit98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call22) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr22.i97 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %out to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %if.then10, %do.body5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %for.end50 ], [ 0, %if.then10 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nports_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %out) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %0 = load i32, ptr @vhci_num_controllers, align 4
  %mul = shl i32 %0, 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %out, ptr noundef nonnull @.str.17, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @detach_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #11
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %port, align 4
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %div1.i = lshr i32 %2, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %3 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %3)
  %cmp.not.i = icmp ult i32 %div1.i, %3
  br i1 %cmp.not.i, label %if.end5, label %valid_port.exit.thread

valid_port.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 219, i32 noundef %div1.i) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rem.i = and i32 %2, 7
  %4 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %div1.i, i32 %3) #11, !srcloc !142
  %and.i = and i32 %4, %div1.i
  %5 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %rem.i, i32 8) #11, !srcloc !142
  %and27.i = and i32 %5, %rem.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhcis to i32))
  %6 = load ptr, ptr @vhcis, align 4
  %pdev = getelementptr %struct.vhci, ptr %6, i32 %and.i, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %do.end, label %do.body10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %12) #15
  br label %cleanup

do.body10:                                        ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %13 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body10.do.end25_crit_edge, label %do.body13

do.body10.do.end25_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.body13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @detach_store.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@detach_store, %do.end25)) #11
          to label %if.then19 [label %do.end25], !srcloc !141

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @detach_store.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef 256, i32 noundef %and27.i) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body13, %do.body10.do.end25_crit_edge
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %16 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool26.not = icmp eq i32 %16, 0
  %hcd_priv.i73 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 30
  %17 = ptrtoint ptr %hcd_priv.i73 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcd_priv.i73, align 8
  %vhci_hcd_ss = getelementptr inbounds %struct.vhci, ptr %18, i32 0, i32 3
  %vhci_hcd_hs = getelementptr inbounds %struct.vhci, ptr %18, i32 0, i32 2
  %vhci_hcd.0.in = select i1 %tobool26.not, ptr %vhci_hcd_hs, ptr %vhci_hcd_ss
  %19 = ptrtoint ptr %vhci_hcd.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %vhci_hcd.0 = load ptr, ptr %vhci_hcd.0.in, align 4
  %call32 = call fastcc i32 @vhci_port_disconnect(ptr noundef %vhci_hcd.0, i32 noundef %and27.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end25.cleanup_crit_edge, label %do.body36

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body36:                                        ; preds = %do.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %20 = load i32, ptr @usbip_debug_flag, align 4
  %and37 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.cleanup_crit_edge, label %do.body40

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body40:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @detach_store.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@detach_store, %cleanup)) #11
          to label %if.then54 [label %cleanup], !srcloc !141

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @detach_store.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20, i32 noundef 267) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %do.body40, %do.body36.cleanup_crit_edge, %do.end25.cleanup_crit_edge, %do.end, %valid_port.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end25.cleanup_crit_edge ], [ %count, %if.then54 ], [ %count, %do.body36.cleanup_crit_edge ], [ -22, %valid_port.exit.thread ], [ %count, %do.body40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhci_port_disconnect(ptr noundef %vhci_hcd, i32 noundef %rhport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vhci_hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhci_hcd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %2 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body3

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_port_disconnect.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_port_disconnect, %do.end11)) #11
          to label %if.then8 [label %do.end11], !srcloc !141

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_port_disconnect.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef 186) #11
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3, %entry.do.end11_crit_edge
  %sysfs_lock = getelementptr %struct.vhci_hcd, ptr %vhci_hcd, i32 0, i32 5, i32 %rhport, i32 4, i32 3
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #11
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %lock22 = getelementptr %struct.vhci_hcd, ptr %vhci_hcd, i32 0, i32 5, i32 %rhport, i32 4, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock22) #11
  %status = getelementptr %struct.vhci_hcd, ptr %vhci_hcd, i32 0, i32 5, i32 %rhport, i32 4, i32 1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp24 = icmp eq i32 %4, 4
  br i1 %cmp24, label %do.end29, label %if.end39

do.end29:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32, i32 noundef 195, i32 noundef 4) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock22) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call16) #11
  br label %cleanup

if.end39:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %ud = getelementptr %struct.vhci_hcd, ptr %vhci_hcd, i32 0, i32 5, i32 %rhport, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock22) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call16) #11
  tail call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end29
  %retval.0 = phi i32 [ -22, %do.end29 ], [ 0, %if.end39 ]
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attach_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %sockfd = alloca i32, align 4
  %port = alloca i32, align 4
  %devid = alloca i32, align 4
  %speed = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sockfd) #11
  %0 = ptrtoint ptr %sockfd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sockfd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #11
  %1 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devid) #11
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %devid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #11
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %speed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %err, align 4, !annotation !140
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.37, ptr noundef nonnull %port, ptr noundef nonnull %sockfd, ptr noundef nonnull %devid, ptr noundef nonnull %speed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %div1.i = lshr i32 %6, 4
  %rem.i = and i32 %6, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %7 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body15_crit_edge, label %do.body4

if.end.do.body15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @attach_store.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@attach_store, %do.body15)) #11
          to label %if.then10 [label %do.body15], !srcloc !141

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @attach_store.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef 335, i32 noundef %9, i32 noundef %div1.i, i32 noundef %rem.i) #11
  br label %do.body15

do.body15:                                        ; preds = %if.then10, %do.body4, %if.end.do.body15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %10 = load i32, ptr @usbip_debug_flag, align 4
  %and16 = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end39_crit_edge, label %do.body19

do.body15.do.end39_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

do.body19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @attach_store.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@attach_store, %do.end39)) #11
          to label %if.then33 [label %do.end39], !srcloc !141

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sockfd, align 4
  %13 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devid, align 4
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @attach_store.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.38, i32 noundef 337, i32 noundef %12, i32 noundef %14, i32 noundef %16) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %do.body19, %do.body15.do.end39_crit_edge
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhci_num_controllers to i32))
  %19 = load i32, ptr @vhci_num_controllers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %19)
  %cmp.not.i.i = icmp ult i32 %div1.i, %19
  br i1 %cmp.not.i.i, label %if.end.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 219, i32 noundef %div1.i) #15
  br label %cleanup

if.end.i:                                         ; preds = %do.end39
  %20 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %div1.i, i32 %19) #11, !srcloc !142
  %and.i.i = and i32 %20, %div1.i
  %21 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %rem.i, i32 8) #11, !srcloc !142
  %and27.i.i = and i32 %21, %rem.i
  %speed.off.i = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %speed.off.i)
  %switch.i = icmp ult i32 %speed.off.i, 5
  br i1 %switch.i, label %if.end43, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = call ptr @usb_speed_string(i32 noundef %18) #11
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 289, ptr noundef %call1.i) #15
  br label %cleanup

if.end43:                                         ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vhcis to i32))
  %22 = load ptr, ptr @vhcis, align 4
  %pdev = getelementptr %struct.vhci, ptr %22, i32 %and.i.i, i32 1
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %cmp45 = icmp eq ptr %26, null
  br i1 %cmp45, label %do.end49, label %if.end50

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %28) #15
  br label %cleanup

if.end50:                                         ; preds = %if.end43
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 0, i32 30
  %29 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hcd_priv.i, align 8
  %31 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp53 = icmp eq i32 %32, 5
  %vhci_hcd_ss = getelementptr inbounds %struct.vhci, ptr %30, i32 0, i32 3
  %vhci_hcd_hs = getelementptr inbounds %struct.vhci, ptr %30, i32 0, i32 2
  %.pn.in = select i1 %cmp53, ptr %vhci_hcd_ss, ptr %vhci_hcd_hs
  %33 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn.in, align 4
  %vdev.0 = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i
  %ud = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4
  %sysfs_lock = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4, i32 3
  call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #11
  %34 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sockfd, align 4
  %call60 = call ptr @sockfd_lookup(i32 noundef %35, ptr noundef nonnull %err) #11
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %do.end65, label %if.end66

do.end65:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #15
  %36 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -22, ptr %err, align 4
  br label %unlock_mutex

if.end66:                                         ; preds = %if.end50
  %type = getelementptr inbounds %struct.socket, ptr %call60, i32 0, i32 1
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp67.not = icmp eq i16 %38, 1
  br i1 %cmp67.not, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %conv = sext i16 %38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %conv) #15
  %file = getelementptr inbounds %struct.socket, ptr %call60, i32 0, i32 3
  %39 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %40) #11
  %41 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -22, ptr %err, align 4
  br label %unlock_mutex

if.end75:                                         ; preds = %if.end66
  %call77 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vhci_rx_loop, ptr noundef %ud, i32 noundef -1, ptr noundef nonnull @.str.50) #11
  %cmp.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %file80 = getelementptr inbounds %struct.socket, ptr %call60, i32 0, i32 3
  %42 = ptrtoint ptr %file80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %file80, align 4
  call void @fput(ptr noundef %43) #11
  %44 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -22, ptr %err, align 4
  br label %unlock_mutex

if.end81:                                         ; preds = %if.end75
  %call83 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vhci_tx_loop, ptr noundef %ud, i32 noundef -1, ptr noundef nonnull @.str.51) #11
  %cmp.i224 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %call86 = call i32 @kthread_stop(ptr noundef %call77) #11
  %file87 = getelementptr inbounds %struct.socket, ptr %call60, i32 0, i32 3
  %45 = ptrtoint ptr %file87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %file87, align 4
  call void @fput(ptr noundef %46) #11
  %47 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -22, ptr %err, align 4
  br label %unlock_mutex

if.end88:                                         ; preds = %if.end81
  call fastcc void @get_task_struct(ptr noundef %call77)
  call fastcc void @get_task_struct(ptr noundef %call83)
  %call97 = call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #11
  %lock103 = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4, i32 2
  call void @_raw_spin_lock(ptr noundef %lock103) #11
  %status = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4, i32 1
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp105.not = icmp eq i32 %49, 4
  br i1 %cmp105.not, label %do.end126, label %if.then107

if.then107:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %lock103) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call97) #11
  %file111 = getelementptr inbounds %struct.socket, ptr %call60, i32 0, i32 3
  %50 = ptrtoint ptr %file111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %file111, align 4
  call void @fput(ptr noundef %51) #11
  %call113 = call i32 @kthread_stop(ptr noundef %call77) #11
  call fastcc void @put_task_struct(ptr noundef %call77)
  %call117 = call i32 @kthread_stop(ptr noundef %call83) #11
  call fastcc void @put_task_struct(ptr noundef %call83)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %and27.i.i) #15
  %52 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -16, ptr %err, align 4
  br label %unlock_mutex

do.end126:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sockfd, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %and.i.i, i32 noundef %and27.i.i, i32 noundef %54) #15
  %55 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %devid, align 4
  %57 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %speed, align 4
  %call130 = call ptr @usb_speed_string(i32 noundef %58) #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %56, i32 noundef %58, ptr noundef %call130) #15
  %59 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %devid, align 4
  %devid131 = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 1
  %61 = ptrtoint ptr %devid131 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %devid131, align 4
  %62 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %speed, align 4
  %speed132 = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 2
  %64 = ptrtoint ptr %speed132 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %speed132, align 8
  %65 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sockfd, align 4
  %sockfd134 = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4, i32 4
  %67 = ptrtoint ptr %sockfd134 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sockfd134, align 8
  %tcp_socket = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4, i32 5
  %68 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call60, ptr %tcp_socket, align 4
  %tcp_rx137 = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4, i32 6
  %69 = ptrtoint ptr %tcp_rx137 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call77, ptr %tcp_rx137, align 8
  %tcp_tx139 = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4, i32 7
  %70 = ptrtoint ptr %tcp_tx139 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call83, ptr %tcp_tx139, align 4
  %71 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 5, ptr %status, align 4
  %call.i = call i64 @kcov_common_handle() #11
  %kcov_handle.i = getelementptr %struct.vhci_hcd, ptr %.pn, i32 0, i32 5, i32 %and27.i.i, i32 4, i32 11
  %72 = ptrtoint ptr %kcov_handle.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %call.i, ptr %kcov_handle.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock103) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call97) #11
  %73 = ptrtoint ptr %tcp_rx137 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tcp_rx137, align 8
  %call148 = call i32 @wake_up_process(ptr noundef %74) #11
  %75 = ptrtoint ptr %tcp_tx139 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tcp_tx139, align 4
  %call151 = call i32 @wake_up_process(ptr noundef %76) #11
  %77 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %speed, align 4
  call void @rh_port_connect(ptr noundef %vdev.0, i32 noundef %78) #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.63) #15
  call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  br label %cleanup

unlock_mutex:                                     ; preds = %if.then107, %if.then85, %if.then79, %do.end72, %do.end65
  call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  %79 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %unlock_mutex, %do.end126, %do.end49, %do.end.i, %do.end.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end49 ], [ %80, %unlock_mutex ], [ %count, %do.end126 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devid) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sockfd) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhci_rx_loop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhci_tx_loop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_task_struct(ptr noundef %t) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #11, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !137

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !144

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_task_struct(ptr noundef %t) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !144

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @__put_task_struct(ptr noundef %t) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rh_port_connect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @kcov_common_handle() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @vhci_attr_group, !1, !"vhci_attr_group", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 494, i32 24}
!2 = !{ptr @status_attrs, !3, !"status_attrs", i1 false, i1 false}
!3 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 457, i32 28}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 465, i32 24}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 467, i32 45}
!8 = !{ptr @set_status_attr.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 471, i32 2}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 154, i32 10}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 113, i32 23}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 116, i32 23}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 117, i32 23}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 121, i32 23}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 74, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @status_show_vhci.__UNIQUE_ID_ddebug241, !21, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!26 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 48, i32 25}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 50, i32 25}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 55, i32 25}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 56, i32 25}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 177, i32 8}
!37 = !{ptr @dev_attr_nports, !36, !"dev_attr_nports", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 174, i32 22}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 271, i32 8}
!42 = !{ptr @dev_attr_detach, !41, !"dev_attr_detach", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 252, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @detach_store._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @detach_store._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 256, i32 2}
!52 = !{ptr @detach_store.__UNIQUE_ID_ddebug247, !51, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!53 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 267, i32 2}
!56 = !{ptr @detach_store.__UNIQUE_ID_ddebug248, !55, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!57 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 219, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @valid_port._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @valid_port._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 225, i32 3}
!65 = !{ptr @valid_port._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @valid_port._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 186, i32 2}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vhci_port_disconnect.__UNIQUE_ID_ddebug242, !68, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!71 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 195, i32 3}
!74 = !{ptr @vhci_port_disconnect._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @vhci_port_disconnect._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 448, i32 8}
!78 = !{ptr @dev_attr_attach, !77, !"dev_attr_attach", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 329, i32 18}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 334, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @attach_store.__UNIQUE_ID_ddebug249, !82, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!85 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 336, i32 2}
!88 = !{ptr @attach_store.__UNIQUE_ID_ddebug250, !87, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!89 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 345, i32 3}
!92 = !{ptr @attach_store._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @attach_store._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 362, i32 3}
!96 = !{ptr @attach_store._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @attach_store._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 367, i32 3}
!100 = !{ptr @attach_store._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @attach_store._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 375, i32 11}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 381, i32 11}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 406, i32 3}
!108 = !{ptr @attach_store._entry.52, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @attach_store._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 415, i32 2}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @attach_store._entry.55, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @attach_store._entry_ptr.58, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 417, i32 2}
!117 = !{ptr @attach_store._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @attach_store._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 438, i32 2}
!121 = !{ptr @attach_store._entry.62, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @attach_store._entry_ptr.64, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/usbip/vhci_sysfs.c", i32 288, i32 3}
!125 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @valid_args._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @valid_args._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = distinct !{!138, !139}
!139 = !{!"llvm.loop.peeled.count", i32 1}
!140 = !{!"auto-init"}
!141 = !{i64 2148261685, i64 2148261690, i64 2148261703, i64 2148261747, i64 2148261781, i64 2148261802}
!142 = !{i64 898074, i64 898091}
!143 = !{i64 2148449822, i64 2148449854, i64 2148449883, i64 2148449917, i64 2148449948, i64 2148449971}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2148537823}
!146 = !{i64 2148452287, i64 2148452319, i64 2148452348, i64 2148452382, i64 2148452413, i64 2148452436}
!147 = !{i64 2149573309}
