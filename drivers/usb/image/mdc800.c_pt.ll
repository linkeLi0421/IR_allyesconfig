; ModuleID = '/llk/IR_all_yes/drivers/usb/image/mdc800.c_pt.bc'
source_filename = "../drivers/usb/image/mdc800.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mdc800_data = type { ptr, i32, [4 x i32], ptr, %struct.wait_queue_head, i32, ptr, i32, i32, [8 x i8], ptr, ptr, %struct.wait_queue_head, i32, ptr, ptr, %struct.wait_queue_head, i32, i32, [64 x i8], i32, i32, i32, %struct.mutex, [8 x i8], i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@mdc800_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @mdc800_usb_probe, ptr @mdc800_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdc800_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@mdc800 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_mdc800__239_1071_usb_mdc800_init6 = internal global ptr @usb_mdc800_init, section ".initcall6.init", align 4
@__exitcall_usb_mdc800_cleanup = internal global ptr @usb_mdc800_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [55 x i8] c"mdc800.author=Henning Zabel <henning@uni-paderborn.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [63 x i8] c"mdc800.description=USB Driver for Mustek MDC800 Digital Camera\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [37 x i8] c"mdc800.file=drivers/usb/image/mdc800\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [19 x i8] c"mdc800.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mdc800\00", [25 x i8] zeroinitializer }, align 32
@mdc800_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1375, i16 -22528, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mdc800_usb_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mdc800_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/image/mdc800.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(%s) called.\0A\00", [18 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 435, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"only one Mustek MDC800 is supported.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry_ptr = internal global ptr @mdc800_usb_probe._entry, section ".printk_index", align 4
@mdc800_usb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 442, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"probe fails -> wrong Number of Configuration\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry_ptr.10 = internal global ptr @mdc800_usb_probe._entry.7, section ".printk_index", align 4
@mdc800_usb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 454, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"probe fails -> wrong Interface\0A\00", [32 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry_ptr.13 = internal global ptr @mdc800_usb_probe._entry.11, section ".printk_index", align 4
@mdc800_ed = internal constant { [4 x %struct.usb_endpoint_descriptor], [60 x i8] } { [4 x %struct.usb_endpoint_descriptor] [%struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 1, i8 2, i16 2048, i8 0, i8 0, i8 0 }>, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 -126, i8 3, i16 2048, i8 0, i8 0, i8 0 }>, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 3, i8 2, i16 16384, i8 0, i8 0, i8 0 }>, %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 -124, i8 2, i16 16384, i8 0, i8 0, i8 0 }>], [60 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 475, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"probe fails -> Wrong Endpoints.\0A\00", [63 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry_ptr.16 = internal global ptr @mdc800_usb_probe._entry.14, section ".printk_index", align 4
@mdc800_usb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 481, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Found Mustek MDC800 on USB.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry_ptr.20 = internal global ptr @mdc800_usb_probe._entry.17, section ".printk_index", align 4
@mdc800_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.24, ptr null, ptr @mdc800_device_ops, i32 32 }, [16 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 487, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not able to get a minor for this device.\0A\00", [54 x i8] zeroinitializer }, align 32
@mdc800_usb_probe._entry_ptr.23 = internal global ptr @mdc800_usb_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdc800%d\00", [23 x i8] zeroinitializer }, align 32
@mdc800_device_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @mdc800_device_read, ptr @mdc800_device_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mdc800_device_open, ptr null, ptr @mdc800_device_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mdc800_device_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014mdc800: Illegal State \22working\22reached during read ?!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mdc800_device_read\00", [45 x i8] zeroinitializer }, align 32
@mdc800_device_read._entry_ptr = internal global ptr @mdc800_device_read._entry, section ".printk_index", align 4
@mdc800_device_read._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 730, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't submit download urb (retval=%i)\0A\00", [57 x i8] zeroinitializer }, align 32
@mdc800_device_read._entry_ptr.29 = internal global ptr @mdc800_device_read._entry.27, section ".printk_index", align 4
@mdc800_device_read._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 743, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"request download-bytes fails (status=%i)\0A\00", [54 x i8] zeroinitializer }, align 32
@mdc800_device_read._entry_ptr.32 = internal global ptr @mdc800_device_read._entry.30, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mdc800_device_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 841, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Camera didn't get ready.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mdc800_device_write\00", [44 x i8] zeroinitializer }, align 32
@mdc800_device_write._entry_ptr = internal global ptr @mdc800_device_write._entry, section ".printk_index", align 4
@mdc800_device_write._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 855, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"submitting write urb fails (retval=%i)\0A\00", [56 x i8] zeroinitializer }, align 32
@mdc800_device_write._entry_ptr.40 = internal global ptr @mdc800_device_write._entry.38, section ".printk_index", align 4
@mdc800_device_write._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 877, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"call 0x07 before 0x05,0x3e\0A\00", [36 x i8] zeroinitializer }, align 32
@mdc800_device_write._entry_ptr.43 = internal global ptr @mdc800_device_write._entry.41, section ".printk_index", align 4
@mdc800_device_write._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 898, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"requesting answer from irq fails\0A\00", [62 x i8] zeroinitializer }, align 32
@mdc800_device_write._entry_ptr.46 = internal global ptr @mdc800_device_write._entry.44, section ".printk_index", align 4
@mdc800_device_write.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.47, i8 0, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cached imagesize = %i\0A\00", [41 x i8] zeroinitializer }, align 32
@mdc800_device_write._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.37, ptr @.str.2, i32 926, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Command Timeout.\0A\00", [46 x i8] zeroinitializer }, align 32
@mdc800_device_write._entry_ptr.50 = internal global ptr @mdc800_device_write._entry.48, section ".printk_index", align 4
@mdc800_usb_waitForIRQ._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 344, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout waiting for camera.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mdc800_usb_waitForIRQ\00", [42 x i8] zeroinitializer }, align 32
@mdc800_usb_waitForIRQ._entry_ptr = internal global ptr @mdc800_usb_waitForIRQ._entry, section ".printk_index", align 4
@mdc800_usb_waitForIRQ._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014mdc800: Camera gets disconnected during waiting for irq.\0A\00", [36 x i8] zeroinitializer }, align 32
@mdc800_usb_waitForIRQ._entry_ptr.55 = internal global ptr @mdc800_usb_waitForIRQ._entry.53, section ".printk_index", align 4
@mdc800_device_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 639, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"request USB irq fails (submit_retval=%i).\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mdc800_device_open\00", [45 x i8] zeroinitializer }, align 32
@mdc800_device_open._entry_ptr = internal global ptr @mdc800_device_open._entry, section ".printk_index", align 4
@mdc800_device_open.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Mustek MDC800 device opened.\0A\00", [34 x i8] zeroinitializer }, align 32
@mdc800_usb_irq.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mdc800_usb_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gets busy\0A\00", [21 x i8] zeroinitializer }, align 32
@mdc800_usb_irq.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gets ready\0A\00", [20 x i8] zeroinitializer }, align 32
@mdc800_usb_irq.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%i %i %i %i %i %i %i %i \0A\00", [38 x i8] zeroinitializer }, align 32
@mdc800_usb_write_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 370, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"writing command fails (status=%i)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mdc800_usb_write_notify\00", [40 x i8] zeroinitializer }, align 32
@mdc800_usb_write_notify._entry_ptr = internal global ptr @mdc800_usb_write_notify._entry, section ".printk_index", align 4
@mdc800_usb_download_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 398, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request bytes fails (status:%i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mdc800_usb_download_notify\00", [37 x i8] zeroinitializer }, align 32
@mdc800_usb_download_notify._entry_ptr = internal global ptr @mdc800_usb_download_notify._entry, section ".printk_index", align 4
@mdc800_usb_disconnect.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mdc800_usb_disconnect\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(%s) called\0A\00", [19 x i8] zeroinitializer }, align 32
@mdc800_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 564, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Mustek MDC800 disconnected from USB.\0A\00", [58 x i8] zeroinitializer }, align 32
@mdc800_usb_disconnect._entry_ptr = internal global ptr @mdc800_usb_disconnect._entry, section ".printk_index", align 4
@usb_mdc800_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mdc800->io_lock\00", [47 x i8] zeroinitializer }, align 32
@usb_mdc800_init.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mdc800->irq_wait\00", [46 x i8] zeroinitializer }, align 32
@usb_mdc800_init.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mdc800->write_wait\00", [44 x i8] zeroinitializer }, align 32
@usb_mdc800_init.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mdc800->download_wait\00", [41 x i8] zeroinitializer }, align 32
@usb_mdc800_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016mdc800: v0.7.5 (30/10/2000):USB Driver for Mustek MDC800 Digital Camera\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_mdc800_init\00", [16 x i8] zeroinitializer }, align 32
@usb_mdc800_init._entry_ptr = internal global ptr @usb_mdc800_init._entry, section ".printk_index", align 4
@usb_mdc800_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013mdc800: can't alloc memory!\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_mdc800_init._entry_ptr.81 = internal global ptr @usb_mdc800_init._entry.79, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 153, i64 187]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 5, i64 7, i64 9, i64 13, i64 32, i64 37, i64 42, i64 62, i64 73, i64 81]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 9, i64 62]
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"mdc800_usb_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 968, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"mdc800\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 216, i32 28 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 970, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"mdc800_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 959, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 430, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 435, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 441, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 454, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [10 x i8] c"mdc800_ed\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 171, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 475, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 481, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"mdc800_class\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 411, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 487, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 412, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"mdc800_device_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 947, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 695, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 728, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 740, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 230, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 214, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 174, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 840, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 853, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 875, i32 7 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 898, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 918, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 926, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 344, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 350, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 638, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 645, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 283, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 291, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 297, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 369, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 397, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 543, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 564, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 992, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 994, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 995, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 996, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1027, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private constant [30 x i8] c"../drivers/usb/image/mdc800.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1038, i32 3 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_usb_mdc800_cleanup, ptr @__initcall__kmod_mdc800__239_1071_usb_mdc800_init6, ptr @mdc800_device_open._entry, ptr @mdc800_device_open._entry_ptr, ptr @mdc800_device_read._entry, ptr @mdc800_device_read._entry.27, ptr @mdc800_device_read._entry.30, ptr @mdc800_device_read._entry_ptr, ptr @mdc800_device_read._entry_ptr.29, ptr @mdc800_device_read._entry_ptr.32, ptr @mdc800_device_write._entry, ptr @mdc800_device_write._entry.38, ptr @mdc800_device_write._entry.41, ptr @mdc800_device_write._entry.44, ptr @mdc800_device_write._entry.48, ptr @mdc800_device_write._entry_ptr, ptr @mdc800_device_write._entry_ptr.40, ptr @mdc800_device_write._entry_ptr.43, ptr @mdc800_device_write._entry_ptr.46, ptr @mdc800_device_write._entry_ptr.50, ptr @mdc800_usb_disconnect._entry, ptr @mdc800_usb_disconnect._entry_ptr, ptr @mdc800_usb_download_notify._entry, ptr @mdc800_usb_download_notify._entry_ptr, ptr @mdc800_usb_probe._entry, ptr @mdc800_usb_probe._entry.11, ptr @mdc800_usb_probe._entry.14, ptr @mdc800_usb_probe._entry.17, ptr @mdc800_usb_probe._entry.21, ptr @mdc800_usb_probe._entry.7, ptr @mdc800_usb_probe._entry_ptr, ptr @mdc800_usb_probe._entry_ptr.10, ptr @mdc800_usb_probe._entry_ptr.13, ptr @mdc800_usb_probe._entry_ptr.16, ptr @mdc800_usb_probe._entry_ptr.20, ptr @mdc800_usb_probe._entry_ptr.23, ptr @mdc800_usb_waitForIRQ._entry, ptr @mdc800_usb_waitForIRQ._entry.53, ptr @mdc800_usb_waitForIRQ._entry_ptr, ptr @mdc800_usb_waitForIRQ._entry_ptr.55, ptr @mdc800_usb_write_notify._entry, ptr @mdc800_usb_write_notify._entry_ptr, ptr @usb_mdc800_cleanup, ptr @usb_mdc800_init._entry, ptr @usb_mdc800_init._entry.79, ptr @usb_mdc800_init._entry_ptr, ptr @usb_mdc800_init._entry_ptr.81, ptr @mdc800_usb_driver, ptr @mdc800, ptr @.str, ptr @mdc800_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @mdc800_ed, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @mdc800_class, ptr @.str.22, ptr @.str.24, ptr @mdc800_device_ops, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @usb_mdc800_init.__key, ptr @.str.70, ptr @usb_mdc800_init.__key.71, ptr @.str.72, ptr @usb_mdc800_init.__key.73, ptr @.str.74, ptr @usb_mdc800_init.__key.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_ed to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_read._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_read._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_write._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_write._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_write._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_write._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_waitForIRQ._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_waitForIRQ._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_device_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_write_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_download_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdc800_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_mdc800_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_mdc800_init.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_mdc800_init.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_mdc800_init.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_mdc800_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_mdc800_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_mdc800_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @mdc800_usb_driver) #8
  %0 = load ptr, ptr @mdc800, align 4
  %irq_urb = getelementptr inbounds %struct.mdc800_data, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_free_urb(ptr noundef %2) #8
  %3 = load ptr, ptr @mdc800, align 4
  %download_urb = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %download_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %download_urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #8
  %6 = load ptr, ptr @mdc800, align 4
  %write_urb = getelementptr inbounds %struct.mdc800_data, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_urb, align 4
  tail call void @usb_free_urb(ptr noundef %8) #8
  %9 = load ptr, ptr @mdc800, align 4
  %irq_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %irq_urb_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_urb_buffer, align 4
  tail call void @kfree(ptr noundef %11) #8
  %12 = load ptr, ptr @mdc800, align 4
  %write_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %write_urb_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_urb_buffer, align 4
  tail call void @kfree(ptr noundef %14) #8
  %15 = load ptr, ptr @mdc800, align 4
  %download_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %download_urb_buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %download_urb_buffer, align 4
  tail call void @kfree(ptr noundef %17) #8
  %18 = load ptr, ptr @mdc800, align 4
  tail call void @kfree(ptr noundef %18) #8
  store ptr null, ptr @mdc800, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_mdc800_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 428) #11
  store ptr %call7.i.i, ptr @mdc800, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end61_crit_edge, label %if.end

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  %state = getelementptr inbounds %struct.mdc800_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %io_lock = getelementptr inbounds %struct.mdc800_data, ptr %call7.i.i, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.70, ptr noundef nonnull @usb_mdc800_init.__key) #8
  %3 = load ptr, ptr @mdc800, align 4
  %irq_wait = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %irq_wait, ptr noundef nonnull @.str.72, ptr noundef nonnull @usb_mdc800_init.__key.71) #8
  %4 = load ptr, ptr @mdc800, align 4
  %write_wait = getelementptr inbounds %struct.mdc800_data, ptr %4, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %write_wait, ptr noundef nonnull @.str.74, ptr noundef nonnull @usb_mdc800_init.__key.73) #8
  %5 = load ptr, ptr @mdc800, align 4
  %download_wait = getelementptr inbounds %struct.mdc800_data, ptr %5, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %download_wait, ptr noundef nonnull @.str.76, ptr noundef nonnull @usb_mdc800_init.__key.75) #8
  %6 = load ptr, ptr @mdc800, align 4
  %irq_woken = getelementptr inbounds %struct.mdc800_data, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %irq_woken to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %irq_woken, align 4
  %downloaded = getelementptr inbounds %struct.mdc800_data, ptr %6, i32 0, i32 17
  %8 = ptrtoint ptr %downloaded to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %downloaded, align 4
  %written = getelementptr inbounds %struct.mdc800_data, ptr %6, i32 0, i32 13
  %9 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %written, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 8) #11
  %11 = load ptr, ptr @mdc800, align 4
  %irq_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq_urb_buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %irq_urb_buffer, align 4
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.end.cleanup_on_fail_crit_edge, label %if.end15

