; ModuleID = '/llk/IR_all_yes/drivers/usb/host/max3421-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/max3421-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.max3421_hcd_platform_data = type { i8, i8 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.max3421_hcd = type { %struct.spinlock, ptr, i32, i32, i8, %struct.list_head, i8, i16, ptr, ptr, ptr, i32, i32, i32, i8, i8, [2 x i8], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.max3421_ep = type { ptr, %struct.list_head, i32, i16, i32, i8, i8 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.73 }>
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { [4 x i8], [4 x i8] }

@__initcall__kmod_max3421_hcd__253_1968_max3421_driver_init6 = internal global ptr @max3421_driver_init, section ".initcall6.init", align 4
@max3421_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @max3421_probe, ptr @max3421_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max3421_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max3421_driver_exit = internal global ptr @max3421_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description254 = internal constant [59 x i8] c"max3421_hcd.description=MAX3421 USB Host-Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [55 x i8] c"max3421_hcd.author=David Mosberger <davidm@egauge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [46 x i8] c"max3421_hcd.file=drivers/usb/host/max3421-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [24 x i8] c"max3421_hcd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max3421-hcd\00", [20 x i8] zeroinitializer }, align 32
@max3421_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max3421\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max3421_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to setup SPI bus\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max3421_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/host/max3421-hcd.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr = internal global ptr @max3421_probe._entry, section ".printk_index", align 4
@max3421_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1838, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get SPI IRQ\00", [42 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr.8 = internal global ptr @max3421_probe._entry.6, section ".printk_index", align 4
@max3421_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"driver configuration data is not provided\0A\00", [53 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr.11 = internal global ptr @max3421_probe._entry.9, section ".printk_index", align 4
@max3421_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"vbus active level value %d is out of range (0/1)\0A\00", [46 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr.14 = internal global ptr @max3421_probe._entry.12, section ".printk_index", align 4
@max3421_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"vbus gpout value %d is out of range (1..8)\0A\00", [52 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr.17 = internal global ptr @max3421_probe._entry.15, section ".printk_index", align 4
@max3421_hcd_desc = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @.str.28, ptr @.str.39, i32 104, ptr null, i32 16, ptr @max3421_reset, ptr @max3421_start, ptr null, ptr null, ptr @max3421_stop, ptr null, ptr @max3421_get_frame_number, ptr @max3421_urb_enqueue, ptr @max3421_urb_dequeue, ptr null, ptr null, ptr @max3421_endpoint_disable, ptr null, ptr @max3421_hub_status_data, ptr @max3421_hub_control, ptr @max3421_bus_suspend, ptr @max3421_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@max3421_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1876, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to create HCD structure\0A\00", [32 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr.20 = internal global ptr @max3421_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max3421_spi_thread\00", [45 x i8] zeroinitializer }, align 32
@max3421_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to create SPI thread (out of memory)\0A\00", [51 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr.24 = internal global ptr @max3421_probe._entry.22, section ".printk_index", align 4
@max3421_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1901, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to add HCD\0A\00", [45 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr.27 = internal global ptr @max3421_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max3421\00", [24 x i8] zeroinitializer }, align 32
@max3421_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1908, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@max3421_probe._entry_ptr.31 = internal global ptr @max3421_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"maxim,vbus-en-pin\00", [46 x i8] zeroinitializer }, align 32
@max3421_of_vbus_en_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1812, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device tree node property 'maxim,vbus-en-pin' is missing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max3421_of_vbus_en_pin\00", [41 x i8] zeroinitializer }, align 32
@max3421_of_vbus_en_pin._entry_ptr = internal global ptr @max3421_of_vbus_en_pin._entry, section ".printk_index", align 4
@max3421_of_vbus_en_pin._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1815, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"property 'maxim,vbus-en-pin' value is <%d %d>\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max3421_of_vbus_en_pin._entry_ptr.38 = internal global ptr @max3421_of_vbus_en_pin._entry.35, section ".printk_index", align 4
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MAX3421 USB Host-Controller Driver\00", [61 x i8] zeroinitializer }, align 32
@max3421_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&max3421_hcd->lock\00", [45 x i8] zeroinitializer }, align 32
@max3421_urb_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: interval=%d for intr-/iso-pipe; expected > 0\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max3421_urb_enqueue\00", [44 x i8] zeroinitializer }, align 32
@max3421_urb_enqueue._entry_ptr = internal global ptr @max3421_urb_enqueue._entry, section ".printk_index", align 4
@max3421_hub_status_data.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 1, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max3421_hcd\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max3421_hub_status_data\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"port status 0x%08x has changes\0A\00", [32 x i8] zeroinitializer }, align 32
@max3421_hub_control.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 1, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max3421_hub_control\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power-off\0A\00", [21 x i8] zeroinitializer }, align 32
@max3421_hub_control.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.46, ptr @.str.3, ptr @.str.48, i8 1, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power-on\0A\00", [22 x i8] zeroinitializer }, align 32
@max3421_hub_control.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.46, ptr @.str.3, ptr @.str.49, i8 1, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hub control req%04x v%04x i%04x l%d\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@max3421_spi_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.21, ptr @.str.3, i32 1390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad rev 0x%02x\00", [17 x i8] zeroinitializer }, align 32
@max3421_spi_thread._entry_ptr = internal global ptr @max3421_spi_thread._entry, section ".printk_index", align 4
@max3421_spi_thread._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.21, ptr @.str.3, i32 1395, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rev 0x%x, SPI clk %dHz, bpw %u, irq %d\0A\00", [56 x i8] zeroinitializer }, align 32
@max3421_spi_thread._entry_ptr.53 = internal global ptr @max3421_spi_thread._entry.51, section ".printk_index", align 4
@max3421_spi_thread._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.21, ptr @.str.3, i32 1450, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SPI thread exiting\00", [45 x i8] zeroinitializer }, align 32
@max3421_spi_thread._entry_ptr.58 = internal global ptr @max3421_spi_thread._entry.56, section ".printk_index", align 4
@max3421_handle_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: BUSEVENT Bus Resume Done\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max3421_handle_irqs\00", [44 x i8] zeroinitializer }, align 32
@max3421_handle_irqs._entry_ptr = internal global ptr @max3421_handle_irqs._entry, section ".printk_index", align 4
@max3421_handle_irqs._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016%s: RWU\0A\00", [21 x i8] zeroinitializer }, align 32
@max3421_handle_irqs._entry_ptr.63 = internal global ptr @max3421_handle_irqs._entry.61, section ".printk_index", align 4
@max3421_handle_irqs._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016%s: SUSDN\0A\00", [19 x i8] zeroinitializer }, align 32
@max3421_handle_irqs._entry_ptr.66 = internal global ptr @max3421_handle_irqs._entry.64, section ".printk_index", align 4
@hrsl_to_error = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 -11, i32 -32, i32 -84, i32 -71, i32 -121, i32 -71, i32 -71, i32 -84, i32 -5, i32 -5, i32 -62, i32 -75], [32 x i8] zeroinitializer }, align 32
@max3421_handle_error.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max3421_handle_error\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: unexpected error HRSL=0x%02x\00", [63 x i8] zeroinitializer }, align 32
@max3421_handle_error.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@max3421_handle_error.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@max3421_transfer_in_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: packet-size of %u too big (limit is %u bytes)\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max3421_transfer_in_done\00", [39 x i8] zeroinitializer }, align 32
@max3421_transfer_in_done._entry_ptr = internal global ptr @max3421_transfer_in_done._entry, section ".printk_index", align 4
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@max3421_transfer_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.72, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max3421_transfer_out\00", [43 x i8] zeroinitializer }, align 32
@max3421_transfer_out._entry_ptr = internal global ptr @max3421_transfer_out._entry, section ".printk_index", align 4
@max3421_select_and_start_urb.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max3421_select_and_start_urb\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: URB %p unlinked=%d\00", [41 x i8] zeroinitializer }, align 32
@max3421_reset_hcd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"timed out waiting for oscillator OK signal\00", [53 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max3421_reset_hcd\00", [46 x i8] zeroinitializer }, align 32
@max3421_reset_hcd._entry_ptr = internal global ptr @max3421_reset_hcd._entry, section ".printk_index", align 4
@max3421_check_unlink.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.77, ptr @.str.3, ptr @.str.74, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max3421_check_unlink\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [12 x i64] [i64 10, i64 16, i64 8193, i64 8195, i64 8204, i64 8961, i64 8963, i64 32774, i64 40960, i64 40966, i64 41728, i64 41741]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@__sancov_gen_cov_switch_values.80 = internal global [9 x i64] [i64 7, i64 16, i64 2, i64 4, i64 5, i64 8, i64 23, i64 24, i64 28]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"max3421_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1959, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1963, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [23 x i8] c"max3421_of_match_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1953, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1833, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1838, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1857, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1862, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1867, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"max3421_hcd_desc\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1783, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1876, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1891, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1894, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1901, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1906, i32 27 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1908, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1810, i32 52 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1812, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1815, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1785, i32 19 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1485, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1514, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1621, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1695, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1744, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1760, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1390, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1393, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1450, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1243, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1247, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1249, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [14 x i8] c"hrsl_to_error\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 294, i32 18 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 883, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 961, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1981, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 556, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 678, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1302, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [34 x i8] c"../drivers/usb/host/max3421-hcd.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 786, i32 5 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_max3421_driver_exit, ptr @__initcall__kmod_max3421_hcd__253_1968_max3421_driver_init6, ptr @max3421_driver_exit, ptr @max3421_handle_irqs._entry, ptr @max3421_handle_irqs._entry.61, ptr @max3421_handle_irqs._entry.64, ptr @max3421_handle_irqs._entry_ptr, ptr @max3421_handle_irqs._entry_ptr.63, ptr @max3421_handle_irqs._entry_ptr.66, ptr @max3421_of_vbus_en_pin._entry, ptr @max3421_of_vbus_en_pin._entry.35, ptr @max3421_of_vbus_en_pin._entry_ptr, ptr @max3421_of_vbus_en_pin._entry_ptr.38, ptr @max3421_probe._entry, ptr @max3421_probe._entry.12, ptr @max3421_probe._entry.15, ptr @max3421_probe._entry.18, ptr @max3421_probe._entry.22, ptr @max3421_probe._entry.25, ptr @max3421_probe._entry.29, ptr @max3421_probe._entry.6, ptr @max3421_probe._entry.9, ptr @max3421_probe._entry_ptr, ptr @max3421_probe._entry_ptr.11, ptr @max3421_probe._entry_ptr.14, ptr @max3421_probe._entry_ptr.17, ptr @max3421_probe._entry_ptr.20, ptr @max3421_probe._entry_ptr.24, ptr @max3421_probe._entry_ptr.27, ptr @max3421_probe._entry_ptr.31, ptr @max3421_probe._entry_ptr.8, ptr @max3421_reset_hcd._entry, ptr @max3421_reset_hcd._entry_ptr, ptr @max3421_spi_thread._entry, ptr @max3421_spi_thread._entry.51, ptr @max3421_spi_thread._entry.56, ptr @max3421_spi_thread._entry_ptr, ptr @max3421_spi_thread._entry_ptr.53, ptr @max3421_spi_thread._entry_ptr.58, ptr @max3421_transfer_in_done._entry, ptr @max3421_transfer_in_done._entry_ptr, ptr @max3421_transfer_out._entry, ptr @max3421_transfer_out._entry_ptr, ptr @max3421_urb_enqueue._entry, ptr @max3421_urb_enqueue._entry_ptr, ptr @max3421_driver, ptr @.str, ptr @max3421_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @max3421_hcd_desc, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @max3421_start.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @hrsl_to_error, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_hcd_desc to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_of_vbus_en_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_of_vbus_en_pin._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_urb_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_spi_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_spi_thread._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_spi_thread._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_handle_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_handle_irqs._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_handle_irqs._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hrsl_to_error to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_transfer_in_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_transfer_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3421_reset_hcd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max3421_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max3421_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max3421_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_probe(ptr noundef %spi) #2 align 64 {
entry:
  %value.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_setup(ptr noundef %spi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end8.if.end21_crit_edge, label %if.then10

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then10:                                        ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 2, i32 noundef 3520) #10
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.then10.cleanup_crit_edge, label %if.end.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #10
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value.i, align 4, !annotation !173
  %5 = getelementptr inbounds [2 x i32], ptr %value.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !173
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.32, ptr noundef nonnull %value.i, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not.i, label %if.end19, label %max3421_of_vbus_en_pin.exit

max3421_of_vbus_en_pin.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.33) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #10
  br label %error

if.end19:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.36, i32 noundef %10, i32 noundef %12) #13
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value.i, align 4
  %conv.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %call.i, align 1
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %conv11.i = trunc i32 %17 to i8
  %vbus_active_level.i = getelementptr inbounds %struct.max3421_hcd_platform_data, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %vbus_active_level.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11.i, ptr %vbus_active_level.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #10
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %19 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %platform_data, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end8.if.end21_crit_edge
  %platform_data23 = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %20 = ptrtoint ptr %platform_data23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data23, align 8
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %vbus_active_level = getelementptr inbounds %struct.max3421_hcd_platform_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %vbus_active_level to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vbus_active_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp31 = icmp ugt i8 %23, 1
  br i1 %cmp31, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %conv) #13
  br label %error

if.end40:                                         ; preds = %if.end30
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 1
  %26 = add i8 %25, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %26)
  %27 = icmp ult i8 %26, -8
  br i1 %27, label %do.end51, label %if.end55

do.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %conv54 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %conv54) #13
  br label %error

if.end55:                                         ; preds = %if.end40
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i194 = icmp eq ptr %29, null
  br i1 %tobool.not.i194, label %if.end.i195, label %if.end55.dev_name.exit_crit_edge

if.end55.dev_name.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i195:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i195, %if.end55.dev_name.exit_crit_edge
  %retval.0.i196 = phi ptr [ %31, %if.end.i195 ], [ %29, %if.end55.dev_name.exit_crit_edge ]
  %call59 = call ptr @usb_create_hcd(ptr noundef nonnull @max3421_hcd_desc, ptr noundef %spi, ptr noundef %retval.0.i196) #10
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %do.end64, label %if.end66

do.end64:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19) #13
  br label %error

if.end66:                                         ; preds = %dev_name.exit
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %call59, i32 0, i32 12
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call59, i32 0, i32 30
  %ep_list = getelementptr inbounds %struct.usb_hcd, ptr %call59, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %32 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %call59, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ep_list, ptr %prev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %hcd_priv.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3264, i32 noundef 2) #14
  %tx = getelementptr inbounds %struct.usb_hcd, ptr %call59, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %36 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i, ptr %tx, align 4
  %tobool70.not = icmp eq ptr %call7.i, null
  br i1 %tobool70.not, label %if.end66.error_crit_edge, label %if.end72

if.end66.error_crit_edge:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end72:                                         ; preds = %if.end66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i193 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 2) #14
  %rx = getelementptr inbounds %struct.usb_hcd, ptr %call59, i32 1, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i193, ptr %rx, align 4
  %tobool75.not = icmp eq ptr %call7.i193, null
  br i1 %tobool75.not, label %if.end72.error_crit_edge, label %if.end77

if.end72.error_crit_edge:                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end77:                                         ; preds = %if.end72
  %call78 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @max3421_spi_thread, ptr noundef nonnull %call59, i32 noundef -1, ptr noundef nonnull @.str.21) #10
  %cmp.i = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end77.if.end82_crit_edge, label %if.then80

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = call i32 @wake_up_process(ptr noundef %call78) #10
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77.if.end82_crit_edge
  %spi_thread = getelementptr inbounds %struct.usb_hcd, ptr %call59, i32 1, i32 0, i32 9, i32 1, i32 3
  %39 = ptrtoint ptr %spi_thread to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call78, ptr %spi_thread, align 4
  %cmp85 = icmp eq ptr %call78, inttoptr (i32 -12 to ptr)
  br i1 %cmp85, label %do.end90, label %if.end92

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.23) #13
  br label %error

if.end92:                                         ; preds = %if.end82
  %call93 = call i32 @usb_add_hcd(ptr noundef nonnull %call59, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end100, label %do.end98

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.26) #13
  br label %error

if.end100:                                        ; preds = %if.end92
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  %call.i197 = call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @max3421_irq_handler, ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.28, ptr noundef nonnull %call59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %cmp103 = icmp slt i32 %call.i197, 0
  br i1 %cmp103, label %do.end108, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end108:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.30, i32 noundef %43) #13
  br label %error

error:                                            ; preds = %do.end108, %do.end98, %do.end90, %if.end72.error_crit_edge, %if.end66.error_crit_edge, %do.end64, %do.end51, %do.end36, %max3421_of_vbus_en_pin.exit
  %max3421_hcd.0 = phi ptr [ inttoptr (i32 -1 to ptr), %max3421_of_vbus_en_pin.exit ], [ inttoptr (i32 -1 to ptr), %do.end36 ], [ inttoptr (i32 -1 to ptr), %do.end51 ], [ %hcd_priv.i, %do.end90 ], [ %hcd_priv.i, %do.end98 ], [ %hcd_priv.i, %do.end108 ], [ %hcd_priv.i, %if.end72.error_crit_edge ], [ %hcd_priv.i, %if.end66.error_crit_edge ], [ inttoptr (i32 -1 to ptr), %do.end64 ]
  %hcd.0 = phi ptr [ null, %max3421_of_vbus_en_pin.exit ], [ null, %do.end36 ], [ null, %do.end51 ], [ %call59, %do.end90 ], [ %call59, %do.end98 ], [ %call59, %do.end108 ], [ %call59, %if.end72.error_crit_edge ], [ %call59, %if.end66.error_crit_edge ], [ null, %do.end64 ]
  %pdata.0 = phi ptr [ %call.i, %max3421_of_vbus_en_pin.exit ], [ %21, %do.end36 ], [ %21, %do.end51 ], [ %21, %do.end90 ], [ %21, %do.end98 ], [ %21, %do.end108 ], [ %21, %if.end72.error_crit_edge ], [ %21, %if.end66.error_crit_edge ], [ %21, %do.end64 ]
  %retval2.0 = phi i32 [ %call.i.i, %max3421_of_vbus_en_pin.exit ], [ -22, %do.end36 ], [ -22, %do.end51 ], [ -12, %do.end90 ], [ %call93, %do.end98 ], [ %call.i197, %do.end108 ], [ -12, %if.end72.error_crit_edge ], [ -12, %if.end66.error_crit_edge ], [ -12, %do.end64 ]
  %44 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node, align 8
  %tobool113.not = icmp eq ptr %45, null
  br i1 %tobool113.not, label %error.if.end119_crit_edge, label %if.then115

error.if.end119_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then115:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  call void @devm_kfree(ptr noundef %spi, ptr noundef nonnull %pdata.0) #10
  %platform_data118 = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %46 = ptrtoint ptr %platform_data118 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %platform_data118, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %error.if.end119_crit_edge
  %tobool120.not = icmp eq ptr %hcd.0, null
  br i1 %tobool120.not, label %if.end119.cleanup_crit_edge, label %if.then121

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then121:                                       ; preds = %if.end119
  %tx122 = getelementptr inbounds %struct.max3421_hcd, ptr %max3421_hcd.0, i32 0, i32 8
  %47 = ptrtoint ptr %tx122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx122, align 4
  call void @kfree(ptr noundef %48) #10
  %rx123 = getelementptr inbounds %struct.max3421_hcd, ptr %max3421_hcd.0, i32 0, i32 9
  %49 = ptrtoint ptr %rx123 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx123, align 4
  call void @kfree(ptr noundef %50) #10
  %spi_thread124 = getelementptr inbounds %struct.max3421_hcd, ptr %max3421_hcd.0, i32 0, i32 1
  %51 = ptrtoint ptr %spi_thread124 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi_thread124, align 4
  %tobool125.not = icmp eq ptr %52, null
  br i1 %tobool125.not, label %if.then121.if.end129_crit_edge, label %if.then126

if.then121.if.end129_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then126:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  %call128 = call i32 @kthread_stop(ptr noundef nonnull %52) #10
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.then121.if.end129_crit_edge
  call void @usb_put_hcd(ptr noundef nonnull %hcd.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.end119.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %do.end28, %if.then10.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -14, %do.end7 ], [ 0, %if.end100.cleanup_crit_edge ], [ %retval2.0, %if.end129 ], [ %retval2.0, %if.end119.cleanup_crit_edge ], [ -12, %if.then10.cleanup_crit_edge ], [ -14, %do.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  tail call void @usb_remove_hcd(ptr noundef %add.ptr.i) #10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %spi_thread = getelementptr inbounds %struct.max3421_hcd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_thread, align 4
  %call7 = tail call i32 @kthread_stop(ptr noundef %3) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %add.ptr.i) #10
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_spi_thread(ptr noundef %dev_id) #2 align 64 {
entry:
  %transfer.i455 = alloca %struct.spi_transfer, align 4
  %msg.i456 = alloca %struct.spi_message, align 4
  %transfer.i439 = alloca %struct.spi_transfer, align 4
  %msg.i440 = alloca %struct.spi_message, align 4
  %transfer.i425 = alloca %struct.spi_transfer, align 4
  %msg.i426 = alloca %struct.spi_message, align 4
  %transfer.i82.i = alloca %struct.spi_transfer, align 4
  %msg.i83.i = alloca %struct.spi_message, align 4
  %transfer.i68.i = alloca %struct.spi_transfer, align 4
  %msg.i69.i = alloca %struct.spi_message, align 4
  %transfer.i54.i = alloca %struct.spi_transfer, align 4
  %msg.i55.i = alloca %struct.spi_message, align 4
  %transfer.i40.i = alloca %struct.spi_transfer, align 4
  %msg.i41.i = alloca %struct.spi_message, align 4
  %transfer.i26.i = alloca %struct.spi_transfer, align 4
  %msg.i27.i = alloca %struct.spi_message, align 4
  %transfer.i15.i = alloca %struct.spi_transfer, align 4
  %msg.i16.i = alloca %struct.spi_message, align 4
  %transfer.i1.i = alloca %struct.spi_transfer, align 4
  %msg.i2.i = alloca %struct.spi_message, align 4
  %transfer.i.i401 = alloca %struct.spi_transfer, align 4
  %msg.i.i402 = alloca %struct.spi_message, align 4
  %transfer.i.i120.i = alloca %struct.spi_transfer, align 4
  %msg.i.i121.i = alloca %struct.spi_message, align 4
  %transfer.i48.i.i = alloca %struct.spi_transfer, align 4
  %msg.i49.i.i = alloca %struct.spi_message, align 4
  %transfer.i37.i.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i38.i.i = alloca %struct.spi_message, align 4
  %transfer.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %transfer.i109.i = alloca %struct.spi_transfer, align 4
  %msg.i110.i = alloca %struct.spi_message, align 4
  %transfer.i.i379 = alloca %struct.spi_transfer, align 4
  %msg.i.i380 = alloca %struct.spi_message, align 4
  %transfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %transfer.i364 = alloca %struct.spi_transfer, align 4
  %msg.i365 = alloca %struct.spi_message, align 4
  %transfer.i353 = alloca %struct.spi_transfer, align 4
  %msg.i354 = alloca %struct.spi_message, align 4
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %2 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %tx.i = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %10 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -118, ptr %11, align 1
  %13 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i = getelementptr [2 x i8], ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 24, ptr %arrayidx4.i, align 1
  %15 = load ptr, ptr %tx.i, align 4
  %16 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %transfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %18 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %18, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_wr8.exit_crit_edge

entry.spi_wr8.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i, ptr %18, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i, %entry.spi_wr8.exit_crit_edge
  %call7.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  %call2473 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call2473, label %spi_wr8.exit.do.end14_crit_edge, label %while.body.lr.ph

spi_wr8.exit.do.end14_crit_edge:                  ; preds = %spi_wr8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

while.body.lr.ph:                                 ; preds = %spi_wr8.exit
  %23 = getelementptr inbounds i8, ptr %transfer.i353, i32 12
  %24 = getelementptr inbounds i8, ptr %msg.i354, i32 8
  %prev.i.i.i.i355 = getelementptr inbounds %struct.list_head, ptr %msg.i354, i32 0, i32 1
  %resources.i.i.i356 = getelementptr inbounds %struct.spi_message, ptr %msg.i354, i32 0, i32 10
  %prev.i2.i.i.i357 = getelementptr inbounds %struct.spi_message, ptr %msg.i354, i32 0, i32 10, i32 1
  %rx.i = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i353, i32 0, i32 1
  %len.i359 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i353, i32 0, i32 2
  %transfer_list.i.i360 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i353, i32 0, i32 18
  %prev3.i.i.i.i362 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i353, i32 0, i32 18, i32 1
  %rev = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i353) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i354) #10
  %27 = call ptr @memset(ptr %23, i32 0, i32 84)
  %28 = call ptr @memset(ptr %24, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i354 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i354, ptr %msg.i354, align 4
  %30 = ptrtoint ptr %prev.i.i.i.i355 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i354, ptr %prev.i.i.i.i355, align 4
  %31 = ptrtoint ptr %resources.i.i.i356 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i356, ptr %resources.i.i.i356, align 4
  %32 = ptrtoint ptr %prev.i2.i.i.i357 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i356, ptr %prev.i2.i.i.i357, align 4
  %33 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -112, ptr %34, align 1
  %36 = load ptr, ptr %tx.i, align 4
  %37 = ptrtoint ptr %transfer.i353 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %transfer.i353, align 4
  %38 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx.i, align 4
  %40 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %rx_buf.i, align 4
  %41 = ptrtoint ptr %len.i359 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %len.i359, align 4
  %42 = load ptr, ptr %prev.i.i.i.i355, align 4
  %call.i.i.i.i361 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i360, ptr noundef %42, ptr noundef nonnull %msg.i354) #10
  br i1 %call.i.i.i.i361, label %if.end.i.i.i.i363, label %while.body.spi_rd8.exit_crit_edge

while.body.spi_rd8.exit_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit

if.end.i.i.i.i363:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %prev.i.i.i.i355 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %transfer_list.i.i360, ptr %prev.i.i.i.i355, align 4
  %44 = ptrtoint ptr %transfer_list.i.i360 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i354, ptr %transfer_list.i.i360, align 4
  %45 = ptrtoint ptr %prev3.i.i.i.i362 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i.i362, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %transfer_list.i.i360, ptr %42, align 4
  br label %spi_rd8.exit

spi_rd8.exit:                                     ; preds = %if.end.i.i.i.i363, %while.body.spi_rd8.exit_crit_edge
  %call6.i = call i32 @spi_sync(ptr noundef %26, ptr noundef nonnull %msg.i354) #10
  %47 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx.i, align 4
  %arrayidx9.i = getelementptr [2 x i8], ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx9.i, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i354) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i353) #10
  %51 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %rev, align 4
  %52 = and i8 %50, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %52)
  %switch = icmp eq i8 %52, 18
  br i1 %switch, label %spi_rd8.exit.do.end14_crit_edge, label %do.end

spi_rd8.exit.do.end14_crit_edge:                  ; preds = %spi_rd8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %spi_rd8.exit
  %conv = zext i8 %50 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %conv) #13
  call void @msleep(i32 noundef 10000) #10
  %call2 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call2, label %do.end.do.end14_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end14:                                         ; preds = %do.end.do.end14_crit_edge, %spi_rd8.exit.do.end14_crit_edge, %spi_wr8.exit.do.end14_crit_edge
  %rev16 = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %53 = ptrtoint ptr %rev16 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rev16, align 4
  %conv17 = zext i8 %54 to i32
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_speed_hz, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bits_per_word, align 1
  %conv18 = zext i8 %58 to i32
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %conv17, i32 noundef %56, i32 noundef %conv18, i32 noundef %60) #13
  %call20475 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call20475, label %do.end14.__here270_crit_edge, label %while.body22.lr.ph

do.end14.__here270_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here270

