; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/adutux.c_pt.bc'
source_filename = "../drivers/usb/misc/adutux.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.adu_device = type { %struct.mutex, ptr, ptr, i32, [8 x i8], i32, i8, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.67 = type { ptr }

@__initcall__kmod_adutux__263_792_adu_driver_init6 = internal global ptr @adu_driver_init, section ".initcall6.init", align 4
@adu_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @adu_probe, ptr @adu_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_adu_driver_exit = internal global ptr @adu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author264 = internal constant [26 x i8] c"adutux.author=John Homppi\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [47 x i8] c"adutux.description=adutux (see www.ontrak.net)\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [36 x i8] c"adutux.file=drivers/usb/misc/adutux\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [19 x i8] c"adutux.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"adutux\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2567, i16 100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2567, i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2567, i16 130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2567, i16 200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2567, i16 208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2567, i16 218, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@adu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dev->mtx\00", [22 x i8] zeroinitializer }, align 32
@adu_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->buflock\00", [18 x i8] zeroinitializer }, align 32
@adu_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->read_wait\00", [16 x i8] zeroinitializer }, align 32
@adu_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->write_wait\00", [47 x i8] zeroinitializer }, align 32
@adu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 675, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"interrupt endpoints not found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adu_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/misc/adutux.c\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adu_probe._entry_ptr = internal global ptr @adu_probe._entry, section ".printk_index", align 4
@adu_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 722, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not retrieve serial number\0A\00", [62 x i8] zeroinitializer }, align 32
@adu_probe._entry_ptr.15 = internal global ptr @adu_probe._entry.13, section ".printk_index", align 4
@adu_probe.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.16, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serial_number=%s\00", [47 x i8] zeroinitializer }, align 32
@adu_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.24, ptr null, ptr @adu_fops, i32 0 }, [16 x i8] zeroinitializer }, align 32
@adu_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.10, i32 735, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not able to get a minor for this device.\0A\00", [54 x i8] zeroinitializer }, align 32
@adu_probe._entry_ptr.19 = internal global ptr @adu_probe._entry.17, section ".printk_index", align 4
@adu_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.10, i32 745, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ADU%d %s now attached to /dev/usb/adutux%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adu_probe._entry_ptr.23 = internal global ptr @adu_probe._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb/adutux%d\00", [19 x i8] zeroinitializer }, align 32
@adu_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @adu_read, ptr @adu_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adu_open, ptr null, ptr @adu_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@adu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.10, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013adutux: No device or device unplugged %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adu_read\00", [23 x i8] zeroinitializer }, align 32
@adu_read._entry_ptr = internal global ptr @adu_read._entry, section ".printk_index", align 4
@adu_read.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.27, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s : read request of 0 bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@adu_read.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.28, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s : about to start looping\0A\00", [35 x i8] zeroinitializer }, align 32
@adu_read.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.29, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s : while, data_in_secondary=%zu, status=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@adu_read.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.30, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s : swap, read_buffer_length = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@adu_read.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.31, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : submitted already\0A\00", [40 x i8] zeroinitializer }, align 32
@adu_read.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.32, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s : initiate input\0A\00", [43 x i8] zeroinitializer }, align 32
@adu_read.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.33, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s : submit failed\0A\00", [44 x i8] zeroinitializer }, align 32
@adu_read.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.35, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s : timeout\0A\00", [18 x i8] zeroinitializer }, align 32
@adu_read.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.36, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s : signal pending\0A\00", [43 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.adu_interrupt_in_callback = private unnamed_addr constant [26 x i8] c"adu_interrupt_in_callback\00", align 1
@adu_interrupt_in_callback.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.adu_interrupt_in_callback, ptr @.str.10, ptr @.str.40, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s : nonzero status received: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@adu_interrupt_in_callback.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.adu_interrupt_in_callback, ptr @.str.10, ptr @.str.41, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s reading  %d\0A\00", [16 x i8] zeroinitializer }, align 32
@adu_interrupt_in_callback.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.adu_interrupt_in_callback, ptr @.str.10, ptr @.str.42, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s : read_buffer overflow\0A\00", [37 x i8] zeroinitializer }, align 32
@adu_debug_data.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.10, ptr @.str.44, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adu_debug_data\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@adu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.45, ptr @.str.10, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adu_write\00", [22 x i8] zeroinitializer }, align 32
@adu_write._entry_ptr = internal global ptr @adu_write._entry, section ".printk_index", align 4
@adu_write.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.10, ptr @.str.46, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s : write request of 0 bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@adu_write.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.10, ptr @.str.47, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s : interrupted\0A\00", [46 x i8] zeroinitializer }, align 32
@adu_write.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.10, ptr @.str.49, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - command timed out.\0A\00", [39 x i8] zeroinitializer }, align 32
@adu_write.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.10, ptr @.str.50, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s : in progress, count = %zd\0A\00", [33 x i8] zeroinitializer }, align 32
@adu_write.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.10, ptr @.str.52, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s : sending, count = %zd\0A\00", [37 x i8] zeroinitializer }, align 32
@adu_write.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.10, ptr @.str.53, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s : buffer_size = %zd, count = %zd, bytes_to_write = %zd\0A\00", [37 x i8] zeroinitializer }, align 32
@adu_write._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.45, ptr @.str.10, i32 600, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't submit interrupt_out_urb %d\0A\00", [58 x i8] zeroinitializer }, align 32
@adu_write._entry_ptr.56 = internal global ptr @adu_write._entry.54, section ".printk_index", align 4
@__func__.adu_interrupt_out_callback = private unnamed_addr constant [27 x i8] c"adu_interrupt_out_callback\00", align 1
@adu_interrupt_out_callback.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.adu_interrupt_out_callback, ptr @.str.10, ptr @.str.57, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s :nonzero status received: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@adutux_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @adutux_mutex, i64 52), ptr getelementptr (i8, ptr @adutux_mutex, i64 52) }, ptr @adutux_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@adu_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.10, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013adutux: %s - error, can't find device for minor %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adu_open\00", [23 x i8] zeroinitializer }, align 32
@adu_open._entry_ptr = internal global ptr @adu_open._entry, section ".printk_index", align 4
@adu_open.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.10, ptr @.str.60, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: open count %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adutux_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adutux_mutex\00", [19 x i8] zeroinitializer }, align 32
@adu_release.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.10, ptr @.str.64, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adu_release\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : device not opened\0A\00", [40 x i8] zeroinitializer }, align 32
@adu_release_internal.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.10, ptr @.str.66, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adu_release_internal\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s : open count %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"adu_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 785, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 792, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 36, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 664, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 665, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 667, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 668, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 675, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 722, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 726, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [10 x i8] c"adu_class\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 637, i32 32 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 735, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 743, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 638, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant [9 x i8] c"adu_fops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 624, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 362, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 368, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 374, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 377, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 397, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 412, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 417, i32 6 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 437, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 458, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 465, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 230, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 214, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 174, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 170, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 186, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 189, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 108, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 523, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 529, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 543, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 550, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 562, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 569, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 575, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 599, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 214, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant [13 x i8] c"adutux_mutex\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 242, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 261, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 101, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 326, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [29 x i8] c"../drivers/usb/misc/adutux.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 299, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_adu_driver_exit, ptr @__initcall__kmod_adutux__263_792_adu_driver_init6, ptr @adu_driver_exit, ptr @adu_open._entry, ptr @adu_open._entry_ptr, ptr @adu_probe._entry, ptr @adu_probe._entry.13, ptr @adu_probe._entry.17, ptr @adu_probe._entry.20, ptr @adu_probe._entry_ptr, ptr @adu_probe._entry_ptr.15, ptr @adu_probe._entry_ptr.19, ptr @adu_probe._entry_ptr.23, ptr @adu_read._entry, ptr @adu_read._entry_ptr, ptr @adu_write._entry, ptr @adu_write._entry.54, ptr @adu_write._entry_ptr, ptr @adu_write._entry_ptr.56, ptr @adu_driver, ptr @.str, ptr @device_table, ptr @adu_probe.__key, ptr @.str.1, ptr @adu_probe.__key.2, ptr @.str.3, ptr @adu_probe.__key.4, ptr @.str.5, ptr @adu_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @adu_class, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @adu_fops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @adutux_mutex, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_write._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adutux_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adu_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @adu_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @adu_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adu_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 320) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @adu_probe.__key) #9
  %buflock = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %buflock, ptr noundef nonnull @.str.3, ptr noundef nonnull @adu_probe.__key.2, i16 noundef signext 3) #9
  %call7 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #9
  %udev8 = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %udev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %udev8, align 4
  %read_wait = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %read_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @adu_probe.__key.4) #9
  %write_wait = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %write_wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @adu_probe.__key.6) #9
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %interrupt_in_endpoint = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 16
  %interrupt_out_endpoint = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 20
  %call15 = tail call i32 @usb_find_common_endpoints_reverse(ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef %interrupt_in_endpoint, ptr noundef %interrupt_out_endpoint) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.8) #13
  br label %error