if.end.cleanup_on_fail_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_on_fail

if.end15:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 8) #11
  %14 = load ptr, ptr @mdc800, align 4
  %write_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %write_urb_buffer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i63, ptr %write_urb_buffer, align 4
  %tobool18.not = icmp eq ptr %call7.i63, null
  br i1 %tobool18.not, label %if.end15.cleanup_on_fail_crit_edge, label %if.end20

if.end15.cleanup_on_fail_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_on_fail

if.end20:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 64) #11
  %17 = load ptr, ptr @mdc800, align 4
  %download_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %download_urb_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i64, ptr %download_urb_buffer, align 4
  %tobool23.not = icmp eq ptr %call7.i64, null
  br i1 %tobool23.not, label %if.end20.cleanup_on_fail_crit_edge, label %if.end25

if.end20.cleanup_on_fail_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_on_fail

if.end25:                                         ; preds = %if.end20
  %call26 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %19 = load ptr, ptr @mdc800, align 4
  %irq_urb = getelementptr inbounds %struct.mdc800_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %irq_urb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call26, ptr %irq_urb, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end25.cleanup_on_fail_crit_edge, label %if.end30

if.end25.cleanup_on_fail_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_on_fail

if.end30:                                         ; preds = %if.end25
  %call31 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %21 = load ptr, ptr @mdc800, align 4
  %download_urb = getelementptr inbounds %struct.mdc800_data, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %download_urb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %download_urb, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end30.cleanup_on_fail_crit_edge, label %if.end35

if.end30.cleanup_on_fail_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_on_fail

if.end35:                                         ; preds = %if.end30
  %call36 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %23 = load ptr, ptr @mdc800, align 4
  %write_urb = getelementptr inbounds %struct.mdc800_data, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %write_urb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call36, ptr %write_urb, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.cleanup_on_fail_crit_edge, label %if.end40

if.end35.cleanup_on_fail_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_on_fail

if.end40:                                         ; preds = %if.end35
  %call41 = tail call i32 @usb_register_driver(ptr noundef nonnull @mdc800_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.end47, label %cleanup_on_failthread-pre-split

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  br label %cleanup

cleanup_on_failthread-pre-split:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %.pr = load ptr, ptr @mdc800, align 4
  br label %cleanup_on_fail

cleanup_on_fail:                                  ; preds = %cleanup_on_failthread-pre-split, %if.end35.cleanup_on_fail_crit_edge, %if.end30.cleanup_on_fail_crit_edge, %if.end25.cleanup_on_fail_crit_edge, %if.end20.cleanup_on_fail_crit_edge, %if.end15.cleanup_on_fail_crit_edge, %if.end.cleanup_on_fail_crit_edge
  %25 = phi ptr [ %.pr, %cleanup_on_failthread-pre-split ], [ %23, %if.end35.cleanup_on_fail_crit_edge ], [ %21, %if.end30.cleanup_on_fail_crit_edge ], [ %19, %if.end25.cleanup_on_fail_crit_edge ], [ %17, %if.end20.cleanup_on_fail_crit_edge ], [ %14, %if.end15.cleanup_on_fail_crit_edge ], [ %11, %if.end.cleanup_on_fail_crit_edge ]
  %retval1.0 = phi i32 [ %call41, %cleanup_on_failthread-pre-split ], [ -19, %if.end35.cleanup_on_fail_crit_edge ], [ -19, %if.end30.cleanup_on_fail_crit_edge ], [ -19, %if.end25.cleanup_on_fail_crit_edge ], [ -19, %if.end20.cleanup_on_fail_crit_edge ], [ -19, %if.end15.cleanup_on_fail_crit_edge ], [ -19, %if.end.cleanup_on_fail_crit_edge ]
  %cmp.not = icmp eq ptr %25, null
  br i1 %cmp.not, label %cleanup_on_fail.if.end61_crit_edge, label %do.end52

cleanup_on_fail.if.end61_crit_edge:               ; preds = %cleanup_on_fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.end52:                                         ; preds = %cleanup_on_fail
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #12
  %26 = load ptr, ptr @mdc800, align 4
  %download_urb_buffer55 = getelementptr inbounds %struct.mdc800_data, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %download_urb_buffer55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %download_urb_buffer55, align 4
  tail call void @kfree(ptr noundef %28) #8
  %29 = load ptr, ptr @mdc800, align 4
  %write_urb_buffer56 = getelementptr inbounds %struct.mdc800_data, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %write_urb_buffer56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_urb_buffer56, align 4
  tail call void @kfree(ptr noundef %31) #8
  %32 = load ptr, ptr @mdc800, align 4
  %irq_urb_buffer57 = getelementptr inbounds %struct.mdc800_data, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %irq_urb_buffer57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_urb_buffer57, align 4
  tail call void @kfree(ptr noundef %34) #8
  %35 = load ptr, ptr @mdc800, align 4
  %write_urb58 = getelementptr inbounds %struct.mdc800_data, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %write_urb58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_urb58, align 4
  tail call void @usb_free_urb(ptr noundef %37) #8
  %38 = load ptr, ptr @mdc800, align 4
  %download_urb59 = getelementptr inbounds %struct.mdc800_data, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %download_urb59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %download_urb59, align 4
  tail call void @usb_free_urb(ptr noundef %40) #8
  %41 = load ptr, ptr @mdc800, align 4
  %irq_urb60 = getelementptr inbounds %struct.mdc800_data, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %irq_urb60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_urb60, align 4
  tail call void @usb_free_urb(ptr noundef %43) #8
  %44 = load ptr, ptr @mdc800, align 4
  tail call void @kfree(ptr noundef %44) #8
  br label %if.end61

if.end61:                                         ; preds = %do.end52, %cleanup_on_fail.if.end61_crit_edge, %entry.if.end61_crit_edge
  %retval1.067 = phi i32 [ %retval1.0, %do.end52 ], [ %retval1.0, %cleanup_on_fail.if.end61_crit_edge ], [ -19, %entry.if.end61_crit_edge ]
  store ptr null, ptr @mdc800, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end47
  %retval.0 = phi i32 [ %retval1.067, %if.end61 ], [ 0, %do.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc800_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc800_usb_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdc800_usb_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc800_usb_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @mdc800, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %bNumConfigurations = getelementptr i8, ptr %1, i32 945
  %5 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNumConfigurations, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp13.not = icmp eq i8 %6, 1
  br i1 %cmp13.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %7 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp22.not = icmp eq i8 %10, -1
  br i1 %cmp22.not, label %lor.lhs.false, label %if.end20.do.end41_crit_edge

if.end20.do.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

lor.lhs.false:                                    ; preds = %if.end20
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bInterfaceSubClass, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp26.not = icmp eq i8 %12, 0
  br i1 %cmp26.not, label %lor.lhs.false28, label %lor.lhs.false.do.end41_crit_edge

lor.lhs.false.do.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 7
  %13 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceProtocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp31.not = icmp eq i8 %14, 0
  br i1 %cmp31.not, label %lor.lhs.false33, label %lor.lhs.false28.do.end41_crit_edge

lor.lhs.false28.do.end41_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

lor.lhs.false33:                                  ; preds = %lor.lhs.false28
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp36.not = icmp eq i8 %16, 4
  br i1 %cmp36.not, label %for.cond.preheader, label %lor.lhs.false33.do.end41_crit_edge

lor.lhs.false33.do.end41_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

for.cond.preheader:                               ; preds = %lor.lhs.false33
  %endpoint50 = getelementptr inbounds %struct.usb_host_interface, ptr %8, i32 0, i32 3
  br label %for.body

do.end41:                                         ; preds = %lor.lhs.false33.do.end41_crit_edge, %lor.lhs.false28.do.end41_crit_edge, %lor.lhs.false.do.end41_crit_edge, %if.end20.do.end41_crit_edge
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.12) #12
  br label %cleanup

for.cond:                                         ; preds = %for.inc.3.for.cond_crit_edge, %if.then56.3.for.cond_crit_edge
  %irq_interval.2.3182 = phi i32 [ %irq_interval.2.3.ph, %for.inc.3.for.cond_crit_edge ], [ %irq_interval.2.2, %if.then56.3.for.cond_crit_edge ]
  %inc83 = add nuw nsw i32 %i.0178, 1
  %exitcond.not = icmp eq i32 %inc83, 4
  br i1 %exitcond.not, label %do.end87, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0178 = phi i32 [ 0, %for.cond.preheader ], [ %inc83, %for.cond.for.body_crit_edge ]
  %irq_interval.0177 = phi i32 [ 0, %for.cond.preheader ], [ %irq_interval.2.3182, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdc800_data, ptr %2, i32 0, i32 2, i32 %i.0178
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx, align 4
  %bEndpointAddress1.i = getelementptr [4 x %struct.usb_endpoint_descriptor], ptr @mdc800_ed, i32 0, i32 %i.0178, i32 2
  %bmAttributes5.i = getelementptr [4 x %struct.usb_endpoint_descriptor], ptr @mdc800_ed, i32 0, i32 %i.0178, i32 3
  %wMaxPacketSize10.i = getelementptr [4 x %struct.usb_endpoint_descriptor], ptr @mdc800_ed, i32 0, i32 %i.0178, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0178)
  %cmp63 = icmp eq i32 %i.0178, 1
  %18 = ptrtoint ptr %endpoint50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %endpoint50, align 4
  %bEndpointAddress.i = getelementptr %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bEndpointAddress.i, align 1
  %22 = ptrtoint ptr %bEndpointAddress1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bEndpointAddress1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp.i = icmp eq i8 %21, %23
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i, align 1
  %26 = ptrtoint ptr %bmAttributes5.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bmAttributes5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp7.i = icmp eq i8 %25, %27
  br i1 %cmp7.i, label %mdc800_endpoint_equals.exit, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

mdc800_endpoint_equals.exit:                      ; preds = %land.lhs.true.i
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 4
  %28 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wMaxPacketSize.i, align 1
  %30 = ptrtoint ptr %wMaxPacketSize10.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %wMaxPacketSize10.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp12.i.not = icmp eq i16 %29, %31
  br i1 %cmp12.i.not, label %if.then56, label %mdc800_endpoint_equals.exit.for.inc_crit_edge

mdc800_endpoint_equals.exit.for.inc_crit_edge:    ; preds = %mdc800_endpoint_equals.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then56:                                        ; preds = %mdc800_endpoint_equals.exit
  %32 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bEndpointAddress.i, align 2
  %conv60 = zext i8 %33 to i32
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv60, ptr %arrayidx, align 4
  br i1 %cmp63, label %if.then65, label %if.then56.for.inc_crit_edge

if.then56.for.inc_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then65:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %endpoint50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %endpoint50, align 4
  %bInterval = getelementptr %struct.usb_host_endpoint, ptr %36, i32 0, i32 0, i32 5
  %37 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bInterval, align 2
  %conv69 = zext i8 %38 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then65, %if.then56.for.inc_crit_edge, %mdc800_endpoint_equals.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %irq_interval.2 = phi i32 [ %conv69, %if.then65 ], [ %irq_interval.0177, %if.then56.for.inc_crit_edge ], [ %irq_interval.0177, %mdc800_endpoint_equals.exit.for.inc_crit_edge ], [ %irq_interval.0177, %land.lhs.true.i.for.inc_crit_edge ], [ %irq_interval.0177, %for.body.for.inc_crit_edge ]
  %39 = ptrtoint ptr %endpoint50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %endpoint50, align 4
  %bEndpointAddress.i.1 = getelementptr %struct.usb_host_endpoint, ptr %40, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %bEndpointAddress.i.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bEndpointAddress.i.1, align 1
  %43 = ptrtoint ptr %bEndpointAddress1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bEndpointAddress1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp.i.1 = icmp eq i8 %42, %44
  br i1 %cmp.i.1, label %land.lhs.true.i.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.i.1:                                ; preds = %for.inc
  %bmAttributes.i.1 = getelementptr %struct.usb_host_endpoint, ptr %40, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %bmAttributes.i.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bmAttributes.i.1, align 1
  %47 = ptrtoint ptr %bmAttributes5.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bmAttributes5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp7.i.1 = icmp eq i8 %46, %48
  br i1 %cmp7.i.1, label %mdc800_endpoint_equals.exit.1, label %land.lhs.true.i.1.for.inc.1_crit_edge

land.lhs.true.i.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

mdc800_endpoint_equals.exit.1:                    ; preds = %land.lhs.true.i.1
  %wMaxPacketSize.i.1 = getelementptr %struct.usb_host_endpoint, ptr %40, i32 1, i32 0, i32 4
  %49 = ptrtoint ptr %wMaxPacketSize.i.1 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %wMaxPacketSize.i.1, align 1
  %51 = ptrtoint ptr %wMaxPacketSize10.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %wMaxPacketSize10.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %52)
  %cmp12.i.not.1 = icmp eq i16 %50, %52
  br i1 %cmp12.i.not.1, label %if.then56.1, label %mdc800_endpoint_equals.exit.1.for.inc.1_crit_edge