while.body22.lr.ph:                               ; preds = %do.end14
  %hien = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 5, i32 1
  %61 = getelementptr inbounds i8, ptr %transfer.i364, i32 4
  %62 = getelementptr inbounds i8, ptr %msg.i365, i32 8
  %prev.i.i.i.i366 = getelementptr inbounds %struct.list_head, ptr %msg.i365, i32 0, i32 1
  %resources.i.i.i367 = getelementptr inbounds %struct.spi_message, ptr %msg.i365, i32 0, i32 10
  %prev.i2.i.i.i368 = getelementptr inbounds %struct.spi_message, ptr %msg.i365, i32 0, i32 10, i32 1
  %len.i371 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i364, i32 0, i32 2
  %transfer_list.i.i372 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i364, i32 0, i32 18
  %prev3.i.i.i.i374 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i364, i32 0, i32 18, i32 1
  %todo = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %urb_done = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 4
  %curr_urb.i = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 3
  %63 = getelementptr inbounds i8, ptr %transfer.i.i, i32 12
  %64 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %rx.i.i = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 2
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 1
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %65 = getelementptr inbounds i8, ptr %transfer.i.i379, i32 12
  %66 = getelementptr inbounds i8, ptr %msg.i.i380, i32 8
  %prev.i.i.i.i.i382 = getelementptr inbounds %struct.list_head, ptr %msg.i.i380, i32 0, i32 1
  %resources.i.i.i.i383 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i380, i32 0, i32 10
  %prev.i2.i.i.i.i384 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i380, i32 0, i32 10, i32 1
  %rx_buf.i.i387 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i379, i32 0, i32 1
  %len.i.i388 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i379, i32 0, i32 2
  %transfer_list.i.i.i389 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i379, i32 0, i32 18
  %prev3.i.i.i.i.i391 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i379, i32 0, i32 18, i32 1
  %67 = getelementptr inbounds i8, ptr %transfer.i109.i, i32 4
  %68 = getelementptr inbounds i8, ptr %msg.i110.i, i32 8
  %prev.i.i.i.i111.i = getelementptr inbounds %struct.list_head, ptr %msg.i110.i, i32 0, i32 1
  %resources.i.i.i112.i = getelementptr inbounds %struct.spi_message, ptr %msg.i110.i, i32 0, i32 10
  %prev.i2.i.i.i113.i = getelementptr inbounds %struct.spi_message, ptr %msg.i110.i, i32 0, i32 10, i32 1
  %len.i115.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i109.i, i32 0, i32 2
  %transfer_list.i.i116.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i109.i, i32 0, i32 18
  %prev3.i.i.i.i118.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i109.i, i32 0, i32 18, i32 1
  %frame_number.i = getelementptr inbounds %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 7
  %sched_pass.i = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 3, i32 1
  %69 = getelementptr inbounds i8, ptr %transfer.i.i.i, i32 12
  %70 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %rx_buf.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 1
  %len.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 2
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18, i32 1
  %71 = getelementptr inbounds i8, ptr %transfer.i37.i.i, i32 4
  %72 = getelementptr inbounds i8, ptr %msg.i38.i.i, i32 8
  %prev.i.i.i.i39.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i38.i.i, i32 0, i32 1
  %resources.i.i.i40.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i38.i.i, i32 0, i32 10
  %prev.i2.i.i.i41.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i38.i.i, i32 0, i32 10, i32 1
  %len7.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i37.i.i, i32 0, i32 2
  %rx_buf.i43.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i37.i.i, i32 0, i32 1, i32 1
  %len10.i.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i37.i.i, i32 0, i32 1, i32 2
  %transfer_list.i.i44.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i37.i.i, i32 0, i32 18
  %prev3.i.i.i.i46.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i37.i.i, i32 0, i32 18, i32 1
  %transfer_list.i1.i.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i37.i.i, i32 0, i32 1, i32 18
  %prev3.i.i.i4.i.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i37.i.i, i32 0, i32 1, i32 18, i32 1
  %curr_len.i.i = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 5
  %73 = getelementptr inbounds i8, ptr %transfer.i48.i.i, i32 4
  %74 = getelementptr inbounds i8, ptr %msg.i49.i.i, i32 8
  %prev.i.i.i.i50.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i49.i.i, i32 0, i32 1
  %resources.i.i.i51.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i49.i.i, i32 0, i32 10
  %prev.i2.i.i.i52.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i49.i.i, i32 0, i32 10, i32 1
  %len.i54.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i48.i.i, i32 0, i32 2
  %transfer_list.i.i55.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i48.i.i, i32 0, i32 18
  %prev3.i.i.i.i57.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i48.i.i, i32 0, i32 18, i32 1
  %75 = getelementptr inbounds i8, ptr %transfer.i.i120.i, i32 12
  %76 = getelementptr inbounds i8, ptr %msg.i.i121.i, i32 8
  %prev.i.i.i.i.i123.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i121.i, i32 0, i32 1
  %resources.i.i.i.i124.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i121.i, i32 0, i32 10
  %prev.i2.i.i.i.i125.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i121.i, i32 0, i32 10, i32 1
  %rx_buf.i.i128.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i120.i, i32 0, i32 1
  %len.i.i129.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i120.i, i32 0, i32 2
  %transfer_list.i.i.i130.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i120.i, i32 0, i32 18
  %prev3.i.i.i.i.i132.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i120.i, i32 0, i32 18, i32 1
  %port_status.i = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %77 = getelementptr inbounds i8, ptr %transfer.i.i401, i32 4
  %78 = getelementptr inbounds i8, ptr %msg.i.i402, i32 8
  %prev.i.i.i.i.i404 = getelementptr inbounds %struct.list_head, ptr %msg.i.i402, i32 0, i32 1
  %resources.i.i.i.i405 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i402, i32 0, i32 10
  %prev.i2.i.i.i.i406 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i402, i32 0, i32 10, i32 1
  %len.i.i409 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i401, i32 0, i32 2
  %transfer_list.i.i.i410 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i401, i32 0, i32 18
  %prev3.i.i.i.i.i412 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i401, i32 0, i32 18, i32 1
  %79 = getelementptr inbounds i8, ptr %transfer.i1.i, i32 4
  %80 = getelementptr inbounds i8, ptr %msg.i2.i, i32 8
  %prev.i.i.i.i3.i = getelementptr inbounds %struct.list_head, ptr %msg.i2.i, i32 0, i32 1
  %resources.i.i.i4.i = getelementptr inbounds %struct.spi_message, ptr %msg.i2.i, i32 0, i32 10
  %prev.i2.i.i.i5.i = getelementptr inbounds %struct.spi_message, ptr %msg.i2.i, i32 0, i32 10, i32 1
  %len.i8.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i1.i, i32 0, i32 2
  %transfer_list.i.i9.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i1.i, i32 0, i32 18
  %prev3.i.i.i.i11.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i1.i, i32 0, i32 18, i32 1
  %81 = getelementptr inbounds i8, ptr %transfer.i15.i, i32 12
  %82 = getelementptr inbounds i8, ptr %msg.i16.i, i32 8
  %prev.i.i.i.i17.i = getelementptr inbounds %struct.list_head, ptr %msg.i16.i, i32 0, i32 1
  %resources.i.i.i18.i = getelementptr inbounds %struct.spi_message, ptr %msg.i16.i, i32 0, i32 10
  %prev.i2.i.i.i19.i = getelementptr inbounds %struct.spi_message, ptr %msg.i16.i, i32 0, i32 10, i32 1
  %rx_buf.i.i417 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i15.i, i32 0, i32 1
  %len.i21.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i15.i, i32 0, i32 2
  %transfer_list.i.i22.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i15.i, i32 0, i32 18
  %prev3.i.i.i.i24.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i15.i, i32 0, i32 18, i32 1
  %mode.i = getelementptr inbounds %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 15
  %83 = getelementptr inbounds i8, ptr %transfer.i26.i, i32 4
  %84 = getelementptr inbounds i8, ptr %msg.i27.i, i32 8
  %prev.i.i.i.i28.i = getelementptr inbounds %struct.list_head, ptr %msg.i27.i, i32 0, i32 1
  %resources.i.i.i29.i = getelementptr inbounds %struct.spi_message, ptr %msg.i27.i, i32 0, i32 10
  %prev.i2.i.i.i30.i = getelementptr inbounds %struct.spi_message, ptr %msg.i27.i, i32 0, i32 10, i32 1
  %len.i33.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i26.i, i32 0, i32 2
  %transfer_list.i.i34.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i26.i, i32 0, i32 18
  %prev3.i.i.i.i36.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i26.i, i32 0, i32 18, i32 1
  %85 = getelementptr inbounds i8, ptr %transfer.i40.i, i32 4
  %86 = getelementptr inbounds i8, ptr %msg.i41.i, i32 8
  %prev.i.i.i.i42.i = getelementptr inbounds %struct.list_head, ptr %msg.i41.i, i32 0, i32 1
  %resources.i.i.i43.i = getelementptr inbounds %struct.spi_message, ptr %msg.i41.i, i32 0, i32 10
  %prev.i2.i.i.i44.i = getelementptr inbounds %struct.spi_message, ptr %msg.i41.i, i32 0, i32 10, i32 1
  %len.i47.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i40.i, i32 0, i32 2
  %transfer_list.i.i48.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i40.i, i32 0, i32 18
  %prev3.i.i.i.i50.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i40.i, i32 0, i32 18, i32 1
  %87 = getelementptr inbounds i8, ptr %transfer.i54.i, i32 4
  %88 = getelementptr inbounds i8, ptr %msg.i55.i, i32 8
  %prev.i.i.i.i56.i = getelementptr inbounds %struct.list_head, ptr %msg.i55.i, i32 0, i32 1
  %resources.i.i.i57.i = getelementptr inbounds %struct.spi_message, ptr %msg.i55.i, i32 0, i32 10
  %prev.i2.i.i.i58.i = getelementptr inbounds %struct.spi_message, ptr %msg.i55.i, i32 0, i32 10, i32 1
  %len.i61.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i54.i, i32 0, i32 2
  %transfer_list.i.i62.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i54.i, i32 0, i32 18
  %prev3.i.i.i.i64.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i54.i, i32 0, i32 18, i32 1
  %89 = getelementptr inbounds i8, ptr %transfer.i68.i, i32 4
  %90 = getelementptr inbounds i8, ptr %msg.i69.i, i32 8
  %prev.i.i.i.i70.i = getelementptr inbounds %struct.list_head, ptr %msg.i69.i, i32 0, i32 1
  %resources.i.i.i71.i = getelementptr inbounds %struct.spi_message, ptr %msg.i69.i, i32 0, i32 10
  %prev.i2.i.i.i72.i = getelementptr inbounds %struct.spi_message, ptr %msg.i69.i, i32 0, i32 10, i32 1
  %len.i75.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i68.i, i32 0, i32 2
  %transfer_list.i.i76.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i68.i, i32 0, i32 18
  %prev3.i.i.i.i78.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i68.i, i32 0, i32 18, i32 1
  %91 = getelementptr inbounds i8, ptr %transfer.i82.i, i32 4
  %92 = getelementptr inbounds i8, ptr %msg.i83.i, i32 8
  %prev.i.i.i.i84.i = getelementptr inbounds %struct.list_head, ptr %msg.i83.i, i32 0, i32 1
  %resources.i.i.i85.i = getelementptr inbounds %struct.spi_message, ptr %msg.i83.i, i32 0, i32 10
  %prev.i2.i.i.i86.i = getelementptr inbounds %struct.spi_message, ptr %msg.i83.i, i32 0, i32 10, i32 1
  %len.i89.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i82.i, i32 0, i32 2
  %transfer_list.i.i90.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i82.i, i32 0, i32 18
  %prev3.i.i.i.i92.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i82.i, i32 0, i32 18, i32 1
  %93 = getelementptr inbounds i8, ptr %transfer.i425, i32 4
  %94 = getelementptr inbounds i8, ptr %msg.i426, i32 8
  %prev.i.i.i.i427 = getelementptr inbounds %struct.list_head, ptr %msg.i426, i32 0, i32 1
  %resources.i.i.i428 = getelementptr inbounds %struct.spi_message, ptr %msg.i426, i32 0, i32 10
  %prev.i2.i.i.i429 = getelementptr inbounds %struct.spi_message, ptr %msg.i426, i32 0, i32 10, i32 1
  %len.i432 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i425, i32 0, i32 2
  %transfer_list.i.i433 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i425, i32 0, i32 18
  %prev3.i.i.i.i435 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i425, i32 0, i32 18, i32 1
  %95 = getelementptr inbounds i8, ptr %transfer.i439, i32 12
  %96 = getelementptr inbounds i8, ptr %msg.i440, i32 8
  %prev.i.i.i.i441 = getelementptr inbounds %struct.list_head, ptr %msg.i440, i32 0, i32 1
  %resources.i.i.i442 = getelementptr inbounds %struct.spi_message, ptr %msg.i440, i32 0, i32 10
  %prev.i2.i.i.i443 = getelementptr inbounds %struct.spi_message, ptr %msg.i440, i32 0, i32 10, i32 1
  %rx_buf.i446 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i439, i32 0, i32 1
  %len.i447 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i439, i32 0, i32 2
  %transfer_list.i.i448 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i439, i32 0, i32 18
  %prev3.i.i.i.i450 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i439, i32 0, i32 18, i32 1
  %97 = getelementptr inbounds i8, ptr %transfer.i455, i32 4
  %98 = getelementptr inbounds i8, ptr %msg.i456, i32 8
  %prev.i.i.i.i457 = getelementptr inbounds %struct.list_head, ptr %msg.i456, i32 0, i32 1
  %resources.i.i.i458 = getelementptr inbounds %struct.spi_message, ptr %msg.i456, i32 0, i32 10
  %prev.i2.i.i.i459 = getelementptr inbounds %struct.spi_message, ptr %msg.i456, i32 0, i32 10, i32 1
  %len.i463 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i455, i32 0, i32 2
  %transfer_list.i.i464 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i455, i32 0, i32 18
  %prev3.i.i.i.i466 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i455, i32 0, i32 18, i32 1
  %arrayidx = getelementptr %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 16, i32 0
  %arrayidx.1 = getelementptr %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 16, i32 1
  br label %while.body22

while.body22:                                     ; preds = %if.end217.while.body22_crit_edge, %while.body22.lr.ph
  %i_worked.0476 = phi i32 [ 1, %while.body22.lr.ph ], [ %i_worked.5, %if.end217.while.body22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i_worked.0476)
  %tobool.not = icmp eq i32 %i_worked.0476, 0
  br i1 %tobool.not, label %if.then23, label %while.body22.if.end169_crit_edge

while.body22.if.end169_crit_edge:                 ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then23:                                        ; preds = %while.body22
  %99 = ptrtoint ptr %hien to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %hien, align 4
  %101 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i364) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i365) #10
  %103 = call ptr @memset(ptr %61, i32 0, i32 92)
  %104 = call ptr @memset(ptr %62, i32 0, i32 40)
  %105 = ptrtoint ptr %msg.i365 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %msg.i365, ptr %msg.i365, align 4
  %106 = ptrtoint ptr %prev.i.i.i.i366 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %msg.i365, ptr %prev.i.i.i.i366, align 4
  %107 = ptrtoint ptr %resources.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %resources.i.i.i367, ptr %resources.i.i.i367, align 4
  %108 = ptrtoint ptr %prev.i2.i.i.i368 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %resources.i.i.i367, ptr %prev.i2.i.i.i368, align 4
  %109 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tx.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -46, ptr %110, align 1
  %112 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i370 = getelementptr [2 x i8], ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx4.i370 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %100, ptr %arrayidx4.i370, align 1
  %114 = load ptr, ptr %tx.i, align 4
  %115 = ptrtoint ptr %transfer.i364 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %transfer.i364, align 4
  %116 = ptrtoint ptr %len.i371 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 2, ptr %len.i371, align 4
  %117 = load ptr, ptr %prev.i.i.i.i366, align 4
  %call.i.i.i.i373 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i372, ptr noundef %117, ptr noundef nonnull %msg.i365) #10
  br i1 %call.i.i.i.i373, label %if.end.i.i.i.i375, label %if.then23.spi_wr8.exit377_crit_edge

if.then23.spi_wr8.exit377_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit377

if.end.i.i.i.i375:                                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %prev.i.i.i.i366 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %transfer_list.i.i372, ptr %prev.i.i.i.i366, align 4
  %119 = ptrtoint ptr %transfer_list.i.i372 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %msg.i365, ptr %transfer_list.i.i372, align 4
  %120 = ptrtoint ptr %prev3.i.i.i.i374 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev3.i.i.i.i374, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %transfer_list.i.i372, ptr %117, align 4
  br label %spi_wr8.exit377

spi_wr8.exit377:                                  ; preds = %if.end.i.i.i.i375, %if.then23.spi_wr8.exit377_crit_edge
  %call7.i376 = call i32 @spi_sync(ptr noundef %102, ptr noundef nonnull %msg.i365) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i365) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i364) #10
  br label %__here

__here:                                           ; preds = %spi_wr8.exit377
  %122 = call i32 @llvm.read_register.i32(metadata !163) #10
  %and.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 212
  %126 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 ptrtoint (ptr blockaddress(@max3421_spi_thread, %__here) to i32), ptr %task_state_change, align 4
  %127 = load ptr, ptr %task, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 1, ptr %127, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !174
  %call92 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %todo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %__here.if.end96_crit_edge, label %if.then94

__here.if.end96_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then94:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %130) #10
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %__here.if.end96_crit_edge
  call void @schedule() #10
  br label %__here148

__here148:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %task, align 8
  %task_state_change152 = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 212
  %133 = ptrtoint ptr %task_state_change152 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 ptrtoint (ptr blockaddress(@max3421_spi_thread, %__here148) to i32), ptr %task_state_change152, align 4
  %134 = load ptr, ptr %task, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 0, ptr %134, align 128
  br label %if.end169

if.end169:                                        ; preds = %__here148, %while.body22.if.end169_crit_edge
  %136 = ptrtoint ptr %urb_done to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %urb_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool170.not = icmp eq i32 %137, 0
  br i1 %tobool170.not, label %if.else, label %if.then171

if.then171:                                       ; preds = %if.end169
  %138 = ptrtoint ptr %urb_done to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %urb_done, align 4
  store i32 0, ptr %urb_done, align 4
  %140 = ptrtoint ptr %curr_urb.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %curr_urb.i, align 4
  %tobool.not.i = icmp eq ptr %141, null
  br i1 %tobool.not.i, label %if.then171.if.end183_crit_edge, label %if.then2.i

if.then171.if.end183_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.then2.i:                                       ; preds = %if.then171
  %142 = call i32 @llvm.smin.i32(i32 %139, i32 0) #10
  %143 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  %145 = call ptr @memset(ptr %63, i32 0, i32 84)
  %146 = call ptr @memset(ptr %64, i32 0, i32 40)
  %147 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %148 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %149 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %150 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %151 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tx.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -8, ptr %152, align 1
  %154 = load ptr, ptr %tx.i, align 4
  %155 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %transfer.i.i, align 4
  %156 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rx.i.i, align 4
  %158 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %rx_buf.i.i, align 4
  %159 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %len.i.i, align 4
  %160 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef %160, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then2.i.spi_rd8.exit.i_crit_edge

if.then2.i.spi_rd8.exit.i_crit_edge:              ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %162 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %163 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %160, ptr %prev3.i.i.i.i.i, align 4
  %164 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %transfer_list.i.i.i, ptr %160, align 4
  br label %spi_rd8.exit.i

spi_rd8.exit.i:                                   ; preds = %if.end.i.i.i.i.i, %if.then2.i.spi_rd8.exit.i_crit_edge
  %call6.i.i = call i32 @spi_sync(ptr noundef %144, ptr noundef nonnull %msg.i.i) #10
  %165 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rx.i.i, align 4
  %arrayidx9.i.i = getelementptr [2 x i8], ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx9.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #10
  %conv.i = zext i8 %168 to i32
  %169 = lshr i32 %conv.i, 4
  %and.i378 = and i32 %169, 1
  %170 = lshr i32 %conv.i, 5
  %and6.i = and i32 %170, 1
  %ep.i = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 9
  %171 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ep.i, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %bEndpointAddress.i.i, align 1
  %175 = and i8 %174, 15
  %and.i.i = zext i8 %175 to i32
  %dev.i = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 8
  %176 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev.i, align 4
  %toggle.i = getelementptr inbounds %struct.usb_device, ptr %177, i32 0, i32 10
  %178 = ptrtoint ptr %toggle.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %toggle.i, align 4
  %shl.i = shl nuw nsw i32 1, %and.i.i
  %neg.i = xor i32 %shl.i, -1
  %and8.i = and i32 %179, %neg.i
  %shl9.i = shl nuw nsw i32 %and.i378, %and.i.i
  %or.i = or i32 %and8.i, %shl9.i
  store i32 %or.i, ptr %toggle.i, align 4
  %180 = load ptr, ptr %dev.i, align 4
  %arrayidx15.i = getelementptr %struct.usb_device, ptr %180, i32 0, i32 10, i32 1
  %181 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx15.i, align 4
  %and18.i = and i32 %182, %neg.i
  %shl19.i = shl nuw nsw i32 %and6.i, %and.i.i
  %or20.i = or i32 %and18.i, %shl19.i
  store i32 %or20.i, ptr %arrayidx15.i, align 4
  %183 = ptrtoint ptr %curr_urb.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %curr_urb.i, align 4
  %call29.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %dev_id, ptr noundef nonnull %141) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call29.i) #10
  call void @usb_hcd_giveback_urb(ptr noundef %dev_id, ptr noundef nonnull %141, i32 noundef %142) #10
  br label %if.end183

if.else:                                          ; preds = %if.end169
  %184 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i379) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i380) #10
  %186 = call ptr @memset(ptr %65, i32 0, i32 84)
  %187 = call ptr @memset(ptr %66, i32 0, i32 40)
  %188 = ptrtoint ptr %msg.i.i380 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %msg.i.i380, ptr %msg.i.i380, align 4
  %189 = ptrtoint ptr %prev.i.i.i.i.i382 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %msg.i.i380, ptr %prev.i.i.i.i.i382, align 4
  %190 = ptrtoint ptr %resources.i.i.i.i383 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %resources.i.i.i.i383, ptr %resources.i.i.i.i383, align 4
  %191 = ptrtoint ptr %prev.i2.i.i.i.i384 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %resources.i.i.i.i383, ptr %prev.i2.i.i.i.i384, align 4
  %192 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %tx.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 -56, ptr %193, align 1
  %195 = load ptr, ptr %tx.i, align 4
  %196 = ptrtoint ptr %transfer.i.i379 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %195, ptr %transfer.i.i379, align 4
  %197 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rx.i.i, align 4
  %199 = ptrtoint ptr %rx_buf.i.i387 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %198, ptr %rx_buf.i.i387, align 4
  %200 = ptrtoint ptr %len.i.i388 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 2, ptr %len.i.i388, align 4
  %201 = load ptr, ptr %prev.i.i.i.i.i382, align 4
  %call.i.i.i.i.i390 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i389, ptr noundef %201, ptr noundef nonnull %msg.i.i380) #10
  br i1 %call.i.i.i.i.i390, label %if.end.i.i.i.i.i392, label %if.else.spi_rd8.exit.i396_crit_edge

if.else.spi_rd8.exit.i396_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i396

if.end.i.i.i.i.i392:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %prev.i.i.i.i.i382 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %transfer_list.i.i.i389, ptr %prev.i.i.i.i.i382, align 4
  %203 = ptrtoint ptr %transfer_list.i.i.i389 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %msg.i.i380, ptr %transfer_list.i.i.i389, align 4
  %204 = ptrtoint ptr %prev3.i.i.i.i.i391 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev3.i.i.i.i.i391, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %transfer_list.i.i.i389, ptr %201, align 4
  br label %spi_rd8.exit.i396

spi_rd8.exit.i396:                                ; preds = %if.end.i.i.i.i.i392, %if.else.spi_rd8.exit.i396_crit_edge
  %call6.i.i393 = call i32 @spi_sync(ptr noundef %185, ptr noundef nonnull %msg.i.i380) #10
  %206 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rx.i.i, align 4
  %arrayidx9.i.i394 = getelementptr [2 x i8], ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %arrayidx9.i.i394 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx9.i.i394, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i380) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i379) #10
  %210 = ptrtoint ptr %hien to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %hien, align 4
  %and108.i = and i8 %211, %209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and108.i)
  %tobool.not.i395 = icmp eq i8 %and108.i, 0
  br i1 %tobool.not.i395, label %if.else176, label %if.end.i

if.end.i:                                         ; preds = %spi_rd8.exit.i396
  %conv4.i = zext i8 %and108.i to i32
  %and5.i = and i8 %and108.i, -13
  %212 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i109.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i110.i) #10
  %214 = call ptr @memset(ptr %67, i32 0, i32 92)
  %215 = call ptr @memset(ptr %68, i32 0, i32 40)
  %216 = ptrtoint ptr %msg.i110.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile ptr %msg.i110.i, ptr %msg.i110.i, align 4
  %217 = ptrtoint ptr %prev.i.i.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %msg.i110.i, ptr %prev.i.i.i.i111.i, align 4
  %218 = ptrtoint ptr %resources.i.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %resources.i.i.i112.i, ptr %resources.i.i.i112.i, align 4
  %219 = ptrtoint ptr %prev.i2.i.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %resources.i.i.i112.i, ptr %prev.i2.i.i.i113.i, align 4
  %220 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %tx.i, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 -54, ptr %221, align 1
  %223 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i.i = getelementptr [2 x i8], ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %and5.i, ptr %arrayidx4.i.i, align 1
  %225 = load ptr, ptr %tx.i, align 4
  %226 = ptrtoint ptr %transfer.i109.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %225, ptr %transfer.i109.i, align 4
  %227 = ptrtoint ptr %len.i115.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 2, ptr %len.i115.i, align 4
  %228 = load ptr, ptr %prev.i.i.i.i111.i, align 4
  %call.i.i.i.i117.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i116.i, ptr noundef %228, ptr noundef nonnull %msg.i110.i) #10
  br i1 %call.i.i.i.i117.i, label %if.end.i.i.i.i119.i, label %if.end.i.spi_wr8.exit.i_crit_edge

if.end.i.spi_wr8.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i

if.end.i.i.i.i119.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %prev.i.i.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %transfer_list.i.i116.i, ptr %prev.i.i.i.i111.i, align 4
  %230 = ptrtoint ptr %transfer_list.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %msg.i110.i, ptr %transfer_list.i.i116.i, align 4
  %231 = ptrtoint ptr %prev3.i.i.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %228, ptr %prev3.i.i.i.i118.i, align 4
  %232 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %232)
  store volatile ptr %transfer_list.i.i116.i, ptr %228, align 4
  br label %spi_wr8.exit.i

spi_wr8.exit.i:                                   ; preds = %if.end.i.i.i.i119.i, %if.end.i.spi_wr8.exit.i_crit_edge
  %call7.i.i = call i32 @spi_sync(ptr noundef %213, ptr noundef nonnull %msg.i110.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i110.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i109.i) #10
  %and8.i397 = and i32 %conv4.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i397)
  %tobool9.not.i = icmp eq i32 %and8.i397, 0
  br i1 %tobool9.not.i, label %spi_wr8.exit.i.if.end15.i_crit_edge, label %if.then10.i

spi_wr8.exit.i.if.end15.i_crit_edge:              ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then10.i:                                      ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %233 = ptrtoint ptr %frame_number.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %frame_number.i, align 2
  %235 = add i16 %234, 1
  %236 = and i16 %235, 2047
  store i16 %236, ptr %frame_number.i, align 2
  %237 = ptrtoint ptr %sched_pass.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %sched_pass.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %spi_wr8.exit.i.if.end15.i_crit_edge
  %and17.i = and i32 %conv4.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end20.i_crit_edge, label %if.then19.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end15.i
  %238 = ptrtoint ptr %curr_urb.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %curr_urb.i, align 4
  %240 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  %242 = call ptr @memset(ptr %69, i32 0, i32 84)
  %243 = call ptr @memset(ptr %70, i32 0, i32 40)
  %244 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %245 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %246 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %247 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %248 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %tx.i, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 48, ptr %249, align 1
  %251 = load ptr, ptr %tx.i, align 4
  %252 = ptrtoint ptr %transfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %251, ptr %transfer.i.i.i, align 4
  %253 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %rx.i.i, align 4
  %255 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %254, ptr %rx_buf.i.i.i, align 4
  %256 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 2, ptr %len.i.i.i, align 4
  %257 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef %257, ptr noundef nonnull %msg.i.i.i) #10
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then19.i.spi_rd8.exit.i.i_crit_edge

if.then19.i.spi_rd8.exit.i.i_crit_edge:           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  %258 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %259 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %260 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %257, ptr %prev3.i.i.i.i.i.i, align 4
  %261 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %261)
  store volatile ptr %transfer_list.i.i.i.i, ptr %257, align 4
  br label %spi_rd8.exit.i.i