if.end22:                                         ; preds = %do.body
  %6 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_in_endpoint, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wMaxPacketSize.i, align 1
  %10 = and i16 %9, -249
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  %and.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %interrupt_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_out_endpoint, align 4
  %wMaxPacketSize.i257 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %wMaxPacketSize.i257 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wMaxPacketSize.i257, align 1
  %16 = and i16 %15, -249
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %and.i258 = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %and.i, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #14
  %read_buffer_primary = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %read_buffer_primary to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i, ptr %read_buffer_primary, align 8
  %tobool29.not = icmp eq ptr %call9.i, null
  br i1 %tobool29.not, label %if.end22.error_crit_edge, label %if.end31

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end31:                                         ; preds = %if.end22
  %19 = call ptr @memset(ptr %call9.i, i32 97, i32 %and.i)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %and.i
  %20 = call ptr @memset(ptr %add.ptr, i32 98, i32 %and.i)
  %mul35 = shl nuw nsw i32 %and.i, 1
  %add.ptr36 = getelementptr i8, ptr %call9.i, i32 %mul35
  %21 = call ptr @memset(ptr %add.ptr36, i32 99, i32 %and.i)
  %mul38 = mul nuw nsw i32 %and.i, 3
  %add.ptr39 = getelementptr i8, ptr %call9.i, i32 %mul38
  %22 = call ptr @memset(ptr %add.ptr39, i32 100, i32 %and.i)
  %call9.i207 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #14
  %read_buffer_secondary = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %read_buffer_secondary to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i207, ptr %read_buffer_secondary, align 8
  %tobool43.not = icmp eq ptr %call9.i207, null
  br i1 %tobool43.not, label %if.end31.error_crit_edge, label %if.end45

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end45:                                         ; preds = %if.end31
  %24 = call ptr @memset(ptr %call9.i207, i32 101, i32 %and.i)
  %add.ptr48 = getelementptr i8, ptr %call9.i207, i32 %and.i
  %25 = call ptr @memset(ptr %add.ptr48, i32 102, i32 %and.i)
  %add.ptr51 = getelementptr i8, ptr %call9.i207, i32 %mul35
  %26 = call ptr @memset(ptr %add.ptr51, i32 103, i32 %and.i)
  %add.ptr54 = getelementptr i8, ptr %call9.i207, i32 %mul38
  %27 = call ptr @memset(ptr %add.ptr54, i32 104, i32 %and.i)
  %call9.i230 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3264) #14
  %interrupt_in_buffer = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 15
  %28 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i230, ptr %interrupt_in_buffer, align 8
  %tobool57.not = icmp eq ptr %call9.i230, null
  br i1 %tobool57.not, label %if.end45.error_crit_edge, label %if.end59

if.end45.error_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end59:                                         ; preds = %if.end45
  %29 = call ptr @memset(ptr %call9.i230, i32 105, i32 %and.i)
  %call61 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %interrupt_in_urb = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 17
  %30 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call61, ptr %interrupt_in_urb, align 8
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %if.end59.error_crit_edge, label %if.end8.i254

if.end59.error_crit_edge:                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end8.i254:                                     ; preds = %if.end59
  %call9.i253 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i258, i32 noundef 3264) #14
  %interrupt_out_buffer = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i253, ptr %interrupt_out_buffer, align 8
  %tobool68.not = icmp eq ptr %call9.i253, null
  br i1 %tobool68.not, label %if.end8.i254.error_crit_edge, label %if.end70

if.end8.i254.error_crit_edge:                     ; preds = %if.end8.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end70:                                         ; preds = %if.end8.i254
  %call71 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %interrupt_out_urb = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 21
  %32 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call71, ptr %interrupt_out_urb, align 8
  %tobool73.not = icmp eq ptr %call71, null
  br i1 %tobool73.not, label %if.end70.error_crit_edge, label %if.end75

if.end70.error_crit_edge:                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end75:                                         ; preds = %if.end70
  %iSerialNumber = getelementptr i8, ptr %1, i32 944
  %33 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iSerialNumber, align 8
  %conv = zext i8 %34 to i32
  %serial_number = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 4
  %call76 = tail call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv, ptr noundef %serial_number, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.end81, label %do.body84

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %dev82 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82, ptr noundef nonnull @.str.14) #13
  br label %error

do.body84:                                        ; preds = %if.end75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_probe.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_probe, %if.then89)) #9
          to label %do.end95 [label %if.then89], !srcloc !182

if.then89:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  %dev90 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_probe.__UNIQUE_ID_ddebug262, ptr noundef %dev90, ptr noundef nonnull @.str.16, ptr noundef %serial_number) #9
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %do.body84
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call96 = tail call i32 @usb_register_dev(ptr noundef %interface, ptr noundef nonnull @adu_class) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end103, label %do.end101

do.end101:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  %dev102 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev102, ptr noundef nonnull @.str.18) #13
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %error

if.end103:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  %minor = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 4
  %37 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %minor, align 8
  %minor104 = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %minor104 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %minor104, align 4
  %dev108 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %idProduct = getelementptr i8, ptr %1, i32 938
  %40 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idProduct, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv110 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev108, ptr noundef nonnull @.str.21, i32 noundef %conv110, ptr noundef %serial_number, i32 noundef %38) #13
  br label %cleanup

error:                                            ; preds = %do.end101, %do.end81, %if.end70.error_crit_edge, %if.end8.i254.error_crit_edge, %if.end59.error_crit_edge, %if.end45.error_crit_edge, %if.end31.error_crit_edge, %if.end22.error_crit_edge, %do.end20
  %retval1.0 = phi i32 [ %call15, %do.end20 ], [ %call96, %do.end101 ], [ -5, %do.end81 ], [ -12, %if.end70.error_crit_edge ], [ -12, %if.end8.i254.error_crit_edge ], [ -12, %if.end59.error_crit_edge ], [ -12, %if.end45.error_crit_edge ], [ -12, %if.end31.error_crit_edge ], [ -12, %if.end22.error_crit_edge ]
  %interrupt_in_urb.i = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 17
  %43 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %interrupt_in_urb.i, align 8
  tail call void @usb_free_urb(ptr noundef %44) #9
  %interrupt_out_urb.i = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 21
  %45 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %interrupt_out_urb.i, align 8
  tail call void @usb_free_urb(ptr noundef %46) #9
  %read_buffer_primary.i = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %read_buffer_primary.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_buffer_primary.i, align 8
  tail call void @kfree(ptr noundef %48) #9
  %read_buffer_secondary.i = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %read_buffer_secondary.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_buffer_secondary.i, align 8
  tail call void @kfree(ptr noundef %50) #9
  %interrupt_in_buffer.i = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 15
  %51 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %interrupt_in_buffer.i, align 8
  tail call void @kfree(ptr noundef %52) #9
  %interrupt_out_buffer.i = getelementptr inbounds %struct.adu_device, ptr %call7.i.i, i32 0, i32 19
  %53 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %interrupt_out_buffer.i, align 8
  tail call void @kfree(ptr noundef %54) #9
  %55 = ptrtoint ptr %udev8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %udev8, align 4
  tail call void @usb_put_dev(ptr noundef %56) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end103, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %error ], [ 0, %if.end103 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adu_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_deregister_dev(ptr noundef %interface, ptr noundef nonnull @adu_class) #9
  %interrupt_in_urb = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_poison_urb(ptr noundef %3) #9
  %interrupt_out_urb = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_poison_urb(ptr noundef %5) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @adutux_mutex, i32 noundef 0) #9
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %disconnected = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %disconnected, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disconnected, align 4
  tail call void @mutex_unlock(ptr noundef %1) #9
  %open_count = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #9
  %12 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #9
  %read_buffer_primary.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %read_buffer_primary.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_buffer_primary.i, align 4
  tail call void @kfree(ptr noundef %15) #9
  %read_buffer_secondary.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %read_buffer_secondary.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_buffer_secondary.i, align 4
  tail call void @kfree(ptr noundef %17) #9
  %interrupt_in_buffer.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %19) #9
  %interrupt_out_buffer.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interrupt_out_buffer.i, align 4
  tail call void @kfree(ptr noundef %21) #9
  %udev.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev.i, align 4
  tail call void @usb_put_dev(ptr noundef %23) #9
  tail call void @kfree(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @adutux_mutex) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints_reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adu_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !172) #9
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
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %14, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup485_crit_edge

entry.cleanup485_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup485

if.end:                                           ; preds = %entry
  %disconnected = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef -19) #13
  br label %exit

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body10, label %if.end21

do.body10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then16)) #9
          to label %exit [label %if.then16], !srcloc !182

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug240, ptr noundef %dev17, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #9
  br label %exit

if.end21:                                         ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then34)) #9
          to label %do.end39 [label %if.then34], !srcloc !182