mdc800_endpoint_equals.exit.1.for.inc.1_crit_edge: ; preds = %mdc800_endpoint_equals.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then56.1:                                      ; preds = %mdc800_endpoint_equals.exit.1
  %bEndpointAddress.1 = getelementptr %struct.usb_host_endpoint, ptr %40, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %bEndpointAddress.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bEndpointAddress.1, align 2
  %conv60.1 = zext i8 %54 to i32
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv60.1, ptr %arrayidx, align 4
  br i1 %cmp63, label %if.then65.1, label %if.then56.1.for.inc.1_crit_edge

if.then56.1.for.inc.1_crit_edge:                  ; preds = %if.then56.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then65.1:                                      ; preds = %if.then56.1
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %endpoint50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %endpoint50, align 4
  %bInterval.1 = getelementptr %struct.usb_host_endpoint, ptr %57, i32 1, i32 0, i32 5
  %58 = ptrtoint ptr %bInterval.1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bInterval.1, align 2
  %conv69.1 = zext i8 %59 to i32
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then65.1, %if.then56.1.for.inc.1_crit_edge, %mdc800_endpoint_equals.exit.1.for.inc.1_crit_edge, %land.lhs.true.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %irq_interval.2.1 = phi i32 [ %conv69.1, %if.then65.1 ], [ %irq_interval.2, %if.then56.1.for.inc.1_crit_edge ], [ %irq_interval.2, %mdc800_endpoint_equals.exit.1.for.inc.1_crit_edge ], [ %irq_interval.2, %land.lhs.true.i.1.for.inc.1_crit_edge ], [ %irq_interval.2, %for.inc.for.inc.1_crit_edge ]
  %60 = ptrtoint ptr %endpoint50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %endpoint50, align 4
  %bEndpointAddress.i.2 = getelementptr %struct.usb_host_endpoint, ptr %61, i32 2, i32 0, i32 2
  %62 = ptrtoint ptr %bEndpointAddress.i.2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bEndpointAddress.i.2, align 1
  %64 = ptrtoint ptr %bEndpointAddress1.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bEndpointAddress1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp.i.2 = icmp eq i8 %63, %65
  br i1 %cmp.i.2, label %land.lhs.true.i.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.i.2:                                ; preds = %for.inc.1
  %bmAttributes.i.2 = getelementptr %struct.usb_host_endpoint, ptr %61, i32 2, i32 0, i32 3
  %66 = ptrtoint ptr %bmAttributes.i.2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bmAttributes.i.2, align 1
  %68 = ptrtoint ptr %bmAttributes5.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bmAttributes5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp7.i.2 = icmp eq i8 %67, %69
  br i1 %cmp7.i.2, label %mdc800_endpoint_equals.exit.2, label %land.lhs.true.i.2.for.inc.2_crit_edge

land.lhs.true.i.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

mdc800_endpoint_equals.exit.2:                    ; preds = %land.lhs.true.i.2
  %wMaxPacketSize.i.2 = getelementptr %struct.usb_host_endpoint, ptr %61, i32 2, i32 0, i32 4
  %70 = ptrtoint ptr %wMaxPacketSize.i.2 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %wMaxPacketSize.i.2, align 1
  %72 = ptrtoint ptr %wMaxPacketSize10.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %wMaxPacketSize10.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp12.i.not.2 = icmp eq i16 %71, %73
  br i1 %cmp12.i.not.2, label %if.then56.2, label %mdc800_endpoint_equals.exit.2.for.inc.2_crit_edge

mdc800_endpoint_equals.exit.2.for.inc.2_crit_edge: ; preds = %mdc800_endpoint_equals.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then56.2:                                      ; preds = %mdc800_endpoint_equals.exit.2
  %bEndpointAddress.2 = getelementptr %struct.usb_host_endpoint, ptr %61, i32 2, i32 0, i32 2
  %74 = ptrtoint ptr %bEndpointAddress.2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bEndpointAddress.2, align 2
  %conv60.2 = zext i8 %75 to i32
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv60.2, ptr %arrayidx, align 4
  br i1 %cmp63, label %if.then65.2, label %if.then56.2.for.inc.2_crit_edge

if.then56.2.for.inc.2_crit_edge:                  ; preds = %if.then56.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then65.2:                                      ; preds = %if.then56.2
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %endpoint50 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %endpoint50, align 4
  %bInterval.2 = getelementptr %struct.usb_host_endpoint, ptr %78, i32 2, i32 0, i32 5
  %79 = ptrtoint ptr %bInterval.2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bInterval.2, align 2
  %conv69.2 = zext i8 %80 to i32
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then65.2, %if.then56.2.for.inc.2_crit_edge, %mdc800_endpoint_equals.exit.2.for.inc.2_crit_edge, %land.lhs.true.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %irq_interval.2.2 = phi i32 [ %conv69.2, %if.then65.2 ], [ %irq_interval.2.1, %if.then56.2.for.inc.2_crit_edge ], [ %irq_interval.2.1, %mdc800_endpoint_equals.exit.2.for.inc.2_crit_edge ], [ %irq_interval.2.1, %land.lhs.true.i.2.for.inc.2_crit_edge ], [ %irq_interval.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %81 = ptrtoint ptr %endpoint50 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %endpoint50, align 4
  %bEndpointAddress.i.3 = getelementptr %struct.usb_host_endpoint, ptr %82, i32 3, i32 0, i32 2
  %83 = ptrtoint ptr %bEndpointAddress.i.3 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bEndpointAddress.i.3, align 1
  %85 = ptrtoint ptr %bEndpointAddress1.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bEndpointAddress1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %86)
  %cmp.i.3 = icmp eq i8 %84, %86
  br i1 %cmp.i.3, label %land.lhs.true.i.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true.i.3:                                ; preds = %for.inc.2
  %bmAttributes.i.3 = getelementptr %struct.usb_host_endpoint, ptr %82, i32 3, i32 0, i32 3
  %87 = ptrtoint ptr %bmAttributes.i.3 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bmAttributes.i.3, align 1
  %89 = ptrtoint ptr %bmAttributes5.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bmAttributes5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %90)
  %cmp7.i.3 = icmp eq i8 %88, %90
  br i1 %cmp7.i.3, label %mdc800_endpoint_equals.exit.3, label %land.lhs.true.i.3.for.inc.3_crit_edge

land.lhs.true.i.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

mdc800_endpoint_equals.exit.3:                    ; preds = %land.lhs.true.i.3
  %wMaxPacketSize.i.3 = getelementptr %struct.usb_host_endpoint, ptr %82, i32 3, i32 0, i32 4
  %91 = ptrtoint ptr %wMaxPacketSize.i.3 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %wMaxPacketSize.i.3, align 1
  %93 = ptrtoint ptr %wMaxPacketSize10.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %wMaxPacketSize10.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %94)
  %cmp12.i.not.3 = icmp eq i16 %92, %94
  br i1 %cmp12.i.not.3, label %if.then56.3, label %mdc800_endpoint_equals.exit.3.for.inc.3_crit_edge

mdc800_endpoint_equals.exit.3.for.inc.3_crit_edge: ; preds = %mdc800_endpoint_equals.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then56.3:                                      ; preds = %mdc800_endpoint_equals.exit.3
  %bEndpointAddress.3 = getelementptr %struct.usb_host_endpoint, ptr %82, i32 3, i32 0, i32 2
  %95 = ptrtoint ptr %bEndpointAddress.3 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bEndpointAddress.3, align 2
  %conv60.3 = zext i8 %96 to i32
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv60.3, ptr %arrayidx, align 4
  br i1 %cmp63, label %if.then65.3, label %if.then56.3.for.cond_crit_edge

if.then56.3.for.cond_crit_edge:                   ; preds = %if.then56.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then65.3:                                      ; preds = %if.then56.3
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %endpoint50 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %endpoint50, align 4
  %bInterval.3 = getelementptr %struct.usb_host_endpoint, ptr %99, i32 3, i32 0, i32 5
  %100 = ptrtoint ptr %bInterval.3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bInterval.3, align 2
  %conv69.3 = zext i8 %101 to i32
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then65.3, %mdc800_endpoint_equals.exit.3.for.inc.3_crit_edge, %land.lhs.true.i.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %irq_interval.2.3.ph = phi i32 [ %irq_interval.2.2, %for.inc.2.for.inc.3_crit_edge ], [ %irq_interval.2.2, %land.lhs.true.i.3.for.inc.3_crit_edge ], [ %irq_interval.2.2, %mdc800_endpoint_equals.exit.3.for.inc.3_crit_edge ], [ %conv69.3, %if.then65.3 ]
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp74 = icmp eq i32 %.pr, -1
  br i1 %cmp74, label %do.end79, label %for.inc.3.for.cond_crit_edge

for.inc.3.for.cond_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end79:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %dev80 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.15) #12
  br label %cleanup

do.end87:                                         ; preds = %for.cond
  %dev88 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev88, ptr noundef nonnull @.str.18) #12
  %103 = load ptr, ptr @mdc800, align 4
  %io_lock = getelementptr inbounds %struct.mdc800_data, ptr %103, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %call89 = tail call i32 @usb_register_dev(ptr noundef %intf, ptr noundef nonnull @mdc800_class) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end97, label %do.end94

do.end94:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.22) #12
  %104 = load ptr, ptr @mdc800, align 4
  %io_lock96 = getelementptr inbounds %struct.mdc800_data, ptr %104, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock96) #8
  br label %cleanup

if.end97:                                         ; preds = %do.end87
  %105 = load ptr, ptr @mdc800, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr.i, ptr %105, align 4
  %open = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 22
  %107 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %open, align 4
  %irq_urb = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 3
  %108 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %irq_urb, align 4
  %arrayidx102 = getelementptr %struct.mdc800_data, ptr %105, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx102, align 4
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %113, 8
  %shl1.i = shl i32 %111, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or104 = or i32 %or.i, 1073741952
  %irq_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 6
  %114 = ptrtoint ptr %irq_urb_buffer to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %irq_urb_buffer, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 8
  %116 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 10
  %117 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or104, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 14
  %118 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 19
  %119 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 28
  %120 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @mdc800_usb_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 27
  %121 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %105, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %122 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %123)
  %cmp.i151 = icmp eq i32 %123, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %123)
  %cmp6.i = icmp ugt i32 %123, 4
  %or.cond.i = or i1 %cmp.i151, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end97.usb_fill_int_urb.exit_crit_edge