spi_rd8.exit.i.i:                                 ; preds = %if.end.i.i.i.i.i.i, %if.then19.i.spi_rd8.exit.i.i_crit_edge
  %call6.i.i.i = call i32 @spi_sync(ptr noundef %241, ptr noundef nonnull %msg.i.i.i) #10
  %262 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %rx.i.i, align 4
  %arrayidx9.i.i.i = getelementptr [2 x i8], ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx9.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i.i) #10
  %266 = call i8 @llvm.umin.i8(i8 %265, i8 64) #10
  %actual_length.i.i = getelementptr inbounds %struct.urb, ptr %239, i32 0, i32 20
  %267 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %actual_length.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %239, i32 0, i32 19
  %269 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %transfer_buffer_length.i.i, align 4
  %271 = call i32 @llvm.usub.sat.i32(i32 %270, i32 %268) #10
  %conv9.i.i = zext i8 %266 to i32
  %272 = call i32 @llvm.umin.i32(i32 %271, i32 %conv9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp14.not.i.i = icmp eq i32 %272, 0
  br i1 %cmp14.not.i.i, label %spi_rd8.exit.i.i.if.end19.i.i_crit_edge, label %if.then16.i.i

spi_rd8.exit.i.i.if.end19.i.i_crit_edge:          ; preds = %spi_rd8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

if.then16.i.i:                                    ; preds = %spi_rd8.exit.i.i
  %transfer_buffer.i.i = getelementptr inbounds %struct.urb, ptr %239, i32 0, i32 14
  %273 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %transfer_buffer.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %274, i32 %268
  %275 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer.i37.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i38.i.i) #10
  %277 = call ptr @memset(ptr %71, i32 0, i32 188)
  %278 = call ptr @memset(ptr %72, i32 0, i32 40)
  %279 = ptrtoint ptr %msg.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store volatile ptr %msg.i38.i.i, ptr %msg.i38.i.i, align 4
  %280 = ptrtoint ptr %prev.i.i.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %msg.i38.i.i, ptr %prev.i.i.i.i39.i.i, align 4
  %281 = ptrtoint ptr %resources.i.i.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile ptr %resources.i.i.i40.i.i, ptr %resources.i.i.i40.i.i, align 4
  %282 = ptrtoint ptr %prev.i2.i.i.i41.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %resources.i.i.i40.i.i, ptr %prev.i2.i.i.i41.i.i, align 4
  %283 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %tx.i, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 8, ptr %284, align 1
  %286 = load ptr, ptr %tx.i, align 4
  %287 = ptrtoint ptr %transfer.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %286, ptr %transfer.i37.i.i, align 4
  %288 = ptrtoint ptr %len7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 1, ptr %len7.i.i.i, align 4
  %289 = ptrtoint ptr %rx_buf.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %add.ptr.i.i, ptr %rx_buf.i43.i.i, align 4
  %290 = ptrtoint ptr %len10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %272, ptr %len10.i.i.i, align 4
  %291 = load ptr, ptr %prev.i.i.i.i39.i.i, align 4
  %call.i.i.i.i45.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i44.i.i, ptr noundef %291, ptr noundef nonnull %msg.i38.i.i) #10
  br i1 %call.i.i.i.i45.i.i, label %if.end.i.i.i.i47.i.i, label %if.then16.i.i.spi_message_add_tail.exit.i.i.i_crit_edge

if.then16.i.i.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i47.i.i:                             ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %292 = ptrtoint ptr %prev.i.i.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %transfer_list.i.i44.i.i, ptr %prev.i.i.i.i39.i.i, align 4
  %293 = ptrtoint ptr %transfer_list.i.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %msg.i38.i.i, ptr %transfer_list.i.i44.i.i, align 4
  %294 = ptrtoint ptr %prev3.i.i.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %291, ptr %prev3.i.i.i.i46.i.i, align 4
  %295 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %295)
  store volatile ptr %transfer_list.i.i44.i.i, ptr %291, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i47.i.i, %if.then16.i.i.spi_message_add_tail.exit.i.i.i_crit_edge
  %296 = ptrtoint ptr %prev.i.i.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %prev.i.i.i.i39.i.i, align 4
  %call.i.i.i3.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i1.i.i.i, ptr noundef %297, ptr noundef nonnull %msg.i38.i.i) #10
  br i1 %call.i.i.i3.i.i.i, label %if.end.i.i.i5.i.i.i, label %spi_message_add_tail.exit.i.i.i.spi_rd_buf.exit.i.i_crit_edge

spi_message_add_tail.exit.i.i.i.spi_rd_buf.exit.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd_buf.exit.i.i

if.end.i.i.i5.i.i.i:                              ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %298 = ptrtoint ptr %prev.i.i.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %transfer_list.i1.i.i.i, ptr %prev.i.i.i.i39.i.i, align 4
  %299 = ptrtoint ptr %transfer_list.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %msg.i38.i.i, ptr %transfer_list.i1.i.i.i, align 4
  %300 = ptrtoint ptr %prev3.i.i.i4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %297, ptr %prev3.i.i.i4.i.i.i, align 4
  %301 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile ptr %transfer_list.i1.i.i.i, ptr %297, align 4
  br label %spi_rd_buf.exit.i.i

spi_rd_buf.exit.i.i:                              ; preds = %if.end.i.i.i5.i.i.i, %spi_message_add_tail.exit.i.i.i.spi_rd_buf.exit.i.i_crit_edge
  %call13.i.i.i = call i32 @spi_sync(ptr noundef %276, ptr noundef nonnull %msg.i38.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i38.i.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer.i37.i.i) #10
  %302 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %actual_length.i.i, align 4
  %add.i.i = add i32 %303, %272
  store i32 %add.i.i, ptr %actual_length.i.i, align 4
  %304 = ptrtoint ptr %curr_len.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %272, ptr %curr_len.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %spi_rd_buf.exit.i.i, %spi_rd8.exit.i.i.if.end19.i.i_crit_edge
  %305 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i48.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i49.i.i) #10
  %307 = call ptr @memset(ptr %73, i32 0, i32 92)
  %308 = call ptr @memset(ptr %74, i32 0, i32 40)
  %309 = ptrtoint ptr %msg.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile ptr %msg.i49.i.i, ptr %msg.i49.i.i, align 4
  %310 = ptrtoint ptr %prev.i.i.i.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %msg.i49.i.i, ptr %prev.i.i.i.i50.i.i, align 4
  %311 = ptrtoint ptr %resources.i.i.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store volatile ptr %resources.i.i.i51.i.i, ptr %resources.i.i.i51.i.i, align 4
  %312 = ptrtoint ptr %prev.i2.i.i.i52.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %resources.i.i.i51.i.i, ptr %prev.i2.i.i.i52.i.i, align 4
  %313 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %tx.i, align 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 -54, ptr %314, align 1
  %316 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i.i.i = getelementptr [2 x i8], ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 4, ptr %arrayidx4.i.i.i, align 1
  %318 = load ptr, ptr %tx.i, align 4
  %319 = ptrtoint ptr %transfer.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %318, ptr %transfer.i48.i.i, align 4
  %320 = ptrtoint ptr %len.i54.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 2, ptr %len.i54.i.i, align 4
  %321 = load ptr, ptr %prev.i.i.i.i50.i.i, align 4
  %call.i.i.i.i56.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i55.i.i, ptr noundef %321, ptr noundef nonnull %msg.i49.i.i) #10
  br i1 %call.i.i.i.i56.i.i, label %if.end.i.i.i.i58.i.i, label %if.end19.i.i.max3421_recv_data_available.exit.i_crit_edge

if.end19.i.i.max3421_recv_data_available.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max3421_recv_data_available.exit.i

if.end.i.i.i.i58.i.i:                             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %322 = ptrtoint ptr %prev.i.i.i.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %transfer_list.i.i55.i.i, ptr %prev.i.i.i.i50.i.i, align 4
  %323 = ptrtoint ptr %transfer_list.i.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %msg.i49.i.i, ptr %transfer_list.i.i55.i.i, align 4
  %324 = ptrtoint ptr %prev3.i.i.i.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %321, ptr %prev3.i.i.i.i57.i.i, align 4
  %325 = ptrtoint ptr %321 to i32
  call void @__asan_store4_noabort(i32 %325)
  store volatile ptr %transfer_list.i.i55.i.i, ptr %321, align 4
  br label %max3421_recv_data_available.exit.i

max3421_recv_data_available.exit.i:               ; preds = %if.end.i.i.i.i58.i.i, %if.end19.i.i.max3421_recv_data_available.exit.i_crit_edge
  %call7.i.i.i = call i32 @spi_sync(ptr noundef %306, ptr noundef nonnull %msg.i49.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i49.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i48.i.i) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %max3421_recv_data_available.exit.i, %if.end15.i.if.end20.i_crit_edge
  %and22.i = and i32 %conv4.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then24.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end20.i
  %326 = ptrtoint ptr %curr_urb.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %curr_urb.i, align 4
  %328 = ptrtoint ptr %hien to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %hien, align 4
  %330 = and i8 %329, 123
  store i8 %330, ptr %hien, align 4
  %331 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i120.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i121.i) #10
  %333 = call ptr @memset(ptr %75, i32 0, i32 84)
  %334 = call ptr @memset(ptr %76, i32 0, i32 40)
  %335 = ptrtoint ptr %msg.i.i121.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store volatile ptr %msg.i.i121.i, ptr %msg.i.i121.i, align 4
  %336 = ptrtoint ptr %prev.i.i.i.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %msg.i.i121.i, ptr %prev.i.i.i.i.i123.i, align 4
  %337 = ptrtoint ptr %resources.i.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store volatile ptr %resources.i.i.i.i124.i, ptr %resources.i.i.i.i124.i, align 4
  %338 = ptrtoint ptr %prev.i2.i.i.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %resources.i.i.i.i124.i, ptr %prev.i2.i.i.i.i125.i, align 4
  %339 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %tx.i, align 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 -8, ptr %340, align 1
  %342 = load ptr, ptr %tx.i, align 4
  %343 = ptrtoint ptr %transfer.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %342, ptr %transfer.i.i120.i, align 4
  %344 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %rx.i.i, align 4
  %346 = ptrtoint ptr %rx_buf.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %345, ptr %rx_buf.i.i128.i, align 4
  %347 = ptrtoint ptr %len.i.i129.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 2, ptr %len.i.i129.i, align 4
  %348 = load ptr, ptr %prev.i.i.i.i.i123.i, align 4
  %call.i.i.i.i.i131.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i130.i, ptr noundef %348, ptr noundef nonnull %msg.i.i121.i) #10
  br i1 %call.i.i.i.i.i131.i, label %if.end.i.i.i.i.i133.i, label %if.then24.i.spi_rd8.exit.i136.i_crit_edge

if.then24.i.spi_rd8.exit.i136.i_crit_edge:        ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i136.i

if.end.i.i.i.i.i133.i:                            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  %349 = ptrtoint ptr %prev.i.i.i.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %transfer_list.i.i.i130.i, ptr %prev.i.i.i.i.i123.i, align 4
  %350 = ptrtoint ptr %transfer_list.i.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %msg.i.i121.i, ptr %transfer_list.i.i.i130.i, align 4
  %351 = ptrtoint ptr %prev3.i.i.i.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %348, ptr %prev3.i.i.i.i.i132.i, align 4
  %352 = ptrtoint ptr %348 to i32
  call void @__asan_store4_noabort(i32 %352)
  store volatile ptr %transfer_list.i.i.i130.i, ptr %348, align 4
  br label %spi_rd8.exit.i136.i

spi_rd8.exit.i136.i:                              ; preds = %if.end.i.i.i.i.i133.i, %if.then24.i.spi_rd8.exit.i136.i_crit_edge
  %call6.i.i134.i = call i32 @spi_sync(ptr noundef %332, ptr noundef nonnull %msg.i.i121.i) #10
  %353 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %rx.i.i, align 4
  %arrayidx9.i.i135.i = getelementptr [2 x i8], ptr %354, i32 0, i32 1
  %355 = ptrtoint ptr %arrayidx9.i.i135.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx9.i.i135.i, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i121.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i120.i) #10
  %357 = and i8 %356, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %cmp.not.i.i = icmp eq i8 %357, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !175

if.then.i.i:                                      ; preds = %spi_rd8.exit.i136.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @max3421_handle_error(ptr noundef %dev_id, i8 noundef zeroext %356) #10
  br label %if.end25.i

if.end.i.i:                                       ; preds = %spi_rd8.exit.i136.i
  %ep.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 9
  %358 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %ep.i.i, align 4
  %hcpriv.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %359, i32 0, i32 5
  %360 = ptrtoint ptr %hcpriv.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %hcpriv.i.i, align 4
  %naks.i.i = getelementptr inbounds %struct.max3421_ep, ptr %361, i32 0, i32 2
  %362 = ptrtoint ptr %naks.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 0, ptr %naks.i.i, align 4
  %retries.i.i = getelementptr inbounds %struct.max3421_ep, ptr %361, i32 0, i32 5
  %363 = ptrtoint ptr %retries.i.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 0, ptr %retries.i.i, align 4
  %pkt_state.i.i = getelementptr inbounds %struct.max3421_ep, ptr %361, i32 0, i32 4
  %364 = ptrtoint ptr %pkt_state.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %pkt_state.i.i, align 4
  %366 = zext i32 %365 to i64
  call void @__sanitizer_cov_trace_switch(i64 %366, ptr @__sancov_gen_cov_switch_values)
  switch i32 %365, label %if.end.i.i.if.else36.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb15.i.i
    i32 2, label %if.end.i.i.if.then34.i.i_crit_edge
  ]

if.end.i.i.if.then34.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34.i.i

if.end.i.i.if.else36.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else36.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer_length.i137.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 19
  %367 = ptrtoint ptr %transfer_buffer_length.i137.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %transfer_buffer_length.i137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %cmp9.not.i.i = icmp eq i32 %368, 0
  %..i.i = select i1 %cmp9.not.i.i, i32 2, i32 1
  br label %if.else36.sink.split.i.i

sw.bb15.i.i:                                      ; preds = %if.end.i.i
  %transfer_flags.i.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 13
  %369 = ptrtoint ptr %transfer_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %transfer_flags.i.i.i, align 4
  %371 = and i32 %370, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool17.not.i.i = icmp eq i32 %371, 0
  br i1 %tobool17.not.i.i, label %if.else20.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %sw.bb15.i.i
  %372 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dev_id, align 8
  %actual_length.i.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 20
  %374 = ptrtoint ptr %actual_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %actual_length.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 19
  %376 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %transfer_buffer_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %375, i32 %377)
  %cmp.not.i.i.i = icmp ult i32 %375, %377
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then18.i.i.land.lhs.true.i.i_crit_edge

if.then18.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.i.i:                                     ; preds = %if.then18.i.i
  %dev.i.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 8
  %378 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %dev.i.i.i, align 4
  %pipe.i.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 10
  %380 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %pipe.i.i.i, align 4
  %382 = lshr i32 %381, 15
  %and.i.i.i.i = and i32 %382, 15
  %and24.i.i.i.i = and i32 %381, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i.i.i)
  %tobool25.not.i.i.i.i = icmp eq i32 %and24.i.i.i.i, 0
  br i1 %tobool25.not.i.i.i.i, label %do.end43.i.i.i.i, label %if.end.i.i.i.if.end49.i.i.i.i_crit_edge, !prof !176

if.end.i.i.i.if.end49.i.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i.i.i

do.end43.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1984, i32 noundef 9, ptr noundef null) #10
  br label %if.end49.i.i.i.i

if.end49.i.i.i.i:                                 ; preds = %do.end43.i.i.i.i, %if.end.i.i.i.if.end49.i.i.i.i_crit_edge
  %arrayidx57.i.i.i.i = getelementptr %struct.usb_device, ptr %379, i32 0, i32 21, i32 %and.i.i.i.i
  %383 = ptrtoint ptr %arrayidx57.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %ep.0.i.i.i.i = load ptr, ptr %arrayidx57.i.i.i.i, align 4
  %tobool59.not.i.i.i.i = icmp eq ptr %ep.0.i.i.i.i, null
  br i1 %tobool59.not.i.i.i.i, label %if.end49.i.i.i.i.if.else36.i.i_crit_edge, label %usb_maxpacket.exit.i.i.i

if.end49.i.i.i.i.if.else36.i.i_crit_edge:         ; preds = %if.end49.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else36.i.i

usb_maxpacket.exit.i.i.i:                         ; preds = %if.end49.i.i.i.i
  %wMaxPacketSize.i.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i.i.i.i, i32 0, i32 4
  %384 = ptrtoint ptr %wMaxPacketSize.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %384, i32 2)
  %385 = load i16, ptr %wMaxPacketSize.i.i.i.i.i, align 1
  %386 = and i16 %385, -249
  %387 = call i16 @llvm.bswap.i16(i16 %386) #10
  %conv.i.i.i = zext i16 %387 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %387)
  %cmp3.i.i.i = icmp ugt i16 %387, 64
  br i1 %cmp3.i.i.i, label %do.end.i.i.i, label %if.end7.i.i.i

do.end.i.i.i:                                     ; preds = %usb_maxpacket.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %373, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %conv.i.i.i, i32 noundef 64) #13
  br label %if.then34.i.i

if.end7.i.i.i:                                    ; preds = %usb_maxpacket.exit.i.i.i
  %388 = ptrtoint ptr %curr_len.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %curr_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %389, i32 %conv.i.i.i)
  %cmp8.i.i.i = icmp ult i32 %389, %conv.i.i.i
  br i1 %cmp8.i.i.i, label %if.then10.i.i.i, label %if.end7.i.i.i.if.else36.i.i_crit_edge

if.end7.i.i.i.if.else36.i.i_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else36.i.i

if.then10.i.i.i:                                  ; preds = %if.end7.i.i.i
  %390 = ptrtoint ptr %transfer_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %transfer_flags.i.i.i, align 4
  %and.i65.i.i = and i32 %391, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i65.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then10.i.i.i.land.lhs.true.i.i_crit_edge, label %if.then10.i.i.i.if.then34.i.i_crit_edge

if.then10.i.i.i.if.then34.i.i_crit_edge:          ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34.i.i

if.then10.i.i.i.land.lhs.true.i.i_crit_edge:      ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.else20.i.i:                                    ; preds = %sw.bb15.i.i
  %392 = ptrtoint ptr %curr_len.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %curr_len.i.i, align 4
  %actual_length.i67.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 20
  %394 = ptrtoint ptr %actual_length.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %actual_length.i67.i.i, align 4
  %add.i.i.i = add i32 %395, %393
  store i32 %add.i.i.i, ptr %actual_length.i67.i.i, align 4
  %transfer_buffer_length.i68.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 19
  %396 = ptrtoint ptr %transfer_buffer_length.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %transfer_buffer_length.i68.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %397)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %397
  br i1 %cmp.i.i.i, label %if.else20.i.i.if.else36.i.i_crit_edge, label %if.end.i72.i.i

if.else20.i.i.if.else36.i.i_crit_edge:            ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else36.i.i

if.end.i72.i.i:                                   ; preds = %if.else20.i.i
  %and.i70.i.i = and i32 %370, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70.i.i)
  %tobool.not.i71.i.i = icmp eq i32 %and.i70.i.i, 0
  br i1 %tobool.not.i71.i.i, label %if.end.i72.i.i.land.lhs.true.i.i_crit_edge, label %if.then2.i.i.i

if.end.i72.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %if.end.i72.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i72.i.i
  %dev.i73.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 8
  %398 = ptrtoint ptr %dev.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %dev.i73.i.i, align 4
  %pipe.i74.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 10
  %400 = ptrtoint ptr %pipe.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %pipe.i74.i.i, align 4
  %402 = lshr i32 %401, 15
  %and.i.i75.i.i = and i32 %402, 15
  %and24.i.i76.i.i = and i32 %401, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i76.i.i)
  %tobool25.not.i.i77.i.i = icmp eq i32 %and24.i.i76.i.i, 0
  br i1 %tobool25.not.i.i77.i.i, label %if.then2.i.i.i.if.end.i.i.i.i398_crit_edge, label %do.end.i.i.i.i, !prof !175

if.then2.i.i.i.if.end.i.i.i.i398_crit_edge:       ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i398

do.end.i.i.i.i:                                   ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1981, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i.i398

if.end.i.i.i.i398:                                ; preds = %do.end.i.i.i.i, %if.then2.i.i.i.if.end.i.i.i.i398_crit_edge
  %arrayidx.i.i.i.i = getelementptr %struct.usb_device, ptr %399, i32 0, i32 22, i32 %and.i.i75.i.i
  %403 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %ep.0.i.i78.i.i = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool59.not.i.i79.i.i = icmp eq ptr %ep.0.i.i78.i.i, null
  br i1 %tobool59.not.i.i79.i.i, label %if.end.i.i.i.i398.usb_maxpacket.exit.i81.i.i_crit_edge, label %if.end61.i.i.i.i

if.end.i.i.i.i398.usb_maxpacket.exit.i81.i.i_crit_edge: ; preds = %if.end.i.i.i.i398
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_maxpacket.exit.i81.i.i

if.end61.i.i.i.i:                                 ; preds = %if.end.i.i.i.i398
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i.i.i80.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i.i78.i.i, i32 0, i32 4
  %404 = ptrtoint ptr %wMaxPacketSize.i.i.i80.i.i to i32
  call void @__asan_loadN_noabort(i32 %404, i32 2)
  %405 = load i16, ptr %wMaxPacketSize.i.i.i80.i.i, align 1
  %406 = and i16 %405, -249
  %407 = call i16 @llvm.bswap.i16(i16 %406) #10
  %phi.cast.i.i.i = zext i16 %407 to i32
  br label %usb_maxpacket.exit.i81.i.i

usb_maxpacket.exit.i81.i.i:                       ; preds = %if.end61.i.i.i.i, %if.end.i.i.i.i398.usb_maxpacket.exit.i81.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %phi.cast.i.i.i, %if.end61.i.i.i.i ], [ 0, %if.end.i.i.i.i398.usb_maxpacket.exit.i81.i.i_crit_edge ]
  %408 = ptrtoint ptr %curr_len.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %curr_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %409, i32 %retval.0.i.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %409, %retval.0.i.i.i.i
  br i1 %cmp5.i.i.i, label %usb_maxpacket.exit.i81.i.i.if.else36.i.i_crit_edge, label %usb_maxpacket.exit.i81.i.i.land.lhs.true.i.i_crit_edge

usb_maxpacket.exit.i81.i.i.land.lhs.true.i.i_crit_edge: ; preds = %usb_maxpacket.exit.i81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

usb_maxpacket.exit.i81.i.i.if.else36.i.i_crit_edge: ; preds = %usb_maxpacket.exit.i81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else36.i.i

land.lhs.true.i.i:                                ; preds = %usb_maxpacket.exit.i81.i.i.land.lhs.true.i.i_crit_edge, %if.end.i72.i.i.land.lhs.true.i.i_crit_edge, %if.then10.i.i.i.land.lhs.true.i.i_crit_edge, %if.then18.i.i.land.lhs.true.i.i_crit_edge
  %pipe.i.i = getelementptr inbounds %struct.urb, ptr %327, i32 0, i32 10
  %410 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %pipe.i.i, align 4
  %shr.mask.i.i = and i32 %411, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i.i)
  %cmp26.i.i = icmp eq i32 %shr.mask.i.i, -2147483648
  br i1 %cmp26.i.i, label %if.then28.i.i, label %land.lhs.true.i.i.if.then34.i.i_crit_edge

land.lhs.true.i.i.if.then34.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34.i.i

if.then28.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %412 = ptrtoint ptr %urb_done to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 0, ptr %urb_done, align 4
  br label %if.else36.sink.split.i.i

if.then34.i.i:                                    ; preds = %land.lhs.true.i.i.if.then34.i.i_crit_edge, %if.then10.i.i.i.if.then34.i.i_crit_edge, %do.end.i.i.i, %if.end.i.i.if.then34.i.i_crit_edge
  %urb_done.190.i.i = phi i32 [ -121, %if.then10.i.i.i.if.then34.i.i_crit_edge ], [ -22, %do.end.i.i.i ], [ 1, %land.lhs.true.i.i.if.then34.i.i_crit_edge ], [ 1, %if.end.i.i.if.then34.i.i_crit_edge ]
  %413 = ptrtoint ptr %urb_done to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %urb_done.190.i.i, ptr %urb_done, align 4
  br label %if.end25.i

if.else36.sink.split.i.i:                         ; preds = %if.then28.i.i, %sw.bb.i.i
  %.sink.i.i = phi i32 [ 2, %if.then28.i.i ], [ %..i.i, %sw.bb.i.i ]
  %414 = ptrtoint ptr %pkt_state.i.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %.sink.i.i, ptr %pkt_state.i.i, align 4
  br label %if.else36.i.i

if.else36.i.i:                                    ; preds = %if.else36.sink.split.i.i, %usb_maxpacket.exit.i81.i.i.if.else36.i.i_crit_edge, %if.else20.i.i.if.else36.i.i_crit_edge, %if.end7.i.i.i.if.else36.i.i_crit_edge, %if.end49.i.i.i.i.if.else36.i.i_crit_edge, %if.end.i.i.if.else36.i.i_crit_edge
  call fastcc void @max3421_next_transfer(ptr noundef %dev_id, i32 noundef 0) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else36.i.i, %if.then34.i.i, %if.then.i.i, %if.end20.i.if.end25.i_crit_edge
  %and27.i = and i32 %conv4.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.do.body31.i_crit_edge, label %if.then29.i

if.end25.i.do.body31.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @max3421_detect_conn(ptr noundef %dev_id) #10
  br label %do.body31.i

do.body31.i:                                      ; preds = %if.then29.i, %if.end25.i.do.body31.i_crit_edge
  %call34.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %415 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %port_status.i, align 4
  %and38.i = and i32 %conv4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body31.i.if.end54.i_crit_edge, label %if.then40.i

do.body31.i.if.end54.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.i

if.then40.i:                                      ; preds = %do.body31.i
  %and42.i = and i32 %416, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %do.end50.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %and46.i = and i32 %416, -19
  %or.i399 = or i32 %and46.i, 2
  %417 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %or.i399, ptr %port_status.i, align 4
  br label %if.end54.i

do.end50.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #13
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.end50.i, %if.then44.i, %do.body31.i.if.end54.i_crit_edge
  %and56.i = and i32 %conv4.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end54.i.if.end64.i_crit_edge, label %do.end61.i

if.end54.i.if.end64.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

do.end61.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60) #13
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end61.i, %if.end54.i.if.end64.i_crit_edge
  %and66.i = and i32 %conv4.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end64.i.max3421_handle_irqs.exit_crit_edge, label %do.end71.i

if.end64.i.max3421_handle_irqs.exit_crit_edge:    ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max3421_handle_irqs.exit

do.end71.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60) #13
  br label %max3421_handle_irqs.exit

max3421_handle_irqs.exit:                         ; preds = %do.end71.i, %if.end64.i.max3421_handle_irqs.exit_crit_edge
  %418 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %port_status.i, align 4
  %xor.i = xor i32 %419, %416
  %shl.i400 = shl i32 %xor.i, 16
  %or77.i = or i32 %shl.i400, %419
  store i32 %or77.i, ptr %port_status.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call34.i) #10
  br label %if.end183

if.else176:                                       ; preds = %spi_rd8.exit.i396
  %420 = ptrtoint ptr %curr_urb.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %curr_urb.i, align 4
  %tobool177.not = icmp eq ptr %421, null
  br i1 %tobool177.not, label %if.then178, label %if.else176.if.end183_crit_edge

if.else176.if.end183_crit_edge:                   ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.then178:                                       ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #12
  %call179 = call fastcc i32 @max3421_select_and_start_urb(ptr noundef %dev_id)
  br label %if.end183

if.end183:                                        ; preds = %if.then178, %if.else176.if.end183_crit_edge, %max3421_handle_irqs.exit, %spi_rd8.exit.i, %if.then171.if.end183_crit_edge
  %i_worked.1 = phi i32 [ 0, %if.else176.if.end183_crit_edge ], [ %call179, %if.then178 ], [ 1, %max3421_handle_irqs.exit ], [ 1, %if.then171.if.end183_crit_edge ], [ 1, %spi_rd8.exit.i ]
  %call185 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %todo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end183.if.end190_crit_edge, label %if.then187