if.then34:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %udev35 = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %udev35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev35, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug241, ptr noundef %dev36, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %if.end21
  %secondary_tail = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 11
  %secondary_head = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 10
  %udev54 = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 1
  %interrupt_in_urb = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 17
  %read_buffer_secondary = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 9
  %buflock = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 12
  %read_buffer_length = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 8
  %read_buffer_primary = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 7
  %read_urb_finished = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 18
  %interrupt_in_endpoint = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 16
  %interrupt_in_buffer = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 15
  %read_wait = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %do.end39
  %bytes_read.0733 = phi i32 [ 0, %do.end39 ], [ %bytes_read.0.be, %while.cond.backedge.while.body_crit_edge ]
  %bytes_to_read.0732 = phi i32 [ %count, %do.end39 ], [ %bytes_to_read.0.be, %while.cond.backedge.while.body_crit_edge ]
  %retval1.0731 = phi i32 [ 0, %do.end39 ], [ %retval1.0.be, %while.cond.backedge.while.body_crit_edge ]
  %timeout.0729 = phi i32 [ 200, %do.end39 ], [ %timeout.0.be, %while.cond.backedge.while.body_crit_edge ]
  %should_submit.0728 = phi i32 [ 0, %do.end39 ], [ %should_submit.0.be, %while.cond.backedge.while.body_crit_edge ]
  %20 = ptrtoint ptr %secondary_tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %secondary_tail, align 4
  %22 = ptrtoint ptr %secondary_head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %secondary_head, align 4
  %sub = sub i32 %21, %23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then53)) #9
          to label %do.end58 [label %if.then53], !srcloc !182

if.then53:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev54, align 4
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interrupt_in_urb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug242, ptr noundef %dev55, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %sub, i32 noundef %29) #9
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %tobool59.not = icmp eq i32 %21, %23
  br i1 %tobool59.not, label %do.body72, label %if.then60

if.then60:                                        ; preds = %do.end58
  %30 = call i32 @llvm.umin.i32(i32 %bytes_to_read.0732, i32 %sub)
  %31 = ptrtoint ptr %read_buffer_secondary to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_buffer_secondary, align 4
  %33 = ptrtoint ptr %secondary_head to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %secondary_head, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp9.i.i = icmp slt i32 %30, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then60
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.exit_crit_edge, label %if.then27.i.i, !prof !183

land.rhs16.i.i.exit_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %exit

if.then.i.i.i:                                    ; preds = %if.then60
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %30, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.exit_crit_edge:                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %30, i32 -1226833920) #15, !srcloc !184
  %asmresult.i.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.exit_crit_edge

if.end.i.i.exit_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %30) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %add.ptr, i32 noundef %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool65.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool65.not, label %cleanup.thread, label %copy_to_user.exit.exit_crit_edge

copy_to_user.exit.exit_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

cleanup.thread:                                   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %secondary_head to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %secondary_head, align 4
  %add = add i32 %37, %30
  store i32 %add, ptr %secondary_head, align 4
  %add69 = add i32 %30, %bytes_read.0733
  %sub70 = sub i32 %bytes_to_read.0732, %30
  br label %while.cond.backedge

do.body72:                                        ; preds = %do.end58
  %call76 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock) #9
  %38 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %read_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool81.not = icmp eq i32 %39, 0
  br i1 %tobool81.not, label %if.else113, label %do.body83

do.body83:                                        ; preds = %do.body72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then95)) #9
          to label %do.body102 [label %if.then95], !srcloc !182

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev54, align 4
  %dev97 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %read_buffer_length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug245, ptr noundef %dev97, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, i32 noundef %43) #9
  br label %do.body102

do.body102:                                       ; preds = %if.then95, %do.body83
  %44 = ptrtoint ptr %read_buffer_primary to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_buffer_primary, align 4
  %46 = ptrtoint ptr %read_buffer_secondary to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_buffer_secondary, align 4
  store ptr %47, ptr %read_buffer_primary, align 4
  store ptr %45, ptr %read_buffer_secondary, align 4
  %48 = ptrtoint ptr %secondary_head to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %secondary_head, align 4
  %49 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %read_buffer_length, align 4
  %51 = ptrtoint ptr %secondary_tail to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %secondary_tail, align 4
  store i32 0, ptr %read_buffer_length, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call76) #9
  br label %while.cond.backedge

if.else113:                                       ; preds = %do.body72
  %52 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %read_urb_finished, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool114.not = icmp eq i32 %53, 0
  br i1 %tobool114.not, label %if.then115, label %do.body136

if.then115:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call76) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then129)) #9
          to label %__here [label %if.then129], !srcloc !182

if.then129:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev54, align 4
  %dev131 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug246, ptr noundef %dev131, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26) #9
  br label %__here

do.body136:                                       ; preds = %if.else113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then148)) #9
          to label %do.end153 [label %if.then148], !srcloc !182

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udev54, align 4
  %dev150 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug247, ptr noundef %dev150, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.26) #9
  br label %do.end153

do.end153:                                        ; preds = %if.then148, %do.body136
  %58 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %read_urb_finished, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call76) #9
  %59 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %interrupt_in_urb, align 4
  %61 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %udev54, align 4
  %63 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %interrupt_in_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bEndpointAddress, align 1
  %conv159 = zext i8 %66 to i32
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %62, align 8
  %shl.i = shl i32 %68, 8
  %shl1.i = shl nuw nsw i32 %conv159, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or161 = or i32 %or.i, 1073741952
  %69 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %interrupt_in_buffer, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %64, i32 0, i32 4
  %71 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %wMaxPacketSize.i, align 1
  %73 = and i16 %72, -249
  %74 = call i16 @llvm.bswap.i16(i16 %73) #9
  %and.i615 = zext i16 %74 to i32
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %64, i32 0, i32 5
  %75 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bInterval, align 1
  %conv165 = zext i8 %76 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 8
  %77 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %62, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 10
  %78 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or161, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 14
  %79 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %70, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 19
  %80 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and.i615, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 28
  %81 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @adu_interrupt_in_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 27
  %82 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %14, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 4
  %83 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp.i = icmp eq i32 %84, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp6.i = icmp ugt i32 %84, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i617, label %do.end153.usb_fill_int_urb.exit_crit_edge

do.end153.usb_fill_int_urb.exit_crit_edge:        ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i617:                                     ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #11
  %85 = call i32 @llvm.smax.i32(i32 %conv165, i32 1) #9
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 16) #9
  %sub.i = add nsw i32 %86, -1
  %shl.i616 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i617, %do.end153.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i616, %if.then.i617 ], [ %conv165, %do.end153.usb_fill_int_urb.exit_crit_edge ]
  %87 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 25
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %interval.sink.i, ptr %87, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 23
  %89 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %start_frame.i, align 4
  %90 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %interrupt_in_urb, align 4
  %call167 = call i32 @usb_submit_urb(ptr noundef %91, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %usb_fill_int_urb.exit.__here_crit_edge, label %if.then169

usb_fill_int_urb.exit.__here_crit_edge:           ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

if.then169:                                       ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %read_urb_finished, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call167)
  %cmp171 = icmp eq i32 %call167, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.0733)
  %tobool174.not = icmp eq i32 %bytes_read.0733, 0
  %spec.select = select i1 %tobool174.not, i32 -12, i32 %bytes_read.0733
  %retval1.2 = select i1 %cmp171, i32 %spec.select, i32 %call167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then192)) #9
          to label %cleanup436 [label %if.then192], !srcloc !182

if.then192:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %udev54, align 4
  %dev194 = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug248, ptr noundef %dev194, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26) #9
  br label %exit

__here:                                           ; preds = %usb_fill_int_urb.exit.__here_crit_edge, %if.then129, %if.then115
  %retval1.3 = phi i32 [ 0, %usb_fill_int_urb.exit.__here_crit_edge ], [ %retval1.0731, %if.then129 ], [ %retval1.0731, %if.then115 ]
  %95 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 212
  %97 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 ptrtoint (ptr blockaddress(@adu_read, %__here) to i32), ptr %task_state_change, align 4
  %98 = load ptr, ptr %task, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 1, ptr %98, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @add_wait_queue(ptr noundef %read_wait, ptr noundef nonnull %wait) #9
  %call283 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock) #9
  %100 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %read_urb_finished, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool289.not = icmp eq i32 %101, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call283) #9
  br i1 %tobool289.not, label %if.then290, label %__here346

if.then290:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %call292 = call i32 @schedule_timeout(i32 noundef 200) #9
  br label %if.end376

__here346:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task, align 8
  %task_state_change350 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 212
  %104 = ptrtoint ptr %task_state_change350 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 ptrtoint (ptr blockaddress(@adu_read, %__here346) to i32), ptr %task_state_change350, align 4
  %105 = load ptr, ptr %task, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 0, ptr %105, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  br label %if.end376