if.end97.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %124 = tail call i32 @llvm.smax.i32(i32 %irq_interval.2.3182, i32 1) #8
  %125 = tail call i32 @llvm.umin.i32(i32 %124, i32 16) #8
  %sub.i = add nsw i32 %125, -1
  %shl.i152 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end97.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i152, %if.then.i ], [ %irq_interval.2.3182, %if.end97.usb_fill_int_urb.exit_crit_edge ]
  %126 = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 25
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %interval.sink.i, ptr %126, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 23
  %128 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %start_frame.i, align 4
  %write_urb = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 10
  %129 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write_urb, align 4
  %131 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %105, align 4
  %endpoint107 = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 2
  %133 = ptrtoint ptr %endpoint107 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %endpoint107, align 4
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %132, align 8
  %shl.i153 = shl i32 %136, 8
  %shl1.i154 = shl i32 %134, 15
  %or.i155 = or i32 %shl1.i154, %shl.i153
  %or110 = or i32 %or.i155, -1073741824
  %write_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 11
  %137 = ptrtoint ptr %write_urb_buffer to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write_urb_buffer, align 4
  %dev1.i156 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 8
  %139 = ptrtoint ptr %dev1.i156 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %132, ptr %dev1.i156, align 4
  %pipe2.i157 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 10
  %140 = ptrtoint ptr %pipe2.i157 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or110, ptr %pipe2.i157, align 4
  %transfer_buffer3.i158 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 14
  %141 = ptrtoint ptr %transfer_buffer3.i158 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %transfer_buffer3.i158, align 4
  %transfer_buffer_length.i159 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 19
  %142 = ptrtoint ptr %transfer_buffer_length.i159 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 8, ptr %transfer_buffer_length.i159, align 4
  %complete.i160 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 28
  %143 = ptrtoint ptr %complete.i160 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @mdc800_usb_write_notify, ptr %complete.i160, align 4
  %context4.i161 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 27
  %144 = ptrtoint ptr %context4.i161 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %105, ptr %context4.i161, align 4
  %download_urb = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 14
  %145 = ptrtoint ptr %download_urb to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %download_urb, align 4
  %147 = load ptr, ptr %105, align 4
  %arrayidx114 = getelementptr %struct.mdc800_data, ptr %105, i32 0, i32 2, i32 3
  %148 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx114, align 4
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %147, align 8
  %shl.i162 = shl i32 %151, 8
  %shl1.i163 = shl i32 %149, 15
  %or.i164 = or i32 %shl1.i163, %shl.i162
  %or117 = or i32 %or.i164, -1073741696
  %download_urb_buffer = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 15
  %152 = ptrtoint ptr %download_urb_buffer to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %download_urb_buffer, align 4
  %dev1.i165 = getelementptr inbounds %struct.urb, ptr %146, i32 0, i32 8
  %154 = ptrtoint ptr %dev1.i165 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %147, ptr %dev1.i165, align 4
  %pipe2.i166 = getelementptr inbounds %struct.urb, ptr %146, i32 0, i32 10
  %155 = ptrtoint ptr %pipe2.i166 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or117, ptr %pipe2.i166, align 4
  %transfer_buffer3.i167 = getelementptr inbounds %struct.urb, ptr %146, i32 0, i32 14
  %156 = ptrtoint ptr %transfer_buffer3.i167 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %transfer_buffer3.i167, align 4
  %transfer_buffer_length.i168 = getelementptr inbounds %struct.urb, ptr %146, i32 0, i32 19
  %157 = ptrtoint ptr %transfer_buffer_length.i168 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 64, ptr %transfer_buffer_length.i168, align 4
  %complete.i169 = getelementptr inbounds %struct.urb, ptr %146, i32 0, i32 28
  %158 = ptrtoint ptr %complete.i169 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @mdc800_usb_download_notify, ptr %complete.i169, align 4
  %context4.i170 = getelementptr inbounds %struct.urb, ptr %146, i32 0, i32 27
  %159 = ptrtoint ptr %context4.i170 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %105, ptr %context4.i170, align 4
  %state = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 1
  %160 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1, ptr %state, align 4
  %io_lock118 = getelementptr inbounds %struct.mdc800_data, ptr %105, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock118) #8
  %161 = load ptr, ptr @mdc800, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %162 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %usb_fill_int_urb.exit, %do.end94, %do.end79, %do.end41, %do.end18, %do.end10
  %retval.0 = phi i32 [ -19, %do.end10 ], [ -19, %do.end18 ], [ -19, %do.end41 ], [ -19, %do.end79 ], [ -19, %do.end94 ], [ 0, %usb_fill_int_urb.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc800_usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc800_usb_disconnect.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdc800_usb_disconnect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc800_usb_disconnect.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.do.end14_crit_edge, label %if.then5

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then5:                                         ; preds = %do.end
  %state = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %if.end7

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @mdc800_class) #8
  %io_lock = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %irq_urb = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #8
  %write_urb = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #8
  %download_urb = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %download_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %download_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #8
  tail call void @mutex_unlock(ptr noundef %io_lock) #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %1, align 4
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %do.end14

do.end14:                                         ; preds = %if.end7, %do.end.do.end14_crit_edge
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.69) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc800_usb_irq(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %if.then, label %entry.if.end74_crit_edge

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %9)
  %cmp1.not.i = icmp eq i8 %9, -103
  br i1 %cmp1.not.i, label %while.cond.i, label %if.else

while.cond.i:                                     ; preds = %if.then
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %11)
  %cmp1.not.1.i = icmp eq i8 %11, -103
  br i1 %cmp1.not.1.i, label %while.cond.1.i, label %while.cond.i.if.end37_crit_edge

while.cond.i.if.end37_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.1.i:                                   ; preds = %while.cond.i
  %arrayidx.2.i = getelementptr i8, ptr %1, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %13)
  %cmp1.not.2.i = icmp eq i8 %13, -103
  br i1 %cmp1.not.2.i, label %while.cond.2.i, label %while.cond.1.i.if.end37_crit_edge

while.cond.1.i.if.end37_crit_edge:                ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %arrayidx.3.i = getelementptr i8, ptr %1, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %15)
  %cmp1.not.3.i = icmp eq i8 %15, -103
  br i1 %cmp1.not.3.i, label %while.cond.3.i, label %while.cond.2.i.if.end37_crit_edge

while.cond.2.i.if.end37_crit_edge:                ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %arrayidx.4.i = getelementptr i8, ptr %1, i32 4
  %16 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %17)
  %cmp1.not.4.i = icmp eq i8 %17, -103
  br i1 %cmp1.not.4.i, label %while.cond.4.i, label %while.cond.3.i.if.end37_crit_edge

while.cond.3.i.if.end37_crit_edge:                ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %arrayidx.5.i = getelementptr i8, ptr %1, i32 5
  %18 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %19)
  %cmp1.not.5.i = icmp eq i8 %19, -103
  br i1 %cmp1.not.5.i, label %while.cond.5.i, label %while.cond.4.i.if.end37_crit_edge

while.cond.4.i.if.end37_crit_edge:                ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.5.i:                                   ; preds = %while.cond.4.i
  %arrayidx.6.i = getelementptr i8, ptr %1, i32 6
  %20 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %21)
  %cmp1.not.6.i = icmp eq i8 %21, -103
  br i1 %cmp1.not.6.i, label %mdc800_isBusy.exit, label %while.cond.5.i.if.end37_crit_edge

while.cond.5.i.if.end37_crit_edge:                ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

mdc800_isBusy.exit:                               ; preds = %while.cond.5.i
  %arrayidx.7.i = getelementptr i8, ptr %1, i32 7
  %22 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %23)
  %cmp1.not.7.i.not = icmp eq i8 %23, -103
  br i1 %cmp1.not.7.i.not, label %if.then4, label %mdc800_isBusy.exit.if.end37_crit_edge

mdc800_isBusy.exit.if.end37_crit_edge:            ; preds = %mdc800_isBusy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then4:                                         ; preds = %mdc800_isBusy.exit
  %camera_busy = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %camera_busy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %camera_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.not = icmp eq i32 %25, 0
  br i1 %tobool5.not, label %if.then6, label %if.then4.if.end37_crit_edge

if.then4.if.end37_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %camera_busy to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %camera_busy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc800_usb_irq.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdc800_usb_irq, %if.then12)) #8
          to label %if.end37 [label %if.then12], !srcloc !180

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc800_usb_irq.__UNIQUE_ID_ddebug232, ptr noundef %dev2, ptr noundef nonnull @.str.60) #8
  br label %if.end37

if.else:                                          ; preds = %if.then
  %camera_busy14 = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %camera_busy14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %camera_busy14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool15.not = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %9)
  %cmp1.not.i142 = icmp eq i8 %9, -69
  %or.cond241 = select i1 %tobool15.not, i1 %cmp1.not.i142, i1 false
  br i1 %or.cond241, label %while.cond.i145, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.i145:                                  ; preds = %if.else
  %arrayidx.1.i143 = getelementptr i8, ptr %1, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i143 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.1.i143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %30)
  %cmp1.not.1.i144 = icmp eq i8 %30, -69
  br i1 %cmp1.not.1.i144, label %while.cond.1.i148, label %while.cond.i145.if.end37_crit_edge

while.cond.i145.if.end37_crit_edge:               ; preds = %while.cond.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.1.i148:                                ; preds = %while.cond.i145
  %arrayidx.2.i146 = getelementptr i8, ptr %1, i32 2
  %31 = ptrtoint ptr %arrayidx.2.i146 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2.i146, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %32)
  %cmp1.not.2.i147 = icmp eq i8 %32, -69
  br i1 %cmp1.not.2.i147, label %while.cond.2.i151, label %while.cond.1.i148.if.end37_crit_edge

while.cond.1.i148.if.end37_crit_edge:             ; preds = %while.cond.1.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.2.i151:                                ; preds = %while.cond.1.i148
  %arrayidx.3.i149 = getelementptr i8, ptr %1, i32 3
  %33 = ptrtoint ptr %arrayidx.3.i149 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.3.i149, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %34)
  %cmp1.not.3.i150 = icmp eq i8 %34, -69
  br i1 %cmp1.not.3.i150, label %while.cond.3.i154, label %while.cond.2.i151.if.end37_crit_edge

while.cond.2.i151.if.end37_crit_edge:             ; preds = %while.cond.2.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.3.i154:                                ; preds = %while.cond.2.i151
  %arrayidx.4.i152 = getelementptr i8, ptr %1, i32 4
  %35 = ptrtoint ptr %arrayidx.4.i152 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.4.i152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %36)
  %cmp1.not.4.i153 = icmp eq i8 %36, -69
  br i1 %cmp1.not.4.i153, label %while.cond.4.i157, label %while.cond.3.i154.if.end37_crit_edge

while.cond.3.i154.if.end37_crit_edge:             ; preds = %while.cond.3.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.4.i157:                                ; preds = %while.cond.3.i154
  %arrayidx.5.i155 = getelementptr i8, ptr %1, i32 5
  %37 = ptrtoint ptr %arrayidx.5.i155 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.5.i155, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %38)
  %cmp1.not.5.i156 = icmp eq i8 %38, -69
  br i1 %cmp1.not.5.i156, label %while.cond.5.i160, label %while.cond.4.i157.if.end37_crit_edge

while.cond.4.i157.if.end37_crit_edge:             ; preds = %while.cond.4.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

while.cond.5.i160:                                ; preds = %while.cond.4.i157
  %arrayidx.6.i158 = getelementptr i8, ptr %1, i32 6
  %39 = ptrtoint ptr %arrayidx.6.i158 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.6.i158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %40)
  %cmp1.not.6.i159 = icmp eq i8 %40, -69
  br i1 %cmp1.not.6.i159, label %mdc800_isReady.exit, label %while.cond.5.i160.if.end37_crit_edge

while.cond.5.i160.if.end37_crit_edge:             ; preds = %while.cond.5.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

mdc800_isReady.exit:                              ; preds = %while.cond.5.i160
  %arrayidx.7.i161 = getelementptr i8, ptr %1, i32 7
  %41 = ptrtoint ptr %arrayidx.7.i161 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.7.i161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %42)
  %cmp1.not.7.i162.not = icmp eq i8 %42, -69
  br i1 %cmp1.not.7.i162.not, label %if.then18, label %mdc800_isReady.exit.if.end37_crit_edge

mdc800_isReady.exit.if.end37_crit_edge:           ; preds = %mdc800_isReady.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then18:                                        ; preds = %mdc800_isReady.exit
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %camera_busy14 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %camera_busy14, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc800_usb_irq.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdc800_usb_irq, %if.then32)) #8
          to label %if.end37 [label %if.then32], !srcloc !180

if.then32:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc800_usb_irq.__UNIQUE_ID_ddebug233, ptr noundef %dev2, ptr noundef nonnull @.str.61) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.then18, %mdc800_isReady.exit.if.end37_crit_edge, %while.cond.5.i160.if.end37_crit_edge, %while.cond.4.i157.if.end37_crit_edge, %while.cond.3.i154.if.end37_crit_edge, %while.cond.2.i151.if.end37_crit_edge, %while.cond.1.i148.if.end37_crit_edge, %while.cond.i145.if.end37_crit_edge, %if.else.if.end37_crit_edge, %if.then12, %if.then6, %if.then4.if.end37_crit_edge, %mdc800_isBusy.exit.if.end37_crit_edge, %while.cond.5.i.if.end37_crit_edge, %while.cond.4.i.if.end37_crit_edge, %while.cond.3.i.if.end37_crit_edge, %while.cond.2.i.if.end37_crit_edge, %while.cond.1.i.if.end37_crit_edge, %while.cond.i.if.end37_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %1, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i8 %45, label %if.end37.do.body43_crit_edge [
    i8 -103, label %while.cond.i169
    i8 -69, label %while.cond.i194
  ]

if.end37.do.body43_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.i169:                                  ; preds = %if.end37
  %arrayidx.1.i167 = getelementptr i8, ptr %1, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i167 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.1.i167, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %48)
  %cmp1.not.1.i168 = icmp eq i8 %48, -103
  br i1 %cmp1.not.1.i168, label %while.cond.1.i172, label %while.cond.i169.do.body43_crit_edge

while.cond.i169.do.body43_crit_edge:              ; preds = %while.cond.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.1.i172:                                ; preds = %while.cond.i169
  %arrayidx.2.i170 = getelementptr i8, ptr %1, i32 2
  %49 = ptrtoint ptr %arrayidx.2.i170 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.2.i170, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %50)
  %cmp1.not.2.i171 = icmp eq i8 %50, -103
  br i1 %cmp1.not.2.i171, label %while.cond.2.i175, label %while.cond.1.i172.do.body43_crit_edge

while.cond.1.i172.do.body43_crit_edge:            ; preds = %while.cond.1.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.2.i175:                                ; preds = %while.cond.1.i172
  %arrayidx.3.i173 = getelementptr i8, ptr %1, i32 3
  %51 = ptrtoint ptr %arrayidx.3.i173 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.3.i173, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %52)
  %cmp1.not.3.i174 = icmp eq i8 %52, -103
  br i1 %cmp1.not.3.i174, label %while.cond.3.i178, label %while.cond.2.i175.do.body43_crit_edge

while.cond.2.i175.do.body43_crit_edge:            ; preds = %while.cond.2.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.3.i178:                                ; preds = %while.cond.2.i175
  %arrayidx.4.i176 = getelementptr i8, ptr %1, i32 4
  %53 = ptrtoint ptr %arrayidx.4.i176 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.4.i176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %54)
  %cmp1.not.4.i177 = icmp eq i8 %54, -103
  br i1 %cmp1.not.4.i177, label %while.cond.4.i181, label %while.cond.3.i178.do.body43_crit_edge

while.cond.3.i178.do.body43_crit_edge:            ; preds = %while.cond.3.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.4.i181:                                ; preds = %while.cond.3.i178
  %arrayidx.5.i179 = getelementptr i8, ptr %1, i32 5
  %55 = ptrtoint ptr %arrayidx.5.i179 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.5.i179, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %56)
  %cmp1.not.5.i180 = icmp eq i8 %56, -103
  br i1 %cmp1.not.5.i180, label %while.cond.5.i184, label %while.cond.4.i181.do.body43_crit_edge