if.end183.if.end190_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.then187:                                       ; preds = %if.end183
  %422 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i401) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i402) #10
  %424 = call ptr @memset(ptr %77, i32 0, i32 92)
  %425 = call ptr @memset(ptr %78, i32 0, i32 40)
  %426 = ptrtoint ptr %msg.i.i402 to i32
  call void @__asan_store4_noabort(i32 %426)
  store volatile ptr %msg.i.i402, ptr %msg.i.i402, align 4
  %427 = ptrtoint ptr %prev.i.i.i.i.i404 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %msg.i.i402, ptr %prev.i.i.i.i.i404, align 4
  %428 = ptrtoint ptr %resources.i.i.i.i405 to i32
  call void @__asan_store4_noabort(i32 %428)
  store volatile ptr %resources.i.i.i.i405, ptr %resources.i.i.i.i405, align 4
  %429 = ptrtoint ptr %prev.i2.i.i.i.i406 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %resources.i.i.i.i405, ptr %prev.i2.i.i.i.i406, align 4
  %430 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %tx.i, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 122, ptr %431, align 1
  %433 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i.i408 = getelementptr [2 x i8], ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %arrayidx4.i.i408 to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 32, ptr %arrayidx4.i.i408, align 1
  %435 = load ptr, ptr %tx.i, align 4
  %436 = ptrtoint ptr %transfer.i.i401 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr %435, ptr %transfer.i.i401, align 4
  %437 = ptrtoint ptr %len.i.i409 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 2, ptr %len.i.i409, align 4
  %438 = load ptr, ptr %prev.i.i.i.i.i404, align 4
  %call.i.i.i.i.i411 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i410, ptr noundef %438, ptr noundef nonnull %msg.i.i402) #10
  br i1 %call.i.i.i.i.i411, label %if.end.i.i.i.i.i413, label %if.then187.spi_wr8.exit.i415_crit_edge

if.then187.spi_wr8.exit.i415_crit_edge:           ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i415

if.end.i.i.i.i.i413:                              ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #12
  %439 = ptrtoint ptr %prev.i.i.i.i.i404 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %transfer_list.i.i.i410, ptr %prev.i.i.i.i.i404, align 4
  %440 = ptrtoint ptr %transfer_list.i.i.i410 to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %msg.i.i402, ptr %transfer_list.i.i.i410, align 4
  %441 = ptrtoint ptr %prev3.i.i.i.i.i412 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %438, ptr %prev3.i.i.i.i.i412, align 4
  %442 = ptrtoint ptr %438 to i32
  call void @__asan_store4_noabort(i32 %442)
  store volatile ptr %transfer_list.i.i.i410, ptr %438, align 4
  br label %spi_wr8.exit.i415

spi_wr8.exit.i415:                                ; preds = %if.end.i.i.i.i.i413, %if.then187.spi_wr8.exit.i415_crit_edge
  %call7.i.i414 = call i32 @spi_sync(ptr noundef %423, ptr noundef nonnull %msg.i.i402) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i402) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i401) #10
  %443 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i1.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i2.i) #10
  %445 = call ptr @memset(ptr %79, i32 0, i32 92)
  %446 = call ptr @memset(ptr %80, i32 0, i32 40)
  %447 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store volatile ptr %msg.i2.i, ptr %msg.i2.i, align 4
  %448 = ptrtoint ptr %prev.i.i.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr %msg.i2.i, ptr %prev.i.i.i.i3.i, align 4
  %449 = ptrtoint ptr %resources.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store volatile ptr %resources.i.i.i4.i, ptr %resources.i.i.i4.i, align 4
  %450 = ptrtoint ptr %prev.i2.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %resources.i.i.i4.i, ptr %prev.i2.i.i.i5.i, align 4
  %451 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %tx.i, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 122, ptr %452, align 1
  %454 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i7.i = getelementptr [2 x i8], ptr %454, i32 0, i32 1
  %455 = ptrtoint ptr %arrayidx4.i7.i to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 0, ptr %arrayidx4.i7.i, align 1
  %456 = load ptr, ptr %tx.i, align 4
  %457 = ptrtoint ptr %transfer.i1.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %456, ptr %transfer.i1.i, align 4
  %458 = ptrtoint ptr %len.i8.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 2, ptr %len.i8.i, align 4
  %459 = load ptr, ptr %prev.i.i.i.i3.i, align 4
  %call.i.i.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i9.i, ptr noundef %459, ptr noundef nonnull %msg.i2.i) #10
  br i1 %call.i.i.i.i10.i, label %if.end.i.i.i.i12.i, label %spi_wr8.exit.i415.spi_wr8.exit14.i_crit_edge

spi_wr8.exit.i415.spi_wr8.exit14.i_crit_edge:     ; preds = %spi_wr8.exit.i415
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit14.i

if.end.i.i.i.i12.i:                               ; preds = %spi_wr8.exit.i415
  call void @__sanitizer_cov_trace_pc() #12
  %460 = ptrtoint ptr %prev.i.i.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %transfer_list.i.i9.i, ptr %prev.i.i.i.i3.i, align 4
  %461 = ptrtoint ptr %transfer_list.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %msg.i2.i, ptr %transfer_list.i.i9.i, align 4
  %462 = ptrtoint ptr %prev3.i.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %459, ptr %prev3.i.i.i.i11.i, align 4
  %463 = ptrtoint ptr %459 to i32
  call void @__asan_store4_noabort(i32 %463)
  store volatile ptr %transfer_list.i.i9.i, ptr %459, align 4
  br label %spi_wr8.exit14.i

spi_wr8.exit14.i:                                 ; preds = %if.end.i.i.i.i12.i, %spi_wr8.exit.i415.spi_wr8.exit14.i_crit_edge
  %call7.i13.i = call i32 @spi_sync(ptr noundef %444, ptr noundef nonnull %msg.i2.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i2.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i1.i) #10
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end5.i, %spi_wr8.exit14.i
  %timeout.0.i = phi i32 [ 1000, %spi_wr8.exit14.i ], [ %dec.i, %if.end5.i ]
  %464 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i15.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i16.i) #10
  %466 = call ptr @memset(ptr %81, i32 0, i32 84)
  %467 = call ptr @memset(ptr %82, i32 0, i32 40)
  %468 = ptrtoint ptr %msg.i16.i to i32
  call void @__asan_store4_noabort(i32 %468)
  store volatile ptr %msg.i16.i, ptr %msg.i16.i, align 4
  %469 = ptrtoint ptr %prev.i.i.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %msg.i16.i, ptr %prev.i.i.i.i17.i, align 4
  %470 = ptrtoint ptr %resources.i.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store volatile ptr %resources.i.i.i18.i, ptr %resources.i.i.i18.i, align 4
  %471 = ptrtoint ptr %prev.i2.i.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr %resources.i.i.i18.i, ptr %prev.i2.i.i.i19.i, align 4
  %472 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %tx.i, align 4
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 104, ptr %473, align 1
  %475 = load ptr, ptr %tx.i, align 4
  %476 = ptrtoint ptr %transfer.i15.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %475, ptr %transfer.i15.i, align 4
  %477 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %rx.i.i, align 4
  %479 = ptrtoint ptr %rx_buf.i.i417 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %478, ptr %rx_buf.i.i417, align 4
  %480 = ptrtoint ptr %len.i21.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 2, ptr %len.i21.i, align 4
  %481 = load ptr, ptr %prev.i.i.i.i17.i, align 4
  %call.i.i.i.i23.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i22.i, ptr noundef %481, ptr noundef nonnull %msg.i16.i) #10
  br i1 %call.i.i.i.i23.i, label %if.end.i.i.i.i25.i, label %while.cond.i.spi_rd8.exit.i421_crit_edge

while.cond.i.spi_rd8.exit.i421_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i421

if.end.i.i.i.i25.i:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %482 = ptrtoint ptr %prev.i.i.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr %transfer_list.i.i22.i, ptr %prev.i.i.i.i17.i, align 4
  %483 = ptrtoint ptr %transfer_list.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr %msg.i16.i, ptr %transfer_list.i.i22.i, align 4
  %484 = ptrtoint ptr %prev3.i.i.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store ptr %481, ptr %prev3.i.i.i.i24.i, align 4
  %485 = ptrtoint ptr %481 to i32
  call void @__asan_store4_noabort(i32 %485)
  store volatile ptr %transfer_list.i.i22.i, ptr %481, align 4
  br label %spi_rd8.exit.i421

spi_rd8.exit.i421:                                ; preds = %if.end.i.i.i.i25.i, %while.cond.i.spi_rd8.exit.i421_crit_edge
  %call6.i.i418 = call i32 @spi_sync(ptr noundef %465, ptr noundef nonnull %msg.i16.i) #10
  %486 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %rx.i.i, align 4
  %arrayidx9.i.i419 = getelementptr [2 x i8], ptr %487, i32 0, i32 1
  %488 = ptrtoint ptr %arrayidx9.i.i419 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %arrayidx9.i.i419, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i16.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i15.i) #10
  %490 = and i8 %489, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %490)
  %tobool.not.i420 = icmp eq i8 %490, 0
  br i1 %tobool.not.i420, label %if.end.i422, label %while.end.i

if.end.i422:                                      ; preds = %spi_rd8.exit.i421
  %cmp.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i422
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %423, ptr noundef nonnull @.str.75) #13
  br label %max3421_reset_hcd.exit

if.end5.i:                                        ; preds = %if.end.i422
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1306, i32 noundef 0) #10
  %call.i.i = call i32 @__cond_resched() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %spi_rd8.exit.i421
  %491 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 -55, ptr %mode.i, align 1
  %492 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i26.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i27.i) #10
  %494 = call ptr @memset(ptr %83, i32 0, i32 92)
  %495 = call ptr @memset(ptr %84, i32 0, i32 40)
  %496 = ptrtoint ptr %msg.i27.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store volatile ptr %msg.i27.i, ptr %msg.i27.i, align 4
  %497 = ptrtoint ptr %prev.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %msg.i27.i, ptr %prev.i.i.i.i28.i, align 4
  %498 = ptrtoint ptr %resources.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store volatile ptr %resources.i.i.i29.i, ptr %resources.i.i.i29.i, align 4
  %499 = ptrtoint ptr %prev.i2.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr %resources.i.i.i29.i, ptr %prev.i2.i.i.i30.i, align 4
  %500 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %tx.i, align 4
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 -38, ptr %501, align 1
  %503 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i32.i = getelementptr [2 x i8], ptr %503, i32 0, i32 1
  %504 = ptrtoint ptr %arrayidx4.i32.i to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 -55, ptr %arrayidx4.i32.i, align 1
  %505 = load ptr, ptr %tx.i, align 4
  %506 = ptrtoint ptr %transfer.i26.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store ptr %505, ptr %transfer.i26.i, align 4
  %507 = ptrtoint ptr %len.i33.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 2, ptr %len.i33.i, align 4
  %508 = load ptr, ptr %prev.i.i.i.i28.i, align 4
  %call.i.i.i.i35.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i34.i, ptr noundef %508, ptr noundef nonnull %msg.i27.i) #10
  br i1 %call.i.i.i.i35.i, label %if.end.i.i.i.i37.i, label %while.end.i.spi_wr8.exit39.i_crit_edge

while.end.i.spi_wr8.exit39.i_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit39.i

if.end.i.i.i.i37.i:                               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %509 = ptrtoint ptr %prev.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %transfer_list.i.i34.i, ptr %prev.i.i.i.i28.i, align 4
  %510 = ptrtoint ptr %transfer_list.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store ptr %msg.i27.i, ptr %transfer_list.i.i34.i, align 4
  %511 = ptrtoint ptr %prev3.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store ptr %508, ptr %prev3.i.i.i.i36.i, align 4
  %512 = ptrtoint ptr %508 to i32
  call void @__asan_store4_noabort(i32 %512)
  store volatile ptr %transfer_list.i.i34.i, ptr %508, align 4
  br label %spi_wr8.exit39.i

spi_wr8.exit39.i:                                 ; preds = %if.end.i.i.i.i37.i, %while.end.i.spi_wr8.exit39.i_crit_edge
  %call7.i38.i = call i32 @spi_sync(ptr noundef %493, ptr noundef nonnull %msg.i27.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i27.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i26.i) #10
  %513 = ptrtoint ptr %frame_number.i to i32
  call void @__asan_store2_noabort(i32 %513)
  store i16 2047, ptr %frame_number.i, align 2
  %514 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i40.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i41.i) #10
  %516 = call ptr @memset(ptr %85, i32 0, i32 92)
  %517 = call ptr @memset(ptr %86, i32 0, i32 40)
  %518 = ptrtoint ptr %msg.i41.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store volatile ptr %msg.i41.i, ptr %msg.i41.i, align 4
  %519 = ptrtoint ptr %prev.i.i.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %msg.i41.i, ptr %prev.i.i.i.i42.i, align 4
  %520 = ptrtoint ptr %resources.i.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store volatile ptr %resources.i.i.i43.i, ptr %resources.i.i.i43.i, align 4
  %521 = ptrtoint ptr %prev.i2.i.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr %resources.i.i.i43.i, ptr %prev.i2.i.i.i44.i, align 4
  %522 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %tx.i, align 4
  %524 = ptrtoint ptr %523 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 -22, ptr %523, align 1
  %525 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i46.i = getelementptr [2 x i8], ptr %525, i32 0, i32 1
  %526 = ptrtoint ptr %arrayidx4.i46.i to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 2, ptr %arrayidx4.i46.i, align 1
  %527 = load ptr, ptr %tx.i, align 4
  %528 = ptrtoint ptr %transfer.i40.i to i32
  call void @__asan_store4_noabort(i32 %528)
  store ptr %527, ptr %transfer.i40.i, align 4
  %529 = ptrtoint ptr %len.i47.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 2, ptr %len.i47.i, align 4
  %530 = load ptr, ptr %prev.i.i.i.i42.i, align 4
  %call.i.i.i.i49.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i48.i, ptr noundef %530, ptr noundef nonnull %msg.i41.i) #10
  br i1 %call.i.i.i.i49.i, label %if.end.i.i.i.i51.i, label %spi_wr8.exit39.i.spi_wr8.exit53.i_crit_edge

spi_wr8.exit39.i.spi_wr8.exit53.i_crit_edge:      ; preds = %spi_wr8.exit39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit53.i

if.end.i.i.i.i51.i:                               ; preds = %spi_wr8.exit39.i
  call void @__sanitizer_cov_trace_pc() #12
  %531 = ptrtoint ptr %prev.i.i.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %transfer_list.i.i48.i, ptr %prev.i.i.i.i42.i, align 4
  %532 = ptrtoint ptr %transfer_list.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store ptr %msg.i41.i, ptr %transfer_list.i.i48.i, align 4
  %533 = ptrtoint ptr %prev3.i.i.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %533)
  store ptr %530, ptr %prev3.i.i.i.i50.i, align 4
  %534 = ptrtoint ptr %530 to i32
  call void @__asan_store4_noabort(i32 %534)
  store volatile ptr %transfer_list.i.i48.i, ptr %530, align 4
  br label %spi_wr8.exit53.i

spi_wr8.exit53.i:                                 ; preds = %if.end.i.i.i.i51.i, %spi_wr8.exit39.i.spi_wr8.exit53.i_crit_edge
  %call7.i52.i = call i32 @spi_sync(ptr noundef %515, ptr noundef nonnull %msg.i41.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i41.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i40.i) #10
  %535 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i54.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i55.i) #10
  %537 = call ptr @memset(ptr %87, i32 0, i32 92)
  %538 = call ptr @memset(ptr %88, i32 0, i32 40)
  %539 = ptrtoint ptr %msg.i55.i to i32
  call void @__asan_store4_noabort(i32 %539)
  store volatile ptr %msg.i55.i, ptr %msg.i55.i, align 4
  %540 = ptrtoint ptr %prev.i.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %540)
  store ptr %msg.i55.i, ptr %prev.i.i.i.i56.i, align 4
  %541 = ptrtoint ptr %resources.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store volatile ptr %resources.i.i.i57.i, ptr %resources.i.i.i57.i, align 4
  %542 = ptrtoint ptr %prev.i2.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %542)
  store ptr %resources.i.i.i57.i, ptr %prev.i2.i.i.i58.i, align 4
  %543 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %tx.i, align 4
  %545 = ptrtoint ptr %544 to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 -22, ptr %544, align 1
  %546 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i60.i = getelementptr [2 x i8], ptr %546, i32 0, i32 1
  %547 = ptrtoint ptr %arrayidx4.i60.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 4, ptr %arrayidx4.i60.i, align 1
  %548 = load ptr, ptr %tx.i, align 4
  %549 = ptrtoint ptr %transfer.i54.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store ptr %548, ptr %transfer.i54.i, align 4
  %550 = ptrtoint ptr %len.i61.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 2, ptr %len.i61.i, align 4
  %551 = load ptr, ptr %prev.i.i.i.i56.i, align 4
  %call.i.i.i.i63.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i62.i, ptr noundef %551, ptr noundef nonnull %msg.i55.i) #10
  br i1 %call.i.i.i.i63.i, label %if.end.i.i.i.i65.i, label %spi_wr8.exit53.i.spi_wr8.exit67.i_crit_edge

spi_wr8.exit53.i.spi_wr8.exit67.i_crit_edge:      ; preds = %spi_wr8.exit53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit67.i

if.end.i.i.i.i65.i:                               ; preds = %spi_wr8.exit53.i
  call void @__sanitizer_cov_trace_pc() #12
  %552 = ptrtoint ptr %prev.i.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store ptr %transfer_list.i.i62.i, ptr %prev.i.i.i.i56.i, align 4
  %553 = ptrtoint ptr %transfer_list.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr %msg.i55.i, ptr %transfer_list.i.i62.i, align 4
  %554 = ptrtoint ptr %prev3.i.i.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %554)
  store ptr %551, ptr %prev3.i.i.i.i64.i, align 4
  %555 = ptrtoint ptr %551 to i32
  call void @__asan_store4_noabort(i32 %555)
  store volatile ptr %transfer_list.i.i62.i, ptr %551, align 4
  br label %spi_wr8.exit67.i

spi_wr8.exit67.i:                                 ; preds = %if.end.i.i.i.i65.i, %spi_wr8.exit53.i.spi_wr8.exit67.i_crit_edge
  %call7.i66.i = call i32 @spi_sync(ptr noundef %536, ptr noundef nonnull %msg.i55.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i55.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i54.i) #10
  call fastcc void @max3421_detect_conn(ptr noundef %dev_id) #10
  %556 = ptrtoint ptr %hien to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 97, ptr %hien, align 4
  %557 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i68.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i69.i) #10
  %559 = call ptr @memset(ptr %89, i32 0, i32 92)
  %560 = call ptr @memset(ptr %90, i32 0, i32 40)
  %561 = ptrtoint ptr %msg.i69.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store volatile ptr %msg.i69.i, ptr %msg.i69.i, align 4
  %562 = ptrtoint ptr %prev.i.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store ptr %msg.i69.i, ptr %prev.i.i.i.i70.i, align 4
  %563 = ptrtoint ptr %resources.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %563)
  store volatile ptr %resources.i.i.i71.i, ptr %resources.i.i.i71.i, align 4
  %564 = ptrtoint ptr %prev.i2.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %564)
  store ptr %resources.i.i.i71.i, ptr %prev.i2.i.i.i72.i, align 4
  %565 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %tx.i, align 4
  %567 = ptrtoint ptr %566 to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 -46, ptr %566, align 1
  %568 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i74.i = getelementptr [2 x i8], ptr %568, i32 0, i32 1
  %569 = ptrtoint ptr %arrayidx4.i74.i to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 97, ptr %arrayidx4.i74.i, align 1
  %570 = load ptr, ptr %tx.i, align 4
  %571 = ptrtoint ptr %transfer.i68.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store ptr %570, ptr %transfer.i68.i, align 4
  %572 = ptrtoint ptr %len.i75.i to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 2, ptr %len.i75.i, align 4
  %573 = load ptr, ptr %prev.i.i.i.i70.i, align 4
  %call.i.i.i.i77.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i76.i, ptr noundef %573, ptr noundef nonnull %msg.i69.i) #10
  br i1 %call.i.i.i.i77.i, label %if.end.i.i.i.i79.i, label %spi_wr8.exit67.i.spi_wr8.exit81.i_crit_edge

spi_wr8.exit67.i.spi_wr8.exit81.i_crit_edge:      ; preds = %spi_wr8.exit67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit81.i

if.end.i.i.i.i79.i:                               ; preds = %spi_wr8.exit67.i
  call void @__sanitizer_cov_trace_pc() #12
  %574 = ptrtoint ptr %prev.i.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr %transfer_list.i.i76.i, ptr %prev.i.i.i.i70.i, align 4
  %575 = ptrtoint ptr %transfer_list.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %575)
  store ptr %msg.i69.i, ptr %transfer_list.i.i76.i, align 4
  %576 = ptrtoint ptr %prev3.i.i.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %576)
  store ptr %573, ptr %prev3.i.i.i.i78.i, align 4
  %577 = ptrtoint ptr %573 to i32
  call void @__asan_store4_noabort(i32 %577)
  store volatile ptr %transfer_list.i.i76.i, ptr %573, align 4
  br label %spi_wr8.exit81.i

spi_wr8.exit81.i:                                 ; preds = %if.end.i.i.i.i79.i, %spi_wr8.exit67.i.spi_wr8.exit81.i_crit_edge
  %call7.i80.i = call i32 @spi_sync(ptr noundef %558, ptr noundef nonnull %msg.i69.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i69.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i68.i) #10
  %578 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i82.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i83.i) #10
  %580 = call ptr @memset(ptr %91, i32 0, i32 92)
  %581 = call ptr @memset(ptr %92, i32 0, i32 40)
  %582 = ptrtoint ptr %msg.i83.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store volatile ptr %msg.i83.i, ptr %msg.i83.i, align 4
  %583 = ptrtoint ptr %prev.i.i.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %583)
  store ptr %msg.i83.i, ptr %prev.i.i.i.i84.i, align 4
  %584 = ptrtoint ptr %resources.i.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %584)
  store volatile ptr %resources.i.i.i85.i, ptr %resources.i.i.i85.i, align 4
  %585 = ptrtoint ptr %prev.i2.i.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr %resources.i.i.i85.i, ptr %prev.i2.i.i.i86.i, align 4
  %586 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %tx.i, align 4
  %588 = ptrtoint ptr %587 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 -126, ptr %587, align 1
  %589 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i88.i = getelementptr [2 x i8], ptr %589, i32 0, i32 1
  %590 = ptrtoint ptr %arrayidx4.i88.i to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 1, ptr %arrayidx4.i88.i, align 1
  %591 = load ptr, ptr %tx.i, align 4
  %592 = ptrtoint ptr %transfer.i82.i to i32
  call void @__asan_store4_noabort(i32 %592)
  store ptr %591, ptr %transfer.i82.i, align 4
  %593 = ptrtoint ptr %len.i89.i to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 2, ptr %len.i89.i, align 4
  %594 = load ptr, ptr %prev.i.i.i.i84.i, align 4
  %call.i.i.i.i91.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i90.i, ptr noundef %594, ptr noundef nonnull %msg.i83.i) #10
  br i1 %call.i.i.i.i91.i, label %if.end.i.i.i.i93.i, label %spi_wr8.exit81.i.spi_wr8.exit95.i_crit_edge

spi_wr8.exit81.i.spi_wr8.exit95.i_crit_edge:      ; preds = %spi_wr8.exit81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit95.i

if.end.i.i.i.i93.i:                               ; preds = %spi_wr8.exit81.i
  call void @__sanitizer_cov_trace_pc() #12
  %595 = ptrtoint ptr %prev.i.i.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %595)
  store ptr %transfer_list.i.i90.i, ptr %prev.i.i.i.i84.i, align 4
  %596 = ptrtoint ptr %transfer_list.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %596)
  store ptr %msg.i83.i, ptr %transfer_list.i.i90.i, align 4
  %597 = ptrtoint ptr %prev3.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %597)
  store ptr %594, ptr %prev3.i.i.i.i92.i, align 4
  %598 = ptrtoint ptr %594 to i32
  call void @__asan_store4_noabort(i32 %598)
  store volatile ptr %transfer_list.i.i90.i, ptr %594, align 4
  br label %spi_wr8.exit95.i

spi_wr8.exit95.i:                                 ; preds = %if.end.i.i.i.i93.i, %spi_wr8.exit81.i.spi_wr8.exit95.i_crit_edge
  %call7.i94.i = call i32 @spi_sync(ptr noundef %579, ptr noundef nonnull %msg.i83.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i83.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i82.i) #10
  br label %max3421_reset_hcd.exit

max3421_reset_hcd.exit:                           ; preds = %spi_wr8.exit95.i, %do.end.i
  %or189 = or i32 %i_worked.1, 1
  br label %if.end190

if.end190:                                        ; preds = %max3421_reset_hcd.exit, %if.end183.if.end190_crit_edge
  %i_worked.2 = phi i32 [ %or189, %max3421_reset_hcd.exit ], [ %i_worked.1, %if.end183.if.end190_crit_edge ]
  %call192 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %todo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.end190.if.end195_crit_edge, label %if.then194

if.end190.if.end195_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.then194:                                       ; preds = %if.end190
  %599 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i425) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i426) #10
  %601 = call ptr @memset(ptr %93, i32 0, i32 92)
  %602 = call ptr @memset(ptr %94, i32 0, i32 40)
  %603 = ptrtoint ptr %msg.i426 to i32
  call void @__asan_store4_noabort(i32 %603)
  store volatile ptr %msg.i426, ptr %msg.i426, align 4
  %604 = ptrtoint ptr %prev.i.i.i.i427 to i32
  call void @__asan_store4_noabort(i32 %604)
  store ptr %msg.i426, ptr %prev.i.i.i.i427, align 4
  %605 = ptrtoint ptr %resources.i.i.i428 to i32
  call void @__asan_store4_noabort(i32 %605)
  store volatile ptr %resources.i.i.i428, ptr %resources.i.i.i428, align 4
  %606 = ptrtoint ptr %prev.i2.i.i.i429 to i32
  call void @__asan_store4_noabort(i32 %606)
  store ptr %resources.i.i.i428, ptr %prev.i2.i.i.i429, align 4
  %607 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %tx.i, align 4
  %609 = ptrtoint ptr %608 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 -22, ptr %608, align 1
  %610 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i431 = getelementptr [2 x i8], ptr %610, i32 0, i32 1
  %611 = ptrtoint ptr %arrayidx4.i431 to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 1, ptr %arrayidx4.i431, align 1
  %612 = load ptr, ptr %tx.i, align 4
  %613 = ptrtoint ptr %transfer.i425 to i32
  call void @__asan_store4_noabort(i32 %613)
  store ptr %612, ptr %transfer.i425, align 4
  %614 = ptrtoint ptr %len.i432 to i32
  call void @__asan_store4_noabort(i32 %614)
  store i32 2, ptr %len.i432, align 4
  %615 = load ptr, ptr %prev.i.i.i.i427, align 4
  %call.i.i.i.i434 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i433, ptr noundef %615, ptr noundef nonnull %msg.i426) #10
  br i1 %call.i.i.i.i434, label %if.end.i.i.i.i436, label %if.then194.spi_wr8.exit438_crit_edge

if.then194.spi_wr8.exit438_crit_edge:             ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit438

if.end.i.i.i.i436:                                ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #12
  %616 = ptrtoint ptr %prev.i.i.i.i427 to i32
  call void @__asan_store4_noabort(i32 %616)
  store ptr %transfer_list.i.i433, ptr %prev.i.i.i.i427, align 4
  %617 = ptrtoint ptr %transfer_list.i.i433 to i32
  call void @__asan_store4_noabort(i32 %617)
  store ptr %msg.i426, ptr %transfer_list.i.i433, align 4
  %618 = ptrtoint ptr %prev3.i.i.i.i435 to i32
  call void @__asan_store4_noabort(i32 %618)
  store ptr %615, ptr %prev3.i.i.i.i435, align 4
  %619 = ptrtoint ptr %615 to i32
  call void @__asan_store4_noabort(i32 %619)
  store volatile ptr %transfer_list.i.i433, ptr %615, align 4
  br label %spi_wr8.exit438

spi_wr8.exit438:                                  ; preds = %if.end.i.i.i.i436, %if.then194.spi_wr8.exit438_crit_edge
  %call7.i437 = call i32 @spi_sync(ptr noundef %600, ptr noundef nonnull %msg.i426) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i426) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i425) #10
  br label %if.end195

if.end195:                                        ; preds = %spi_wr8.exit438, %if.end190.if.end195_crit_edge
  %i_worked.3 = phi i32 [ 1, %spi_wr8.exit438 ], [ %i_worked.2, %if.end190.if.end195_crit_edge ]
  %call197 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %todo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end195.if.end202_crit_edge, label %if.then199

if.end195.if.end202_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end202

if.then199:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  %call200 = call fastcc i32 @max3421_check_unlink(ptr noundef %dev_id)
  %or201 = or i32 %call200, %i_worked.3
  br label %if.end202