if.end376:                                        ; preds = %__here346, %if.then290
  %timeout.1 = phi i32 [ %timeout.0729, %__here346 ], [ %call292, %if.then290 ]
  call void @remove_wait_queue(ptr noundef %read_wait, ptr noundef nonnull %wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout.1)
  %cmp378 = icmp slt i32 %timeout.1, 1
  br i1 %cmp378, label %do.body381, label %if.end404

do.body381:                                       ; preds = %if.end376
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then393)) #9
          to label %do.end398 [label %if.then393], !srcloc !182

if.then393:                                       ; preds = %do.body381
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %udev54, align 4
  %dev395 = getelementptr inbounds %struct.usb_device, ptr %108, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug251, ptr noundef %dev395, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.26) #9
  br label %do.end398

do.end398:                                        ; preds = %if.then393, %do.body381
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.0733)
  %tobool399.not = icmp eq i32 %bytes_read.0733, 0
  %spec.select589 = select i1 %tobool399.not, i32 -110, i32 %bytes_read.0733
  br label %exit

if.end404:                                        ; preds = %if.end376
  %109 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %stack.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %112, align 4
  %115 = and i32 %114, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end404.do.body410_crit_edge, !prof !183

if.end404.do.body410_crit_edge:                   ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body410

signal_pending.exit:                              ; preds = %if.end404
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %112, align 4
  %and1.i.i.i.i.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool408.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool408.not, label %signal_pending.exit.cleanup436_crit_edge, label %signal_pending.exit.do.body410_crit_edge

signal_pending.exit.do.body410_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body410

signal_pending.exit.cleanup436_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup436

do.body410:                                       ; preds = %signal_pending.exit.do.body410_crit_edge, %if.end404.do.body410_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_read.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_read, %if.then422)) #9
          to label %do.end427 [label %if.then422], !srcloc !182

if.then422:                                       ; preds = %do.body410
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %udev54, align 4
  %dev424 = getelementptr inbounds %struct.usb_device, ptr %119, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_read.__UNIQUE_ID_ddebug252, ptr noundef %dev424, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.26) #9
  br label %do.end427

do.end427:                                        ; preds = %if.then422, %do.body410
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.0733)
  %tobool428.not = icmp eq i32 %bytes_read.0733, 0
  %spec.select590 = select i1 %tobool428.not, i32 -4, i32 %bytes_read.0733
  br label %exit

cleanup436:                                       ; preds = %signal_pending.exit.cleanup436_crit_edge, %if.then169
  %switch = phi i1 [ true, %signal_pending.exit.cleanup436_crit_edge ], [ false, %if.then169 ]
  %timeout.3 = phi i32 [ %timeout.1, %signal_pending.exit.cleanup436_crit_edge ], [ %timeout.0729, %if.then169 ]
  %retval1.5 = phi i32 [ %retval1.3, %signal_pending.exit.cleanup436_crit_edge ], [ %retval1.2, %if.then169 ]
  br i1 %switch, label %cleanup436.while.cond.backedge_crit_edge, label %cleanup436.exit_crit_edge

cleanup436.exit_crit_edge:                        ; preds = %cleanup436
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

cleanup436.while.cond.backedge_crit_edge:         ; preds = %cleanup436
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cleanup436.while.cond.backedge_crit_edge, %do.body102, %cleanup.thread
  %should_submit.0.be = phi i32 [ %should_submit.0728, %cleanup436.while.cond.backedge_crit_edge ], [ 1, %do.body102 ], [ %should_submit.0728, %cleanup.thread ]
  %timeout.0.be = phi i32 [ %timeout.3, %cleanup436.while.cond.backedge_crit_edge ], [ %timeout.0729, %do.body102 ], [ %timeout.0729, %cleanup.thread ]
  %retval1.0.be = phi i32 [ %retval1.5, %cleanup436.while.cond.backedge_crit_edge ], [ %retval1.0731, %do.body102 ], [ %retval1.0731, %cleanup.thread ]
  %bytes_to_read.0.be = phi i32 [ %bytes_to_read.0732, %cleanup436.while.cond.backedge_crit_edge ], [ %bytes_to_read.0732, %do.body102 ], [ %sub70, %cleanup.thread ]
  %bytes_read.0.be = phi i32 [ %bytes_read.0733, %cleanup436.while.cond.backedge_crit_edge ], [ %bytes_read.0733, %do.body102 ], [ %add69, %cleanup.thread ]
  %tobool40.not = icmp eq i32 %bytes_to_read.0.be, 0
  br i1 %tobool40.not, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge
  %call448 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %should_submit.0.be)
  %tobool453.not = icmp eq i32 %should_submit.0.be, 0
  br i1 %tobool453.not, label %while.end.if.else481_crit_edge, label %land.lhs.true

while.end.if.else481_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else481

land.lhs.true:                                    ; preds = %while.end
  %120 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %read_urb_finished, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool455.not = icmp eq i32 %121, 0
  br i1 %tobool455.not, label %land.lhs.true.if.else481_crit_edge, label %if.then456

land.lhs.true.if.else481_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else481

if.then456:                                       ; preds = %land.lhs.true
  %122 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %read_urb_finished, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call448) #9
  %123 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %interrupt_in_urb, align 4
  %125 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %udev54, align 4
  %127 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %interrupt_in_endpoint, align 4
  %bEndpointAddress463 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %bEndpointAddress463 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bEndpointAddress463, align 1
  %conv464 = zext i8 %130 to i32
  %131 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %126, align 8
  %shl.i619 = shl i32 %132, 8
  %shl1.i620 = shl nuw nsw i32 %conv464, 15
  %or.i621 = or i32 %shl1.i620, %shl.i619
  %or467 = or i32 %or.i621, 1073741952
  %133 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %interrupt_in_buffer, align 4
  %wMaxPacketSize.i622 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %128, i32 0, i32 4
  %135 = ptrtoint ptr %wMaxPacketSize.i622 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %136 = load i16, ptr %wMaxPacketSize.i622, align 1
  %137 = and i16 %136, -249
  %138 = call i16 @llvm.bswap.i16(i16 %137) #9
  %and.i623 = zext i16 %138 to i32
  %bInterval472 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %128, i32 0, i32 5
  %139 = ptrtoint ptr %bInterval472 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bInterval472, align 1
  %conv473 = zext i8 %140 to i32
  %dev1.i624 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 8
  %141 = ptrtoint ptr %dev1.i624 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %126, ptr %dev1.i624, align 4
  %pipe2.i625 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 10
  %142 = ptrtoint ptr %pipe2.i625 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or467, ptr %pipe2.i625, align 4
  %transfer_buffer3.i626 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 14
  %143 = ptrtoint ptr %transfer_buffer3.i626 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %134, ptr %transfer_buffer3.i626, align 4
  %transfer_buffer_length.i627 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 19
  %144 = ptrtoint ptr %transfer_buffer_length.i627 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %and.i623, ptr %transfer_buffer_length.i627, align 4
  %complete.i628 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 28
  %145 = ptrtoint ptr %complete.i628 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @adu_interrupt_in_callback, ptr %complete.i628, align 4
  %context4.i629 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 27
  %146 = ptrtoint ptr %context4.i629 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %14, ptr %context4.i629, align 4
  %speed.i630 = getelementptr inbounds %struct.usb_device, ptr %126, i32 0, i32 4
  %147 = ptrtoint ptr %speed.i630 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %speed.i630, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %148)
  %cmp.i631 = icmp eq i32 %148, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %148)
  %cmp6.i632 = icmp ugt i32 %148, 4
  %or.cond.i633 = or i1 %cmp.i631, %cmp6.i632
  br i1 %or.cond.i633, label %if.then.i636, label %if.then456.usb_fill_int_urb.exit640_crit_edge

if.then456.usb_fill_int_urb.exit640_crit_edge:    ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit640

if.then.i636:                                     ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #11
  %149 = call i32 @llvm.smax.i32(i32 %conv473, i32 1) #9
  %150 = call i32 @llvm.umin.i32(i32 %149, i32 16) #9
  %sub.i634 = add nsw i32 %150, -1
  %shl.i635 = shl nuw nsw i32 1, %sub.i634
  br label %usb_fill_int_urb.exit640

usb_fill_int_urb.exit640:                         ; preds = %if.then.i636, %if.then456.usb_fill_int_urb.exit640_crit_edge
  %interval.sink.i637 = phi i32 [ %shl.i635, %if.then.i636 ], [ %conv473, %if.then456.usb_fill_int_urb.exit640_crit_edge ]
  %151 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 25
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %interval.sink.i637, ptr %151, align 4
  %start_frame.i638 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 23
  %153 = ptrtoint ptr %start_frame.i638 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %start_frame.i638, align 4
  %154 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %interrupt_in_urb, align 4
  %call475 = call i32 @usb_submit_urb(ptr noundef %155, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call475)
  %cmp476.not = icmp eq i32 %call475, 0
  br i1 %cmp476.not, label %usb_fill_int_urb.exit640.exit_crit_edge, label %if.then478