while.cond.4.i181.do.body43_crit_edge:            ; preds = %while.cond.4.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.5.i184:                                ; preds = %while.cond.4.i181
  %arrayidx.6.i182 = getelementptr i8, ptr %1, i32 6
  %57 = ptrtoint ptr %arrayidx.6.i182 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.6.i182, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %58)
  %cmp1.not.6.i183 = icmp eq i8 %58, -103
  br i1 %cmp1.not.6.i183, label %mdc800_isBusy.exit190, label %while.cond.5.i184.do.body43_crit_edge

while.cond.5.i184.do.body43_crit_edge:            ; preds = %while.cond.5.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

mdc800_isBusy.exit190:                            ; preds = %while.cond.5.i184
  %arrayidx.7.i185 = getelementptr i8, ptr %1, i32 7
  %59 = ptrtoint ptr %arrayidx.7.i185 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.7.i185, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %60)
  %cmp1.not.7.i186.not = icmp eq i8 %60, -103
  br i1 %cmp1.not.7.i186.not, label %mdc800_isBusy.exit190.if.end74_crit_edge, label %mdc800_isBusy.exit190.do.body43_crit_edge

mdc800_isBusy.exit190.do.body43_crit_edge:        ; preds = %mdc800_isBusy.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

mdc800_isBusy.exit190.if.end74_crit_edge:         ; preds = %mdc800_isBusy.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

while.cond.i194:                                  ; preds = %if.end37
  %arrayidx.1.i192 = getelementptr i8, ptr %1, i32 1
  %61 = ptrtoint ptr %arrayidx.1.i192 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.1.i192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %62)
  %cmp1.not.1.i193 = icmp eq i8 %62, -69
  br i1 %cmp1.not.1.i193, label %while.cond.1.i197, label %while.cond.i194.do.body43_crit_edge

while.cond.i194.do.body43_crit_edge:              ; preds = %while.cond.i194
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.1.i197:                                ; preds = %while.cond.i194
  %arrayidx.2.i195 = getelementptr i8, ptr %1, i32 2
  %63 = ptrtoint ptr %arrayidx.2.i195 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.2.i195, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %64)
  %cmp1.not.2.i196 = icmp eq i8 %64, -69
  br i1 %cmp1.not.2.i196, label %while.cond.2.i200, label %while.cond.1.i197.do.body43_crit_edge

while.cond.1.i197.do.body43_crit_edge:            ; preds = %while.cond.1.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.2.i200:                                ; preds = %while.cond.1.i197
  %arrayidx.3.i198 = getelementptr i8, ptr %1, i32 3
  %65 = ptrtoint ptr %arrayidx.3.i198 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.3.i198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %66)
  %cmp1.not.3.i199 = icmp eq i8 %66, -69
  br i1 %cmp1.not.3.i199, label %while.cond.3.i203, label %while.cond.2.i200.do.body43_crit_edge

while.cond.2.i200.do.body43_crit_edge:            ; preds = %while.cond.2.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.3.i203:                                ; preds = %while.cond.2.i200
  %arrayidx.4.i201 = getelementptr i8, ptr %1, i32 4
  %67 = ptrtoint ptr %arrayidx.4.i201 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.4.i201, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %68)
  %cmp1.not.4.i202 = icmp eq i8 %68, -69
  br i1 %cmp1.not.4.i202, label %while.cond.4.i206, label %while.cond.3.i203.do.body43_crit_edge

while.cond.3.i203.do.body43_crit_edge:            ; preds = %while.cond.3.i203
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.4.i206:                                ; preds = %while.cond.3.i203
  %arrayidx.5.i204 = getelementptr i8, ptr %1, i32 5
  %69 = ptrtoint ptr %arrayidx.5.i204 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.5.i204, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %70)
  %cmp1.not.5.i205 = icmp eq i8 %70, -69
  br i1 %cmp1.not.5.i205, label %while.cond.5.i209, label %while.cond.4.i206.do.body43_crit_edge

while.cond.4.i206.do.body43_crit_edge:            ; preds = %while.cond.4.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

while.cond.5.i209:                                ; preds = %while.cond.4.i206
  %arrayidx.6.i207 = getelementptr i8, ptr %1, i32 6
  %71 = ptrtoint ptr %arrayidx.6.i207 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.6.i207, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %72)
  %cmp1.not.6.i208 = icmp eq i8 %72, -69
  br i1 %cmp1.not.6.i208, label %mdc800_isReady.exit215, label %while.cond.5.i209.do.body43_crit_edge

while.cond.5.i209.do.body43_crit_edge:            ; preds = %while.cond.5.i209
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

mdc800_isReady.exit215:                           ; preds = %while.cond.5.i209
  %arrayidx.7.i210 = getelementptr i8, ptr %1, i32 7
  %73 = ptrtoint ptr %arrayidx.7.i210 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.7.i210, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %74)
  %cmp1.not.7.i211.not = icmp eq i8 %74, -69
  br i1 %cmp1.not.7.i211.not, label %mdc800_isReady.exit215.if.end74_crit_edge, label %mdc800_isReady.exit215.do.body43_crit_edge

mdc800_isReady.exit215.do.body43_crit_edge:       ; preds = %mdc800_isReady.exit215
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

mdc800_isReady.exit215.if.end74_crit_edge:        ; preds = %mdc800_isReady.exit215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.body43:                                        ; preds = %mdc800_isReady.exit215.do.body43_crit_edge, %while.cond.5.i209.do.body43_crit_edge, %while.cond.4.i206.do.body43_crit_edge, %while.cond.3.i203.do.body43_crit_edge, %while.cond.2.i200.do.body43_crit_edge, %while.cond.1.i197.do.body43_crit_edge, %while.cond.i194.do.body43_crit_edge, %mdc800_isBusy.exit190.do.body43_crit_edge, %while.cond.5.i184.do.body43_crit_edge, %while.cond.4.i181.do.body43_crit_edge, %while.cond.3.i178.do.body43_crit_edge, %while.cond.2.i175.do.body43_crit_edge, %while.cond.1.i172.do.body43_crit_edge, %while.cond.i169.do.body43_crit_edge, %if.end37.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc800_usb_irq.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdc800_usb_irq, %if.then55)) #8
          to label %do.end72 [label %if.then55], !srcloc !180

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %1, align 1
  %conv = zext i8 %76 to i32
  %arrayidx56 = getelementptr i8, ptr %1, i32 1
  %77 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %78 to i32
  %arrayidx58 = getelementptr i8, ptr %1, i32 2
  %79 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %80 to i32
  %arrayidx60 = getelementptr i8, ptr %1, i32 3
  %81 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %82 to i32
  %arrayidx62 = getelementptr i8, ptr %1, i32 4
  %83 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %84 to i32
  %arrayidx64 = getelementptr i8, ptr %1, i32 5
  %85 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %86 to i32
  %arrayidx66 = getelementptr i8, ptr %1, i32 6
  %87 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %88 to i32
  %arrayidx68 = getelementptr i8, ptr %1, i32 7
  %89 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %90 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc800_usb_irq.__UNIQUE_ID_ddebug234, ptr noundef %dev2, ptr noundef nonnull @.str.62, i32 noundef %conv, i32 noundef %conv57, i32 noundef %conv59, i32 noundef %conv61, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %conv69) #8
  br label %do.end72

do.end72:                                         ; preds = %if.then55, %do.body43
  %camera_response = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 9
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %92 = load i64, ptr %1, align 1
  %93 = ptrtoint ptr %camera_response to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %92, ptr %camera_response, align 4
  br label %if.end74

if.end74:                                         ; preds = %do.end72, %mdc800_isReady.exit215.if.end74_crit_edge, %mdc800_isBusy.exit190.if.end74_crit_edge, %entry.if.end74_crit_edge
  %tobool88.not = phi i1 [ true, %mdc800_isBusy.exit190.if.end74_crit_edge ], [ true, %mdc800_isReady.exit215.if.end74_crit_edge ], [ false, %do.end72 ], [ true, %entry.if.end74_crit_edge ]
  %camera_request_ready = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 8
  %94 = ptrtoint ptr %camera_request_ready to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %camera_request_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp75 = icmp sgt i32 %95, 0
  br i1 %cmp75, label %land.rhs, label %if.end74.if.end101_crit_edge

if.end74.if.end101_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

land.rhs:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp78 = icmp eq i32 %95, 1
  br i1 %cmp78, label %land.lhs.true80, label %lor.lhs.false83

land.lhs.true80:                                  ; preds = %land.rhs
  %camera_busy81 = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 7
  %96 = ptrtoint ptr %camera_busy81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %camera_busy81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool82.not = icmp eq i32 %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp96.old = icmp slt i32 %7, 0
  %or.cond242 = select i1 %tobool82.not, i1 true, i1 %cmp96.old
  br i1 %or.cond242, label %land.lhs.true80.if.then99_crit_edge, label %land.lhs.true80.if.end101_crit_edge

land.lhs.true80.if.end101_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

land.lhs.true80.if.then99_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

lor.lhs.false83:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp85 = icmp ne i32 %95, 2
  %brmerge = or i1 %tobool88.not, %cmp85
  br i1 %brmerge, label %lor.lhs.false89, label %lor.lhs.false83.if.then99_crit_edge

lor.lhs.false83.if.then99_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

lor.lhs.false89:                                  ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp91 = icmp eq i32 %95, 3
  br i1 %cmp91, label %land.lhs.true93, label %lor.rhs

land.lhs.true93:                                  ; preds = %lor.lhs.false89
  %camera_busy94 = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 7
  %98 = ptrtoint ptr %camera_busy94 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %camera_busy94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool95.not = icmp ne i32 %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp96 = icmp slt i32 %7, 0
  %or.cond = select i1 %tobool95.not, i1 true, i1 %cmp96
  br i1 %or.cond, label %land.lhs.true93.if.then99_crit_edge, label %land.lhs.true93.if.end101_crit_edge

land.lhs.true93.if.end101_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

land.lhs.true93.if.then99_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

lor.rhs:                                          ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp96.old.old = icmp slt i32 %7, 0
  br i1 %cmp96.old.old, label %lor.rhs.if.then99_crit_edge, label %lor.rhs.if.end101_crit_edge

lor.rhs.if.end101_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

lor.rhs.if.then99_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

if.then99:                                        ; preds = %lor.rhs.if.then99_crit_edge, %land.lhs.true93.if.then99_crit_edge, %lor.lhs.false83.if.then99_crit_edge, %land.lhs.true80.if.then99_crit_edge
  %100 = ptrtoint ptr %camera_request_ready to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %camera_request_ready, align 4
  %irq_woken = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 5
  %101 = ptrtoint ptr %irq_woken to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %irq_woken, align 4
  %irq_wait = getelementptr inbounds %struct.mdc800_data, ptr %3, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %irq_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %lor.rhs.if.end101_crit_edge, %land.lhs.true93.if.end101_crit_edge, %land.lhs.true80.if.end101_crit_edge, %if.end74.if.end101_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc800_usb_write_notify(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.63, i32 noundef %3) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %written = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %written, align 4
  %write_wait = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdc800_usb_download_notify(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %out = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 19
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %6 = call ptr @memcpy(ptr %out, ptr %5, i32 64)
  %out_count = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %out_count, align 4
  %out_ptr = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %out_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %out_ptr, align 4
  %download_left = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %download_left to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %download_left, align 4
  %sub = add i32 %10, -64
  store i32 %sub, ptr %download_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp eq i32 %sub, 0
  br i1 %cmp3, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state, align 4
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.65, i32 noundef %3) #12
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then4, %if.then.if.end6_crit_edge
  %downloaded = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %downloaded to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %downloaded, align 4
  %download_wait = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %download_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc800_device_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %pos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mdc800, align 4
  %io_lock = getelementptr inbounds %struct.mdc800_data, ptr %0, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %1 = load ptr, ptr @mdc800, align 4
  %state = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %3, label %if.end7 [
    i32 0, label %if.then
    i32 2, label %do.end
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %io_lock2 = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock2) #8
  br label %cleanup114

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  %5 = load ptr, ptr @mdc800, align 4
  %io_lock6 = getelementptr inbounds %struct.mdc800_data, ptr %5, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock6) #8
  br label %cleanup114

if.end7:                                          ; preds = %entry
  %open = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then8, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool11.not180 = icmp eq i32 %len, 0
  br i1 %tobool11.not180, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %io_lock9 = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock9) #8
  br label %cleanup114

while.body:                                       ; preds = %if.end111.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %left.0182 = phi i32 [ %left.1, %if.end111.while.body_crit_edge ], [ %len, %while.cond.preheader.while.body_crit_edge ]
  %ptr.0181 = phi ptr [ %ptr.1, %if.end111.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %8 = call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.if.then15_crit_edge, !prof !181

while.body.if.then15_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

signal_pending.exit:                              ; preds = %while.body
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %and1.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool14.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool14.not, label %if.end17, label %signal_pending.exit.if.then15_crit_edge

signal_pending.exit.if.then15_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %signal_pending.exit.if.then15_crit_edge, %while.body.if.then15_crit_edge
  %19 = load ptr, ptr @mdc800, align 4
  %io_lock16 = getelementptr inbounds %struct.mdc800_data, ptr %19, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock16) #8
  br label %cleanup114