if.end202:                                        ; preds = %if.then199, %if.end195.if.end202_crit_edge
  %i_worked.4 = phi i32 [ %or201, %if.then199 ], [ %i_worked.3, %if.end195.if.end202_crit_edge ]
  %call204 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %todo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end202.if.end217_crit_edge, label %for.body.preheader

if.end202.if.end217_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

for.body.preheader:                               ; preds = %if.end202
  %620 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i439) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i440) #10
  %622 = call ptr @memset(ptr %95, i32 0, i32 84)
  %623 = call ptr @memset(ptr %96, i32 0, i32 40)
  %624 = ptrtoint ptr %msg.i440 to i32
  call void @__asan_store4_noabort(i32 %624)
  store volatile ptr %msg.i440, ptr %msg.i440, align 4
  %625 = ptrtoint ptr %prev.i.i.i.i441 to i32
  call void @__asan_store4_noabort(i32 %625)
  store ptr %msg.i440, ptr %prev.i.i.i.i441, align 4
  %626 = ptrtoint ptr %resources.i.i.i442 to i32
  call void @__asan_store4_noabort(i32 %626)
  store volatile ptr %resources.i.i.i442, ptr %resources.i.i.i442, align 4
  %627 = ptrtoint ptr %prev.i2.i.i.i443 to i32
  call void @__asan_store4_noabort(i32 %627)
  store ptr %resources.i.i.i442, ptr %prev.i2.i.i.i443, align 4
  %628 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %tx.i, align 4
  %630 = ptrtoint ptr %629 to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 -96, ptr %629, align 1
  %631 = load ptr, ptr %tx.i, align 4
  %632 = ptrtoint ptr %transfer.i439 to i32
  call void @__asan_store4_noabort(i32 %632)
  store ptr %631, ptr %transfer.i439, align 4
  %633 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %rx.i.i, align 4
  %635 = ptrtoint ptr %rx_buf.i446 to i32
  call void @__asan_store4_noabort(i32 %635)
  store ptr %634, ptr %rx_buf.i446, align 4
  %636 = ptrtoint ptr %len.i447 to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 2, ptr %len.i447, align 4
  %637 = load ptr, ptr %prev.i.i.i.i441, align 4
  %call.i.i.i.i449 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i448, ptr noundef %637, ptr noundef nonnull %msg.i440) #10
  br i1 %call.i.i.i.i449, label %if.end.i.i.i.i451, label %for.body.preheader.spi_rd8.exit454_crit_edge

for.body.preheader.spi_rd8.exit454_crit_edge:     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit454

if.end.i.i.i.i451:                                ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %638 = ptrtoint ptr %prev.i.i.i.i441 to i32
  call void @__asan_store4_noabort(i32 %638)
  store ptr %transfer_list.i.i448, ptr %prev.i.i.i.i441, align 4
  %639 = ptrtoint ptr %transfer_list.i.i448 to i32
  call void @__asan_store4_noabort(i32 %639)
  store ptr %msg.i440, ptr %transfer_list.i.i448, align 4
  %640 = ptrtoint ptr %prev3.i.i.i.i450 to i32
  call void @__asan_store4_noabort(i32 %640)
  store ptr %637, ptr %prev3.i.i.i.i450, align 4
  %641 = ptrtoint ptr %637 to i32
  call void @__asan_store4_noabort(i32 %641)
  store volatile ptr %transfer_list.i.i448, ptr %637, align 4
  br label %spi_rd8.exit454

spi_rd8.exit454:                                  ; preds = %if.end.i.i.i.i451, %for.body.preheader.spi_rd8.exit454_crit_edge
  %call6.i452 = call i32 @spi_sync(ptr noundef %621, ptr noundef nonnull %msg.i440) #10
  %642 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %rx.i.i, align 4
  %arrayidx9.i453 = getelementptr [2 x i8], ptr %643, i32 0, i32 1
  %644 = ptrtoint ptr %arrayidx9.i453 to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %arrayidx9.i453, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i440) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i439) #10
  %646 = and i8 %645, -16
  %647 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %arrayidx, align 1
  %649 = and i8 %648, 15
  %or213352 = or i8 %649, %646
  %650 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i455) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i456) #10
  %652 = call ptr @memset(ptr %97, i32 0, i32 92)
  %653 = call ptr @memset(ptr %98, i32 0, i32 40)
  %654 = ptrtoint ptr %msg.i456 to i32
  call void @__asan_store4_noabort(i32 %654)
  store volatile ptr %msg.i456, ptr %msg.i456, align 4
  %655 = ptrtoint ptr %prev.i.i.i.i457 to i32
  call void @__asan_store4_noabort(i32 %655)
  store ptr %msg.i456, ptr %prev.i.i.i.i457, align 4
  %656 = ptrtoint ptr %resources.i.i.i458 to i32
  call void @__asan_store4_noabort(i32 %656)
  store volatile ptr %resources.i.i.i458, ptr %resources.i.i.i458, align 4
  %657 = ptrtoint ptr %prev.i2.i.i.i459 to i32
  call void @__asan_store4_noabort(i32 %657)
  store ptr %resources.i.i.i458, ptr %prev.i2.i.i.i459, align 4
  %658 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %tx.i, align 4
  %660 = ptrtoint ptr %659 to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 -94, ptr %659, align 1
  %661 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i462 = getelementptr [2 x i8], ptr %661, i32 0, i32 1
  %662 = ptrtoint ptr %arrayidx4.i462 to i32
  call void @__asan_store1_noabort(i32 %662)
  store i8 %or213352, ptr %arrayidx4.i462, align 1
  %663 = load ptr, ptr %tx.i, align 4
  %664 = ptrtoint ptr %transfer.i455 to i32
  call void @__asan_store4_noabort(i32 %664)
  store ptr %663, ptr %transfer.i455, align 4
  %665 = ptrtoint ptr %len.i463 to i32
  call void @__asan_store4_noabort(i32 %665)
  store i32 2, ptr %len.i463, align 4
  %666 = load ptr, ptr %prev.i.i.i.i457, align 4
  %call.i.i.i.i465 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i464, ptr noundef %666, ptr noundef nonnull %msg.i456) #10
  br i1 %call.i.i.i.i465, label %if.end.i.i.i.i467, label %spi_rd8.exit454.spi_wr8.exit469_crit_edge

spi_rd8.exit454.spi_wr8.exit469_crit_edge:        ; preds = %spi_rd8.exit454
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit469

if.end.i.i.i.i467:                                ; preds = %spi_rd8.exit454
  call void @__sanitizer_cov_trace_pc() #12
  %667 = ptrtoint ptr %prev.i.i.i.i457 to i32
  call void @__asan_store4_noabort(i32 %667)
  store ptr %transfer_list.i.i464, ptr %prev.i.i.i.i457, align 4
  %668 = ptrtoint ptr %transfer_list.i.i464 to i32
  call void @__asan_store4_noabort(i32 %668)
  store ptr %msg.i456, ptr %transfer_list.i.i464, align 4
  %669 = ptrtoint ptr %prev3.i.i.i.i466 to i32
  call void @__asan_store4_noabort(i32 %669)
  store ptr %666, ptr %prev3.i.i.i.i466, align 4
  %670 = ptrtoint ptr %666 to i32
  call void @__asan_store4_noabort(i32 %670)
  store volatile ptr %transfer_list.i.i464, ptr %666, align 4
  br label %spi_wr8.exit469

spi_wr8.exit469:                                  ; preds = %if.end.i.i.i.i467, %spi_rd8.exit454.spi_wr8.exit469_crit_edge
  %call7.i468 = call i32 @spi_sync(ptr noundef %651, ptr noundef nonnull %msg.i456) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i456) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i455) #10
  %671 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %671)
  store i8 %or213352, ptr %arrayidx, align 1
  %672 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i439) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i440) #10
  %674 = call ptr @memset(ptr %95, i32 0, i32 84)
  %675 = call ptr @memset(ptr %96, i32 0, i32 40)
  %676 = ptrtoint ptr %msg.i440 to i32
  call void @__asan_store4_noabort(i32 %676)
  store volatile ptr %msg.i440, ptr %msg.i440, align 4
  %677 = ptrtoint ptr %prev.i.i.i.i441 to i32
  call void @__asan_store4_noabort(i32 %677)
  store ptr %msg.i440, ptr %prev.i.i.i.i441, align 4
  %678 = ptrtoint ptr %resources.i.i.i442 to i32
  call void @__asan_store4_noabort(i32 %678)
  store volatile ptr %resources.i.i.i442, ptr %resources.i.i.i442, align 4
  %679 = ptrtoint ptr %prev.i2.i.i.i443 to i32
  call void @__asan_store4_noabort(i32 %679)
  store ptr %resources.i.i.i442, ptr %prev.i2.i.i.i443, align 4
  %680 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %tx.i, align 4
  %682 = ptrtoint ptr %681 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 -96, ptr %681, align 1
  %683 = load ptr, ptr %tx.i, align 4
  %684 = ptrtoint ptr %transfer.i439 to i32
  call void @__asan_store4_noabort(i32 %684)
  store ptr %683, ptr %transfer.i439, align 4
  %685 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %rx.i.i, align 4
  %687 = ptrtoint ptr %rx_buf.i446 to i32
  call void @__asan_store4_noabort(i32 %687)
  store ptr %686, ptr %rx_buf.i446, align 4
  %688 = ptrtoint ptr %len.i447 to i32
  call void @__asan_store4_noabort(i32 %688)
  store i32 2, ptr %len.i447, align 4
  %689 = load ptr, ptr %prev.i.i.i.i441, align 4
  %call.i.i.i.i449.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i448, ptr noundef %689, ptr noundef nonnull %msg.i440) #10
  br i1 %call.i.i.i.i449.1, label %if.end.i.i.i.i451.1, label %spi_wr8.exit469.spi_rd8.exit454.1_crit_edge

spi_wr8.exit469.spi_rd8.exit454.1_crit_edge:      ; preds = %spi_wr8.exit469
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit454.1

if.end.i.i.i.i451.1:                              ; preds = %spi_wr8.exit469
  call void @__sanitizer_cov_trace_pc() #12
  %690 = ptrtoint ptr %prev.i.i.i.i441 to i32
  call void @__asan_store4_noabort(i32 %690)
  store ptr %transfer_list.i.i448, ptr %prev.i.i.i.i441, align 4
  %691 = ptrtoint ptr %transfer_list.i.i448 to i32
  call void @__asan_store4_noabort(i32 %691)
  store ptr %msg.i440, ptr %transfer_list.i.i448, align 4
  %692 = ptrtoint ptr %prev3.i.i.i.i450 to i32
  call void @__asan_store4_noabort(i32 %692)
  store ptr %689, ptr %prev3.i.i.i.i450, align 4
  %693 = ptrtoint ptr %689 to i32
  call void @__asan_store4_noabort(i32 %693)
  store volatile ptr %transfer_list.i.i448, ptr %689, align 4
  br label %spi_rd8.exit454.1

spi_rd8.exit454.1:                                ; preds = %if.end.i.i.i.i451.1, %spi_wr8.exit469.spi_rd8.exit454.1_crit_edge
  %call6.i452.1 = call i32 @spi_sync(ptr noundef %673, ptr noundef nonnull %msg.i440) #10
  %694 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %rx.i.i, align 4
  %arrayidx9.i453.1 = getelementptr [2 x i8], ptr %695, i32 0, i32 1
  %696 = ptrtoint ptr %arrayidx9.i453.1 to i32
  call void @__asan_load1_noabort(i32 %696)
  %697 = load i8, ptr %arrayidx9.i453.1, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i440) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i439) #10
  %698 = and i8 %697, -16
  %699 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %699)
  %700 = load i8, ptr %arrayidx.1, align 1
  %701 = and i8 %700, 15
  %or213352.1 = or i8 %701, %698
  %702 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i455) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i456) #10
  %704 = call ptr @memset(ptr %97, i32 0, i32 92)
  %705 = call ptr @memset(ptr %98, i32 0, i32 40)
  %706 = ptrtoint ptr %msg.i456 to i32
  call void @__asan_store4_noabort(i32 %706)
  store volatile ptr %msg.i456, ptr %msg.i456, align 4
  %707 = ptrtoint ptr %prev.i.i.i.i457 to i32
  call void @__asan_store4_noabort(i32 %707)
  store ptr %msg.i456, ptr %prev.i.i.i.i457, align 4
  %708 = ptrtoint ptr %resources.i.i.i458 to i32
  call void @__asan_store4_noabort(i32 %708)
  store volatile ptr %resources.i.i.i458, ptr %resources.i.i.i458, align 4
  %709 = ptrtoint ptr %prev.i2.i.i.i459 to i32
  call void @__asan_store4_noabort(i32 %709)
  store ptr %resources.i.i.i458, ptr %prev.i2.i.i.i459, align 4
  %710 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %tx.i, align 4
  %712 = ptrtoint ptr %711 to i32
  call void @__asan_store1_noabort(i32 %712)
  store i8 -86, ptr %711, align 1
  %713 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i462.1 = getelementptr [2 x i8], ptr %713, i32 0, i32 1
  %714 = ptrtoint ptr %arrayidx4.i462.1 to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 %or213352.1, ptr %arrayidx4.i462.1, align 1
  %715 = load ptr, ptr %tx.i, align 4
  %716 = ptrtoint ptr %transfer.i455 to i32
  call void @__asan_store4_noabort(i32 %716)
  store ptr %715, ptr %transfer.i455, align 4
  %717 = ptrtoint ptr %len.i463 to i32
  call void @__asan_store4_noabort(i32 %717)
  store i32 2, ptr %len.i463, align 4
  %718 = load ptr, ptr %prev.i.i.i.i457, align 4
  %call.i.i.i.i465.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i464, ptr noundef %718, ptr noundef nonnull %msg.i456) #10
  br i1 %call.i.i.i.i465.1, label %if.end.i.i.i.i467.1, label %spi_rd8.exit454.1.spi_wr8.exit469.1_crit_edge

spi_rd8.exit454.1.spi_wr8.exit469.1_crit_edge:    ; preds = %spi_rd8.exit454.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit469.1

if.end.i.i.i.i467.1:                              ; preds = %spi_rd8.exit454.1
  call void @__sanitizer_cov_trace_pc() #12
  %719 = ptrtoint ptr %prev.i.i.i.i457 to i32
  call void @__asan_store4_noabort(i32 %719)
  store ptr %transfer_list.i.i464, ptr %prev.i.i.i.i457, align 4
  %720 = ptrtoint ptr %transfer_list.i.i464 to i32
  call void @__asan_store4_noabort(i32 %720)
  store ptr %msg.i456, ptr %transfer_list.i.i464, align 4
  %721 = ptrtoint ptr %prev3.i.i.i.i466 to i32
  call void @__asan_store4_noabort(i32 %721)
  store ptr %718, ptr %prev3.i.i.i.i466, align 4
  %722 = ptrtoint ptr %718 to i32
  call void @__asan_store4_noabort(i32 %722)
  store volatile ptr %transfer_list.i.i464, ptr %718, align 4
  br label %spi_wr8.exit469.1

spi_wr8.exit469.1:                                ; preds = %if.end.i.i.i.i467.1, %spi_rd8.exit454.1.spi_wr8.exit469.1_crit_edge
  %call7.i468.1 = call i32 @spi_sync(ptr noundef %703, ptr noundef nonnull %msg.i456) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i456) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i455) #10
  %723 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %723)
  store i8 %or213352.1, ptr %arrayidx.1, align 1
  br label %if.end217

if.end217:                                        ; preds = %spi_wr8.exit469.1, %if.end202.if.end217_crit_edge
  %i_worked.5 = phi i32 [ %i_worked.4, %if.end202.if.end217_crit_edge ], [ 1, %spi_wr8.exit469.1 ]
  %call20 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call20, label %if.end217.__here270_crit_edge, label %if.end217.while.body22_crit_edge

if.end217.while.body22_crit_edge:                 ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body22

if.end217.__here270_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here270

__here270:                                        ; preds = %if.end217.__here270_crit_edge, %do.end14.__here270_crit_edge
  %724 = call i32 @llvm.read_register.i32(metadata !163) #10
  %and.i470 = and i32 %724, -16384
  %725 = inttoptr i32 %and.i470 to ptr
  %task273 = getelementptr inbounds %struct.thread_info, ptr %725, i32 0, i32 2
  %726 = ptrtoint ptr %task273 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %task273, align 8
  %task_state_change274 = getelementptr inbounds %struct.task_struct, ptr %727, i32 0, i32 212
  %728 = ptrtoint ptr %task_state_change274 to i32
  call void @__asan_store4_noabort(i32 %728)
  store i32 ptrtoint (ptr blockaddress(@max3421_spi_thread, %__here270) to i32), ptr %task_state_change274, align 4
  %729 = load ptr, ptr %task273, align 8
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_store4_noabort(i32 %730)
  store volatile i32 0, ptr %729, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !177
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.57) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %spi_thread = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 1, i32 3
  %2 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_thread, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @wake_up_process(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %todo = getelementptr inbounds %struct.usb_hcd, ptr %dev_id, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %todo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %irq7 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq7, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_reset(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_tablesize = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 7
  %0 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sg_tablesize, align 4
  %speed = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %speed, align 8
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %2 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_hub, align 8
  %speed2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %speed2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %speed2, align 4
  %todo = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %todo) #10
  %spi_thread = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %5 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi_thread, align 4
  %call3 = tail call i32 @wake_up_process(ptr noundef %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_start(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %hcd_priv.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @max3421_start.__key, i16 noundef signext 3) #10
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %rh_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %rh_state, align 4
  %ep_list = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %1 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ep_list, ptr %prev.i, align 4
  %power_budget = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 19
  %3 = ptrtoint ptr %power_budget to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 500, ptr %power_budget, align 8
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  %uses_new_polling = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %5 = ptrtoint ptr %uses_new_polling to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %uses_new_polling, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %uses_new_polling, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max3421_stop(ptr nocapture noundef %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max3421_get_frame_number(ptr nocapture noundef readonly %hcd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %frame_number = getelementptr inbounds %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 7
  %0 = ptrtoint ptr %frame_number to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %frame_number, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %switch = icmp sgt i32 %3, -1
  br i1 %switch, label %sw.bb, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

sw.bb:                                            ; preds = %entry
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.end, label %sw.bb.do.body5_crit_edge

sw.bb.do.body5_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %5) #13
  br label %cleanup

do.body5:                                         ; preds = %sw.bb.do.body5_crit_edge, %entry.do.body5_crit_edge
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then13, label %do.body5.if.end23_crit_edge

do.body5.if.end23_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then13:                                        ; preds = %do.body5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 28) #14
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.then13.out_crit_edge, label %if.end17

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end17:                                         ; preds = %if.then13
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call7.i.i, align 8
  %frame_number = getelementptr inbounds %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 7
  %14 = ptrtoint ptr %frame_number to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %frame_number, align 2
  %last_active = getelementptr inbounds %struct.max3421_ep, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %last_active to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %last_active, align 8
  %hcpriv21 = getelementptr inbounds %struct.usb_host_endpoint, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %hcpriv21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %hcpriv21, align 4
  %ep_list = getelementptr inbounds %struct.max3421_ep, ptr %call7.i.i, i32 0, i32 1
  %ep_list22 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %19, ptr noundef %ep_list22) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ep_list, ptr %prev.i, align 4
  %21 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ep_list22, ptr %ep_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.max3421_ep, ptr %call7.i.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %ep_list, ptr %19, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end.i.i, %if.end17.if.end23_crit_edge, %do.body5.if.end23_crit_edge
  %call24 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %sched_pass = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %24 = ptrtoint ptr %sched_pass to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sched_pass, align 4
  %spi_thread = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %25 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi_thread, align 4
  %call28 = tail call i32 @wake_up_process(ptr noundef %26) #10
  br label %out

out:                                              ; preds = %if.then27, %if.end23.out_crit_edge, %if.then13.out_crit_edge
  %retval2.0 = phi i32 [ 0, %if.then27 ], [ %call24, %if.end23.out_crit_edge ], [ -12, %if.then13.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %retval2.0, %out ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %call7 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %todo = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %todo) #10
  %spi_thread = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi_thread, align 4
  %call10 = tail call i32 @wake_up_process(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3421_endpoint_disable(ptr noundef %hcd, ptr nocapture noundef %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %ep_list = getelementptr inbounds %struct.max3421_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ep_list, align 4
  %cmp.i.not = icmp eq ptr %3, %ep_list
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then9:                                         ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.list_del.exit_crit_edge

if.then9.list_del.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.max3421_ep, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then9.list_del.exit_crit_edge
  %10 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.max3421_ep, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #10
  %12 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hcpriv, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_hub_status_data(ptr noundef %hcd, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %flags7 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %0 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags7, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %port_status = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %3 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_status, align 4
  %and8 = and i32 %4, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 0
  br i1 %cmp9.not, label %if.end.done_crit_edge, label %if.then11

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then11:                                        ; preds = %if.end
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %buf, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_hub_status_data.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_hub_status_data, %if.then18)) #10
          to label %do.end22 [label %if.then18], !srcloc !178

if.then18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  %8 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_hub_status_data.__UNIQUE_ID_ddebug249, ptr noundef %7, ptr noundef nonnull @.str.45, i32 noundef %9) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %if.then11
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %10 = ptrtoint ptr %rh_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rh_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp23 = icmp eq i32 %11, 1
  br i1 %cmp23, label %if.then25, label %do.end22.done_crit_edge

do.end22.done_crit_edge:                          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_hcd_resume_root_hub(ptr noundef %hcd) #10
  br label %done

done:                                             ; preds = %if.then25, %do.end22.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then25 ], [ 1, %do.end22.done_crit_edge ], [ 0, %if.end.done_crit_edge ], [ 0, %entry.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3421_hub_control(ptr noundef %hcd, i16 noundef zeroext %type_req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %conv8 = zext i16 %type_req to i32
  %4 = zext i16 %type_req to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %type_req, label %do.body86 [
    i16 8193, label %entry.sw.epilog108_crit_edge
    i16 8961, label %sw.bb
    i16 -24570, label %sw.bb25
    i16 -32762, label %entry.error_crit_edge
    i16 -23795, label %entry.error_crit_edge147
    i16 8204, label %entry.error_crit_edge148
    i16 -24576, label %sw.bb27
    i16 -23808, label %sw.bb28
    i16 8195, label %sw.bb39
    i16 8963, label %sw.bb40
  ]

entry.error_crit_edge148:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

entry.error_crit_edge147:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

entry.sw.epilog108_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog108

sw.bb:                                            ; preds = %entry
  %conv9 = zext i16 %value to i32
  %5 = zext i16 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %value, label %sw.bb.sw.default_crit_edge [
    i16 2, label %sw.bb.sw.epilog108_crit_edge
    i16 8, label %do.body11
  ]

sw.bb.sw.epilog108_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog108

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

do.body11:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_hub_control.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_hub_control, %if.then)) #10
          to label %do.end19 [label %if.then], !srcloc !178

if.then:                                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_hub_control.__UNIQUE_ID_ddebug250, ptr noundef %7, ptr noundef nonnull @.str.47) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then, %do.body11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  %dec.i = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %dec.i)
  %cmp.i = icmp ugt i8 %dec.i, 7
  br i1 %cmp.i, label %do.end19.sw.default_crit_edge, label %if.end.i

do.end19.sw.default_crit_edge:                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end.i:                                         ; preds = %do.end19
  %vbus_active_level = getelementptr inbounds %struct.max3421_hcd_platform_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %vbus_active_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vbus_active_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not.not = icmp eq i8 %11, 0
  %rem.i = and i8 %dec.i, 3
  %shl.i = shl nuw nsw i8 1, %rem.i
  %12 = lshr i8 %dec.i, 2
  br i1 %tobool20.not.not, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom.i = zext i8 %12 to i32
  %arrayidx.i = getelementptr %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 16, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %or28.i = or i8 %14, %shl.i
  store i8 %or28.i, ptr %arrayidx.i, align 1
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i8 %shl.i, -1
  %idxprom12.i = zext i8 %12 to i32
  %arrayidx13.i = getelementptr %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 16, i32 %idxprom12.i
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13.i, align 1
  %and.i = and i8 %16, %neg.i
  store i8 %and.i, ptr %arrayidx13.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.then6.i
  %todo.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 4, ptr noundef %todo.i) #10
  %spi_thread.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %17 = ptrtoint ptr %spi_thread.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi_thread.i, align 4
  %call17.i = tail call i32 @wake_up_process(ptr noundef %18) #10
  br label %sw.default

sw.default:                                       ; preds = %if.end16.i, %do.end19.sw.default_crit_edge, %sw.bb.sw.default_crit_edge
  %shl = shl nuw i32 1, %conv9
  %neg = xor i32 %shl, -1
  %port_status = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %19 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_status, align 4
  %and = and i32 %20, %neg
  store i32 %and, ptr %port_status, align 4
  br label %sw.epilog108

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %21 = getelementptr inbounds i8, ptr %buf, i32 5
  %22 = call ptr @memset(ptr %21, i32 0, i32 10)
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %23 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 41, ptr %bDescriptorType.i, align 1
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 9, ptr %buf, align 1
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %25 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 256, ptr %wHubCharacteristics.i, align 1
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %26 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %bNbrPorts.i, align 1
  br label %sw.epilog108

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %buf, align 4
  br label %sw.epilog108

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %index)
  %cmp30.not = icmp eq i16 %index, 1
  br i1 %cmp30.not, label %if.end33, label %sw.bb28.error_crit_edge

sw.bb28.error_crit_edge:                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end33:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %port_status34 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %28 = ptrtoint ptr %port_status34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port_status34, align 4
  %conv35 = trunc i32 %29 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv35)
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %buf, align 2
  %32 = ptrtoint ptr %port_status34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_status34, align 4
  %shr = lshr i32 %33, 16
  %conv37 = trunc i32 %shr to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv37)
  %arrayidx38 = getelementptr i16, ptr %buf, i32 1
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx38, align 2
  br label %sw.epilog108

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog108

sw.bb40:                                          ; preds = %entry
  %conv41 = zext i16 %value to i32
  %36 = zext i16 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %value, label %sw.bb40.sw.default73_crit_edge [
    i16 5, label %sw.bb40.error_crit_edge
    i16 23, label %sw.bb40.error_crit_edge149
    i16 24, label %sw.bb40.error_crit_edge150
    i16 28, label %sw.bb40.error_crit_edge151
    i16 2, label %sw.bb43
    i16 8, label %do.body49
    i16 4, label %sw.bb71
  ]

sw.bb40.error_crit_edge151:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb40.error_crit_edge150:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb40.error_crit_edge149:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb40.error_crit_edge:                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb40.sw.default73_crit_edge:                   ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default73

sw.bb43:                                          ; preds = %sw.bb40
  %active = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %37 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool44.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool44.not, label %sw.bb43.sw.epilog108_crit_edge, label %if.then45

sw.bb43.sw.epilog108_crit_edge:                   ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog108

if.then45:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  %port_status46 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %38 = ptrtoint ptr %port_status46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_status46, align 4
  %or = or i32 %39, 4
  store i32 %or, ptr %port_status46, align 4
  br label %sw.epilog108

do.body49:                                        ; preds = %sw.bb40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_hub_control.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_hub_control, %if.then61)) #10
          to label %do.end66 [label %if.then61], !srcloc !178

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_hub_control.__UNIQUE_ID_ddebug251, ptr noundef %41, ptr noundef nonnull @.str.48) #10
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %do.body49
  %port_status67 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %42 = ptrtoint ptr %port_status67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_status67, align 4
  %or68 = or i32 %43, 256
  store i32 %or68, ptr %port_status67, align 4
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %3, align 1
  %vbus_active_level70 = getelementptr inbounds %struct.max3421_hcd_platform_data, ptr %3, i32 0, i32 1
  %46 = ptrtoint ptr %vbus_active_level70 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %vbus_active_level70, align 1
  tail call fastcc void @max3421_gpout_set_value(ptr noundef %hcd, i8 noundef zeroext %45, i8 noundef zeroext %47)
  br label %sw.epilog108

sw.bb71:                                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @max3421_reset_port(ptr noundef %hcd)
  br label %sw.default73

sw.default73:                                     ; preds = %sw.bb71, %sw.bb40.sw.default73_crit_edge
  %port_status74 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %48 = ptrtoint ptr %port_status74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_status74, align 4
  %and75 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76.not = icmp eq i32 %and75, 0
  br i1 %cmp76.not, label %sw.default73.sw.epilog108_crit_edge, label %if.then78

sw.default73.sw.epilog108_crit_edge:              ; preds = %sw.default73
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog108