usb_fill_int_urb.exit640.exit_crit_edge:          ; preds = %usb_fill_int_urb.exit640
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then478:                                       ; preds = %usb_fill_int_urb.exit640
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1, ptr %read_urb_finished, align 4
  br label %exit

if.else481:                                       ; preds = %land.lhs.true.if.else481_crit_edge, %while.end.if.else481_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call448) #9
  br label %exit

exit:                                             ; preds = %if.else481, %if.then478, %usb_fill_int_urb.exit640.exit_crit_edge, %cleanup436.exit_crit_edge, %do.end427, %do.end398, %if.then192, %copy_to_user.exit.exit_crit_edge, %if.end.i.i.exit_crit_edge, %if.then.i.i.i.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.exit_crit_edge, %if.then16, %do.body10, %if.then6
  %retval1.6 = phi i32 [ -19, %if.then6 ], [ 0, %if.then16 ], [ %bytes_read.0.be, %if.then478 ], [ %bytes_read.0.be, %usb_fill_int_urb.exit640.exit_crit_edge ], [ %bytes_read.0.be, %if.else481 ], [ 0, %do.body10 ], [ -14, %land.rhs16.i.i.exit_crit_edge ], [ -14, %if.then27.i.i ], [ %retval1.2, %if.then192 ], [ %spec.select590, %do.end427 ], [ %spec.select589, %do.end398 ], [ -14, %copy_to_user.exit.exit_crit_edge ], [ -14, %if.then.i.i.i.exit_crit_edge ], [ -14, %if.end.i.i.exit_crit_edge ], [ %retval1.5, %cleanup436.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %14) #9
  br label %cleanup485

cleanup485:                                       ; preds = %exit, %entry.cleanup485_crit_edge
  %retval.0 = phi i32 [ %retval1.6, %exit ], [ -512, %entry.cleanup485_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adu_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %waita = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %waita) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %waita to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %waita, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !172) #9
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
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %14, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %disconnected = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef -19) #13
  br label %exit

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body10, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end8
  %write_wait = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 14
  %buflock = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 12
  %out_urb_finished = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 22
  %udev359 = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 1
  %interrupt_out_endpoint = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 20
  %interrupt_out_buffer = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 19
  %interrupt_out_urb = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 21
  br label %while.body

do.body10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_write.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_write, %if.then16)) #9
          to label %exit [label %if.then16], !srcloc !182

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.adu_device, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_write.__UNIQUE_ID_ddebug253, ptr noundef %dev17, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45) #9
  br label %exit

while.body:                                       ; preds = %if.end416.while.body_crit_edge, %while.cond.preheader
  %buffer.addr.0553 = phi ptr [ %buffer, %while.cond.preheader ], [ %buffer.addr.1, %if.end416.while.body_crit_edge ]
  %count.addr.0551 = phi i32 [ %count, %while.cond.preheader ], [ %count.addr.1, %if.end416.while.body_crit_edge ]
  %bytes_written.0550 = phi i32 [ 0, %while.cond.preheader ], [ %bytes_written.1, %if.end416.while.body_crit_edge ]
  call void @add_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %waita) #9
  br label %__here

__here:                                           ; preds = %while.body
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@adu_write, %__here) to i32), ptr %task_state_change, align 4
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %21, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !187
  %call101 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock) #9
  %23 = ptrtoint ptr %out_urb_finished to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_urb_finished, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool106.not = icmp eq i32 %24, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call101) #9
  br i1 %tobool106.not, label %if.then107, label %__here315

if.then107:                                       ; preds = %__here
  call void @mutex_unlock(ptr noundef %14) #9
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stack.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.then107.do.body115_crit_edge, !prof !183

if.then107.do.body115_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body115

signal_pending.exit:                              ; preds = %if.then107
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and1.i.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool113.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool113.not, label %if.end214, label %signal_pending.exit.do.body115_crit_edge

signal_pending.exit.do.body115_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body115

do.body115:                                       ; preds = %signal_pending.exit.do.body115_crit_edge, %if.then107.do.body115_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_write.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_write, %if.then127)) #9
          to label %__here184 [label %if.then127], !srcloc !182

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %udev359 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udev359, align 4
  %dev129 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_write.__UNIQUE_ID_ddebug255, ptr noundef %dev129, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45) #9
  br label %__here184

__here184:                                        ; preds = %if.then127, %do.body115
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %task_state_change188 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 212
  %38 = ptrtoint ptr %task_state_change188 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 ptrtoint (ptr blockaddress(@adu_write, %__here184) to i32), ptr %task_state_change188, align 4
  %39 = load ptr, ptr %task, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %39, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !188
  br label %exit_onqueue

if.end214:                                        ; preds = %signal_pending.exit
  %call215 = call i32 @schedule_timeout(i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %do.body219, label %if.end237

do.body219:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_write.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_write, %if.then231)) #9
          to label %exit_onqueue [label %if.then231], !srcloc !182

if.then231:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %udev359 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udev359, align 4
  %dev233 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_write.__UNIQUE_ID_ddebug257, ptr noundef %dev233, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45) #9
  br label %exit_onqueue

if.end237:                                        ; preds = %if.end214
  call void @remove_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %waita) #9
  %call240 = call i32 @mutex_lock_interruptible_nested(ptr noundef %14, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %do.body245, label %if.then242

if.then242:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_written.0550)
  %tobool243.not = icmp eq i32 %bytes_written.0550, 0
  %call240.bytes_written.0 = select i1 %tobool243.not, i32 %call240, i32 %bytes_written.0550
  br label %cleanup

do.body245:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_write.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_write, %if.then257)) #9
          to label %if.end416 [label %if.then257], !srcloc !182

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %udev359 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev359, align 4
  %dev259 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_write.__UNIQUE_ID_ddebug258, ptr noundef %dev259, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.45, i32 noundef %count.addr.0551) #9
  br label %if.end416

__here315:                                        ; preds = %__here
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change319 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change319 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@adu_write, %__here315) to i32), ptr %task_state_change319, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %48, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !189
  call void @remove_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %waita) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_write.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_write, %if.then358)) #9
          to label %do.end363 [label %if.then358], !srcloc !182

if.then358:                                       ; preds = %__here315
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %udev359 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udev359, align 4
  %dev360 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_write.__UNIQUE_ID_ddebug260, ptr noundef %dev360, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.45, i32 noundef %count.addr.0551) #9
  br label %do.end363

do.end363:                                        ; preds = %if.then358, %__here315
  %52 = ptrtoint ptr %interrupt_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %interrupt_out_endpoint, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %wMaxPacketSize.i, align 1
  %56 = and i16 %55, -249
  %57 = call i16 @llvm.bswap.i16(i16 %56) #9
  %and.i508 = zext i16 %57 to i32
  %58 = call i32 @llvm.umin.i32(i32 %count.addr.0551, i32 %and.i508)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_write.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_write, %if.then383)) #9
          to label %do.end388 [label %if.then383], !srcloc !182

if.then383:                                       ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %udev359 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev359, align 4
  %dev385 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_write.__UNIQUE_ID_ddebug261, ptr noundef %dev385, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.45, i32 noundef %and.i508, i32 noundef %count.addr.0551, i32 noundef %58) #9
  br label %do.end388

do.end388:                                        ; preds = %if.then383, %do.end363
  %61 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %interrupt_out_buffer, align 4
  call void @__check_object_size(ptr noundef %62, i32 noundef %58, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %do.end388.if.end.i.i_crit_edge, label %land.lhs.true.i.i

do.end388.if.end.i.i_crit_edge:                   ; preds = %do.end388
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %do.end388
  %63 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer.addr.0553, i32 %58, i32 -1226833920) #15, !srcloc !190
  %asmresult.i.i = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !183

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %62, i32 noundef %58) #9
  %64 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !191
  %and.i.i.i.i = and i32 %66, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %62, ptr noundef %buffer.addr.0553, i32 noundef %58) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #9, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %do.end388.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %58, %do.end388.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %58, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end393, label %if.then11.i.i, !prof !183

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %58, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %sub.i.i
  %67 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %exit

if.end393:                                        ; preds = %if.end.i.i
  %68 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %interrupt_out_urb, align 4
  %70 = ptrtoint ptr %udev359 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %udev359, align 4
  %72 = ptrtoint ptr %interrupt_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %interrupt_out_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bEndpointAddress, align 1
  %conv397 = zext i8 %75 to i32
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %71, align 8
  %shl.i = shl i32 %77, 8
  %shl1.i = shl nuw nsw i32 %conv397, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, 1073741824
  %78 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %interrupt_out_buffer, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %73, i32 0, i32 5
  %80 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bInterval, align 1
  %conv401 = zext i8 %81 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 8
  %82 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %71, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 10
  %83 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 14
  %84 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %79, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 19
  %85 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %58, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 28
  %86 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @adu_interrupt_out_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 27
  %87 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %14, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 4
  %88 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp.i = icmp eq i32 %89, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %cmp6.i = icmp ugt i32 %89, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i510, label %if.end393.usb_fill_int_urb.exit_crit_edge