if.end17:                                         ; preds = %signal_pending.exit
  %20 = load ptr, ptr @mdc800, align 4
  %out_count = getelementptr inbounds %struct.mdc800_data, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_count, align 4
  %out_ptr = getelementptr inbounds %struct.mdc800_data, ptr %20, i32 0, i32 20
  %23 = ptrtoint ptr %out_ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_ptr, align 4
  %sub = sub i32 %22, %24
  %25 = call i32 @llvm.umin.i32(i32 %left.0182, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22 = icmp eq i32 %25, 0
  br i1 %cmp22, label %if.then23, label %if.else102

if.then23:                                        ; preds = %if.end17
  %state24 = getelementptr inbounds %struct.mdc800_data, ptr %20, i32 0, i32 1
  %26 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp25 = icmp eq i32 %27, 3
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then23
  %28 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %out_count, align 4
  %29 = ptrtoint ptr %out_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %out_ptr, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %20, align 4
  %download_urb = getelementptr inbounds %struct.mdc800_data, ptr %20, i32 0, i32 14
  %32 = ptrtoint ptr %download_urb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %download_urb, align 4
  %dev29 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %dev29, align 4
  %35 = load ptr, ptr %download_urb, align 4
  %call31 = call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end41, label %do.end36

do.end36:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %36 = load ptr, ptr @mdc800, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.28, i32 noundef %call31) #12
  %39 = load ptr, ptr @mdc800, align 4
  %io_lock39 = getelementptr inbounds %struct.mdc800_data, ptr %39, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock39) #8
  %sub40 = sub i32 %len, %left.0182
  br label %cleanup114

if.end41:                                         ; preds = %if.then26
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 736) #8
  %40 = load ptr, ptr @mdc800, align 4
  %downloaded = getelementptr inbounds %struct.mdc800_data, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %downloaded to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %downloaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool49.not.not = icmp eq i32 %42, 0
  br i1 %tobool49.not.not, label %if.then58, label %if.end41.if.end84_crit_edge

if.end41.if.end84_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then58:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %43 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %44 = load ptr, ptr @mdc800, align 4
  %download_wait174 = getelementptr inbounds %struct.mdc800_data, ptr %44, i32 0, i32 16
  %call61175 = call i32 @prepare_to_wait_event(ptr noundef %download_wait174, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %45 = load ptr, ptr @mdc800, align 4
  %downloaded63176 = getelementptr inbounds %struct.mdc800_data, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %downloaded63176 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %downloaded63176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool64.not177.not = icmp eq i32 %47, 0
  br i1 %tobool64.not177.not, label %if.then58.cleanup_crit_edge, label %if.then58.for.end_crit_edge

if.then58.for.end_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then58.cleanup_crit_edge
  %__ret59.1179 = phi i32 [ %__ret59.1, %cleanup.cleanup_crit_edge ], [ 150, %if.then58.cleanup_crit_edge ]
  %call81 = call i32 @schedule_timeout(i32 noundef %__ret59.1179) #8
  %48 = load ptr, ptr @mdc800, align 4
  %download_wait = getelementptr inbounds %struct.mdc800_data, ptr %48, i32 0, i32 16
  %call61 = call i32 @prepare_to_wait_event(ptr noundef %download_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %49 = load ptr, ptr @mdc800, align 4
  %downloaded63 = getelementptr inbounds %struct.mdc800_data, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %downloaded63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %downloaded63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool64.not = icmp eq i32 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool68.not = icmp eq i32 %call81, 0
  %spec.store.select118 = select i1 %tobool68.not, i32 1, i32 %call81
  %__ret59.1 = select i1 %tobool64.not, i32 %call81, i32 %spec.store.select118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret59.1)
  %tobool74.not = icmp eq i32 %__ret59.1, 0
  %not.tobool64.not = xor i1 %tobool64.not, true
  %52 = select i1 %not.tobool64.not, i1 true, i1 %tobool74.not
  br i1 %52, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then58.for.end_crit_edge
  %53 = load ptr, ptr @mdc800, align 4
  %download_wait82 = getelementptr inbounds %struct.mdc800_data, ptr %53, i32 0, i32 16
  call void @finish_wait(ptr noundef %download_wait82, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end84

if.end84:                                         ; preds = %for.end, %if.end41.if.end84_crit_edge
  %54 = load ptr, ptr @mdc800, align 4
  %downloaded86 = getelementptr inbounds %struct.mdc800_data, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %downloaded86 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %downloaded86, align 4
  %download_urb87 = getelementptr inbounds %struct.mdc800_data, ptr %54, i32 0, i32 14
  %56 = ptrtoint ptr %download_urb87 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %download_urb87, align 4
  %status = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp88.not = icmp eq i32 %59, 0
  br i1 %cmp88.not, label %if.end84.if.end111_crit_edge, label %do.end92

if.end84.if.end111_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

do.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %54, align 4
  %dev94 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.31, i32 noundef %59) #12
  %62 = load ptr, ptr @mdc800, align 4
  %io_lock97 = getelementptr inbounds %struct.mdc800_data, ptr %62, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock97) #8
  %sub98 = sub i32 %len, %left.0182
  br label %cleanup114

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %io_lock100 = getelementptr inbounds %struct.mdc800_data, ptr %20, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock100) #8
  br label %cleanup114

if.else102:                                       ; preds = %if.end17
  %arrayidx = getelementptr %struct.mdc800_data, ptr %20, i32 0, i32 19, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp9.i.i = icmp slt i32 %25, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.else102
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then106_crit_edge, label %if.then27.i.i, !prof !181

land.rhs16.i.i.if.then106_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %if.then106

if.then.i.i.i:                                    ; preds = %if.else102
  call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %25, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.then106_crit_edge, label %if.end.i.i

if.then.i.i.i.if.then106_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %63 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ptr.0181, i32 %25, i32 -1226833920) #13, !srcloc !182
  %asmresult.i.i = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.then106_crit_edge

if.end.i.i.if.then106_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef %25) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %ptr.0181, ptr noundef %arrayidx, i32 noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool105.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool105.not, label %if.end108, label %copy_to_user.exit.if.then106_crit_edge

copy_to_user.exit.if.then106_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

if.then106:                                       ; preds = %copy_to_user.exit.if.then106_crit_edge, %if.end.i.i.if.then106_crit_edge, %if.then.i.i.i.if.then106_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then106_crit_edge
  %64 = load ptr, ptr @mdc800, align 4
  %io_lock107 = getelementptr inbounds %struct.mdc800_data, ptr %64, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock107) #8
  br label %cleanup114

if.end108:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %ptr.0181, i32 %25
  %sub109 = sub i32 %left.0182, %25
  %65 = load ptr, ptr @mdc800, align 4
  %out_ptr110 = getelementptr inbounds %struct.mdc800_data, ptr %65, i32 0, i32 20
  %66 = ptrtoint ptr %out_ptr110 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %out_ptr110, align 4
  %add = add i32 %67, %25
  store i32 %add, ptr %out_ptr110, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end108, %if.end84.if.end111_crit_edge
  %ptr.1 = phi ptr [ %ptr.0181, %if.end84.if.end111_crit_edge ], [ %add.ptr, %if.end108 ]
  %left.1 = phi i32 [ %left.0182, %if.end84.if.end111_crit_edge ], [ %sub109, %if.end108 ]
  %tobool11.not = icmp eq i32 %left.1, 0
  br i1 %tobool11.not, label %if.end111.while.end_crit_edge, label %if.end111.while.body_crit_edge

if.end111.while.body_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end111.while.end_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end111.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %68 = load ptr, ptr @mdc800, align 4
  %io_lock112 = getelementptr inbounds %struct.mdc800_data, ptr %68, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock112) #8
  br label %cleanup114

cleanup114:                                       ; preds = %while.end, %if.then106, %if.else, %do.end92, %do.end36, %if.then15, %if.then8, %do.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -16, %do.end ], [ -4, %if.then15 ], [ %sub40, %do.end36 ], [ %sub98, %do.end92 ], [ -5, %if.else ], [ -14, %if.then106 ], [ %len, %while.end ], [ -16, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc800_device_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %pos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mdc800, align 4
  %io_lock = getelementptr inbounds %struct.mdc800_data, ptr %0, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %1 = load ptr, ptr @mdc800, align 4
  %state = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %io_lock2 = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock2) #8
  br label %cleanup213

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then3, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp6275.not = icmp eq i32 %len, 0
  br i1 %cmp6275.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %io_lock4 = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock4) #8
  br label %cleanup213

while.body:                                       ; preds = %cleanup209.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.0276 = phi i32 [ %inc208, %cleanup209.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %6 = call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i232 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i232 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.if.then9_crit_edge, !prof !181

while.body.if.then9_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

signal_pending.exit:                              ; preds = %while.body
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %11, align 4
  %and1.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool8.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool8.not, label %if.end11, label %signal_pending.exit.if.then9_crit_edge

signal_pending.exit.if.then9_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %signal_pending.exit.if.then9_crit_edge, %while.body.if.then9_crit_edge
  %17 = load ptr, ptr @mdc800, align 4
  %io_lock10 = getelementptr inbounds %struct.mdc800_data, ptr %17, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock10) #8
  br label %cleanup213

if.end11:                                         ; preds = %signal_pending.exit
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 806) #8
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.0276
  %18 = call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !183
  %and.i = and i32 %20, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %21 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #8, !srcloc !186
  %asmresult = extractvalue { i32, i32 } %21, 0
  %asmresult13 = extractvalue { i32, i32 } %21, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #8, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %conv = trunc i32 %asmresult13 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool15.not = icmp eq i32 %asmresult, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load ptr, ptr @mdc800, align 4
  %io_lock17 = getelementptr inbounds %struct.mdc800_data, ptr %22, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock17) #8
  br label %cleanup213

if.end18:                                         ; preds = %if.end11
  %conv19 = and i32 %asmresult13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %conv19)
  %cmp20 = icmp eq i32 %conv19, 85
  br i1 %cmp20, label %if.then22, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %23 = load ptr, ptr @mdc800, align 4
  %in_count = getelementptr inbounds %struct.mdc800_data, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mdc800_data, ptr %23, i32 0, i32 21
  %25 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %out_count, align 4
  %out_ptr = getelementptr inbounds %struct.mdc800_data, ptr %23, i32 0, i32 20
  %26 = ptrtoint ptr %out_ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %out_ptr, align 4
  %download_left = getelementptr inbounds %struct.mdc800_data, ptr %23, i32 0, i32 18
  %27 = ptrtoint ptr %download_left to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %download_left, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %28 = load ptr, ptr @mdc800, align 4
  %in_count24 = getelementptr inbounds %struct.mdc800_data, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %in_count24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %in_count24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp25 = icmp slt i32 %30, 8
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  %arrayidx = getelementptr %struct.mdc800_data, ptr %28, i32 0, i32 24, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %arrayidx, align 1
  %32 = ptrtoint ptr %in_count24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_count24, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %in_count24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp33 = icmp eq i32 %inc, 8
  br i1 %cmp33, label %if.then35, label %if.then27.cleanup209_crit_edge

if.then27.cleanup209_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup209

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %io_lock30 = getelementptr inbounds %struct.mdc800_data, ptr %28, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock30) #8
  br label %cleanup213

if.then35:                                        ; preds = %if.then27
  %call36 = call fastcc i32 @mdc800_usb_waitForIRQ(i32 noundef 0, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  %34 = load ptr, ptr @mdc800, align 4
  br i1 %tobool37.not, label %if.end41, label %do.end

do.end:                                           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dev39 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.36) #12
  %37 = load ptr, ptr @mdc800, align 4
  %io_lock40 = getelementptr inbounds %struct.mdc800_data, ptr %37, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock40) #8
  br label %cleanup213

if.end41:                                         ; preds = %if.then35
  %arrayidx43 = getelementptr %struct.mdc800_data, ptr %34, i32 0, i32 24, i32 1
  %38 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx43, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %39, label %sw.default.i [
    i8 42, label %if.end41.mdc800_getAnswerSize.exit_crit_edge
    i8 73, label %if.end41.mdc800_getAnswerSize.exit_crit_edge373
    i8 81, label %if.end41.mdc800_getAnswerSize.exit_crit_edge374
    i8 13, label %if.end41.mdc800_getAnswerSize.exit_crit_edge375
    i8 32, label %if.end41.mdc800_getAnswerSize.exit_crit_edge376
    i8 7, label %if.end41.mdc800_getAnswerSize.exit_crit_edge377
    i8 1, label %if.end41.mdc800_getAnswerSize.exit_crit_edge378
    i8 37, label %if.end41.mdc800_getAnswerSize.exit_crit_edge379
    i8 0, label %if.end41.mdc800_getAnswerSize.exit_crit_edge380
    i8 5, label %if.end41.sw.bb1.i_crit_edge
    i8 62, label %if.end41.sw.bb1.i_crit_edge381
    i8 9, label %sw.bb2.i
  ]

if.end41.sw.bb1.i_crit_edge381:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end41.sw.bb1.i_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end41.mdc800_getAnswerSize.exit_crit_edge380:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

if.end41.mdc800_getAnswerSize.exit_crit_edge379:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

if.end41.mdc800_getAnswerSize.exit_crit_edge378:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

if.end41.mdc800_getAnswerSize.exit_crit_edge377:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

if.end41.mdc800_getAnswerSize.exit_crit_edge376:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

if.end41.mdc800_getAnswerSize.exit_crit_edge375:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

if.end41.mdc800_getAnswerSize.exit_crit_edge374:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

if.end41.mdc800_getAnswerSize.exit_crit_edge373:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

if.end41.mdc800_getAnswerSize.exit_crit_edge:     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

sw.bb1.i:                                         ; preds = %if.end41.sw.bb1.i_crit_edge, %if.end41.sw.bb1.i_crit_edge381
  %pic_len.i = getelementptr inbounds %struct.mdc800_data, ptr %34, i32 0, i32 27
  %41 = ptrtoint ptr %pic_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pic_len.i, align 4
  br label %mdc800_getAnswerSize.exit

sw.bb2.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

sw.default.i:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdc800_getAnswerSize.exit