if.then78:                                        ; preds = %sw.default73
  call void @__sanitizer_cov_trace_pc() #12
  %shl80 = shl nuw i32 1, %conv41
  %or82 = or i32 %49, %shl80
  %50 = ptrtoint ptr %port_status74 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or82, ptr %port_status74, align 4
  br label %sw.epilog108

do.body86:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_hub_control.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_hub_control, %if.then98)) #10
          to label %error [label %if.then98], !srcloc !178

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hcd, align 8
  %conv102 = zext i16 %value to i32
  %conv103 = zext i16 %index to i32
  %conv104 = zext i16 %length to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_hub_control.__UNIQUE_ID_ddebug252, ptr noundef %52, ptr noundef nonnull @.str.49, i32 noundef %conv8, i32 noundef %conv102, i32 noundef %conv103, i32 noundef %conv104) #10
  br label %error

error:                                            ; preds = %if.then98, %do.body86, %sw.bb40.error_crit_edge, %sw.bb40.error_crit_edge149, %sw.bb40.error_crit_edge150, %sw.bb40.error_crit_edge151, %sw.bb28.error_crit_edge, %entry.error_crit_edge, %entry.error_crit_edge147, %entry.error_crit_edge148
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %error, %if.then78, %sw.default73.sw.epilog108_crit_edge, %do.end66, %if.then45, %sw.bb43.sw.epilog108_crit_edge, %sw.bb39, %if.end33, %sw.bb27, %sw.bb25, %sw.default, %sw.bb.sw.epilog108_crit_edge, %entry.sw.epilog108_crit_edge
  %retval2.0 = phi i32 [ -32, %error ], [ 0, %if.then78 ], [ 0, %sw.default73.sw.epilog108_crit_edge ], [ 0, %do.end66 ], [ 0, %if.then45 ], [ 0, %sw.bb43.sw.epilog108_crit_edge ], [ -32, %sw.bb39 ], [ 0, %if.end33 ], [ 0, %sw.bb27 ], [ 0, %sw.bb25 ], [ 0, %sw.default ], [ 0, %sw.bb.sw.epilog108_crit_edge ], [ 0, %entry.sw.epilog108_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call5) #10
  ret i32 %retval2.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max3421_bus_suspend(ptr nocapture noundef readnone %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max3421_bus_resume(ptr nocapture noundef readnone %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max3421_gpout_set_value(ptr noundef %hcd, i8 noundef zeroext %pin_number, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %dec = add i8 %pin_number, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %dec)
  %cmp = icmp ugt i8 %dec, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i8 %dec, 3
  %shl = shl nuw nsw i8 1, %rem
  %0 = lshr i8 %dec, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool.not = icmp eq i8 %value, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 16, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %or28 = or i8 %2, %shl
  store i8 %or28, ptr %arrayidx, align 1
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i8 %shl, -1
  %idxprom12 = zext i8 %0 to i32
  %arrayidx13 = getelementptr %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 16, i32 %idxprom12
  %3 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx13, align 1
  %and = and i8 %4, %neg
  store i8 %and, ptr %arrayidx13, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6
  %todo = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 4, ptr noundef %todo) #10
  %spi_thread = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %5 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi_thread, align 4
  %call17 = tail call i32 @wake_up_process(ptr noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max3421_reset_port(ptr noundef %hcd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_status = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_status, align 4
  %and = and i32 %1, -531
  %or = or i32 %and, 16
  store i32 %or, ptr %port_status, align 4
  %todo = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %todo) #10
  %spi_thread = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %2 = ptrtoint ptr %spi_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_thread, align 4
  %call2 = tail call i32 @wake_up_process(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max3421_select_and_start_urb(ptr noundef %hcd) unnamed_addr #2 align 64 {
entry:
  %transfer.i.i204 = alloca %struct.spi_transfer, align 4
  %msg.i.i205 = alloca %struct.spi_message, align 4
  %transfer.i12.i = alloca %struct.spi_transfer, align 4
  %msg.i13.i = alloca %struct.spi_message, align 4
  %transfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %sched_pass = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %2 = ptrtoint ptr %sched_pass to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sched_pass, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp7250 = icmp ult i32 %3, 2
  br i1 %cmp7250, label %for.body.lr.ph, label %entry.if.then87_crit_edge

entry.if.then87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

for.body.lr.ph:                                   ; preds = %entry
  %ep_list = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %4 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.0247 = load ptr, ptr %ep_list, align 4
  %cmp.i.not248 = icmp eq ptr %pos.0247, %ep_list
  %frame_number72 = getelementptr inbounds %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 7
  br i1 %cmp.i.not248, label %for.body.lr.ph.for.inc83_crit_edge, label %for.body12.lr.ph

for.body.lr.ph.for.inc83_crit_edge:               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

for.body12.lr.ph:                                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp21.not = icmp eq i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.lr.ph
  %pos.0249 = phi ptr [ %pos.0247, %for.body12.lr.ph ], [ %pos.0, %for.inc.for.body12_crit_edge ]
  %add.ptr = getelementptr i8, ptr %pos.0249, i32 -4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bmAttributes.i, align 1
  %9 = and i8 %8, 3
  %and.i = zext i8 %9 to i32
  %10 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and.i, label %for.body12.unreachabledefault330 [
    i32 1, label %for.body12.sw.bb_crit_edge
    i32 3, label %for.body12.sw.bb_crit_edge332
    i32 0, label %for.body12.sw.bb19_crit_edge
    i32 2, label %for.body12.sw.bb19_crit_edge333
  ]

for.body12.sw.bb19_crit_edge333:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

for.body12.sw.bb19_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

for.body12.sw.bb_crit_edge332:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body12.sw.bb_crit_edge:                       ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %for.body12.sw.bb_crit_edge, %for.body12.sw.bb_crit_edge332
  br i1 %cmp17.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body12.sw.bb19_crit_edge, %for.body12.sw.bb19_crit_edge333
  br i1 %cmp21.not, label %sw.bb19.sw.epilog_crit_edge, label %sw.bb19.for.inc_crit_edge

sw.bb19.for.inc_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body12.unreachabledefault330:                 ; preds = %for.body12
  unreachable

for.body12.unreachabledefault:                    ; preds = %for.body12.1
  unreachable

sw.epilog:                                        ; preds = %sw.bb19.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i191.not = icmp eq ptr %12, %urb_list
  br i1 %cmp.i191.not, label %sw.epilog.for.inc_crit_edge, label %if.end28

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end28:                                         ; preds = %sw.epilog
  %unlinked = getelementptr i8, ptr %12, i32 -16
  %13 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool34.not = icmp eq i32 %14, 0
  br i1 %tobool34.not, label %if.end50, label %if.end28.do.body36_crit_edge

if.end28.do.body36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36

do.body36:                                        ; preds = %if.end28.1.do.body36_crit_edge, %if.end28.do.body36_crit_edge
  %.lcssa = phi ptr [ %12, %if.end28.do.body36_crit_edge ], [ %58, %if.end28.1.do.body36_crit_edge ]
  %add.ptr33.le245 = getelementptr i8, ptr %.lcssa, i32 -20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_select_and_start_urb.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_select_and_start_urb, %if.then43)) #10
          to label %do.end47 [label %if.then43], !srcloc !178

if.then43:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %unlinked.le = getelementptr i8, ptr %.lcssa, i32 -16
  %15 = ptrtoint ptr %unlinked.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %unlinked.le, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_select_and_start_urb.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, ptr noundef %add.ptr33.le245, i32 noundef %16) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body36
  %curr_urb48 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %curr_urb48 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr33.le245, ptr %curr_urb48, align 4
  %urb_done = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %18 = ptrtoint ptr %urb_done to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %urb_done, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end28
  %19 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and.i, label %if.end50.unreachabledefault331 [
    i32 0, label %sw.bb53
    i32 2, label %sw.bb60
    i32 1, label %if.end50.sw.bb71_crit_edge
    i32 3, label %if.end50.sw.bb71_crit_edge334
  ]

if.end50.sw.bb71_crit_edge334:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71

if.end50.sw.bb71_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71

sw.bb53:                                          ; preds = %if.end50
  %last_active = getelementptr i8, ptr %pos.0249, i32 12
  %20 = ptrtoint ptr %last_active to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %last_active, align 4
  %22 = ptrtoint ptr %frame_number72 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %frame_number72, align 2
  %sub.i = sub i16 %21, %23
  %rem.i = and i16 %sub.i, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i)
  %cmp56 = icmp eq i16 %rem.i, 0
  br i1 %cmp56, label %sw.bb53.for.inc_crit_edge, label %sw.bb53.sw.epilog80_crit_edge

sw.bb53.sw.epilog80_crit_edge:                    ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog80

sw.bb53.for.inc_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb60:                                          ; preds = %if.end50
  %retransmit = getelementptr i8, ptr %pos.0249, i32 21
  %24 = ptrtoint ptr %retransmit to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %retransmit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool62.not = icmp eq i8 %25, 0
  br i1 %tobool62.not, label %sw.bb60.sw.epilog80_crit_edge, label %land.lhs.true

sw.bb60.sw.epilog80_crit_edge:                    ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog80

land.lhs.true:                                    ; preds = %sw.bb60
  %last_active63 = getelementptr i8, ptr %pos.0249, i32 12
  %26 = ptrtoint ptr %last_active63 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %last_active63, align 4
  %28 = ptrtoint ptr %frame_number72 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %frame_number72, align 2
  %sub.i195 = sub i16 %27, %29
  %rem.i196 = and i16 %sub.i195, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i196)
  %cmp67 = icmp eq i16 %rem.i196, 0
  br i1 %cmp67, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.sw.epilog80_crit_edge

land.lhs.true.sw.epilog80_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog80

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb71:                                          ; preds = %if.end50.sw.bb71_crit_edge, %if.end50.sw.bb71_crit_edge334
  %30 = ptrtoint ptr %frame_number72 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %frame_number72, align 2
  %last_active73 = getelementptr i8, ptr %pos.0249, i32 12
  %32 = ptrtoint ptr %last_active73 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %last_active73, align 4
  %sub.i197 = sub i16 %31, %33
  %rem.i198 = and i16 %sub.i197, 2047
  %34 = zext i16 %rem.i198 to i32
  %interval = getelementptr i8, ptr %12, i32 88
  %35 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp76 = icmp sgt i32 %36, %34
  br i1 %cmp76, label %sw.bb71.for.inc_crit_edge, label %sw.bb71.sw.epilog80_crit_edge

sw.bb71.sw.epilog80_crit_edge:                    ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog80

sw.bb71.for.inc_crit_edge:                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end50.unreachabledefault331:                   ; preds = %if.end50
  unreachable

if.end50.unreachabledefault:                      ; preds = %if.end50.1
  unreachable

sw.epilog80:                                      ; preds = %sw.bb53.1.sw.epilog80_crit_edge, %land.lhs.true.1.sw.epilog80_crit_edge, %sw.bb60.1.sw.epilog80_crit_edge, %sw.bb71.1.sw.epilog80_crit_edge, %sw.bb71.sw.epilog80_crit_edge, %land.lhs.true.sw.epilog80_crit_edge, %sw.bb60.sw.epilog80_crit_edge, %sw.bb53.sw.epilog80_crit_edge
  %pos.0249.lcssa296 = phi ptr [ %pos.0249, %sw.bb53.sw.epilog80_crit_edge ], [ %pos.0249, %land.lhs.true.sw.epilog80_crit_edge ], [ %pos.0249, %sw.bb60.sw.epilog80_crit_edge ], [ %pos.0249, %sw.bb71.sw.epilog80_crit_edge ], [ %pos.0249.1, %sw.bb71.1.sw.epilog80_crit_edge ], [ %pos.0249.1, %sw.bb60.1.sw.epilog80_crit_edge ], [ %pos.0249.1, %land.lhs.true.1.sw.epilog80_crit_edge ], [ %pos.0249.1, %sw.bb53.1.sw.epilog80_crit_edge ]
  %.lcssa292 = phi ptr [ %6, %sw.bb53.sw.epilog80_crit_edge ], [ %6, %land.lhs.true.sw.epilog80_crit_edge ], [ %6, %sw.bb60.sw.epilog80_crit_edge ], [ %6, %sw.bb71.sw.epilog80_crit_edge ], [ %52, %sw.bb71.1.sw.epilog80_crit_edge ], [ %52, %sw.bb60.1.sw.epilog80_crit_edge ], [ %52, %land.lhs.true.1.sw.epilog80_crit_edge ], [ %52, %sw.bb53.1.sw.epilog80_crit_edge ]
  %.lcssa288 = phi ptr [ %12, %sw.bb53.sw.epilog80_crit_edge ], [ %12, %land.lhs.true.sw.epilog80_crit_edge ], [ %12, %sw.bb60.sw.epilog80_crit_edge ], [ %12, %sw.bb71.sw.epilog80_crit_edge ], [ %58, %sw.bb71.1.sw.epilog80_crit_edge ], [ %58, %sw.bb60.1.sw.epilog80_crit_edge ], [ %58, %land.lhs.true.1.sw.epilog80_crit_edge ], [ %58, %sw.bb53.1.sw.epilog80_crit_edge ]
  %bmAttributes.i.le = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %.lcssa292, i32 0, i32 3
  %add.ptr33.le = getelementptr i8, ptr %.lcssa288, i32 -20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0249.lcssa296) #10
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog80.__list_del_entry.exit.i_crit_edge

sw.epilog80.__list_del_entry.exit.i_crit_edge:    ; preds = %sw.epilog80
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %sw.epilog80
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0249.lcssa296, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %pos.0249.lcssa296 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pos.0249.lcssa296, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %sw.epilog80.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %43 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pos.0249.lcssa296, ptr noundef %44, ptr noundef %ep_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.done_crit_edge

__list_del_entry.exit.i.done_crit_edge:           ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %pos.0249.lcssa296, ptr %prev.i2.i, align 4
  %46 = ptrtoint ptr %pos.0249.lcssa296 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ep_list, ptr %pos.0249.lcssa296, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0249.lcssa296, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %pos.0249.lcssa296, ptr %44, align 4
  br label %done

for.inc:                                          ; preds = %sw.bb71.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %sw.bb53.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %sw.bb19.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %49 = ptrtoint ptr %pos.0249 to i32
  call void @__asan_load4_noabort(i32 %49)
  %pos.0 = load ptr, ptr %pos.0249, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %ep_list
  br i1 %cmp.i.not, label %for.inc.for.inc83_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.inc.for.inc83_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

for.inc83:                                        ; preds = %for.inc.for.inc83_crit_edge, %for.body.lr.ph.for.inc83_crit_edge
  %inc = add nuw nsw i32 %3, 1
  %50 = ptrtoint ptr %sched_pass to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc, ptr %sched_pass, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.inc83.if.then87_crit_edge, label %for.body.1

for.inc83.if.then87_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

for.body.1:                                       ; preds = %for.inc83
  br i1 %cmp.i.not248, label %for.body.1.for.inc83.1_crit_edge, label %for.body12.lr.ph.1

for.body.1.for.inc83.1_crit_edge:                 ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83.1

for.body12.lr.ph.1:                               ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not.1 = icmp eq i32 %3, 0
  br label %for.body12.1

for.body12.1:                                     ; preds = %for.inc.1.for.body12.1_crit_edge, %for.body12.lr.ph.1
  %pos.0249.1 = phi ptr [ %pos.0247, %for.body12.lr.ph.1 ], [ %pos.0.1, %for.inc.1.for.body12.1_crit_edge ]
  %add.ptr.1 = getelementptr i8, ptr %pos.0249.1, i32 -4
  %51 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.1, align 4
  %bmAttributes.i.1 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %bmAttributes.i.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bmAttributes.i.1, align 1
  %55 = and i8 %54, 3
  %and.i.1 = zext i8 %55 to i32
  %56 = zext i32 %and.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and.i.1, label %for.body12.unreachabledefault [
    i32 1, label %for.body12.1.for.inc.1_crit_edge
    i32 3, label %for.body12.1.for.inc.1_crit_edge335
    i32 0, label %for.body12.1.sw.bb19.1_crit_edge
    i32 2, label %for.body12.1.sw.bb19.1_crit_edge336
  ]

for.body12.1.sw.bb19.1_crit_edge336:              ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19.1

for.body12.1.sw.bb19.1_crit_edge:                 ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19.1

for.body12.1.for.inc.1_crit_edge335:              ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.body12.1.for.inc.1_crit_edge:                 ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

sw.bb19.1:                                        ; preds = %for.body12.1.sw.bb19.1_crit_edge, %for.body12.1.sw.bb19.1_crit_edge336
  br i1 %cmp21.not.1, label %sw.epilog.1, label %sw.bb19.1.for.inc.1_crit_edge

sw.bb19.1.for.inc.1_crit_edge:                    ; preds = %sw.bb19.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

sw.epilog.1:                                      ; preds = %sw.bb19.1
  %urb_list.1 = getelementptr inbounds %struct.usb_host_endpoint, ptr %52, i32 0, i32 4
  %57 = ptrtoint ptr %urb_list.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %urb_list.1, align 4
  %cmp.i191.not.1 = icmp eq ptr %58, %urb_list.1
  br i1 %cmp.i191.not.1, label %sw.epilog.1.for.inc.1_crit_edge, label %if.end28.1

sw.epilog.1.for.inc.1_crit_edge:                  ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end28.1:                                       ; preds = %sw.epilog.1
  %unlinked.1 = getelementptr i8, ptr %58, i32 -16
  %59 = ptrtoint ptr %unlinked.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %unlinked.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool34.not.1 = icmp eq i32 %60, 0
  br i1 %tobool34.not.1, label %if.end50.1, label %if.end28.1.do.body36_crit_edge

if.end28.1.do.body36_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36

if.end50.1:                                       ; preds = %if.end28.1
  %61 = zext i32 %and.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and.i.1, label %if.end50.unreachabledefault [
    i32 0, label %sw.bb53.1
    i32 2, label %sw.bb60.1
    i32 1, label %if.end50.1.sw.bb71.1_crit_edge
    i32 3, label %if.end50.1.sw.bb71.1_crit_edge337
  ]

if.end50.1.sw.bb71.1_crit_edge337:                ; preds = %if.end50.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.1

if.end50.1.sw.bb71.1_crit_edge:                   ; preds = %if.end50.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.1

sw.bb71.1:                                        ; preds = %if.end50.1.sw.bb71.1_crit_edge, %if.end50.1.sw.bb71.1_crit_edge337
  %62 = ptrtoint ptr %frame_number72 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %frame_number72, align 2
  %last_active73.1 = getelementptr i8, ptr %pos.0249.1, i32 12
  %64 = ptrtoint ptr %last_active73.1 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %last_active73.1, align 4
  %sub.i197.1 = sub i16 %63, %65
  %rem.i198.1 = and i16 %sub.i197.1, 2047
  %66 = zext i16 %rem.i198.1 to i32
  %interval.1 = getelementptr i8, ptr %58, i32 88
  %67 = ptrtoint ptr %interval.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %interval.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %66)
  %cmp76.1 = icmp sgt i32 %68, %66
  br i1 %cmp76.1, label %sw.bb71.1.for.inc.1_crit_edge, label %sw.bb71.1.sw.epilog80_crit_edge

sw.bb71.1.sw.epilog80_crit_edge:                  ; preds = %sw.bb71.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog80

sw.bb71.1.for.inc.1_crit_edge:                    ; preds = %sw.bb71.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

sw.bb60.1:                                        ; preds = %if.end50.1
  %retransmit.1 = getelementptr i8, ptr %pos.0249.1, i32 21
  %69 = ptrtoint ptr %retransmit.1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %retransmit.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool62.not.1 = icmp eq i8 %70, 0
  br i1 %tobool62.not.1, label %sw.bb60.1.sw.epilog80_crit_edge, label %land.lhs.true.1

sw.bb60.1.sw.epilog80_crit_edge:                  ; preds = %sw.bb60.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog80

land.lhs.true.1:                                  ; preds = %sw.bb60.1
  %last_active63.1 = getelementptr i8, ptr %pos.0249.1, i32 12
  %71 = ptrtoint ptr %last_active63.1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %last_active63.1, align 4
  %73 = ptrtoint ptr %frame_number72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %frame_number72, align 2
  %sub.i195.1 = sub i16 %72, %74
  %rem.i196.1 = and i16 %sub.i195.1, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i196.1)
  %cmp67.1 = icmp eq i16 %rem.i196.1, 0
  br i1 %cmp67.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.sw.epilog80_crit_edge

land.lhs.true.1.sw.epilog80_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog80

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

sw.bb53.1:                                        ; preds = %if.end50.1
  %last_active.1 = getelementptr i8, ptr %pos.0249.1, i32 12
  %75 = ptrtoint ptr %last_active.1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %last_active.1, align 4
  %77 = ptrtoint ptr %frame_number72 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %frame_number72, align 2
  %sub.i.1 = sub i16 %76, %78
  %rem.i.1 = and i16 %sub.i.1, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i.1)
  %cmp56.1 = icmp eq i16 %rem.i.1, 0
  br i1 %cmp56.1, label %sw.bb53.1.for.inc.1_crit_edge, label %sw.bb53.1.sw.epilog80_crit_edge

sw.bb53.1.sw.epilog80_crit_edge:                  ; preds = %sw.bb53.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog80

sw.bb53.1.for.inc.1_crit_edge:                    ; preds = %sw.bb53.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb53.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %sw.bb71.1.for.inc.1_crit_edge, %sw.epilog.1.for.inc.1_crit_edge, %sw.bb19.1.for.inc.1_crit_edge, %for.body12.1.for.inc.1_crit_edge, %for.body12.1.for.inc.1_crit_edge335
  %79 = ptrtoint ptr %pos.0249.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %pos.0.1 = load ptr, ptr %pos.0249.1, align 4
  %cmp.i.not.1 = icmp eq ptr %pos.0.1, %ep_list
  br i1 %cmp.i.not.1, label %for.inc.1.for.inc83.1_crit_edge, label %for.inc.1.for.body12.1_crit_edge

for.inc.1.for.body12.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.1

for.inc.1.for.inc83.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83.1

for.inc83.1:                                      ; preds = %for.inc.1.for.inc83.1_crit_edge, %for.body.1.for.inc83.1_crit_edge
  %inc.1 = add nuw nsw i32 %3, 2
  %80 = ptrtoint ptr %sched_pass to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %inc.1, ptr %sched_pass, align 4
  br label %if.then87

done:                                             ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.done_crit_edge
  %tobool86.not = icmp eq ptr %add.ptr33.le, null
  br i1 %tobool86.not, label %done.if.then87_crit_edge, label %if.end89

done.if.then87_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then87:                                        ; preds = %done.if.then87_crit_edge, %for.inc83.1, %for.inc83.if.then87_crit_edge, %entry.if.then87_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  br label %cleanup

if.end89:                                         ; preds = %done
  %curr_urb90 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %81 = ptrtoint ptr %curr_urb90 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr33.le, ptr %curr_urb90, align 4
  %ep91 = getelementptr i8, ptr %.lcssa288, i32 24
  %82 = ptrtoint ptr %ep91 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ep91, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bEndpointAddress.i, align 1
  %86 = and i8 %85, 15
  %and.i199 = zext i8 %86 to i32
  %retransmit94 = getelementptr i8, ptr %pos.0249.lcssa296, i32 21
  %87 = ptrtoint ptr %retransmit94 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %retransmit94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool95.not = icmp eq i8 %88, 0
  br i1 %tobool95.not, label %if.else, label %if.then96

if.then96:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %retransmit94 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %retransmit94, align 1
  br label %if.end121

if.else:                                          ; preds = %if.end89
  %90 = ptrtoint ptr %bmAttributes.i.le to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bmAttributes.i.le, align 1
  %92 = and i8 %91, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp.i201.not = icmp eq i8 %92, 0
  br i1 %cmp.i201.not, label %if.then101, label %if.else118

if.then101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev102 = getelementptr i8, ptr %.lcssa288, i32 20
  %93 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev102, align 4
  %toggle = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 10
  %95 = ptrtoint ptr %toggle to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %toggle, align 4
  %shl = shl nuw nsw i32 1, %and.i199
  %or = or i32 %96, %shl
  store i32 %or, ptr %toggle, align 4
  %97 = load ptr, ptr %dev102, align 4
  %arrayidx109 = getelementptr %struct.usb_device, ptr %97, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx109, align 4
  %or114 = or i32 %99, %shl
  store i32 %or114, ptr %arrayidx109, align 4
  %pkt_state = getelementptr i8, ptr %pos.0249.lcssa296, i32 16
  %100 = ptrtoint ptr %pkt_state to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %pkt_state, align 4
  br label %if.end121

if.else118:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %pkt_state119 = getelementptr i8, ptr %pos.0249.lcssa296, i32 16
  %101 = ptrtoint ptr %pkt_state119 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %pkt_state119, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.else118, %if.then101, %if.then96
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call4) #10
  %102 = ptrtoint ptr %frame_number72 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %frame_number72, align 2
  %last_active124 = getelementptr i8, ptr %pos.0249.lcssa296, i32 12
  %104 = ptrtoint ptr %last_active124 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %last_active124, align 4
  %dev125 = getelementptr i8, ptr %.lcssa288, i32 20
  %105 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev125, align 4
  %toggle.i = getelementptr inbounds %struct.usb_device, ptr %106, i32 0, i32 10
  %107 = ptrtoint ptr %toggle.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %toggle.i, align 4
  %shr.i = lshr i32 %108, %and.i199
  %and.i202 = and i32 %shr.i, 1
  %arrayidx2.i = getelementptr %struct.usb_device, ptr %106, i32 0, i32 10, i32 1
  %109 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx2.i, align 4
  %shr3.i = lshr i32 %110, %and.i199
  %and4.i = and i32 %shr3.i, 1
  %add.i = or i32 %and.i202, 4
  %shl.i = shl nuw i32 1, %add.i
  %add5.i = or i32 %and4.i, 6
  %shl6.i = shl nuw i32 1, %add5.i
  %or.i = or i32 %shl6.i, %shl.i
  %conv.i203 = trunc i32 %or.i to i8
  %111 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  %113 = getelementptr inbounds i8, ptr %transfer.i.i, i32 4
  %114 = call ptr @memset(ptr %113, i32 0, i32 92)
  %115 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %116 = call ptr @memset(ptr %115, i32 0, i32 40)
  %117 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %119 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %120 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %tx.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %121 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -22, ptr %122, align 1
  %124 = load ptr, ptr %tx.i.i, align 4
  %arrayidx4.i.i = getelementptr [2 x i8], ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv.i203, ptr %arrayidx4.i.i, align 1
  %126 = load ptr, ptr %tx.i.i, align 4
  %127 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %transfer.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %128 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %129 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef %129, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end121.spi_wr8.exit.i_crit_edge

if.end121.spi_wr8.exit.i_crit_edge:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %131 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %132 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev3.i.i.i.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %transfer_list.i.i.i, ptr %129, align 4
  br label %spi_wr8.exit.i

spi_wr8.exit.i:                                   ; preds = %if.end.i.i.i.i.i, %if.end121.spi_wr8.exit.i_crit_edge
  %call7.i.i = call i32 @spi_sync(ptr noundef %112, ptr noundef nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #10
  %134 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %106, align 8
  %conv7.i = trunc i32 %135 to i8
  %136 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i12.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i13.i) #10
  %138 = getelementptr inbounds i8, ptr %transfer.i12.i, i32 4
  %139 = call ptr @memset(ptr %138, i32 0, i32 92)
  %140 = getelementptr inbounds i8, ptr %msg.i13.i, i32 8
  %141 = call ptr @memset(ptr %140, i32 0, i32 40)
  %142 = ptrtoint ptr %msg.i13.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %msg.i13.i, ptr %msg.i13.i, align 4
  %prev.i.i.i.i14.i = getelementptr inbounds %struct.list_head, ptr %msg.i13.i, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %msg.i13.i, ptr %prev.i.i.i.i14.i, align 4
  %resources.i.i.i15.i = getelementptr inbounds %struct.spi_message, ptr %msg.i13.i, i32 0, i32 10
  %144 = ptrtoint ptr %resources.i.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %resources.i.i.i15.i, ptr %resources.i.i.i15.i, align 4
  %prev.i2.i.i.i16.i = getelementptr inbounds %struct.spi_message, ptr %msg.i13.i, i32 0, i32 10, i32 1
  %145 = ptrtoint ptr %prev.i2.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %resources.i.i.i15.i, ptr %prev.i2.i.i.i16.i, align 4
  %146 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tx.i.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -30, ptr %147, align 1
  %149 = load ptr, ptr %tx.i.i, align 4
  %arrayidx4.i18.i = getelementptr [2 x i8], ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %arrayidx4.i18.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv7.i, ptr %arrayidx4.i18.i, align 1
  %151 = load ptr, ptr %tx.i.i, align 4
  %152 = ptrtoint ptr %transfer.i12.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %transfer.i12.i, align 4
  %len.i19.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i12.i, i32 0, i32 2
  %153 = ptrtoint ptr %len.i19.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 2, ptr %len.i19.i, align 4
  %transfer_list.i.i20.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i12.i, i32 0, i32 18
  %154 = load ptr, ptr %prev.i.i.i.i14.i, align 4
  %call.i.i.i.i21.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i20.i, ptr noundef %154, ptr noundef nonnull %msg.i13.i) #10
  br i1 %call.i.i.i.i21.i, label %if.end.i.i.i.i23.i, label %spi_wr8.exit.i.max3421_set_address.exit_crit_edge