if.end393.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i510:                                     ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #11
  %90 = call i32 @llvm.smax.i32(i32 %conv401, i32 1) #9
  %91 = call i32 @llvm.umin.i32(i32 %90, i32 16) #9
  %sub.i = add nsw i32 %91, -1
  %shl.i509 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i510, %if.end393.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i509, %if.then.i510 ], [ %conv401, %if.end393.usb_fill_int_urb.exit_crit_edge ]
  %92 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 25
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %interval.sink.i, ptr %92, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 23
  %94 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %start_frame.i, align 4
  %95 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %interrupt_out_urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 20
  %97 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %58, ptr %actual_length, align 4
  %98 = ptrtoint ptr %out_urb_finished to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %out_urb_finished, align 4
  %99 = load ptr, ptr %interrupt_out_urb, align 4
  %call405 = call i32 @usb_submit_urb(ptr noundef %99, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call405)
  %cmp406 = icmp slt i32 %call405, 0
  br i1 %cmp406, label %if.then408, label %if.end415

if.then408:                                       ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %out_urb_finished to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %out_urb_finished, align 4
  %101 = ptrtoint ptr %udev359 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %udev359, align 4
  %dev414 = getelementptr inbounds %struct.usb_device, ptr %102, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev414, ptr noundef nonnull @.str.55, i32 noundef %call405) #13
  br label %exit

if.end415:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %buffer.addr.0553, i32 %58
  %sub = sub i32 %count.addr.0551, %58
  %add = add i32 %58, %bytes_written.0550
  br label %if.end416

if.end416:                                        ; preds = %if.end415, %if.then257, %do.body245
  %bytes_written.1 = phi i32 [ %add, %if.end415 ], [ %bytes_written.0550, %if.then257 ], [ %bytes_written.0550, %do.body245 ]
  %count.addr.1 = phi i32 [ %sub, %if.end415 ], [ %count.addr.0551, %if.then257 ], [ %count.addr.0551, %do.body245 ]
  %buffer.addr.1 = phi ptr [ %add.ptr, %if.end415 ], [ %buffer.addr.0553, %if.then257 ], [ %buffer.addr.0553, %do.body245 ]
  %cmp22.not = icmp eq i32 %count.addr.1, 0
  br i1 %cmp22.not, label %while.end, label %if.end416.while.body_crit_edge

if.end416.while.body_crit_edge:                   ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %14) #9
  br label %cleanup

exit:                                             ; preds = %if.then408, %if.then11.i.i, %if.then16, %do.body10, %if.then6
  %retval3.0 = phi i32 [ -19, %if.then6 ], [ 0, %if.then16 ], [ %call405, %if.then408 ], [ 0, %do.body10 ], [ -14, %if.then11.i.i ]
  call void @mutex_unlock(ptr noundef %14) #9
  br label %cleanup

exit_onqueue:                                     ; preds = %if.then231, %do.body219, %__here184
  %retval3.2 = phi i32 [ -4, %__here184 ], [ -110, %if.then231 ], [ -110, %do.body219 ]
  call void @remove_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %waita) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_onqueue, %exit, %while.end, %if.then242, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval3.2, %exit_onqueue ], [ %bytes_written.1, %while.end ], [ %call4, %entry.cleanup_crit_edge ], [ %retval3.0, %exit ], [ %call240.bytes_written.0, %if.then242 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %waita) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adu_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @adutux_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_no_lock_crit_edge

entry.exit_no_lock_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_no_lock

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @usb_find_interface(ptr noundef nonnull @adu_driver, i32 noundef %and.i) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %and.i) #13
  br label %exit_no_device

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call3, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end7.exit_no_device_crit_edge, label %if.end11

if.end7.exit_no_device_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_no_device

if.end11:                                         ; preds = %if.end7
  %open_count = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.exit_no_device_crit_edge

if.end11.exit_no_device_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_no_device

if.end14:                                         ; preds = %if.end11
  %6 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %open_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_open.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_open, %if.then22)) #9
          to label %do.end27 [label %if.then22], !srcloc !182

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_open.__UNIQUE_ID_ddebug237, ptr noundef %dev23, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %10) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %if.end14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %private_data, align 4
  %read_buffer_length = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %read_buffer_length, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interrupt_in_urb, align 4
  %udev28 = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %udev28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev28, align 4
  %interrupt_in_endpoint = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interrupt_in_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %16, align 8
  %shl.i = shl i32 %22, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or31 = or i32 %or.i, 1073741952
  %interrupt_in_buffer = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interrupt_in_buffer, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 4
  %25 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %wMaxPacketSize.i, align 1
  %27 = and i16 %26, -249
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #9
  %and.i63 = zext i16 %28 to i32
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 5
  %29 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bInterval, align 1
  %conv35 = zext i8 %30 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  %31 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %16, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 10
  %32 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or31, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %24, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i63, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 28
  %35 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @adu_interrupt_in_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 27
  %36 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 4
  %37 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp.i = icmp eq i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp6.i = icmp ugt i32 %38, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %do.end27.usb_fill_int_urb.exit_crit_edge

do.end27.usb_fill_int_urb.exit_crit_edge:         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %39 = tail call i32 @llvm.smax.i32(i32 %conv35, i32 1) #9
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 16) #9
  %sub.i = add nsw i32 %40, -1
  %shl.i64 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %do.end27.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i64, %if.then.i ], [ %conv35, %do.end27.usb_fill_int_urb.exit_crit_edge ]
  %41 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 25
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %interval.sink.i, ptr %41, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 23
  %43 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %start_frame.i, align 4
  %read_urb_finished = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 18
  %44 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %read_urb_finished, align 4
  %45 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %interrupt_in_urb, align 4
  %call37 = tail call i32 @usb_submit_urb(ptr noundef %46, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %usb_fill_int_urb.exit.if.end41_crit_edge, label %if.then39

usb_fill_int_urb.exit.if.end41_crit_edge:         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %read_urb_finished, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %usb_fill_int_urb.exit.if.end41_crit_edge
  %out_urb_finished = getelementptr inbounds %struct.adu_device, ptr %3, i32 0, i32 22
  %48 = ptrtoint ptr %out_urb_finished to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %out_urb_finished, align 4
  br label %exit_no_device

exit_no_device:                                   ; preds = %if.end41, %if.end11.exit_no_device_crit_edge, %if.end7.exit_no_device_crit_edge, %do.end
  %retval1.0 = phi i32 [ 0, %if.end41 ], [ -19, %do.end ], [ -19, %if.end7.exit_no_device_crit_edge ], [ -16, %if.end11.exit_no_device_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @adutux_mutex) #9
  br label %exit_no_lock

exit_no_lock:                                     ; preds = %exit_no_device, %entry.exit_no_lock_crit_edge
  %retval1.1 = phi i32 [ %call2, %entry.exit_no_lock_crit_edge ], [ %retval1.0, %exit_no_device ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adu_release(ptr nocapture noundef readnone %inode, ptr noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end4:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @adutux_mutex, i32 noundef 0) #9
  %open_count = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5 = icmp slt i32 %3, 1
  br i1 %cmp5, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_release.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_release, %if.then9)) #9
          to label %unlock [label %if.then9], !srcloc !182

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_release.__UNIQUE_ID_ddebug239, ptr noundef %dev10, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63) #9
  br label %unlock

if.end12:                                         ; preds = %if.end4
  tail call fastcc void @adu_release_internal(ptr noundef nonnull %1)
  %disconnected = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool13.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool13.not, label %if.end12.unlock_crit_edge, label %if.then14

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then14:                                        ; preds = %if.end12
  %7 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.then17, label %if.then14.unlock_crit_edge

if.then14.unlock_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %interrupt_in_urb.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %10) #9
  %interrupt_out_urb.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interrupt_out_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %12) #9
  %read_buffer_primary.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %read_buffer_primary.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_buffer_primary.i, align 4
  tail call void @kfree(ptr noundef %14) #9
  %read_buffer_secondary.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %read_buffer_secondary.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_buffer_secondary.i, align 4
  tail call void @kfree(ptr noundef %16) #9
  %interrupt_in_buffer.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interrupt_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %18) #9
  %interrupt_out_buffer.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interrupt_out_buffer.i, align 4
  tail call void @kfree(ptr noundef %20) #9
  %udev.i = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev.i, align 4
  tail call void @usb_put_dev(ptr noundef %22) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %unlock