mdc800_getAnswerSize.exit:                        ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end41.mdc800_getAnswerSize.exit_crit_edge, %if.end41.mdc800_getAnswerSize.exit_crit_edge373, %if.end41.mdc800_getAnswerSize.exit_crit_edge374, %if.end41.mdc800_getAnswerSize.exit_crit_edge375, %if.end41.mdc800_getAnswerSize.exit_crit_edge376, %if.end41.mdc800_getAnswerSize.exit_crit_edge377, %if.end41.mdc800_getAnswerSize.exit_crit_edge378, %if.end41.mdc800_getAnswerSize.exit_crit_edge379, %if.end41.mdc800_getAnswerSize.exit_crit_edge380
  %retval.0.i234 = phi i32 [ 0, %sw.default.i ], [ 4096, %sw.bb2.i ], [ %42, %sw.bb1.i ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge373 ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge374 ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge375 ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge376 ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge377 ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge378 ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge379 ], [ 8, %if.end41.mdc800_getAnswerSize.exit_crit_edge380 ]
  %state45 = getelementptr inbounds %struct.mdc800_data, ptr %34, i32 0, i32 1
  %43 = ptrtoint ptr %state45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %state45, align 4
  %write_urb = getelementptr inbounds %struct.mdc800_data, ptr %34, i32 0, i32 10
  %44 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %transfer_buffer, align 4
  %in46 = getelementptr inbounds %struct.mdc800_data, ptr %34, i32 0, i32 24
  %48 = ptrtoint ptr %in46 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %in46, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %47, align 1
  %51 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %34, align 4
  %53 = load ptr, ptr %write_urb, align 4
  %dev49 = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %dev49, align 4
  %55 = load ptr, ptr %write_urb, align 4
  %call51 = call i32 @usb_submit_urb(ptr noundef %55, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end60, label %do.end56

do.end56:                                         ; preds = %mdc800_getAnswerSize.exit
  call void @__sanitizer_cov_trace_pc() #10
  %56 = load ptr, ptr @mdc800, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %dev58 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.39, i32 noundef %call51) #12
  %59 = load ptr, ptr @mdc800, align 4
  %io_lock59 = getelementptr inbounds %struct.mdc800_data, ptr %59, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock59) #8
  br label %cleanup213

if.end60:                                         ; preds = %mdc800_getAnswerSize.exit
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 860) #8
  %60 = load ptr, ptr @mdc800, align 4
  %written = getelementptr inbounds %struct.mdc800_data, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %written, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool68.not.not = icmp eq i32 %62, 0
  br i1 %tobool68.not.not, label %if.then79, label %if.end60.if.end107_crit_edge

if.end60.if.end107_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then79:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %63 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %64 = load ptr, ptr @mdc800, align 4
  %write_wait269 = getelementptr inbounds %struct.mdc800_data, ptr %64, i32 0, i32 12
  %call82270 = call i32 @prepare_to_wait_event(ptr noundef %write_wait269, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %65 = load ptr, ptr @mdc800, align 4
  %written84271 = getelementptr inbounds %struct.mdc800_data, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %written84271 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %written84271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool85.not272.not = icmp eq i32 %67, 0
  br i1 %tobool85.not272.not, label %if.then79.cleanup_crit_edge, label %if.then79.for.end_crit_edge

if.then79.for.end_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then79.cleanup_crit_edge
  %__ret80.1274 = phi i32 [ %__ret80.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then79.cleanup_crit_edge ]
  %call104 = call i32 @schedule_timeout(i32 noundef %__ret80.1274) #8
  %68 = load ptr, ptr @mdc800, align 4
  %write_wait = getelementptr inbounds %struct.mdc800_data, ptr %68, i32 0, i32 12
  %call82 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %69 = load ptr, ptr @mdc800, align 4
  %written84 = getelementptr inbounds %struct.mdc800_data, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %written84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %written84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool85.not = icmp eq i32 %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool90.not = icmp eq i32 %call104, 0
  %spec.store.select216 = select i1 %tobool90.not, i32 1, i32 %call104
  %__ret80.1 = select i1 %tobool85.not, i32 %call104, i32 %spec.store.select216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret80.1)
  %tobool97.not = icmp eq i32 %__ret80.1, 0
  %not.tobool85.not = xor i1 %tobool85.not, true
  %72 = select i1 %not.tobool85.not, i1 true, i1 %tobool97.not
  br i1 %72, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then79.for.end_crit_edge
  %73 = load ptr, ptr @mdc800, align 4
  %write_wait105 = getelementptr inbounds %struct.mdc800_data, ptr %73, i32 0, i32 12
  call void @finish_wait(ptr noundef %write_wait105, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end107

if.end107:                                        ; preds = %for.end, %if.end60.if.end107_crit_edge
  %74 = load ptr, ptr @mdc800, align 4
  %written109 = getelementptr inbounds %struct.mdc800_data, ptr %74, i32 0, i32 13
  %75 = ptrtoint ptr %written109 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %written109, align 4
  %state110 = getelementptr inbounds %struct.mdc800_data, ptr %74, i32 0, i32 1
  %76 = ptrtoint ptr %state110 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %state110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp111 = icmp eq i32 %77, 2
  br i1 %cmp111, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %write_urb114 = getelementptr inbounds %struct.mdc800_data, ptr %74, i32 0, i32 10
  %78 = ptrtoint ptr %write_urb114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_urb114, align 4
  call void @usb_kill_urb(ptr noundef %79) #8
  %80 = load ptr, ptr @mdc800, align 4
  %io_lock115 = getelementptr inbounds %struct.mdc800_data, ptr %80, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock115) #8
  br label %cleanup213

if.end116:                                        ; preds = %if.end107
  %arrayidx118 = getelementptr %struct.mdc800_data, ptr %74, i32 0, i32 24, i32 1
  %81 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx118, align 1
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %82, label %sw.default [
    i8 5, label %if.end116.sw.bb_crit_edge
    i8 62, label %if.end116.sw.bb_crit_edge382
    i8 9, label %if.end116.sw.bb132_crit_edge
  ]

if.end116.sw.bb132_crit_edge:                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb132

if.end116.sw.bb_crit_edge382:                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end116.sw.bb_crit_edge:                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end116.sw.bb_crit_edge, %if.end116.sw.bb_crit_edge382
  %pic_len = getelementptr inbounds %struct.mdc800_data, ptr %74, i32 0, i32 27
  %84 = ptrtoint ptr %pic_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pic_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp120 = icmp slt i32 %85, 0
  br i1 %cmp120, label %do.end125, label %if.end130

do.end125:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %74, align 4
  %dev127 = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.42) #12
  %88 = load ptr, ptr @mdc800, align 4
  %state128 = getelementptr inbounds %struct.mdc800_data, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %state128 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %state128, align 4
  %io_lock129 = getelementptr inbounds %struct.mdc800_data, ptr %88, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock129) #8
  br label %cleanup213

if.end130:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %pic_len to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %pic_len, align 4
  br label %sw.bb132

sw.bb132:                                         ; preds = %if.end130, %if.end116.sw.bb132_crit_edge
  %add = add i32 %retval.0.i234, 64
  %download_left133 = getelementptr inbounds %struct.mdc800_data, ptr %74, i32 0, i32 18
  %91 = ptrtoint ptr %download_left133 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add, ptr %download_left133, align 4
  %92 = ptrtoint ptr %state110 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %state110, align 4
  %call135 = call fastcc i32 @mdc800_usb_waitForIRQ(i32 noundef 0, i32 noundef 1500)
  br label %cleanup209

sw.default:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i234)
  %tobool136.not = icmp eq i32 %retval.0.i234, 0
  br i1 %tobool136.not, label %if.else191, label %if.then137

if.then137:                                       ; preds = %sw.default
  %call138 = call fastcc i32 @mdc800_usb_waitForIRQ(i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  %93 = load ptr, ptr @mdc800, align 4
  br i1 %tobool139.not, label %if.end147, label %do.end143

do.end143:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %dev145 = getelementptr inbounds %struct.usb_device, ptr %95, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev145, ptr noundef nonnull @.str.45) #12
  %96 = load ptr, ptr @mdc800, align 4
  %io_lock146 = getelementptr inbounds %struct.mdc800_data, ptr %96, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock146) #8
  br label %cleanup213

if.end147:                                        ; preds = %if.then137
  %out = getelementptr inbounds %struct.mdc800_data, ptr %93, i32 0, i32 19
  %camera_response = getelementptr inbounds %struct.mdc800_data, ptr %93, i32 0, i32 9
  %97 = ptrtoint ptr %camera_response to i32
  call void @__asan_loadN_noabort(i32 %97, i32 8)
  %98 = load i64, ptr %camera_response, align 4
  %99 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 %98, ptr %out, align 4
  %arrayidx151 = getelementptr %struct.mdc800_data, ptr %93, i32 0, i32 19, i32 8
  %100 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %98, ptr %arrayidx151, align 4
  %out_ptr154 = getelementptr inbounds %struct.mdc800_data, ptr %93, i32 0, i32 20
  %101 = ptrtoint ptr %out_ptr154 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %out_ptr154, align 4
  %out_count155 = getelementptr inbounds %struct.mdc800_data, ptr %93, i32 0, i32 21
  %102 = ptrtoint ptr %out_count155 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 16, ptr %out_count155, align 4
  %arrayidx157 = getelementptr %struct.mdc800_data, ptr %93, i32 0, i32 24, i32 1
  %103 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %104)
  %cmp159 = icmp eq i8 %104, 7
  br i1 %cmp159, label %if.then161, label %if.end147.if.end202_crit_edge

if.end147.if.end202_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

if.then161:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %camera_response to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %camera_response, align 4
  %conv164 = zext i8 %106 to i32
  %mul = shl nuw nsw i32 %conv164, 16
  %arrayidx166 = getelementptr %struct.mdc800_data, ptr %93, i32 0, i32 9, i32 1
  %107 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %108 to i32
  %mul168 = shl nuw nsw i32 %conv167, 8
  %add169 = or i32 %mul168, %mul
  %arrayidx171 = getelementptr %struct.mdc800_data, ptr %93, i32 0, i32 9, i32 2
  %109 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx171, align 2
  %conv172 = zext i8 %110 to i32
  %add173 = or i32 %add169, %conv172
  %pic_len174 = getelementptr inbounds %struct.mdc800_data, ptr %93, i32 0, i32 27
  %111 = ptrtoint ptr %pic_len174 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add173, ptr %pic_len174, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc800_device_write.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdc800_device_write, %if.then183)) #8
          to label %if.end202 [label %if.then183], !srcloc !180

if.then183:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #10
  %112 = load ptr, ptr @mdc800, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %dev185 = getelementptr inbounds %struct.usb_device, ptr %114, i32 0, i32 15
  %pic_len186 = getelementptr inbounds %struct.mdc800_data, ptr %112, i32 0, i32 27
  %115 = ptrtoint ptr %pic_len186 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pic_len186, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc800_device_write.__UNIQUE_ID_ddebug238, ptr noundef %dev185, ptr noundef nonnull @.str.47, i32 noundef %116) #8
  br label %if.end202

if.else191:                                       ; preds = %sw.default
  %call192 = call fastcc i32 @mdc800_usb_waitForIRQ(i32 noundef 0, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.else191.if.end202_crit_edge, label %do.end197

if.else191.if.end202_crit_edge:                   ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

do.end197:                                        ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #10
  %117 = load ptr, ptr @mdc800, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %dev199 = getelementptr inbounds %struct.usb_device, ptr %119, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev199, ptr noundef nonnull @.str.49) #12
  %120 = load ptr, ptr @mdc800, align 4
  %io_lock200 = getelementptr inbounds %struct.mdc800_data, ptr %120, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock200) #8
  br label %cleanup213

if.end202:                                        ; preds = %if.else191.if.end202_crit_edge, %if.then183, %if.then161, %if.end147.if.end202_crit_edge
  %121 = load ptr, ptr @mdc800, align 4
  %state203 = getelementptr inbounds %struct.mdc800_data, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %state203 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %state203, align 4
  br label %cleanup209

cleanup209:                                       ; preds = %if.end202, %sw.bb132, %if.then27.cleanup209_crit_edge
  %inc208 = add nuw i32 %i.0276, 1
  %exitcond.not = icmp eq i32 %inc208, %len
  br i1 %exitcond.not, label %cleanup209.while.end_crit_edge, label %cleanup209.while.body_crit_edge

cleanup209.while.body_crit_edge:                  ; preds = %cleanup209
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup209.while.end_crit_edge:                   ; preds = %cleanup209
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup209.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %123 = load ptr, ptr @mdc800, align 4
  %io_lock212 = getelementptr inbounds %struct.mdc800_data, ptr %123, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %io_lock212) #8
  br label %cleanup213

cleanup213:                                       ; preds = %while.end, %do.end197, %do.end143, %do.end125, %if.then113, %do.end56, %do.end, %if.else, %if.then16, %if.then9, %if.then3, %if.then
  %retval.4 = phi i32 [ -16, %if.then ], [ %len, %while.end ], [ -16, %if.then3 ], [ -4, %if.then9 ], [ -14, %if.then16 ], [ -5, %if.else ], [ -5, %do.end197 ], [ -5, %do.end143 ], [ -5, %do.end125 ], [ -5, %if.then113 ], [ -5, %do.end56 ], [ -5, %do.end ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc800_device_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mdc800, align 4
  %io_lock = getelementptr inbounds %struct.mdc800_data, ptr %0, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %1 = load ptr, ptr @mdc800, align 4
  %state = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.error_out_crit_edge, label %if.end

entry.error_out_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.end.error_out_crit_edge

if.end.error_out_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end3:                                          ; preds = %if.end
  %in_count = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %in_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %in_count, align 4
  %out_count = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %out_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %out_count, align 4
  %out_ptr = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %out_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %out_ptr, align 4
  %pic_index = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %pic_index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pic_index, align 4
  %pic_len = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %pic_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %pic_len, align 4
  %download_left = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %download_left to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %download_left, align 4
  %camera_busy = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %camera_busy to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %camera_busy, align 4
  %camera_request_ready = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %camera_request_ready to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %camera_request_ready, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %irq_urb = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_urb, align 4
  %dev4 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %dev4, align 4
  %19 = load ptr, ptr %irq_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %20 = load ptr, ptr @mdc800, align 4
  br i1 %tobool6.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.56, i32 noundef %call) #12
  br label %error_out

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %open11 = getelementptr inbounds %struct.mdc800_data, ptr %20, i32 0, i32 22
  %23 = ptrtoint ptr %open11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %open11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdc800_device_open.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdc800_device_open, %if.then17)) #8
          to label %error_out [label %if.then17], !srcloc !180

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load ptr, ptr @mdc800, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdc800_device_open.__UNIQUE_ID_ddebug237, ptr noundef %dev19, ptr noundef nonnull @.str.58) #8
  br label %error_out