spi_wr8.exit.i.max3421_set_address.exit_crit_edge: ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max3421_set_address.exit

if.end.i.i.i.i23.i:                               ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %prev.i.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %transfer_list.i.i20.i, ptr %prev.i.i.i.i14.i, align 4
  %156 = ptrtoint ptr %transfer_list.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %msg.i13.i, ptr %transfer_list.i.i20.i, align 4
  %prev3.i.i.i.i22.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i12.i, i32 0, i32 18, i32 1
  %157 = ptrtoint ptr %prev3.i.i.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %154, ptr %prev3.i.i.i.i22.i, align 4
  %158 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %transfer_list.i.i20.i, ptr %154, align 4
  br label %max3421_set_address.exit

max3421_set_address.exit:                         ; preds = %if.end.i.i.i.i23.i, %spi_wr8.exit.i.max3421_set_address.exit_crit_edge
  %call7.i24.i = call i32 @spi_sync(ptr noundef %137, ptr noundef nonnull %msg.i13.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i13.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i12.i) #10
  %mode1.i = getelementptr inbounds %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 15
  %159 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %mode1.i, align 1
  %port_status.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %161 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port_status.i, align 4
  %and.i206 = and i32 %162, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206)
  %tobool.not.i = icmp eq i32 %and.i206, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %max3421_set_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  %163 = and i8 %160, -7
  %164 = or i8 %163, 2
  br label %if.end24.i

if.else.i:                                        ; preds = %max3421_set_address.exit
  %165 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev125, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %168)
  %cmp.i207 = icmp eq i32 %168, 1
  br i1 %cmp.i207, label %if.then9.i, label %if.else16.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %169 = or i8 %160, 6
  br label %if.end24.i

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %170 = and i8 %160, -7
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else16.i, %if.then9.i, %if.then.i
  %mode.0.i = phi i8 [ %164, %if.then.i ], [ %169, %if.then9.i ], [ %170, %if.else16.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %mode.0.i, i8 %160)
  %cmp28.not.i = icmp eq i8 %mode.0.i, %160
  br i1 %cmp28.not.i, label %if.end24.i.max3421_set_speed.exit_crit_edge, label %if.then30.i

if.end24.i.max3421_set_speed.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max3421_set_speed.exit

if.then30.i:                                      ; preds = %if.end24.i
  %171 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %mode.0.i, ptr %mode1.i, align 1
  %172 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i204) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i205) #10
  %174 = getelementptr inbounds i8, ptr %transfer.i.i204, i32 4
  %175 = call ptr @memset(ptr %174, i32 0, i32 92)
  %176 = getelementptr inbounds i8, ptr %msg.i.i205, i32 8
  %177 = call ptr @memset(ptr %176, i32 0, i32 40)
  %178 = ptrtoint ptr %msg.i.i205 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %msg.i.i205, ptr %msg.i.i205, align 4
  %prev.i.i.i.i.i208 = getelementptr inbounds %struct.list_head, ptr %msg.i.i205, i32 0, i32 1
  %179 = ptrtoint ptr %prev.i.i.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %msg.i.i205, ptr %prev.i.i.i.i.i208, align 4
  %resources.i.i.i.i209 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i205, i32 0, i32 10
  %180 = ptrtoint ptr %resources.i.i.i.i209 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %resources.i.i.i.i209, ptr %resources.i.i.i.i209, align 4
  %prev.i2.i.i.i.i210 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i205, i32 0, i32 10, i32 1
  %181 = ptrtoint ptr %prev.i2.i.i.i.i210 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %resources.i.i.i.i209, ptr %prev.i2.i.i.i.i210, align 4
  %182 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %tx.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -38, ptr %183, align 1
  %185 = load ptr, ptr %tx.i.i, align 4
  %arrayidx4.i.i212 = getelementptr [2 x i8], ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %arrayidx4.i.i212 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %mode.0.i, ptr %arrayidx4.i.i212, align 1
  %187 = load ptr, ptr %tx.i.i, align 4
  %188 = ptrtoint ptr %transfer.i.i204 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %187, ptr %transfer.i.i204, align 4
  %len.i.i213 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i204, i32 0, i32 2
  %189 = ptrtoint ptr %len.i.i213 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 2, ptr %len.i.i213, align 4
  %transfer_list.i.i.i214 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i204, i32 0, i32 18
  %190 = load ptr, ptr %prev.i.i.i.i.i208, align 4
  %call.i.i.i.i.i215 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i214, ptr noundef %190, ptr noundef nonnull %msg.i.i205) #10
  br i1 %call.i.i.i.i.i215, label %if.end.i.i.i.i.i217, label %if.then30.i.spi_wr8.exit.i219_crit_edge

if.then30.i.spi_wr8.exit.i219_crit_edge:          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i219

if.end.i.i.i.i.i217:                              ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %prev.i.i.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %transfer_list.i.i.i214, ptr %prev.i.i.i.i.i208, align 4
  %192 = ptrtoint ptr %transfer_list.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %msg.i.i205, ptr %transfer_list.i.i.i214, align 4
  %prev3.i.i.i.i.i216 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i204, i32 0, i32 18, i32 1
  %193 = ptrtoint ptr %prev3.i.i.i.i.i216 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %190, ptr %prev3.i.i.i.i.i216, align 4
  %194 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %transfer_list.i.i.i214, ptr %190, align 4
  br label %spi_wr8.exit.i219

spi_wr8.exit.i219:                                ; preds = %if.end.i.i.i.i.i217, %if.then30.i.spi_wr8.exit.i219_crit_edge
  %call7.i.i218 = call i32 @spi_sync(ptr noundef %173, ptr noundef nonnull %msg.i.i205) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i205) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i204) #10
  br label %max3421_set_speed.exit

max3421_set_speed.exit:                           ; preds = %spi_wr8.exit.i219, %if.end24.i.max3421_set_speed.exit_crit_edge
  call fastcc void @max3421_next_transfer(ptr noundef %hcd, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %max3421_set_speed.exit, %if.then87, %do.end47
  %retval.0 = phi i32 [ 1, %do.end47 ], [ 1, %max3421_set_speed.exit ], [ 0, %if.then87 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max3421_check_unlink(ptr noundef %hcd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %ep_list = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %2 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn103 = load ptr, ptr %ep_list, align 4
  %cmp12.not104 = icmp eq ptr %.pn103, %ep_list
  br i1 %cmp12.not104, label %entry.for.end69_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end69

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %retval2.1.lcssa = phi i32 [ %retval2.0105, %for.body.for.cond.loopexit_crit_edge ], [ %retval2.2, %for.inc.for.cond.loopexit_crit_edge ]
  %flags.1.lcssa = phi i32 [ %flags.0106, %for.body.for.cond.loopexit_crit_edge ], [ %flags.2, %for.inc.for.cond.loopexit_crit_edge ]
  %3 = ptrtoint ptr %.pn107 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn107, align 4
  %cmp12.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp12.not, label %for.cond.loopexit.for.end69_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.for.end69_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end69

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn107 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn103, %entry.for.body_crit_edge ]
  %flags.0106 = phi i32 [ %flags.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ %call5, %entry.for.body_crit_edge ]
  %retval2.0105 = phi i32 [ %retval2.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %max3421_ep.0 = getelementptr i8, ptr %.pn107, i32 -4
  %4 = ptrtoint ptr %max3421_ep.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %max3421_ep.0, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb_list, align 4
  %cmp27.not95 = icmp eq ptr %7, %urb_list
  br i1 %cmp27.not95, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body30_crit_edge

for.body.for.body30_crit_edge:                    ; preds = %for.body
  br label %for.body30

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body30:                                       ; preds = %for.inc.for.body30_crit_edge, %for.body.for.body30_crit_edge
  %.pn90.in98 = phi ptr [ %.pn90101, %for.inc.for.body30_crit_edge ], [ %7, %for.body.for.body30_crit_edge ]
  %flags.197 = phi i32 [ %flags.2, %for.inc.for.body30_crit_edge ], [ %flags.0106, %for.body.for.body30_crit_edge ]
  %retval2.196 = phi i32 [ %retval2.2, %for.inc.for.body30_crit_edge ], [ %retval2.0105, %for.body.for.body30_crit_edge ]
  %urb.099 = getelementptr i8, ptr %.pn90.in98, i32 -20
  %8 = ptrtoint ptr %.pn90.in98 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn90101 = load ptr, ptr %.pn90.in98, align 4
  %unlinked = getelementptr i8, ptr %.pn90.in98, i32 -16
  %9 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.body30.for.inc_crit_edge, label %if.then

for.body30.for.inc_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_check_unlink.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_check_unlink, %if.then38)) #10
          to label %do.end41 [label %if.then38], !srcloc !178

if.then38:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unlinked, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_check_unlink.__UNIQUE_ID_ddebug242, ptr noundef %1, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.77, ptr noundef %urb.099, i32 noundef %12) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %if.then
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb.099) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %flags.197) #10
  tail call void @usb_hcd_giveback_urb(ptr noundef %hcd, ptr noundef %urb.099, i32 noundef 0) #10
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end41, %for.body30.for.inc_crit_edge
  %retval2.2 = phi i32 [ 1, %do.end41 ], [ %retval2.196, %for.body30.for.inc_crit_edge ]
  %flags.2 = phi i32 [ %call52, %do.end41 ], [ %flags.197, %for.body30.for.inc_crit_edge ]
  %cmp27.not = icmp eq ptr %.pn90101, %urb_list
  br i1 %cmp27.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body30_crit_edge

for.inc.for.body30_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end69:                                        ; preds = %for.cond.loopexit.for.end69_crit_edge, %entry.for.end69_crit_edge
  %retval2.0.lcssa = phi i32 [ 0, %entry.for.end69_crit_edge ], [ %retval2.1.lcssa, %for.cond.loopexit.for.end69_crit_edge ]
  %flags.0.lcssa = phi i32 [ %call5, %entry.for.end69_crit_edge ], [ %flags.1.lcssa, %for.cond.loopexit.for.end69_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %flags.0.lcssa) #10
  ret i32 %retval2.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max3421_detect_conn(ptr noundef %hcd) unnamed_addr #2 align 64 {
entry:
  %transfer.i68 = alloca %struct.spi_transfer, align 4
  %msg.i69 = alloca %struct.spi_message, align 4
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %2 = getelementptr inbounds i8, ptr %transfer.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %tx.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %10 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -8, ptr %11, align 1
  %13 = load ptr, ptr %tx.i, align 4
  %14 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %transfer.i, align 4
  %rx.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 1
  %17 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %19 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %19, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_rd8.exit_crit_edge

entry.spi_rd8.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i, ptr %19, align 4
  br label %spi_rd8.exit

spi_rd8.exit:                                     ; preds = %if.end.i.i.i.i, %entry.spi_rd8.exit_crit_edge
  %call6.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #10
  %24 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx.i, align 4
  %arrayidx9.i = getelementptr [2 x i8], ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx9.i, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  %conv = zext i8 %27 to i32
  %28 = lshr i32 %conv, 7
  %29 = lshr i32 %conv, 5
  %shl5 = and i32 %29, 2
  %or = or i32 %shl5, %28
  %mode6 = getelementptr inbounds %struct.max3421_hcd, ptr %hcd_priv.i, i32 0, i32 15
  %30 = ptrtoint ptr %mode6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode6, align 1
  %32 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %or, label %spi_rd8.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %if.then
    i32 1, label %spi_rd8.exit.if.end_crit_edge
  ]

spi_rd8.exit.if.end_crit_edge:                    ; preds = %spi_rd8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

spi_rd8.exit.sw.epilog_crit_edge:                 ; preds = %spi_rd8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %spi_rd8.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = and i8 %31, -9
  br label %sw.epilog

if.then:                                          ; preds = %spi_rd8.exit
  call void @__sanitizer_cov_trace_pc() #12
  %34 = xor i8 %31, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %spi_rd8.exit.if.end_crit_edge
  %mode.0 = phi i8 [ %34, %if.then ], [ %31, %spi_rd8.exit.if.end_crit_edge ]
  %35 = or i8 %mode.0, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb, %spi_rd8.exit.sw.epilog_crit_edge
  %tobool.not = phi i32 [ 0, %spi_rd8.exit.sw.epilog_crit_edge ], [ 1, %if.end ], [ 0, %sw.bb ]
  %mode.1 = phi i8 [ %31, %spi_rd8.exit.sw.epilog_crit_edge ], [ %35, %if.end ], [ %33, %sw.bb ]
  %36 = ptrtoint ptr %mode6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %mode.1, ptr %mode6, align 1
  %37 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i68) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i69) #10
  %39 = getelementptr inbounds i8, ptr %transfer.i68, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 92)
  %41 = getelementptr inbounds i8, ptr %msg.i69, i32 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 40)
  %43 = ptrtoint ptr %msg.i69 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %msg.i69, ptr %msg.i69, align 4
  %prev.i.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %msg.i69, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i69, ptr %prev.i.i.i.i70, align 4
  %resources.i.i.i71 = getelementptr inbounds %struct.spi_message, ptr %msg.i69, i32 0, i32 10
  %45 = ptrtoint ptr %resources.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %resources.i.i.i71, ptr %resources.i.i.i71, align 4
  %prev.i2.i.i.i72 = getelementptr inbounds %struct.spi_message, ptr %msg.i69, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %prev.i2.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %resources.i.i.i71, ptr %prev.i2.i.i.i72, align 4
  %47 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -38, ptr %48, align 1
  %50 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i = getelementptr [2 x i8], ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %mode.1, ptr %arrayidx4.i, align 1
  %52 = load ptr, ptr %tx.i, align 4
  %53 = ptrtoint ptr %transfer.i68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %transfer.i68, align 4
  %len.i74 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i68, i32 0, i32 2
  %54 = ptrtoint ptr %len.i74 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %len.i74, align 4
  %transfer_list.i.i75 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i68, i32 0, i32 18
  %55 = load ptr, ptr %prev.i.i.i.i70, align 4
  %call.i.i.i.i76 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i75, ptr noundef %55, ptr noundef nonnull %msg.i69) #10
  br i1 %call.i.i.i.i76, label %if.end.i.i.i.i78, label %sw.epilog.spi_wr8.exit_crit_edge

sw.epilog.spi_wr8.exit_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i78:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %prev.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %transfer_list.i.i75, ptr %prev.i.i.i.i70, align 4
  %57 = ptrtoint ptr %transfer_list.i.i75 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msg.i69, ptr %transfer_list.i.i75, align 4
  %prev3.i.i.i.i77 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i68, i32 0, i32 18, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i.i77, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %transfer_list.i.i75, ptr %55, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i78, %sw.epilog.spi_wr8.exit_crit_edge
  %call7.i = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %msg.i69) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i69) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i68) #10
  %call23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #10
  %port_status = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %60 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port_status, align 4
  %and30 = and i32 %61, -514
  %storemerge = or i32 %and30, %tobool.not
  %62 = and i8 %mode.1, 2
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %storemerge67 = or i32 %storemerge, %64
  %xor43 = xor i32 %storemerge67, %61
  %shl44 = shl i32 %xor43, 16
  %or46 = or i32 %shl44, %storemerge67
  store i32 %or46, ptr %port_status, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call23) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max3421_handle_error(ptr nocapture noundef %hcd, i8 noundef zeroext %hrsl) unnamed_addr #2 align 64 {
entry:
  %transfer.i121 = alloca %struct.spi_transfer, align 4
  %msg.i122 = alloca %struct.spi_message, align 4
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %conv = zext i8 %hrsl to i32
  %and = and i8 %hrsl, 15
  %curr_urb = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %curr_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_urb, align 4
  %ep = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcpriv, align 4
  %pkt_state = getelementptr inbounds %struct.max3421_ep, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %pkt_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pkt_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_flags.i, align 4
  %12 = lshr i32 %11, 9
  %.lobit = and i32 %12, 1
  %13 = xor i32 %.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %14 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %13, %land.rhs ]
  %conv5 = zext i8 %and to i32
  %15 = zext i32 %conv5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %conv5, label %land.end.unreachabledefault [
    i32 0, label %land.end.cleanup_crit_edge
    i32 7, label %land.end.sw.bb6_crit_edge
    i32 1, label %land.end.sw.bb6_crit_edge140
    i32 2, label %land.end.sw.bb6_crit_edge141
    i32 3, label %land.end.sw.bb6_crit_edge142
    i32 12, label %land.end.sw.bb6_crit_edge143
    i32 13, label %land.end.sw.bb6_crit_edge144
    i32 6, label %sw.bb12
    i32 8, label %land.end.sw.bb20_crit_edge
    i32 9, label %land.end.sw.bb20_crit_edge145
    i32 10, label %land.end.sw.bb20_crit_edge146
    i32 11, label %land.end.sw.bb20_crit_edge147
    i32 15, label %land.end.sw.bb20_crit_edge148
    i32 14, label %land.end.sw.bb20_crit_edge149
    i32 5, label %do.body49
    i32 4, label %sw.bb70
  ]

land.end.sw.bb20_crit_edge149:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

land.end.sw.bb20_crit_edge148:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

land.end.sw.bb20_crit_edge147:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

land.end.sw.bb20_crit_edge146:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

land.end.sw.bb20_crit_edge145:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

land.end.sw.bb20_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

land.end.sw.bb6_crit_edge144:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

land.end.sw.bb6_crit_edge143:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

land.end.sw.bb6_crit_edge142:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

land.end.sw.bb6_crit_edge141:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

land.end.sw.bb6_crit_edge140:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

land.end.sw.bb6_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb6:                                           ; preds = %land.end.sw.bb6_crit_edge, %land.end.sw.bb6_crit_edge140, %land.end.sw.bb6_crit_edge141, %land.end.sw.bb6_crit_edge142, %land.end.sw.bb6_crit_edge143, %land.end.sw.bb6_crit_edge144
  %arrayidx = getelementptr [16 x i32], ptr @hrsl_to_error, i32 0, i32 %conv5
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %urb_done = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %18 = ptrtoint ptr %urb_done to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %urb_done, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_handle_error.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_handle_error, %if.then)) #10
          to label %sw.epilog [label %if.then], !srcloc !178

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_handle_error.__UNIQUE_ID_ddebug243, ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %conv) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %land.end
  %transfer_flags.i114 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %transfer_flags.i114 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_flags.i114, align 4
  %21 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.else, label %sw.bb12.sw.bb20_crit_edge

sw.bb12.sw.bb20_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.else:                                          ; preds = %sw.bb12
  %22 = shl i32 %conv, 26
  %23 = ashr i32 %22, 31
  %add = add nsw i32 %23, 7
  %shl = shl nuw nsw i32 1, %add
  %conv18 = trunc i32 %shl to i8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %24 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  %26 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %tx.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %32 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -22, ptr %33, align 1
  %35 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i = getelementptr [2 x i8], ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv18, ptr %arrayidx4.i, align 1
  %37 = load ptr, ptr %tx.i, align 4
  %38 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %transfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %40 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %40, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.spi_wr8.exit_crit_edge

if.else.spi_wr8.exit_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %42 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i, ptr %40, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i, %if.else.spi_wr8.exit_crit_edge
  %call7.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  br label %sw.bb20

sw.bb20:                                          ; preds = %spi_wr8.exit, %sw.bb12.sw.bb20_crit_edge, %land.end.sw.bb20_crit_edge, %land.end.sw.bb20_crit_edge145, %land.end.sw.bb20_crit_edge146, %land.end.sw.bb20_crit_edge147, %land.end.sw.bb20_crit_edge148, %land.end.sw.bb20_crit_edge149
  %retries = getelementptr inbounds %struct.max3421_ep, ptr %7, i32 0, i32 5
  %45 = ptrtoint ptr %retries to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %retries, align 4
  %inc = add i8 %46, 1
  store i8 %inc, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp22 = icmp ult i8 %46, 3
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %curr_urb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %curr_urb, align 4
  %ep.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ep.i, align 4
  %hcpriv.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hcpriv.i, align 4
  %retransmit.i = getelementptr inbounds %struct.max3421_ep, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %retransmit.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %retransmit.i, align 1
  store ptr null, ptr %curr_urb, align 4
  br label %sw.epilog

if.else25:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27 = getelementptr [16 x i32], ptr @hrsl_to_error, i32 0, i32 %conv5
  %54 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx27, align 4
  %urb_done28 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %56 = ptrtoint ptr %urb_done28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %urb_done28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_handle_error.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_handle_error, %if.then41)) #10
          to label %sw.epilog [label %if.then41], !srcloc !178

if.then41:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_handle_error.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %conv) #10
  br label %sw.epilog

do.body49:                                        ; preds = %land.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3421_handle_error.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3421_handle_error, %if.then61)) #10
          to label %do.end66 [label %if.then61], !srcloc !178

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3421_handle_error.__UNIQUE_ID_ddebug245, ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %conv) #10
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %do.body49
  %urb_done69 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %57 = ptrtoint ptr %urb_done69 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -32, ptr %urb_done69, align 4
  br label %sw.epilog

sw.bb70:                                          ; preds = %land.end
  %naks = getelementptr inbounds %struct.max3421_ep, ptr %7, i32 0, i32 2
  %58 = ptrtoint ptr %naks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %naks, align 4
  %inc71 = add i32 %59, 1
  store i32 %inc71, ptr %naks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp72 = icmp ult i32 %59, 2
  br i1 %cmp72, label %sw.epilog.thread, label %if.else75

sw.epilog.thread:                                 ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @max3421_next_transfer(ptr noundef %hcd, i32 noundef 1)
  br label %cleanup

if.else75:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %curr_urb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %curr_urb, align 4
  %ep.i118 = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %ep.i118 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ep.i118, align 4
  %hcpriv.i119 = getelementptr inbounds %struct.usb_host_endpoint, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %hcpriv.i119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hcpriv.i119, align 4
  %retransmit.i120 = getelementptr inbounds %struct.max3421_ep, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %retransmit.i120 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %retransmit.i120, align 1
  store ptr null, ptr %curr_urb, align 4
  br label %sw.epilog

land.end.unreachabledefault:                      ; preds = %land.end
  unreachable

sw.epilog:                                        ; preds = %if.else75, %do.end66, %if.then41, %if.else25, %if.then24, %if.then, %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool77.not = icmp eq i32 %14, 0
  br i1 %tobool77.not, label %sw.epilog.cleanup_crit_edge, label %if.then78

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then78:                                        ; preds = %sw.epilog
  %67 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i121) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i122) #10
  %69 = getelementptr inbounds i8, ptr %transfer.i121, i32 4
  %70 = call ptr @memset(ptr %69, i32 0, i32 92)
  %71 = getelementptr inbounds i8, ptr %msg.i122, i32 8
  %72 = call ptr @memset(ptr %71, i32 0, i32 40)
  %73 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %msg.i122, ptr %msg.i122, align 4
  %prev.i.i.i.i123 = getelementptr inbounds %struct.list_head, ptr %msg.i122, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i122, ptr %prev.i.i.i.i123, align 4
  %resources.i.i.i124 = getelementptr inbounds %struct.spi_message, ptr %msg.i122, i32 0, i32 10
  %75 = ptrtoint ptr %resources.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %resources.i.i.i124, ptr %resources.i.i.i124, align 4
  %prev.i2.i.i.i125 = getelementptr inbounds %struct.spi_message, ptr %msg.i122, i32 0, i32 10, i32 1
  %76 = ptrtoint ptr %prev.i2.i.i.i125 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %resources.i.i.i124, ptr %prev.i2.i.i.i125, align 4
  %tx.i126 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %77 = ptrtoint ptr %tx.i126 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx.i126, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 58, ptr %78, align 1
  %80 = load ptr, ptr %tx.i126, align 4
  %arrayidx4.i127 = getelementptr [2 x i8], ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx4.i127 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx4.i127, align 1
  %82 = load ptr, ptr %tx.i126, align 4
  %83 = ptrtoint ptr %transfer.i121 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %transfer.i121, align 4
  %len.i128 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i121, i32 0, i32 2
  %84 = ptrtoint ptr %len.i128 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %len.i128, align 4
  %transfer_list.i.i129 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i121, i32 0, i32 18
  %85 = load ptr, ptr %prev.i.i.i.i123, align 4
  %call.i.i.i.i130 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i129, ptr noundef %85, ptr noundef nonnull %msg.i122) #10
  br i1 %call.i.i.i.i130, label %if.end.i.i.i.i132, label %if.then78.spi_wr8.exit134_crit_edge

if.then78.spi_wr8.exit134_crit_edge:              ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit134

if.end.i.i.i.i132:                                ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %prev.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %transfer_list.i.i129, ptr %prev.i.i.i.i123, align 4
  %87 = ptrtoint ptr %transfer_list.i.i129 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %msg.i122, ptr %transfer_list.i.i129, align 4
  %prev3.i.i.i.i131 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i121, i32 0, i32 18, i32 1
  %88 = ptrtoint ptr %prev3.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i.i.i131, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %transfer_list.i.i129, ptr %85, align 4
  br label %spi_wr8.exit134

spi_wr8.exit134:                                  ; preds = %if.end.i.i.i.i132, %if.then78.spi_wr8.exit134_crit_edge
  %call7.i133 = call i32 @spi_sync(ptr noundef %68, ptr noundef nonnull %msg.i122) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i122) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i121) #10
  br label %cleanup

cleanup:                                          ; preds = %spi_wr8.exit134, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max3421_next_transfer(ptr nocapture noundef %hcd, i32 noundef %fast_retransmit) unnamed_addr #2 align 64 {
entry:
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %transfer.i87.i = alloca %struct.spi_transfer, align 4
  %msg.i88.i = alloca %struct.spi_message, align 4
  %transfer.i77.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i78.i = alloca %struct.spi_message, align 4
  %transfer.i63.i = alloca %struct.spi_transfer, align 4
  %msg.i64.i = alloca %struct.spi_message, align 4
  %transfer.i49.i = alloca %struct.spi_transfer, align 4
  %msg.i50.i = alloca %struct.spi_message, align 4
  %transfer.i.i35 = alloca %struct.spi_transfer, align 4
  %msg.i.i36 = alloca %struct.spi_message, align 4
  %transfer.i.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_urb = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %curr_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_urb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ep = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcpriv, align 4
  %pkt_state = getelementptr inbounds %struct.max3421_ep, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pkt_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pkt_state, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %setup_packet.i, align 4
  %11 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  %13 = getelementptr inbounds i8, ptr %transfer.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 188)
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %tx.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %21 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 34, ptr %22, align 1
  %24 = load ptr, ptr %tx.i.i, align 4
  %25 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %transfer.i.i, align 4
  %len7.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %len7.i.i, align 4
  %arrayidx8.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %10, ptr %arrayidx8.i.i, align 4
  %len11.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %len11.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %len11.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %29 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef %29, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %sw.bb.spi_message_add_tail.exit.i.i_crit_edge

sw.bb.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i, ptr %29, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %sw.bb.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i17.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i.i, i32 0, i32 1, i32 18
  %34 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i19.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i17.i.i, ptr noundef %35, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i19.i.i, label %if.end.i.i.i21.i.i, label %spi_message_add_tail.exit.i.i.max3421_ctrl_setup.exit_crit_edge

spi_message_add_tail.exit.i.i.max3421_ctrl_setup.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max3421_ctrl_setup.exit

if.end.i.i.i21.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i17.i.i, ptr %prev.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i, ptr %transfer_list.i17.i.i, align 4
  %prev3.i.i.i20.i.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i.i, i32 0, i32 1, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i20.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i17.i.i, ptr %35, align 4
  br label %max3421_ctrl_setup.exit

max3421_ctrl_setup.exit:                          ; preds = %if.end.i.i.i21.i.i, %spi_message_add_tail.exit.i.i.max3421_ctrl_setup.exit_crit_edge
  %call14.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer.i.i) #10
  br label %if.end16