unlock:                                           ; preds = %if.then17, %if.then14.unlock_crit_edge, %if.end12.unlock_crit_edge, %if.then9, %do.body
  %retval1.0 = phi i32 [ 0, %if.then14.unlock_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end12.unlock_crit_edge ], [ -19, %if.then9 ], [ -19, %do.body ]
  tail call void @mutex_unlock(ptr noundef nonnull @adutux_mutex) #9
  br label %exit

exit:                                             ; preds = %unlock, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %unlock ], [ -19, %entry.exit_crit_edge ], [ -19, %if.end.exit_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adu_interrupt_in_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %udev = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_debug_data.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_interrupt_in_callback, %if.then.i)) #9
          to label %adu_debug_data.exit [label %if.then.i], !srcloc !182

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_debug_data.__UNIQUE_ID_ddebug232, ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.adu_interrupt_in_callback, i32 noundef %7, i32 noundef %7, ptr noundef %9) #9
  br label %adu_debug_data.exit

adu_debug_data.exit:                              ; preds = %if.then.i, %entry
  %buflock = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock) #9
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body17 [
    i32 0, label %if.end28
    i32 -2, label %adu_debug_data.exit.exit_crit_edge
    i32 -104, label %adu_debug_data.exit.exit_crit_edge122
    i32 -108, label %adu_debug_data.exit.exit_crit_edge123
  ]

adu_debug_data.exit.exit_crit_edge123:            ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

adu_debug_data.exit.exit_crit_edge122:            ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

adu_debug_data.exit.exit_crit_edge:               ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.body17:                                        ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_interrupt_in_callback.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_interrupt_in_callback, %if.then22)) #9
          to label %exit [label %if.then22], !srcloc !182

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_interrupt_in_callback.__UNIQUE_ID_ddebug233, ptr noundef %dev24, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.adu_interrupt_in_callback, i32 noundef %3) #9
  br label %exit

if.end28:                                         ; preds = %adu_debug_data.exit
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30.not = icmp eq i32 %14, 0
  br i1 %cmp30.not, label %if.end28.exit_crit_edge, label %land.lhs.true32

if.end28.exit_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

land.lhs.true32:                                  ; preds = %if.end28
  %interrupt_in_buffer = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt_in_buffer, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp34.not = icmp eq i8 %18, 0
  br i1 %cmp34.not, label %land.lhs.true32.exit_crit_edge, label %if.then36

land.lhs.true32.exit_crit_edge:                   ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then36:                                        ; preds = %land.lhs.true32
  %read_buffer_length = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_buffer_length, align 4
  %interrupt_in_endpoint = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %interrupt_in_endpoint, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wMaxPacketSize.i, align 1
  %25 = and i16 %24, -249
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  %27 = shl nuw nsw i16 %26, 2
  %mul = zext i16 %27 to i32
  %sub = sub i32 %mul, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub)
  %cmp39 = icmp ult i32 %20, %sub
  br i1 %cmp39, label %if.then41, label %do.body66

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %read_buffer_primary = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %read_buffer_primary to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_buffer_primary, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %20
  %30 = call ptr @memcpy(ptr %add.ptr, ptr %16, i32 %14)
  %31 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length, align 4
  %33 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %read_buffer_length, align 4
  %add = add i32 %34, %32
  store i32 %add, ptr %read_buffer_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_interrupt_in_callback.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_interrupt_in_callback, %if.then59)) #9
          to label %exit [label %if.then59], !srcloc !182

if.then59:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev, align 4
  %dev61 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_interrupt_in_callback.__UNIQUE_ID_ddebug234, ptr noundef %dev61, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.adu_interrupt_in_callback, i32 noundef %38) #9
  br label %exit

do.body66:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_interrupt_in_callback.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_interrupt_in_callback, %if.then78)) #9
          to label %exit [label %if.then78], !srcloc !182

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev, align 4
  %dev80 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_interrupt_in_callback.__UNIQUE_ID_ddebug235, ptr noundef %dev80, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.adu_interrupt_in_callback) #9
  br label %exit

exit:                                             ; preds = %if.then78, %do.body66, %if.then59, %if.then41, %land.lhs.true32.exit_crit_edge, %if.end28.exit_crit_edge, %if.then22, %do.body17, %adu_debug_data.exit.exit_crit_edge, %adu_debug_data.exit.exit_crit_edge122, %adu_debug_data.exit.exit_crit_edge123
  %read_urb_finished = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 18
  %41 = ptrtoint ptr %read_urb_finished to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %read_urb_finished, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call4) #9
  %read_wait = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adu_interrupt_out_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %udev = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_debug_data.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_interrupt_out_callback, %if.then.i)) #9
          to label %adu_debug_data.exit [label %if.then.i], !srcloc !182

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_debug_data.__UNIQUE_ID_ddebug232, ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.adu_interrupt_out_callback, i32 noundef %7, i32 noundef %7, ptr noundef %9) #9
  br label %adu_debug_data.exit

adu_debug_data.exit:                              ; preds = %if.then.i, %entry
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %3, label %do.body [
    i32 0, label %do.body16
    i32 -2, label %adu_debug_data.exit.cleanup_crit_edge
    i32 -108, label %adu_debug_data.exit.cleanup_crit_edge41
    i32 -104, label %adu_debug_data.exit.cleanup_crit_edge42
  ]

adu_debug_data.exit.cleanup_crit_edge42:          ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adu_debug_data.exit.cleanup_crit_edge41:          ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adu_debug_data.exit.cleanup_crit_edge:            ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_interrupt_out_callback.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_interrupt_out_callback, %if.then10)) #9
          to label %cleanup [label %if.then10], !srcloc !182

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_interrupt_out_callback.__UNIQUE_ID_ddebug236, ptr noundef %dev12, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.adu_interrupt_out_callback, i32 noundef %3) #9
  br label %cleanup

do.body16:                                        ; preds = %adu_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %buflock = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 12
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock) #9
  %out_urb_finished = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %out_urb_finished to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %out_urb_finished, align 4
  %write_wait = getelementptr inbounds %struct.adu_device, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock, i32 noundef %call20) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %if.then10, %do.body, %adu_debug_data.exit.cleanup_crit_edge, %adu_debug_data.exit.cleanup_crit_edge41, %adu_debug_data.exit.cleanup_crit_edge42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adu_release_internal(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %open_count = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %open_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adu_release_internal.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adu_release_internal, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !182

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adu_release_internal.__UNIQUE_ID_ddebug238, ptr noundef %dev3, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then6, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %do.end
  %disconnected.i = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %disconnected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %do.body1.i, label %if.then6.adu_abort_transfers.exit_crit_edge

if.then6.adu_abort_transfers.exit_crit_edge:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %adu_abort_transfers.exit

do.body1.i:                                       ; preds = %if.then6
  %buflock.i = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock.i) #9
  %read_urb_finished.i = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %read_urb_finished.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %read_urb_finished.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp eq i32 %10, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock.i, i32 noundef %call2.i) #9
  br i1 %tobool5.not.i, label %if.then6.i, label %do.body1.i.do.body11.i_crit_edge

do.body1.i.do.body11.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.i

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  %interrupt_in_urb.i = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #9
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.then6.i, %do.body1.i.do.body11.i_crit_edge
  %call19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buflock.i) #9
  %out_urb_finished.i = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 22
  %13 = ptrtoint ptr %out_urb_finished.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out_urb_finished.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not.i = icmp eq i32 %14, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buflock.i, i32 noundef %call19.i) #9
  br i1 %tobool24.not.i, label %if.then25.i, label %do.body11.i.adu_abort_transfers.exit_crit_edge

do.body11.i.adu_abort_transfers.exit_crit_edge:   ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adu_abort_transfers.exit

if.then25.i:                                      ; preds = %do.body11.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 137) #9
  %15 = ptrtoint ptr %out_urb_finished.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out_urb_finished.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool34.not.i = icmp eq i32 %16, 0
  br i1 %tobool34.not.i, label %if.then45.i, label %if.then25.i.if.end72.i_crit_edge