error_out:                                        ; preds = %if.then17, %if.end10, %do.end, %if.end.error_out_crit_edge, %entry.error_out_crit_edge
  %errn.0 = phi i32 [ -5, %do.end ], [ 0, %if.then17 ], [ -16, %entry.error_out_crit_edge ], [ -16, %if.end.error_out_crit_edge ], [ 0, %if.end10 ]
  %27 = load ptr, ptr @mdc800, align 4
  %io_lock23 = getelementptr inbounds %struct.mdc800_data, ptr %27, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock23) #8
  ret i32 %errn.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdc800_device_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mdc800, align 4
  %io_lock = getelementptr inbounds %struct.mdc800_data, ptr %0, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %1 = load ptr, ptr @mdc800, align 4
  %open = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %irq_urb = getelementptr inbounds %struct.mdc800_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #8
  %8 = load ptr, ptr @mdc800, align 4
  %write_urb = getelementptr inbounds %struct.mdc800_data, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #8
  %11 = load ptr, ptr @mdc800, align 4
  %download_urb = getelementptr inbounds %struct.mdc800_data, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %download_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %download_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #8
  %14 = load ptr, ptr @mdc800, align 4
  %open2 = getelementptr inbounds %struct.mdc800_data, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %open2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %open2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then ], [ -5, %land.lhs.true.if.end_crit_edge ], [ -5, %entry.if.end_crit_edge ]
  %16 = load ptr, ptr @mdc800, align 4
  %io_lock3 = getelementptr inbounds %struct.mdc800_data, ptr %16, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %io_lock3) #8
  ret i32 %retval1.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdc800_usb_waitForIRQ(i32 noundef %mode, i32 noundef %msec) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %mode, 1
  %0 = load ptr, ptr @mdc800, align 4
  %camera_request_ready = getelementptr inbounds %struct.mdc800_data, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %camera_request_ready to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %camera_request_ready, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %msec) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 338) #8
  %2 = load ptr, ptr @mdc800, align 4
  %irq_woken = getelementptr inbounds %struct.mdc800_data, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %irq_woken to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_woken, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not74 = icmp eq i32 %call2.i, 0
  %tobool7.not = select i1 %tobool.not, i1 %tobool7.not74, i1 false
  %not.tobool.not = xor i1 %tobool.not, true
  %5 = select i1 %not.tobool.not, i1 true, i1 %tobool7.not
  br i1 %5, label %entry.if.end35_crit_edge, label %if.then9

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i67 = tail call i32 @__msecs_to_jiffies(i32 noundef %msec) #8
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %7 = load ptr, ptr @mdc800, align 4
  %irq_wait75 = getelementptr inbounds %struct.mdc800_data, ptr %7, i32 0, i32 4
  %call1276 = call i32 @prepare_to_wait_event(ptr noundef %irq_wait75, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %8 = load ptr, ptr @mdc800, align 4
  %irq_woken1477 = getelementptr inbounds %struct.mdc800_data, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %irq_woken1477 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_woken1477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not78 = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i67)
  %tobool19.not79 = icmp eq i32 %call2.i67, 0
  %spec.store.select5580 = select i1 %tobool19.not79, i32 1, i32 %call2.i67
  %__ret10.181 = select i1 %tobool15.not78, i32 %call2.i67, i32 %spec.store.select5580
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.181)
  %tobool25.not82 = icmp eq i32 %__ret10.181, 0
  %not.tobool15.not83 = xor i1 %tobool15.not78, true
  %11 = select i1 %not.tobool15.not83, i1 true, i1 %tobool25.not82
  br i1 %11, label %if.then9.for.end_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.184 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ %__ret10.181, %if.then9.cleanup_crit_edge ]
  %call32 = call i32 @schedule_timeout(i32 noundef %__ret10.184) #8
  %12 = load ptr, ptr @mdc800, align 4
  %irq_wait = getelementptr inbounds %struct.mdc800_data, ptr %12, i32 0, i32 4
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %irq_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %13 = load ptr, ptr @mdc800, align 4
  %irq_woken14 = getelementptr inbounds %struct.mdc800_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %irq_woken14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_woken14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool19.not = icmp eq i32 %call32, 0
  %spec.store.select55 = select i1 %tobool19.not, i32 1, i32 %call32
  %__ret10.1 = select i1 %tobool15.not, i32 %call32, i32 %spec.store.select55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool25.not = icmp eq i32 %__ret10.1, 0
  %not.tobool15.not = xor i1 %tobool15.not, true
  %16 = select i1 %not.tobool15.not, i1 true, i1 %tobool25.not
  br i1 %16, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  %17 = load ptr, ptr @mdc800, align 4
  %irq_wait33 = getelementptr inbounds %struct.mdc800_data, ptr %17, i32 0, i32 4
  call void @finish_wait(ptr noundef %irq_wait33, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end35

if.end35:                                         ; preds = %for.end, %entry.if.end35_crit_edge
  %18 = load ptr, ptr @mdc800, align 4
  %irq_woken37 = getelementptr inbounds %struct.mdc800_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %irq_woken37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %irq_woken37, align 4
  %camera_request_ready38 = getelementptr inbounds %struct.mdc800_data, ptr %18, i32 0, i32 8
  %20 = ptrtoint ptr %camera_request_ready38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %camera_request_ready38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %camera_request_ready38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %camera_request_ready38, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %dev44 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.51) #12
  br label %return

if.end45:                                         ; preds = %if.end35
  %state = getelementptr inbounds %struct.mdc800_data, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp46 = icmp eq i32 %26, 0
  br i1 %cmp46, label %do.end50, label %if.end45.return_crit_edge

if.end45.return_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #12
  %27 = load ptr, ptr @mdc800, align 4
  %camera_request_ready53 = getelementptr inbounds %struct.mdc800_data, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %camera_request_ready53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %camera_request_ready53, align 4
  br label %return

return:                                           ; preds = %do.end50, %if.end45.return_crit_edge, %if.then39
  %retval.0 = phi i32 [ -1, %if.then39 ], [ -2, %do.end50 ], [ 0, %if.end45.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !168, !169}
!llvm.named.register.sp = !{!170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_mdc800__239_1071_usb_mdc800_init6, !1, !"__initcall__kmod_mdc800__239_1071_usb_mdc800_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/image/mdc800.c", i32 1071, i32 1}
!2 = !{ptr @__exitcall_usb_mdc800_cleanup, !3, !"__exitcall_usb_mdc800_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/image/mdc800.c", i32 1072, i32 1}
!4 = !{ptr @__UNIQUE_ID_author240, !5, !"__UNIQUE_ID_author240", i1 false, i1 false}
!5 = !{!"../drivers/usb/image/mdc800.c", i32 1074, i32 1}
!6 = !{ptr @__UNIQUE_ID_description241, !7, !"__UNIQUE_ID_description241", i1 false, i1 false}
!7 = !{!"../drivers/usb/image/mdc800.c", i32 1075, i32 1}
!8 = !{ptr @__UNIQUE_ID_file242, !9, !"__UNIQUE_ID_file242", i1 false, i1 false}
!9 = !{!"../drivers/usb/image/mdc800.c", i32 1076, i32 1}
!10 = !{ptr @__UNIQUE_ID_license243, !9, !"__UNIQUE_ID_license243", i1 false, i1 false}
!11 = !{ptr @mdc800, !12, !"mdc800", i1 false, i1 false}
!12 = !{!"../drivers/usb/image/mdc800.c", i32 216, i32 28}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/image/mdc800.c", i32 970, i32 11}
!15 = !{ptr @mdc800_usb_driver, !16, !"mdc800_usb_driver", i1 false, i1 false}
!16 = !{!"../drivers/usb/image/mdc800.c", i32 968, i32 26}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/image/mdc800.c", i32 430, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mdc800_usb_probe.__UNIQUE_ID_ddebug235, !18, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/image/mdc800.c", i32 435, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mdc800_usb_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mdc800_usb_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/image/mdc800.c", i32 441, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mdc800_usb_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mdc800_usb_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/image/mdc800.c", i32 454, i32 3}
!35 = !{ptr @mdc800_usb_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mdc800_usb_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/image/mdc800.c", i32 475, i32 4}
!39 = !{ptr @mdc800_usb_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mdc800_usb_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/image/mdc800.c", i32 481, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mdc800_usb_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mdc800_usb_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/image/mdc800.c", i32 487, i32 3}
!48 = !{ptr @mdc800_usb_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mdc800_usb_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @mdc800_ed, !51, !"mdc800_ed", i1 false, i1 false}
!51 = !{!"../drivers/usb/image/mdc800.c", i32 171, i32 39}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/image/mdc800.c", i32 412, i32 11}
!54 = !{ptr @mdc800_class, !55, !"mdc800_class", i1 false, i1 false}
!55 = !{!"../drivers/usb/image/mdc800.c", i32 411, i32 32}
!56 = !{ptr @mdc800_device_ops, !57, !"mdc800_device_ops", i1 false, i1 false}
!57 = !{!"../drivers/usb/image/mdc800.c", i32 947, i32 37}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/image/mdc800.c", i32 695, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mdc800_device_read._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mdc800_device_read._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/image/mdc800.c", i32 728, i32 6}
!65 = !{ptr @mdc800_device_read._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mdc800_device_read._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/image/mdc800.c", i32 740, i32 6}
!69 = !{ptr @mdc800_device_read._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mdc800_device_read._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/image/mdc800.c", i32 840, i32 5}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mdc800_device_write._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mdc800_device_write._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/image/mdc800.c", i32 853, i32 5}
!85 = !{ptr @mdc800_device_write._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mdc800_device_write._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/image/mdc800.c", i32 875, i32 7}
!89 = !{ptr @mdc800_device_write._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mdc800_device_write._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/image/mdc800.c", i32 898, i32 8}
!93 = !{ptr @mdc800_device_write._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @mdc800_device_write._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/image/mdc800.c", i32 918, i32 8}
!97 = !{ptr @mdc800_device_write.__UNIQUE_ID_ddebug238, !96, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/image/mdc800.c", i32 926, i32 8}
!100 = !{ptr @mdc800_device_write._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @mdc800_device_write._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/image/mdc800.c", i32 344, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mdc800_usb_waitForIRQ._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @mdc800_usb_waitForIRQ._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/image/mdc800.c", i32 350, i32 3}
!109 = !{ptr @mdc800_usb_waitForIRQ._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mdc800_usb_waitForIRQ._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/image/mdc800.c", i32 638, i32 3}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mdc800_device_open._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @mdc800_device_open._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/image/mdc800.c", i32 645, i32 2}
!118 = !{ptr @mdc800_device_open.__UNIQUE_ID_ddebug237, !117, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/image/mdc800.c", i32 283, i32 5}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @mdc800_usb_irq.__UNIQUE_ID_ddebug232, !120, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/image/mdc800.c", i32 291, i32 5}
!125 = !{ptr @mdc800_usb_irq.__UNIQUE_ID_ddebug233, !124, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/image/mdc800.c", i32 297, i32 4}
!128 = !{ptr @mdc800_usb_irq.__UNIQUE_ID_ddebug234, !127, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/image/mdc800.c", i32 369, i32 3}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @mdc800_usb_write_notify._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @mdc800_usb_write_notify._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/image/mdc800.c", i32 397, i32 3}
!136 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @mdc800_usb_download_notify._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @mdc800_usb_download_notify._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/image/mdc800.c", i32 543, i32 2}
!141 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @mdc800_usb_disconnect.__UNIQUE_ID_ddebug236, !140, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/image/mdc800.c", i32 564, i32 2}
!145 = !{ptr @mdc800_usb_disconnect._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @mdc800_usb_disconnect._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @mdc800_table, !148, !"mdc800_table", i1 false, i1 false}
!148 = !{!"../drivers/usb/image/mdc800.c", i32 959, i32 35}
!149 = !{ptr @usb_mdc800_init.__key, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/usb/image/mdc800.c", i32 992, i32 2}
!151 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @usb_mdc800_init.__key.71, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/usb/image/mdc800.c", i32 994, i32 2}
!154 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @usb_mdc800_init.__key.73, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/usb/image/mdc800.c", i32 995, i32 2}
!157 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @usb_mdc800_init.__key.75, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/usb/image/mdc800.c", i32 996, i32 2}
!160 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/image/mdc800.c", i32 1027, i32 2}
!163 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @usb_mdc800_init._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @usb_mdc800_init._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/image/mdc800.c", i32 1038, i32 3}
!168 = !{ptr @usb_mdc800_init._entry.79, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @usb_mdc800_init._entry_ptr.81, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{!"sp"}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 2148804205, i64 2148804210, i64 2148804223, i64 2148804267, i64 2148804301, i64 2148804322}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{i64 2150574909, i64 2150574934}
!183 = !{i64 3069783}
!184 = !{i64 3069980}
!185 = !{i64 2150555213}
!186 = !{i64 2154012279, i64 2154012559, i64 2154012893, i64 2154013227}