sw.bb2:                                           ; preds = %if.end
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %transfer_flags.i, align 4
  %42 = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool4.not = icmp eq i32 %42, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %pipe.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %43 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pipe.i, align 4
  %shr.i = lshr i32 %44, 15
  %and.i34 = and i32 %shr.i, 15
  %curr_len.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5
  %45 = ptrtoint ptr %curr_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %curr_len.i, align 4
  %hien.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1
  %46 = ptrtoint ptr %hien.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hien.i, align 4
  %48 = or i8 %47, 4
  store i8 %48, ptr %hien.i, align 4
  br label %if.end16

if.else:                                          ; preds = %sw.bb2
  %49 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hcd, align 8
  %pipe.i37 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %51 = ptrtoint ptr %pipe.i37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pipe.i37, align 4
  %shr.i38 = lshr i32 %52, 15
  %and.i39 = and i32 %shr.i38, 15
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %53 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %transfer_buffer.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %55 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %actual_length.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fast_retransmit)
  %tobool.not.i = icmp eq i32 %fast_retransmit, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %rev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %57 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %58)
  %cmp.i = icmp eq i8 %58, 18
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i35) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i36) #10
  %59 = getelementptr inbounds i8, ptr %transfer.i.i35, i32 4
  %60 = call ptr @memset(ptr %59, i32 0, i32 92)
  %61 = getelementptr inbounds i8, ptr %msg.i.i36, i32 8
  %62 = call ptr @memset(ptr %61, i32 0, i32 40)
  %63 = ptrtoint ptr %msg.i.i36 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %msg.i.i36, ptr %msg.i.i36, align 4
  %prev.i.i.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %msg.i.i36, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i36, ptr %prev.i.i.i.i.i40, align 4
  %resources.i.i.i.i41 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i36, i32 0, i32 10
  %65 = ptrtoint ptr %resources.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %resources.i.i.i.i41, ptr %resources.i.i.i.i41, align 4
  %prev.i2.i.i.i.i42 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i36, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %prev.i2.i.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %resources.i.i.i.i41, ptr %prev.i2.i.i.i.i42, align 4
  %tx.i.i43 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %67 = ptrtoint ptr %tx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx.i.i43, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 58, ptr %68, align 1
  %70 = load ptr, ptr %tx.i.i43, align 4
  %arrayidx4.i.i = getelementptr [2 x i8], ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx4.i.i, align 1
  %72 = load ptr, ptr %tx.i.i43, align 4
  %73 = ptrtoint ptr %transfer.i.i35 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %transfer.i.i35, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i35, i32 0, i32 2
  %74 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i44 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i35, i32 0, i32 18
  %75 = load ptr, ptr %prev.i.i.i.i.i40, align 4
  %call.i.i.i.i.i45 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i44, ptr noundef %75, ptr noundef nonnull %msg.i.i36) #10
  br i1 %call.i.i.i.i.i45, label %if.end.i.i.i.i.i47, label %if.then3.i.spi_wr8.exit.i_crit_edge

if.then3.i.spi_wr8.exit.i_crit_edge:              ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i

if.end.i.i.i.i.i47:                               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %prev.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %transfer_list.i.i.i44, ptr %prev.i.i.i.i.i40, align 4
  %77 = ptrtoint ptr %transfer_list.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg.i.i36, ptr %transfer_list.i.i.i44, align 4
  %prev3.i.i.i.i.i46 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i35, i32 0, i32 18, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i.i.i46, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %transfer_list.i.i.i44, ptr %75, align 4
  br label %spi_wr8.exit.i

spi_wr8.exit.i:                                   ; preds = %if.end.i.i.i.i.i47, %if.then3.i.spi_wr8.exit.i_crit_edge
  %call7.i.i = call i32 @spi_sync(ptr noundef %50, ptr noundef nonnull %msg.i.i36) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i36) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i35) #10
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr.i, align 1
  %82 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i49.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i50.i) #10
  %84 = getelementptr inbounds i8, ptr %transfer.i49.i, i32 4
  %85 = call ptr @memset(ptr %84, i32 0, i32 92)
  %86 = getelementptr inbounds i8, ptr %msg.i50.i, i32 8
  %87 = call ptr @memset(ptr %86, i32 0, i32 40)
  %88 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %msg.i50.i, ptr %msg.i50.i, align 4
  %prev.i.i.i.i51.i = getelementptr inbounds %struct.list_head, ptr %msg.i50.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %msg.i50.i, ptr %prev.i.i.i.i51.i, align 4
  %resources.i.i.i52.i = getelementptr inbounds %struct.spi_message, ptr %msg.i50.i, i32 0, i32 10
  %90 = ptrtoint ptr %resources.i.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %resources.i.i.i52.i, ptr %resources.i.i.i52.i, align 4
  %prev.i2.i.i.i53.i = getelementptr inbounds %struct.spi_message, ptr %msg.i50.i, i32 0, i32 10, i32 1
  %91 = ptrtoint ptr %prev.i2.i.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %resources.i.i.i52.i, ptr %prev.i2.i.i.i53.i, align 4
  %92 = ptrtoint ptr %tx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx.i.i43, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 18, ptr %93, align 1
  %95 = load ptr, ptr %tx.i.i43, align 4
  %arrayidx4.i55.i = getelementptr [2 x i8], ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx4.i55.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %81, ptr %arrayidx4.i55.i, align 1
  %97 = load ptr, ptr %tx.i.i43, align 4
  %98 = ptrtoint ptr %transfer.i49.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %transfer.i49.i, align 4
  %len.i56.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i49.i, i32 0, i32 2
  %99 = ptrtoint ptr %len.i56.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %len.i56.i, align 4
  %transfer_list.i.i57.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i49.i, i32 0, i32 18
  %100 = load ptr, ptr %prev.i.i.i.i51.i, align 4
  %call.i.i.i.i58.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i57.i, ptr noundef %100, ptr noundef nonnull %msg.i50.i) #10
  br i1 %call.i.i.i.i58.i, label %if.end.i.i.i.i60.i, label %spi_wr8.exit.i.spi_wr8.exit62.i_crit_edge

spi_wr8.exit.i.spi_wr8.exit62.i_crit_edge:        ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit62.i

if.end.i.i.i.i60.i:                               ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %prev.i.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %transfer_list.i.i57.i, ptr %prev.i.i.i.i51.i, align 4
  %102 = ptrtoint ptr %transfer_list.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i50.i, ptr %transfer_list.i.i57.i, align 4
  %prev3.i.i.i.i59.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i49.i, i32 0, i32 18, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev3.i.i.i.i59.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %transfer_list.i.i57.i, ptr %100, align 4
  br label %spi_wr8.exit62.i

spi_wr8.exit62.i:                                 ; preds = %if.end.i.i.i.i60.i, %spi_wr8.exit.i.spi_wr8.exit62.i_crit_edge
  %call7.i61.i = call i32 @spi_sync(ptr noundef %83, ptr noundef nonnull %msg.i50.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i50.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i49.i) #10
  %curr_len.i48 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5
  %105 = ptrtoint ptr %curr_len.i48 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %curr_len.i48, align 4
  %conv4.i = trunc i32 %106 to i8
  %107 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i63.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i64.i) #10
  %109 = getelementptr inbounds i8, ptr %transfer.i63.i, i32 4
  %110 = call ptr @memset(ptr %109, i32 0, i32 92)
  %111 = getelementptr inbounds i8, ptr %msg.i64.i, i32 8
  %112 = call ptr @memset(ptr %111, i32 0, i32 40)
  %113 = ptrtoint ptr %msg.i64.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %msg.i64.i, ptr %msg.i64.i, align 4
  %prev.i.i.i.i65.i = getelementptr inbounds %struct.list_head, ptr %msg.i64.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %msg.i64.i, ptr %prev.i.i.i.i65.i, align 4
  %resources.i.i.i66.i = getelementptr inbounds %struct.spi_message, ptr %msg.i64.i, i32 0, i32 10
  %115 = ptrtoint ptr %resources.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %resources.i.i.i66.i, ptr %resources.i.i.i66.i, align 4
  %prev.i2.i.i.i67.i = getelementptr inbounds %struct.spi_message, ptr %msg.i64.i, i32 0, i32 10, i32 1
  %116 = ptrtoint ptr %prev.i2.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %resources.i.i.i66.i, ptr %prev.i2.i.i.i67.i, align 4
  %117 = ptrtoint ptr %tx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx.i.i43, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 58, ptr %118, align 1
  %120 = load ptr, ptr %tx.i.i43, align 4
  %arrayidx4.i69.i = getelementptr [2 x i8], ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %arrayidx4.i69.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv4.i, ptr %arrayidx4.i69.i, align 1
  %122 = load ptr, ptr %tx.i.i43, align 4
  %123 = ptrtoint ptr %transfer.i63.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %transfer.i63.i, align 4
  %len.i70.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i63.i, i32 0, i32 2
  %124 = ptrtoint ptr %len.i70.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2, ptr %len.i70.i, align 4
  %transfer_list.i.i71.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i63.i, i32 0, i32 18
  %125 = load ptr, ptr %prev.i.i.i.i65.i, align 4
  %call.i.i.i.i72.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i71.i, ptr noundef %125, ptr noundef nonnull %msg.i64.i) #10
  br i1 %call.i.i.i.i72.i, label %if.end.i.i.i.i74.i, label %spi_wr8.exit62.i.spi_wr8.exit76.i_crit_edge

spi_wr8.exit62.i.spi_wr8.exit76.i_crit_edge:      ; preds = %spi_wr8.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit76.i

if.end.i.i.i.i74.i:                               ; preds = %spi_wr8.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %prev.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %transfer_list.i.i71.i, ptr %prev.i.i.i.i65.i, align 4
  %127 = ptrtoint ptr %transfer_list.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %msg.i64.i, ptr %transfer_list.i.i71.i, align 4
  %prev3.i.i.i.i73.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i63.i, i32 0, i32 18, i32 1
  %128 = ptrtoint ptr %prev3.i.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i.i.i73.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %transfer_list.i.i71.i, ptr %125, align 4
  br label %spi_wr8.exit76.i

spi_wr8.exit76.i:                                 ; preds = %if.end.i.i.i.i74.i, %spi_wr8.exit62.i.spi_wr8.exit76.i_crit_edge
  %call7.i75.i = call i32 @spi_sync(ptr noundef %108, ptr noundef nonnull %msg.i64.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i64.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i63.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %spi_wr8.exit76.i, %if.then.i.if.end.i_crit_edge
  %or.i = or i32 %and.i39, 32
  br label %if.end16

if.end5.i:                                        ; preds = %if.else
  %dev.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 4
  %and24.i.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end5.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !175

if.end5.i.if.end.i.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1981, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end5.i.if.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.usb_device, ptr %131, i32 0, i32 22, i32 %and.i39
  %132 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %ep.0.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %ep.0.i.i, null
  br i1 %tobool59.not.i.i, label %if.end.i.i.if.end13.i_crit_edge, label %usb_maxpacket.exit.i

if.end.i.i.if.end13.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

usb_maxpacket.exit.i:                             ; preds = %if.end.i.i
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i.i, i32 0, i32 4
  %133 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %135 = and i16 %134, -249
  %136 = tail call i16 @llvm.bswap.i16(i16 %135) #10
  %conv8.i = zext i16 %136 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %136)
  %cmp9.i = icmp ugt i16 %136, 64
  br i1 %cmp9.i, label %do.end.i, label %usb_maxpacket.exit.i.if.end13.i_crit_edge

usb_maxpacket.exit.i.if.end13.i_crit_edge:        ; preds = %usb_maxpacket.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

do.end.i:                                         ; preds = %usb_maxpacket.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.72, i32 noundef %conv8.i, i32 noundef 64) #13
  %urb_done.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %137 = ptrtoint ptr %urb_done.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -90, ptr %urb_done.i, align 4
  br label %cleanup

if.end13.i:                                       ; preds = %usb_maxpacket.exit.i.if.end13.i_crit_edge, %if.end.i.i.if.end13.i_crit_edge
  %conv8105.i = phi i32 [ %conv8.i, %usb_maxpacket.exit.i.if.end13.i_crit_edge ], [ 0, %if.end.i.i.if.end13.i_crit_edge ]
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %138 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %transfer_buffer_length.i, align 4
  %140 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %actual_length.i, align 4
  %sub.i = sub i32 %139, %141
  %142 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %conv8105.i) #10
  %curr_len17.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5
  %143 = ptrtoint ptr %curr_len17.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %curr_len17.i, align 4
  %144 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer.i77.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i78.i) #10
  %146 = getelementptr inbounds i8, ptr %transfer.i77.i, i32 4
  %147 = call ptr @memset(ptr %146, i32 0, i32 188)
  %148 = getelementptr inbounds i8, ptr %msg.i78.i, i32 8
  %149 = call ptr @memset(ptr %148, i32 0, i32 40)
  %150 = ptrtoint ptr %msg.i78.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %msg.i78.i, ptr %msg.i78.i, align 4
  %prev.i.i.i.i79.i = getelementptr inbounds %struct.list_head, ptr %msg.i78.i, i32 0, i32 1
  %151 = ptrtoint ptr %prev.i.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %msg.i78.i, ptr %prev.i.i.i.i79.i, align 4
  %resources.i.i.i80.i = getelementptr inbounds %struct.spi_message, ptr %msg.i78.i, i32 0, i32 10
  %152 = ptrtoint ptr %resources.i.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %resources.i.i.i80.i, ptr %resources.i.i.i80.i, align 4
  %prev.i2.i.i.i81.i = getelementptr inbounds %struct.spi_message, ptr %msg.i78.i, i32 0, i32 10, i32 1
  %153 = ptrtoint ptr %prev.i2.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %resources.i.i.i80.i, ptr %prev.i2.i.i.i81.i, align 4
  %tx.i82.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %154 = ptrtoint ptr %tx.i82.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tx.i82.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 18, ptr %155, align 1
  %157 = load ptr, ptr %tx.i82.i, align 4
  %158 = ptrtoint ptr %transfer.i77.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %transfer.i77.i, align 4
  %len7.i.i49 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i77.i, i32 0, i32 2
  %159 = ptrtoint ptr %len7.i.i49 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %len7.i.i49, align 4
  %arrayidx8.i.i50 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i77.i, i32 0, i32 1
  %160 = ptrtoint ptr %arrayidx8.i.i50 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %add.ptr.i, ptr %arrayidx8.i.i50, align 4
  %len11.i.i51 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i77.i, i32 0, i32 1, i32 2
  %161 = ptrtoint ptr %len11.i.i51 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %142, ptr %len11.i.i51, align 4
  %transfer_list.i.i83.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i77.i, i32 0, i32 18
  %162 = load ptr, ptr %prev.i.i.i.i79.i, align 4
  %call.i.i.i.i84.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i83.i, ptr noundef %162, ptr noundef nonnull %msg.i78.i) #10
  br i1 %call.i.i.i.i84.i, label %if.end.i.i.i.i86.i, label %if.end13.i.spi_message_add_tail.exit.i.i54_crit_edge

if.end13.i.spi_message_add_tail.exit.i.i54_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit.i.i54

if.end.i.i.i.i86.i:                               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %prev.i.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %transfer_list.i.i83.i, ptr %prev.i.i.i.i79.i, align 4
  %164 = ptrtoint ptr %transfer_list.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %msg.i78.i, ptr %transfer_list.i.i83.i, align 4
  %prev3.i.i.i.i85.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i77.i, i32 0, i32 18, i32 1
  %165 = ptrtoint ptr %prev3.i.i.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %162, ptr %prev3.i.i.i.i85.i, align 4
  %166 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %transfer_list.i.i83.i, ptr %162, align 4
  br label %spi_message_add_tail.exit.i.i54

spi_message_add_tail.exit.i.i54:                  ; preds = %if.end.i.i.i.i86.i, %if.end13.i.spi_message_add_tail.exit.i.i54_crit_edge
  %transfer_list.i17.i.i52 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i77.i, i32 0, i32 1, i32 18
  %167 = ptrtoint ptr %prev.i.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i.i.i.i79.i, align 4
  %call.i.i.i19.i.i53 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i17.i.i52, ptr noundef %168, ptr noundef nonnull %msg.i78.i) #10
  br i1 %call.i.i.i19.i.i53, label %if.end.i.i.i21.i.i56, label %spi_message_add_tail.exit.i.i54.spi_wr_buf.exit.i_crit_edge

spi_message_add_tail.exit.i.i54.spi_wr_buf.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr_buf.exit.i

if.end.i.i.i21.i.i56:                             ; preds = %spi_message_add_tail.exit.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %prev.i.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %transfer_list.i17.i.i52, ptr %prev.i.i.i.i79.i, align 4
  %170 = ptrtoint ptr %transfer_list.i17.i.i52 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %msg.i78.i, ptr %transfer_list.i17.i.i52, align 4
  %prev3.i.i.i20.i.i55 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i77.i, i32 0, i32 1, i32 18, i32 1
  %171 = ptrtoint ptr %prev3.i.i.i20.i.i55 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %prev3.i.i.i20.i.i55, align 4
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %transfer_list.i17.i.i52, ptr %168, align 4
  br label %spi_wr_buf.exit.i

spi_wr_buf.exit.i:                                ; preds = %if.end.i.i.i21.i.i56, %spi_message_add_tail.exit.i.i54.spi_wr_buf.exit.i_crit_edge
  %call14.i.i57 = call i32 @spi_sync(ptr noundef %145, ptr noundef nonnull %msg.i78.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i78.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer.i77.i) #10
  %173 = ptrtoint ptr %curr_len17.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %curr_len17.i, align 4
  %conv20.i = trunc i32 %174 to i8
  %175 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i87.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i88.i) #10
  %177 = getelementptr inbounds i8, ptr %transfer.i87.i, i32 4
  %178 = call ptr @memset(ptr %177, i32 0, i32 92)
  %179 = getelementptr inbounds i8, ptr %msg.i88.i, i32 8
  %180 = call ptr @memset(ptr %179, i32 0, i32 40)
  %181 = ptrtoint ptr %msg.i88.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %msg.i88.i, ptr %msg.i88.i, align 4
  %prev.i.i.i.i89.i = getelementptr inbounds %struct.list_head, ptr %msg.i88.i, i32 0, i32 1
  %182 = ptrtoint ptr %prev.i.i.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %msg.i88.i, ptr %prev.i.i.i.i89.i, align 4
  %resources.i.i.i90.i = getelementptr inbounds %struct.spi_message, ptr %msg.i88.i, i32 0, i32 10
  %183 = ptrtoint ptr %resources.i.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %resources.i.i.i90.i, ptr %resources.i.i.i90.i, align 4
  %prev.i2.i.i.i91.i = getelementptr inbounds %struct.spi_message, ptr %msg.i88.i, i32 0, i32 10, i32 1
  %184 = ptrtoint ptr %prev.i2.i.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %resources.i.i.i90.i, ptr %prev.i2.i.i.i91.i, align 4
  %185 = ptrtoint ptr %tx.i82.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tx.i82.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 58, ptr %186, align 1
  %188 = load ptr, ptr %tx.i82.i, align 4
  %arrayidx4.i93.i = getelementptr [2 x i8], ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %arrayidx4.i93.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv20.i, ptr %arrayidx4.i93.i, align 1
  %190 = load ptr, ptr %tx.i82.i, align 4
  %191 = ptrtoint ptr %transfer.i87.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %transfer.i87.i, align 4
  %len.i94.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i87.i, i32 0, i32 2
  %192 = ptrtoint ptr %len.i94.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 2, ptr %len.i94.i, align 4
  %transfer_list.i.i95.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i87.i, i32 0, i32 18
  %193 = load ptr, ptr %prev.i.i.i.i89.i, align 4
  %call.i.i.i.i96.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i95.i, ptr noundef %193, ptr noundef nonnull %msg.i88.i) #10
  br i1 %call.i.i.i.i96.i, label %if.end.i.i.i.i98.i, label %spi_wr_buf.exit.i.spi_wr8.exit101.i_crit_edge

spi_wr_buf.exit.i.spi_wr8.exit101.i_crit_edge:    ; preds = %spi_wr_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit101.i

if.end.i.i.i.i98.i:                               ; preds = %spi_wr_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %prev.i.i.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %transfer_list.i.i95.i, ptr %prev.i.i.i.i89.i, align 4
  %195 = ptrtoint ptr %transfer_list.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %msg.i88.i, ptr %transfer_list.i.i95.i, align 4
  %prev3.i.i.i.i97.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i87.i, i32 0, i32 18, i32 1
  %196 = ptrtoint ptr %prev3.i.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %193, ptr %prev3.i.i.i.i97.i, align 4
  %197 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile ptr %transfer_list.i.i95.i, ptr %193, align 4
  br label %spi_wr8.exit101.i

spi_wr8.exit101.i:                                ; preds = %if.end.i.i.i.i98.i, %spi_wr_buf.exit.i.spi_wr8.exit101.i_crit_edge
  %call7.i99.i = call i32 @spi_sync(ptr noundef %176, ptr noundef nonnull %msg.i88.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i88.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i87.i) #10
  %or21.i = or i32 %and.i39, 32
  br label %if.end16

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_flags.i58 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %198 = ptrtoint ptr %transfer_flags.i58 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %transfer_flags.i58, align 4
  %200 = and i32 %199, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool11.not = icmp eq i32 %200, 0
  %. = select i1 %tobool11.not, i32 128, i32 160
  br label %if.end16

if.end16:                                         ; preds = %sw.bb9, %spi_wr8.exit101.i, %if.end.i, %if.then5, %max3421_ctrl_setup.exit
  %cmd.0.ph = phi i32 [ %or21.i, %spi_wr8.exit101.i ], [ %or.i, %if.end.i ], [ %., %sw.bb9 ], [ 16, %max3421_ctrl_setup.exit ], [ %and.i34, %if.then5 ]
  %conv = trunc i32 %cmd.0.ph to i8
  %201 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hcd, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  %203 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %204 = call ptr @memset(ptr %203, i32 0, i32 92)
  %205 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %206 = call ptr @memset(ptr %205, i32 0, i32 40)
  %207 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %208 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %209 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %210 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %tx.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %211 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %tx.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 -14, ptr %212, align 1
  %214 = load ptr, ptr %tx.i, align 4
  %arrayidx4.i = getelementptr [2 x i8], ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv, ptr %arrayidx4.i, align 1
  %216 = load ptr, ptr %tx.i, align 4
  %217 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %216, ptr %transfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %218 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %219 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %219, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end16.spi_wr8.exit_crit_edge

if.end16.spi_wr8.exit_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %220 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %221 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %222 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %219, ptr %prev3.i.i.i.i, align 4
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %transfer_list.i.i, ptr %219, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i, %if.end16.spi_wr8.exit_crit_edge
  %call7.i = call i32 @spi_sync(ptr noundef %202, ptr noundef nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  %hien = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1
  %224 = ptrtoint ptr %hien to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %hien, align 4
  %226 = or i8 %225, -128
  store i8 %226, ptr %hien, align 4
  br label %cleanup

cleanup:                                          ; preds = %spi_wr8.exit, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !140, !141, !142, !143, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161}
!llvm.named.register.sp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__initcall__kmod_max3421_hcd__253_1968_max3421_driver_init6, !1, !"__initcall__kmod_max3421_hcd__253_1968_max3421_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1968, i32 1}
!2 = !{ptr @__exitcall_max3421_driver_exit, !1, !"__exitcall_max3421_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description254, !4, !"__UNIQUE_ID_description254", i1 false, i1 false}
!4 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1970, i32 1}
!5 = !{ptr @__UNIQUE_ID_author255, !6, !"__UNIQUE_ID_author255", i1 false, i1 false}
!6 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1971, i32 1}
!7 = !{ptr @__UNIQUE_ID_file256, !8, !"__UNIQUE_ID_file256", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1972, i32 1}
!9 = !{ptr @__UNIQUE_ID_license257, !8, !"__UNIQUE_ID_license257", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1963, i32 11}
!12 = !{ptr @max3421_driver, !13, !"max3421_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1959, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1833, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max3421_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max3421_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1838, i32 3}
!24 = !{ptr @max3421_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max3421_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1857, i32 3}
!28 = !{ptr @max3421_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @max3421_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1862, i32 3}
!32 = !{ptr @max3421_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max3421_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1867, i32 3}
!36 = !{ptr @max3421_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @max3421_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1876, i32 3}
!40 = !{ptr @max3421_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @max3421_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1891, i32 28}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1894, i32 3}
!46 = !{ptr @max3421_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @max3421_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1901, i32 3}
!50 = !{ptr @max3421_probe._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @max3421_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1906, i32 27}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1908, i32 3}
!56 = !{ptr @max3421_probe._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @max3421_probe._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1810, i32 52}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1812, i32 3}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @max3421_of_vbus_en_pin._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @max3421_of_vbus_en_pin._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1815, i32 2}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @max3421_of_vbus_en_pin._entry.35, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @max3421_of_vbus_en_pin._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1785, i32 19}
!72 = !{ptr @max3421_hcd_desc, !73, !"max3421_hcd_desc", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1783, i32 31}
!74 = !{ptr @max3421_start.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1485, i32 2}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1514, i32 4}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @max3421_urb_enqueue._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @max3421_urb_enqueue._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1621, i32 3}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @max3421_hub_status_data.__UNIQUE_ID_ddebug249, !83, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1695, i32 4}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @max3421_hub_control.__UNIQUE_ID_ddebug250, !88, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1744, i32 4}
!93 = !{ptr @max3421_hub_control.__UNIQUE_ID_ddebug251, !92, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1760, i32 3}
!96 = !{ptr @max3421_hub_control.__UNIQUE_ID_ddebug252, !95, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1390, i32 3}
!99 = !{ptr @max3421_spi_thread._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @max3421_spi_thread._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1393, i32 2}
!103 = !{ptr @max3421_spi_thread._entry.51, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @max3421_spi_thread._entry_ptr.53, !102, !"_entry_ptr", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1406, i32 4}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1410, i32 4}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1449, i32 2}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1450, i32 2}
!113 = !{ptr @max3421_spi_thread._entry.56, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @max3421_spi_thread._entry_ptr.58, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1243, i32 4}
!117 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @max3421_handle_irqs._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @max3421_handle_irqs._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1247, i32 3}
!122 = !{ptr @max3421_handle_irqs._entry.61, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @max3421_handle_irqs._entry_ptr.63, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1249, i32 3}
!126 = !{ptr @max3421_handle_irqs._entry.64, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @max3421_handle_irqs._entry_ptr.66, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/host/max3421-hcd.c", i32 883, i32 3}
!130 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @max3421_handle_error.__UNIQUE_ID_ddebug243, !129, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!132 = !{ptr @max3421_handle_error.__UNIQUE_ID_ddebug244, !133, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!133 = !{!"../drivers/usb/host/max3421-hcd.c", i32 911, i32 4}
!134 = !{ptr @max3421_handle_error.__UNIQUE_ID_ddebug245, !135, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!135 = !{!"../drivers/usb/host/max3421-hcd.c", i32 917, i32 3}
!136 = !{ptr @hrsl_to_error, !137, !"hrsl_to_error", i1 false, i1 false}
!137 = !{!"../drivers/usb/host/max3421-hcd.c", i32 294, i32 18}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/host/max3421-hcd.c", i32 961, i32 3}
!140 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @max3421_transfer_in_done._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @max3421_transfer_in_done._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/host/max3421-hcd.c", i32 556, i32 3}
!147 = !{ptr @max3421_transfer_out._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @max3421_transfer_out._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/host/max3421-hcd.c", i32 678, i32 5}
!151 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @max3421_select_and_start_urb.__UNIQUE_ID_ddebug241, !150, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1302, i32 4}
!155 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @max3421_reset_hcd._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @max3421_reset_hcd._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/host/max3421-hcd.c", i32 786, i32 5}
!160 = !{ptr @max3421_check_unlink.__UNIQUE_ID_ddebug242, !159, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!161 = !{ptr @max3421_of_match_table, !162, !"max3421_of_match_table", i1 false, i1 false}
!162 = !{!"../drivers/usb/host/max3421-hcd.c", i32 1953, i32 34}
!163 = !{!"sp"}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"auto-init"}
!174 = !{i64 2154575419}
!175 = !{!"branch_weights", i32 2000, i32 1}
!176 = !{!"branch_weights", i32 1, i32 2000}
!177 = !{i64 2154589943}
!178 = !{i64 2149024604, i64 2149024609, i64 2149024622, i64 2149024666, i64 2149024700, i64 2149024721}