if.then25.i.if.end72.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then45.i:                                      ; preds = %if.then25.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %17 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %write_wait.i = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 14
  %call47108.i = call i32 @prepare_to_wait_event(ptr noundef %write_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %18 = ptrtoint ptr %out_urb_finished.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_urb_finished.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool50.not109.not.i = icmp eq i32 %19, 0
  br i1 %tobool50.not109.not.i, label %if.then45.i.cleanup.i_crit_edge, label %if.then45.i.for.end.i_crit_edge

if.then45.i.for.end.i_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then45.i.cleanup.i_crit_edge:                  ; preds = %if.then45.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then45.i.cleanup.i_crit_edge
  %__ret46.1111.i = phi i32 [ %__ret46.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 200, %if.then45.i.cleanup.i_crit_edge ]
  %call69.i = call i32 @schedule_timeout(i32 noundef %__ret46.1111.i) #9
  %call47.i = call i32 @prepare_to_wait_event(ptr noundef %write_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %20 = ptrtoint ptr %out_urb_finished.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_urb_finished.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool50.not.i = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool55.not.i = icmp eq i32 %call69.i, 0
  %spec.store.select80.i = select i1 %tobool55.not.i, i32 1, i32 %call69.i
  %__ret46.1.i = select i1 %tobool50.not.i, i32 %call69.i, i32 %spec.store.select80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret46.1.i)
  %tobool62.not.i = icmp eq i32 %__ret46.1.i, 0
  %not.tobool50.not.i = xor i1 %tobool50.not.i, true
  %22 = select i1 %not.tobool50.not.i, i1 true, i1 %tobool62.not.i
  br i1 %22, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then45.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %write_wait.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %if.end72.i

if.end72.i:                                       ; preds = %for.end.i, %if.then25.i.if.end72.i_crit_edge
  %interrupt_out_urb.i = getelementptr inbounds %struct.adu_device, ptr %dev, i32 0, i32 21
  %23 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interrupt_out_urb.i, align 4
  call void @usb_kill_urb(ptr noundef %24) #9
  br label %adu_abort_transfers.exit

adu_abort_transfers.exit:                         ; preds = %if.end72.i, %do.body11.i.adu_abort_transfers.exit_crit_edge, %if.then6.adu_abort_transfers.exit_crit_edge
  %25 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %open_count, align 4
  br label %if.end8

if.end8:                                          ; preds = %adu_abort_transfers.exit, %do.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !87, !88, !90, !91, !93, !94, !96, !98, !100, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !127, !129, !130, !132, !133, !135, !137, !138, !140, !141, !143, !144, !145, !147, !149, !150, !152, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170}
!llvm.named.register.sp = !{!172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_adutux__263_792_adu_driver_init6, !1, !"__initcall__kmod_adutux__263_792_adu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/adutux.c", i32 792, i32 1}
!2 = !{ptr @__exitcall_adu_driver_exit, !1, !"__exitcall_adu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author264, !4, !"__UNIQUE_ID_author264", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/adutux.c", i32 794, i32 1}
!5 = !{ptr @__UNIQUE_ID_description265, !6, !"__UNIQUE_ID_description265", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/adutux.c", i32 795, i32 1}
!7 = !{ptr @__UNIQUE_ID_file266, !8, !"__UNIQUE_ID_file266", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/adutux.c", i32 796, i32 1}
!9 = !{ptr @__UNIQUE_ID_license267, !8, !"__UNIQUE_ID_license267", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @adu_driver, !12, !"adu_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/adutux.c", i32 785, i32 26}
!13 = !{ptr @adu_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/adutux.c", i32 664, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @adu_probe.__key.2, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/usb/misc/adutux.c", i32 665, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @adu_probe.__key.4, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/usb/misc/adutux.c", i32 667, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adu_probe.__key.6, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/usb/misc/adutux.c", i32 668, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/misc/adutux.c", i32 675, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @adu_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @adu_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/misc/adutux.c", i32 722, i32 3}
!35 = !{ptr @adu_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @adu_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/misc/adutux.c", i32 726, i32 2}
!39 = !{ptr @adu_probe.__UNIQUE_ID_ddebug262, !38, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/misc/adutux.c", i32 735, i32 3}
!42 = !{ptr @adu_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @adu_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/misc/adutux.c", i32 743, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @adu_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @adu_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/misc/adutux.c", i32 638, i32 10}
!51 = !{ptr @adu_class, !52, !"adu_class", i1 false, i1 false}
!52 = !{!"../drivers/usb/misc/adutux.c", i32 637, i32 32}
!53 = !{ptr @adu_fops, !54, !"adu_fops", i1 false, i1 false}
!54 = !{!"../drivers/usb/misc/adutux.c", i32 624, i32 37}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/misc/adutux.c", i32 362, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @adu_read._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @adu_read._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/misc/adutux.c", i32 368, i32 3}
!62 = !{ptr @adu_read.__UNIQUE_ID_ddebug240, !61, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/misc/adutux.c", i32 374, i32 2}
!65 = !{ptr @adu_read.__UNIQUE_ID_ddebug241, !64, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/misc/adutux.c", i32 377, i32 3}
!68 = !{ptr @adu_read.__UNIQUE_ID_ddebug242, !67, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/misc/adutux.c", i32 397, i32 5}
!71 = !{ptr @adu_read.__UNIQUE_ID_ddebug245, !70, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/misc/adutux.c", i32 412, i32 6}
!74 = !{ptr @adu_read.__UNIQUE_ID_ddebug246, !73, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/misc/adutux.c", i32 417, i32 6}
!77 = !{ptr @adu_read.__UNIQUE_ID_ddebug247, !76, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/misc/adutux.c", i32 437, i32 7}
!80 = !{ptr @adu_read.__UNIQUE_ID_ddebug248, !79, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/usb/misc/adutux.c", i32 445, i32 5}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/usb/misc/adutux.c", i32 453, i32 6}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/misc/adutux.c", i32 458, i32 6}
!87 = !{ptr @adu_read.__UNIQUE_ID_ddebug251, !86, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/misc/adutux.c", i32 465, i32 6}
!90 = !{ptr @adu_read.__UNIQUE_ID_ddebug252, !89, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!93 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!98 = !{ptr @__func__.adu_interrupt_in_callback, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/misc/adutux.c", i32 162, i32 34}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/misc/adutux.c", i32 170, i32 4}
!102 = !{ptr @adu_interrupt_in_callback.__UNIQUE_ID_ddebug233, !101, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/misc/adutux.c", i32 186, i32 4}
!105 = !{ptr @adu_interrupt_in_callback.__UNIQUE_ID_ddebug234, !104, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/misc/adutux.c", i32 189, i32 4}
!108 = !{ptr @adu_interrupt_in_callback.__UNIQUE_ID_ddebug235, !107, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/misc/adutux.c", i32 108, i32 2}
!111 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @adu_debug_data.__UNIQUE_ID_ddebug232, !110, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/misc/adutux.c", i32 523, i32 3}
!115 = !{ptr @adu_write._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @adu_write._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/misc/adutux.c", i32 529, i32 3}
!119 = !{ptr @adu_write.__UNIQUE_ID_ddebug253, !118, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/usb/misc/adutux.c", i32 536, i32 3}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/misc/adutux.c", i32 543, i32 5}
!124 = !{ptr @adu_write.__UNIQUE_ID_ddebug255, !123, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/usb/misc/adutux.c", i32 545, i32 5}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/misc/adutux.c", i32 550, i32 5}
!129 = !{ptr @adu_write.__UNIQUE_ID_ddebug257, !128, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/misc/adutux.c", i32 562, i32 4}
!132 = !{ptr @adu_write.__UNIQUE_ID_ddebug258, !131, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../drivers/usb/misc/adutux.c", i32 567, i32 4}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/misc/adutux.c", i32 569, i32 4}
!137 = !{ptr @adu_write.__UNIQUE_ID_ddebug260, !136, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/misc/adutux.c", i32 575, i32 4}
!140 = !{ptr @adu_write.__UNIQUE_ID_ddebug261, !139, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/misc/adutux.c", i32 599, i32 5}
!143 = !{ptr @adu_write._entry.54, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @adu_write._entry_ptr.56, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @__func__.adu_interrupt_out_callback, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/misc/adutux.c", i32 207, i32 34}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/misc/adutux.c", i32 214, i32 4}
!149 = !{ptr @adu_interrupt_out_callback.__UNIQUE_ID_ddebug236, !148, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/misc/adutux.c", i32 242, i32 3}
!152 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @adu_open._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @adu_open._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/misc/adutux.c", i32 261, i32 2}
!157 = !{ptr @adu_open.__UNIQUE_ID_ddebug237, !156, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/misc/adutux.c", i32 101, i32 8}
!160 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @adutux_mutex, !159, !"adutux_mutex", i1 false, i1 false}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/misc/adutux.c", i32 326, i32 3}
!164 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @adu_release.__UNIQUE_ID_ddebug239, !163, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/misc/adutux.c", i32 299, i32 2}
!168 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @adu_release_internal.__UNIQUE_ID_ddebug238, !167, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!170 = !{ptr @device_table, !171, !"device_table", i1 false, i1 false}
!171 = !{!"../drivers/usb/misc/adutux.c", i32 36, i32 35}
!172 = !{!"sp"}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i64 2148711429, i64 2148711434, i64 2148711447, i64 2148711491, i64 2148711525, i64 2148711546}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{i64 2150572623, i64 2150572648}
!185 = !{i64 2153967098}
!186 = !{i64 2153972207}
!187 = !{i64 2153986621}
!188 = !{i64 2153994010}
!189 = !{i64 2154003540}
!190 = !{i64 2150571942, i64 2150571967}
!191 = !{i64 3067497}
!192 = !{i64 3067694}
!193 = !{i64 2150552927}
