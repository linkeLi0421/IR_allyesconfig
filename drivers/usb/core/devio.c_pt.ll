; ModuleID = '/llk/IR_all_yes/drivers/usb/core/devio.c_pt.bc'
source_filename = "../drivers/usb/core/devio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_dev_state = type { %struct.list_head, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, ptr, %union.sigval, i32, i32, i32, i32, i8, i8 }
%union.sigval = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usbdevfs_ctrltransfer = type { i8, i8, i16, i16, i16, i32, ptr }
%struct.usbdevfs_bulktransfer = type { i32, i32, i32, ptr }
%struct.usbdevfs_getdriver = type { i32, [256 x i8] }
%struct.usbdevfs_connectinfo = type { i32, i8 }
%struct.usbdevfs_setinterface = type { i32, i32 }
%struct.usbdevfs_urb = type { i8, i8, i32, i32, ptr, i32, i32, i32, %union.anon.75, i32, i32, ptr, [0 x %struct.usbdevfs_iso_packet_desc] }
%union.anon.75 = type { i32 }
%struct.usbdevfs_iso_packet_desc = type { i32, i32, i32 }
%struct.usbdevfs_disconnectsignal = type { i32, ptr }
%struct.usbdevfs_ioctl = type { i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usbdevfs_conninfo_ex = type { i32, i32, i32, i32, i8, [7 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.async = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, ptr, %union.sigval, ptr, ptr, i32, i32, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.74 = type { ptr }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_memory = type { %struct.list_head, i32, i32, i32, ptr, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usbdevfs_disconnect_claim = type { i32, i32, [256 x i8] }
%struct.usbdevfs_streams = type { i32, i32, [0 x i8] }

@__param_str_usbfs_snoop = internal constant [20 x i8] c"usbcore.usbfs_snoop\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@usbfs_snoop = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_usbfs_snoop = internal constant %struct.kernel_param { ptr @__param_str_usbfs_snoop, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @usbfs_snoop } }, section "__param", align 4
@__UNIQUE_ID_usbfs_snooptype239 = internal constant [34 x i8] c"usbcore.parmtype=usbfs_snoop:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_usbfs_snoop240 = internal constant [55 x i8] c"usbcore.parm=usbfs_snoop:true to log all usbfs traffic\00", section ".modinfo", align 1
@__param_str_usbfs_snoop_max = internal constant [24 x i8] c"usbcore.usbfs_snoop_max\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@usbfs_snoop_max = internal global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@__param_usbfs_snoop_max = internal constant %struct.kernel_param { ptr @__param_str_usbfs_snoop_max, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @usbfs_snoop_max } }, section "__param", align 4
@__UNIQUE_ID_usbfs_snoop_maxtype241 = internal constant [38 x i8] c"usbcore.parmtype=usbfs_snoop_max:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_usbfs_snoop_max242 = internal constant [77 x i8] c"usbcore.parm=usbfs_snoop_max:maximum number of bytes to print while snooping\00", section ".modinfo", align 1
@__param_str_usbfs_memory_mb = internal constant [24 x i8] c"usbcore.usbfs_memory_mb\00", align 1
@usbfs_memory_mb = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_usbfs_memory_mb = internal constant %struct.kernel_param { ptr @__param_str_usbfs_memory_mb, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @usbfs_memory_mb } }, section "__param", align 4
@__UNIQUE_ID_usbfs_memory_mbtype243 = internal constant [38 x i8] c"usbcore.parmtype=usbfs_memory_mb:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_usbfs_memory_mb244 = internal constant [81 x i8] c"usbcore.parm=usbfs_memory_mb:maximum MB allowed for usbfs buffers (0 = no limit)\00", section ".modinfo", align 1
@usbfs_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usbfs_mutex, i64 52), ptr getelementptr (i8, ptr @usbfs_mutex, i64 52) }, ptr @usbfs_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbfs\00", [26 x i8] zeroinitializer }, align 32
@usbfs_driver = dso_local global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @driver_probe, ptr @driver_disconnect, ptr null, ptr @driver_suspend, ptr @driver_resume, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@usbdev_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_seek_end_llseek, ptr @usbdev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbdev_poll, ptr @usbdev_ioctl, ptr null, ptr @usbdev_mmap, i32 0, ptr @usbdev_open, ptr null, ptr @usbdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_device\00", [21 x i8] zeroinitializer }, align 32
@usb_devio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to register minors for usb_device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_devio_init\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/core/devio.c\00", [39 x i8] zeroinitializer }, align 32
@usb_devio_init._entry_ptr = internal global ptr @usb_devio_init._entry, section ".printk_index", align 4
@usb_device_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@usb_devio_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 2878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Unable to get usb_device major %d\0A\00", [59 x i8] zeroinitializer }, align 32
@usb_devio_init._entry_ptr.7 = internal global ptr @usb_devio_init._entry.5, section ".printk_index", align 4
@usbdev_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @usbdev_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbfs_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbfs_mutex\00", [20 x i8] zeroinitializer }, align 32
@driver_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 711, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"interface number %u out of range\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"driver_disconnect\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@driver_disconnect._entry_ptr = internal global ptr @driver_disconnect._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 2588, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: REAPURB\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbdev_do_ioctl\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr = internal global ptr @usbdev_do_ioctl._entry, section ".printk_index", align 4
@usbdev_do_ioctl._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 2593, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: REAPURBNDELAY\0A\00", [45 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.22 = internal global ptr @usbdev_do_ioctl._entry.20, section ".printk_index", align 4
@usbdev_do_ioctl._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.4, i32 2617, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: CONTROL\0A\00", [19 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.25 = internal global ptr @usbdev_do_ioctl._entry.23, section ".printk_index", align 4
@usbdev_do_ioctl._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.4, i32 2624, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: BULK\0A\00", [22 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.28 = internal global ptr @usbdev_do_ioctl._entry.26, section ".printk_index", align 4
@usbdev_do_ioctl._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.4, i32 2631, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: RESETEP\0A\00", [19 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.31 = internal global ptr @usbdev_do_ioctl._entry.29, section ".printk_index", align 4
@usbdev_do_ioctl._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.4, i32 2638, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: RESET\0A\00", [21 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.34 = internal global ptr @usbdev_do_ioctl._entry.32, section ".printk_index", align 4
@usbdev_do_ioctl._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.18, ptr @.str.4, i32 2643, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: CLEAR_HALT\0A\00", [16 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.37 = internal global ptr @usbdev_do_ioctl._entry.35, section ".printk_index", align 4
@usbdev_do_ioctl._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.18, ptr @.str.4, i32 2650, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: GETDRIVER\0A\00", [17 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.40 = internal global ptr @usbdev_do_ioctl._entry.38, section ".printk_index", align 4
@usbdev_do_ioctl._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.18, ptr @.str.4, i32 2655, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: CONNECTINFO\0A\00", [47 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.43 = internal global ptr @usbdev_do_ioctl._entry.41, section ".printk_index", align 4
@usbdev_do_ioctl._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.18, ptr @.str.4, i32 2660, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: SETINTERFACE\0A\00", [46 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.46 = internal global ptr @usbdev_do_ioctl._entry.44, section ".printk_index", align 4
@usbdev_do_ioctl._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.18, ptr @.str.4, i32 2665, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: SETCONFIGURATION\0A\00", [42 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.49 = internal global ptr @usbdev_do_ioctl._entry.47, section ".printk_index", align 4
@usbdev_do_ioctl._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.18, ptr @.str.4, i32 2670, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: SUBMITURB\0A\00", [17 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.52 = internal global ptr @usbdev_do_ioctl._entry.50, section ".printk_index", align 4
@usbdev_do_ioctl._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.18, ptr @.str.4, i32 2710, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: DISCARDURB %px\0A\00", [44 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.55 = internal global ptr @usbdev_do_ioctl._entry.53, section ".printk_index", align 4
@usbdev_do_ioctl._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.18, ptr @.str.4, i32 2715, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: DISCSIGNAL\0A\00", [16 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.58 = internal global ptr @usbdev_do_ioctl._entry.56, section ".printk_index", align 4
@usbdev_do_ioctl._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.18, ptr @.str.4, i32 2720, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: CLAIMINTERFACE\0A\00", [44 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.61 = internal global ptr @usbdev_do_ioctl._entry.59, section ".printk_index", align 4
@usbdev_do_ioctl._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.18, ptr @.str.4, i32 2725, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: RELEASEINTERFACE\0A\00", [42 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.64 = internal global ptr @usbdev_do_ioctl._entry.62, section ".printk_index", align 4
@usbdev_do_ioctl._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.18, ptr @.str.4, i32 2730, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: IOCTL\0A\00", [21 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.67 = internal global ptr @usbdev_do_ioctl._entry.65, section ".printk_index", align 4
@usbdev_do_ioctl._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.18, ptr @.str.4, i32 2735, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: CLAIM_PORT\0A\00", [16 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.70 = internal global ptr @usbdev_do_ioctl._entry.68, section ".printk_index", align 4
@usbdev_do_ioctl._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.18, ptr @.str.4, i32 2740, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: RELEASE_PORT\0A\00", [46 x i8] zeroinitializer }, align 32
@usbdev_do_ioctl._entry_ptr.73 = internal global ptr @usbdev_do_ioctl._entry.71, section ".printk_index", align 4
@proc_reapurb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 2083, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reap %px\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"proc_reapurb\00", [19 x i8] zeroinitializer }, align 32
@proc_reapurb._entry_ptr = internal global ptr @proc_reapurb._entry, section ".printk_index", align 4
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@usbfs_memory_usage = internal global { %struct.atomic64_t, [24 x i8] } zeroinitializer, align 32
@proc_reapurbnonblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.78, ptr @.str.4, i32 2100, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"proc_reapurbnonblock\00", [43 x i8] zeroinitializer }, align 32
@proc_reapurbnonblock._entry_ptr = internal global ptr @proc_reapurbnonblock._entry, section ".printk_index", align 4
@do_proc_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 1190, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"control urb: bRequestType=%02x bRequest=%02x wValue=%04x wIndex=%04x wLength=%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_proc_control\00", [16 x i8] zeroinitializer }, align 32
@do_proc_control._entry_ptr = internal global ptr @do_proc_control._entry, section ".printk_index", align 4
@do_proc_control._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.4, i32 1229, ptr @.str.83, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"usbfs: USBDEVFS_CONTROL failed cmd %s rqt %u rq %u len %u ret %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@do_proc_control._entry_ptr.84 = internal global ptr @do_proc_control._entry.81, section ".printk_index", align 4
@check_ctrlrecip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 903, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: process %i (%s) requesting ep %02x but needs %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_ctrlrecip\00", [16 x i8] zeroinitializer }, align 32
@check_ctrlrecip._entry_ptr = internal global ptr @check_ctrlrecip._entry, section ".printk_index", align 4
@checkintf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 828, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"usbfs: process %d (%s) did not claim interface %u before use\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"checkintf\00", [22 x i8] zeroinitializer }, align 32
@checkintf._entry_ptr = internal global ptr @checkintf._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snoop_urb.types = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@snoop_urb.dirs = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.93, ptr @.str.94], [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@snoop_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 488, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"userurb %px, ep%d %s-%s, length %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snoop_urb\00", [22 x i8] zeroinitializer }, align 32
@snoop_urb._entry_ptr = internal global ptr @snoop_urb._entry, section ".printk_index", align 4
@snoop_urb._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.4, i32 493, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"userurb %px, ep%d %s-%s, actual_length %u status %d\0A\00", [43 x i8] zeroinitializer }, align 32
@snoop_urb._entry_ptr.99 = internal global ptr @snoop_urb._entry.97, section ".printk_index", align 4
@snoop_urb._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.4, i32 498, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ep%d %s-%s, length %u, timeout %d\0A\00", [61 x i8] zeroinitializer }, align 32
@snoop_urb._entry_ptr.102 = internal global ptr @snoop_urb._entry.100, section ".printk_index", align 4
@snoop_urb._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.4, i32 502, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ep%d %s-%s, actual_length %u, status %d\0A\00", [55 x i8] zeroinitializer }, align 32
@snoop_urb._entry_ptr.105 = internal global ptr @snoop_urb._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"data: \00", [25 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RESETEP\00", [24 x i8] zeroinitializer }, align 32
@check_reset_of_active_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.4, i32 1365, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Process %d (%s) called USBDEVFS_%s for active endpoint 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_reset_of_active_ep\00", [39 x i8] zeroinitializer }, align 32
@check_reset_of_active_ep._entry_ptr = internal global ptr @check_reset_of_active_ep._entry, section ".printk_index", align 4
@proc_resetdevice._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.4, i32 1492, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"usbfs: interface %d claimed by %s while '%s' resets device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"proc_resetdevice\00", [47 x i8] zeroinitializer }, align 32
@proc_resetdevice._entry_ptr = internal global ptr @proc_resetdevice._entry, section ".printk_index", align 4
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLEAR_HALT\00", [21 x i8] zeroinitializer }, align 32
@proc_setconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 1546, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"usbfs: interface %d claimed by %s while '%s' sets config #%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"proc_setconfig\00", [17 x i8] zeroinitializer }, align 32
@proc_setconfig._entry_ptr = internal global ptr @proc_setconfig._entry, section ".printk_index", align 4
@proc_do_submiturb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.116, ptr @.str.4, i32 1677, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"proc_do_submiturb\00", [46 x i8] zeroinitializer }, align 32
@proc_do_submiturb._entry_ptr = internal global ptr @proc_do_submiturb._entry, section ".printk_index", align 4
@proc_do_submiturb._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.4, i32 1862, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Requested nonsensical USBDEVFS_URB_SHORT_NOT_OK.\0A\00", [46 x i8] zeroinitializer }, align 32
@proc_do_submiturb._entry_ptr.119 = internal global ptr @proc_do_submiturb._entry.117, section ".printk_index", align 4
@proc_do_submiturb._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.4, i32 1864, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Requested nonsensical USBDEVFS_URB_ZERO_PACKET.\0A\00", [47 x i8] zeroinitializer }, align 32
@proc_do_submiturb._entry_ptr.122 = internal global ptr @proc_do_submiturb._entry.120, section ".printk_index", align 4
@proc_do_submiturb._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.4, i32 1948, ptr @.str.83, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usbfs: usb_submit_urb returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@proc_do_submiturb._entry_ptr.125 = internal global ptr @proc_do_submiturb._entry.123, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@async_completed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.4, i32 621, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"urb complete\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"async_completed\00", [16 x i8] zeroinitializer }, align 32
@async_completed._entry_ptr = internal global ptr @async_completed._entry, section ".printk_index", align 4
@proc_ioctl.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.129, ptr @.str.4, ptr @.str.130, i8 2, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbcore\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"proc_ioctl\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disconnect by usbfs\0A\00", [43 x i8] zeroinitializer }, align 32
@proc_claim_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 2403, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"port %d claimed by process %d: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"proc_claim_port\00", [16 x i8] zeroinitializer }, align 32
@proc_claim_port._entry_ptr = internal global ptr @proc_claim_port._entry, section ".printk_index", align 4
@proc_disconnect_claim.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.133, ptr @.str.4, ptr @.str.130, i8 2, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"proc_disconnect_claim\00", [42 x i8] zeroinitializer }, align 32
@usbdev_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @usbdev_vm_open, ptr @usbdev_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usbdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ps->lock\00", [22 x i8] zeroinitializer }, align 32
@usbdev_open.__key.135 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ps->wait\00", [22 x i8] zeroinitializer }, align 32
@usbdev_open.__key.137 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ps->wait_for_resume\00", [43 x i8] zeroinitializer }, align 32
@usbdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.4, i32 1057, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"opened by process %d: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbdev_open\00", [20 x i8] zeroinitializer }, align 32
@usbdev_open._entry_ptr = internal global ptr @usbdev_open._entry, section ".printk_index", align 4
@usb_bus_type = external dso_local global %struct.bus_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074025740, i64 1074025741]
@__sancov_gen_cov_switch_values.141 = internal global [28 x i64] [i64 26, i64 32, i64 21771, i64 21780, i64 21791, i64 21793, i64 21794, i64 21795, i64 1074025758, i64 1074287889, i64 1090802952, i64 2147767555, i64 2147767557, i64 2147767567, i64 2147767568, i64 2147767573, i64 2147767576, i64 2147767577, i64 2147767578, i64 2148029700, i64 2148029710, i64 2148029724, i64 2148029725, i64 2150389002, i64 2164806939, i64 3222033682, i64 3222295808, i64 3222295810]
@__sancov_gen_cov_switch_values.142 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 21782, i64 21783]
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"usbfs_snoop\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 112, i32 13 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"usbfs_snoop_max\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 116, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"usbfs_memory_mb\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 134, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"usbfs_mutex\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 750, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"usbfs_driver\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 749, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant [23 x i8] c"usbdev_file_operations\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2813, i32 30 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2869, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2871, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"usb_device_cdev\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2862, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2877, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [10 x i8] c"usbdev_nb\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2858, i32 30 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 59, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 710, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 230, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 214, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 174, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2588, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2593, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2617, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2624, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2631, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2638, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2643, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2650, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2655, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2660, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2665, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2670, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2710, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2715, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2720, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2725, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2730, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2735, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2740, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2083, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 286, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [19 x i8] c"usbfs_memory_usage\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 142, i32 19 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2100, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1186, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1226, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 900, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 826, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 472, i32 21 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 472, i32 32 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 472, i32 40 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 472, i32 47 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 472, i32 55 }
@___asan_gen_.417 = private unnamed_addr constant [5 x i8] c"dirs\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 473, i32 21 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 473, i32 31 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 473, i32 38 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 486, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 490, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 496, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 500, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 507, i32 30 }
@___asan_gen_.460 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 87, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1381, i32 40 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1363, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1490, i32 5 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1400, i32 40 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1538, i32 5 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1671, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1862, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1864, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1947, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 621, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2331, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2402, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2463, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant [14 x i8] c"usbdev_vm_ops\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 212, i32 42 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1041, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1046, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1047, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.577 = private constant [28 x i8] c"../drivers/usb/core/devio.c\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1056, i32 2 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_usbfs_memory_mb244, ptr @__UNIQUE_ID_usbfs_memory_mbtype243, ptr @__UNIQUE_ID_usbfs_snoop240, ptr @__UNIQUE_ID_usbfs_snoop_max242, ptr @__UNIQUE_ID_usbfs_snoop_maxtype241, ptr @__UNIQUE_ID_usbfs_snooptype239, ptr @__param_usbfs_memory_mb, ptr @__param_usbfs_snoop, ptr @__param_usbfs_snoop_max, ptr @async_completed._entry, ptr @async_completed._entry_ptr, ptr @check_ctrlrecip._entry, ptr @check_ctrlrecip._entry_ptr, ptr @check_reset_of_active_ep._entry, ptr @check_reset_of_active_ep._entry_ptr, ptr @checkintf._entry, ptr @checkintf._entry_ptr, ptr @do_proc_control._entry, ptr @do_proc_control._entry.81, ptr @do_proc_control._entry_ptr, ptr @do_proc_control._entry_ptr.84, ptr @driver_disconnect._entry, ptr @driver_disconnect._entry_ptr, ptr @proc_claim_port._entry, ptr @proc_claim_port._entry_ptr, ptr @proc_do_submiturb._entry, ptr @proc_do_submiturb._entry.117, ptr @proc_do_submiturb._entry.120, ptr @proc_do_submiturb._entry.123, ptr @proc_do_submiturb._entry_ptr, ptr @proc_do_submiturb._entry_ptr.119, ptr @proc_do_submiturb._entry_ptr.122, ptr @proc_do_submiturb._entry_ptr.125, ptr @proc_reapurb._entry, ptr @proc_reapurb._entry_ptr, ptr @proc_reapurbnonblock._entry, ptr @proc_reapurbnonblock._entry_ptr, ptr @proc_resetdevice._entry, ptr @proc_resetdevice._entry_ptr, ptr @proc_setconfig._entry, ptr @proc_setconfig._entry_ptr, ptr @snoop_urb._entry, ptr @snoop_urb._entry.100, ptr @snoop_urb._entry.103, ptr @snoop_urb._entry.97, ptr @snoop_urb._entry_ptr, ptr @snoop_urb._entry_ptr.102, ptr @snoop_urb._entry_ptr.105, ptr @snoop_urb._entry_ptr.99, ptr @usb_devio_init._entry, ptr @usb_devio_init._entry.5, ptr @usb_devio_init._entry_ptr, ptr @usb_devio_init._entry_ptr.7, ptr @usbdev_do_ioctl._entry, ptr @usbdev_do_ioctl._entry.20, ptr @usbdev_do_ioctl._entry.23, ptr @usbdev_do_ioctl._entry.26, ptr @usbdev_do_ioctl._entry.29, ptr @usbdev_do_ioctl._entry.32, ptr @usbdev_do_ioctl._entry.35, ptr @usbdev_do_ioctl._entry.38, ptr @usbdev_do_ioctl._entry.41, ptr @usbdev_do_ioctl._entry.44, ptr @usbdev_do_ioctl._entry.47, ptr @usbdev_do_ioctl._entry.50, ptr @usbdev_do_ioctl._entry.53, ptr @usbdev_do_ioctl._entry.56, ptr @usbdev_do_ioctl._entry.59, ptr @usbdev_do_ioctl._entry.62, ptr @usbdev_do_ioctl._entry.65, ptr @usbdev_do_ioctl._entry.68, ptr @usbdev_do_ioctl._entry.71, ptr @usbdev_do_ioctl._entry_ptr, ptr @usbdev_do_ioctl._entry_ptr.22, ptr @usbdev_do_ioctl._entry_ptr.25, ptr @usbdev_do_ioctl._entry_ptr.28, ptr @usbdev_do_ioctl._entry_ptr.31, ptr @usbdev_do_ioctl._entry_ptr.34, ptr @usbdev_do_ioctl._entry_ptr.37, ptr @usbdev_do_ioctl._entry_ptr.40, ptr @usbdev_do_ioctl._entry_ptr.43, ptr @usbdev_do_ioctl._entry_ptr.46, ptr @usbdev_do_ioctl._entry_ptr.49, ptr @usbdev_do_ioctl._entry_ptr.52, ptr @usbdev_do_ioctl._entry_ptr.55, ptr @usbdev_do_ioctl._entry_ptr.58, ptr @usbdev_do_ioctl._entry_ptr.61, ptr @usbdev_do_ioctl._entry_ptr.64, ptr @usbdev_do_ioctl._entry_ptr.67, ptr @usbdev_do_ioctl._entry_ptr.70, ptr @usbdev_do_ioctl._entry_ptr.73, ptr @usbdev_open._entry, ptr @usbdev_open._entry_ptr, ptr @usbfs_snoop, ptr @usbfs_snoop_max, ptr @usbfs_memory_mb, ptr @usbfs_mutex, ptr @.str, ptr @usbfs_driver, ptr @usbdev_file_operations, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @usb_device_cdev, ptr @.str.6, ptr @usbdev_nb, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @usbfs_memory_usage, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @snoop_urb.types, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @snoop_urb.dirs, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @init_completion.__key, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @usbdev_vm_ops, ptr @usbdev_open.__key, ptr @.str.134, ptr @usbdev_open.__key.135, ptr @.str.136, ptr @usbdev_open.__key.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbfs_snoop to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbfs_snoop_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbfs_memory_mb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbfs_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbfs_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_devio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_device_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_devio_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_do_ioctl._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_reapurb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbfs_memory_usage to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_reapurbnonblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_proc_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_proc_control._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_ctrlrecip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkintf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoop_urb.types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoop_urb.dirs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoop_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoop_urb._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoop_urb._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoop_urb._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reset_of_active_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_resetdevice._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_setconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_do_submiturb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_do_submiturb._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_do_submiturb._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_do_submiturb._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_completed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_claim_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_open.__key.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_open.__key.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @usbfs_notify_suspend(ptr nocapture noundef %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbfs_notify_resume(ptr noundef readonly %udev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @usbfs_mutex, i32 noundef 0) #13
  %filelist = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 34
  %0 = ptrtoint ptr %filelist to i32
  call void @__asan_load4_noabort(i32 %0)
  %ps.017 = load ptr, ptr %filelist, align 4
  %cmp.not18 = icmp eq ptr %ps.017, %filelist
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %ps.019 = phi ptr [ %ps.0, %do.body3.do.body3_crit_edge ], [ %ps.017, %entry.do.body3_crit_edge ]
  %not_yet_resumed = getelementptr inbounds %struct.usb_dev_state, ptr %ps.019, i32 0, i32 16
  %1 = ptrtoint ptr %not_yet_resumed to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %not_yet_resumed, align 4
  %wait_for_resume = getelementptr inbounds %struct.usb_dev_state, ptr %ps.019, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wait_for_resume, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  %2 = ptrtoint ptr %ps.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ps.0 = load ptr, ptr %ps.019, align 4
  %cmp.not = icmp eq ptr %ps.0, %filelist
  br i1 %cmp.not, label %do.body3.for.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.body3.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @usbfs_mutex) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @driver_probe(ptr nocapture noundef readnone %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @driver_disconnect(ptr noundef %intf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %5 to i32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp = icmp ult i8 %5, 32
  br i1 %cmp, label %if.then4, label %do.end, !prof !300

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ifclaimed = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %ifclaimed) #13
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv) #16
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then4
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call fastcc void @destroy_async_on_interface(ptr noundef nonnull %1, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @driver_suspend(ptr nocapture noundef readnone %intf, [1 x i32] %msg.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @driver_resume(ptr nocapture noundef readnone %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdev_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef %ppos) #1 align 64 {
entry:
  %temp_desc = alloca %struct.usb_device_descriptor, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %7, %1
  br i1 %cmp.i.not.i, label %entry.cleanup80_crit_edge, label %connected.exit

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

connected.exit:                                   ; preds = %entry
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %connected.exit.cleanup80_crit_edge, label %if.else

connected.exit.cleanup80_crit_edge:               ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.else:                                          ; preds = %connected.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.else.cleanup80_crit_edge, label %if.end4

if.else.cleanup80_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end4:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 18, i64 %5)
  %cmp5 = icmp ult i64 %5, 18
  br i1 %cmp5, label %if.then6, label %if.end4.if.end19_crit_edge

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %temp_desc) #13
  %12 = getelementptr inbounds %struct.usb_device_descriptor, ptr %temp_desc, i32 0, i32 2
  %13 = getelementptr inbounds %struct.usb_device_descriptor, ptr %temp_desc, i32 0, i32 7
  %14 = getelementptr inbounds %struct.usb_device_descriptor, ptr %temp_desc, i32 0, i32 8
  %15 = getelementptr inbounds %struct.usb_device_descriptor, ptr %temp_desc, i32 0, i32 9
  %descriptor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16
  %16 = call ptr @memcpy(ptr %temp_desc, ptr %descriptor, i32 18)
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %12, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #13
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %12, align 2
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %13, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #13
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %13, align 2
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %14, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #13
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %14, align 2
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %15, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #13
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %15, align 2
  %33 = trunc i64 %5 to i32
  %conv = sub nuw nsw i32 18, %33
  %34 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %nbytes)
  %add.ptr = getelementptr i8, ptr %temp_desc, i32 %33
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %34, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then6.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then6.copy_to_user.exit_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then6
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %34, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %34) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %34) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then6.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %34, %if.then6.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %34, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool12.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool12.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %temp_desc) #13
  br label %cleanup80

cleanup:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv15 = zext i32 %34 to i64
  %36 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ppos, align 8
  %add = add i64 %37, %conv15
  store i64 %add, ptr %ppos, align 8
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %34
  %sub17 = sub i32 %nbytes, %34
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %temp_desc) #13
  br label %if.end19

if.end19:                                         ; preds = %cleanup, %if.end4.if.end19_crit_edge
  %nbytes.addr.1 = phi i32 [ %sub17, %cleanup ], [ %nbytes, %if.end4.if.end19_crit_edge ]
  %ret.1 = phi i32 [ %34, %cleanup ], [ 0, %if.end4.if.end19_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr16, %cleanup ], [ %buf, %if.end4.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1)
  %tobool20.not198 = icmp eq i32 %nbytes.addr.1, 0
  br i1 %tobool20.not198, label %if.end19.cleanup80_crit_edge, label %land.rhs.lr.ph

if.end19.cleanup80_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

land.rhs.lr.ph:                                   ; preds = %if.end19
  %bNumConfigurations = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 13
  %rawdescriptors = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 23
  %config31 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 19
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %buf.addr.2204 = phi ptr [ %buf.addr.1, %land.rhs.lr.ph ], [ %buf.addr.5.ph, %for.inc.land.rhs_crit_edge ]
  %i.0202 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %pos.0201 = phi i64 [ 18, %land.rhs.lr.ph ], [ %add27, %for.inc.land.rhs_crit_edge ]
  %ret.2200 = phi i32 [ %ret.1, %land.rhs.lr.ph ], [ %ret.5.ph, %for.inc.land.rhs_crit_edge ]
  %nbytes.addr.2199 = phi i32 [ %nbytes.addr.1, %land.rhs.lr.ph ], [ %nbytes.addr.5.ph, %for.inc.land.rhs_crit_edge ]
  %38 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bNumConfigurations, align 1
  %conv22 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0202, i32 %conv22)
  %cmp23 = icmp ult i32 %i.0202, %conv22
  br i1 %cmp23, label %for.body, label %land.rhs.cleanup80_crit_edge

land.rhs.cleanup80_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

for.body:                                         ; preds = %land.rhs
  %40 = ptrtoint ptr %rawdescriptors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rawdescriptors, align 8
  %arrayidx = getelementptr ptr, ptr %41, i32 %i.0202
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %wTotalLength = getelementptr inbounds %struct.usb_config_descriptor, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %wTotalLength, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %47 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %ppos, align 8
  %conv26 = zext i16 %46 to i64
  %add27 = add i64 %pos.0201, %conv26
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %add27)
  %cmp28 = icmp slt i64 %48, %add27
  br i1 %cmp28, label %if.then30, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then30:                                        ; preds = %for.body
  %49 = ptrtoint ptr %config31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config31, align 8
  %wTotalLength33 = getelementptr %struct.usb_host_config, ptr %50, i32 %i.0202, i32 0, i32 2
  %51 = ptrtoint ptr %wTotalLength33 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %wTotalLength33, align 2
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %sub36.neg = sub i64 %pos.0201, %48
  %sub37 = add i64 %sub36.neg, %conv26
  %conv38 = trunc i64 %sub37 to i32
  %54 = call i32 @llvm.umin.i32(i32 %nbytes.addr.2199, i32 %conv38)
  %conv43 = zext i16 %53 to i64
  %sub44 = sub i64 %48, %pos.0201
  call void @__sanitizer_cov_trace_cmp8(i64 %sub44, i64 %conv43)
  %cmp45 = icmp slt i64 %sub44, %conv43
  br i1 %cmp45, label %if.then47, label %if.then30.cleanup69_crit_edge

if.then30.cleanup69_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup69

if.then47:                                        ; preds = %if.then30
  %sub50 = sub i64 %conv43, %sub44
  %conv51 = trunc i64 %sub50 to i32
  %idx.ext55 = trunc i64 %sub44 to i32
  %add.ptr56 = getelementptr i8, ptr %43, i32 %idx.ext55
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 %conv51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp9.i.i153 = icmp slt i32 %55, 0
  br i1 %cmp9.i.i153, label %land.rhs16.i.i156, label %if.then.i.i.i159

land.rhs16.i.i156:                                ; preds = %if.then47
  %.b71.i.i155 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i155, label %land.rhs16.i.i156.cleanup80_crit_edge, label %if.then27.i.i157, !prof !300

land.rhs16.i.i156.cleanup80_crit_edge:            ; preds = %land.rhs16.i.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.then27.i.i157:                                 ; preds = %land.rhs16.i.i156
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup80

if.then.i.i.i159:                                 ; preds = %if.then47
  call void @__check_object_size(ptr noundef %add.ptr56, i32 noundef %55, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i160 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i160, label %if.then.i.i.i159.copy_to_user.exit169_crit_edge, label %if.end.i.i164

if.then.i.i.i159.copy_to_user.exit169_crit_edge:  ; preds = %if.then.i.i.i159
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit169

if.end.i.i164:                                    ; preds = %if.then.i.i.i159
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.2204, i32 %55, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i162 = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i162)
  %cmp.i6.i163 = icmp eq i32 %asmresult.i.i162, 0
  br i1 %cmp.i6.i163, label %if.then2.i.i167, label %if.end.i.i164.copy_to_user.exit169_crit_edge

if.end.i.i164.copy_to_user.exit169_crit_edge:     ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit169

if.then2.i.i167:                                  ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i165 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr56, i32 noundef %55) #13
  %call.i12.i.i166 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.2204, ptr noundef %add.ptr56, i32 noundef %55) #13
  br label %copy_to_user.exit169

copy_to_user.exit169:                             ; preds = %if.then2.i.i167, %if.end.i.i164.copy_to_user.exit169_crit_edge, %if.then.i.i.i159.copy_to_user.exit169_crit_edge
  %n.addr.0.i168 = phi i32 [ %55, %if.then.i.i.i159.copy_to_user.exit169_crit_edge ], [ %call.i12.i.i166, %if.then2.i.i167 ], [ %55, %if.end.i.i164.copy_to_user.exit169_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i168)
  %tobool60.not = icmp eq i32 %n.addr.0.i168, 0
  br i1 %tobool60.not, label %copy_to_user.exit169.cleanup69_crit_edge, label %copy_to_user.exit169.cleanup80_crit_edge

copy_to_user.exit169.cleanup80_crit_edge:         ; preds = %copy_to_user.exit169
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

copy_to_user.exit169.cleanup69_crit_edge:         ; preds = %copy_to_user.exit169
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup69

cleanup69:                                        ; preds = %copy_to_user.exit169.cleanup69_crit_edge, %if.then30.cleanup69_crit_edge
  %conv64 = zext i32 %54 to i64
  %57 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %ppos, align 8
  %add65 = add i64 %58, %conv64
  store i64 %add65, ptr %ppos, align 8
  %add.ptr66 = getelementptr i8, ptr %buf.addr.2204, i32 %54
  %sub67 = sub i32 %nbytes.addr.2199, %54
  %add68 = add i32 %54, %ret.2200
  br label %for.inc

for.inc:                                          ; preds = %cleanup69, %for.body.for.inc_crit_edge
  %nbytes.addr.5.ph = phi i32 [ %nbytes.addr.2199, %for.body.for.inc_crit_edge ], [ %sub67, %cleanup69 ]
  %ret.5.ph = phi i32 [ %ret.2200, %for.body.for.inc_crit_edge ], [ %add68, %cleanup69 ]
  %buf.addr.5.ph = phi ptr [ %buf.addr.2204, %for.body.for.inc_crit_edge ], [ %add.ptr66, %cleanup69 ]
  %inc = add nuw nsw i32 %i.0202, 1
  %tobool20.not = icmp eq i32 %nbytes.addr.5.ph, 0
  br i1 %tobool20.not, label %for.inc.cleanup80_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.inc.cleanup80_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

cleanup80:                                        ; preds = %for.inc.cleanup80_crit_edge, %copy_to_user.exit169.cleanup80_crit_edge, %if.then27.i.i157, %land.rhs16.i.i156.cleanup80_crit_edge, %land.rhs.cleanup80_crit_edge, %if.end19.cleanup80_crit_edge, %cleanup.thread, %if.else.cleanup80_crit_edge, %connected.exit.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %ret.6 = phi i32 [ -19, %connected.exit.cleanup80_crit_edge ], [ -22, %if.else.cleanup80_crit_edge ], [ -14, %cleanup.thread ], [ -19, %entry.cleanup80_crit_edge ], [ -14, %if.then27.i.i157 ], [ -14, %land.rhs16.i.i156.cleanup80_crit_edge ], [ %ret.1, %if.end19.cleanup80_crit_edge ], [ -14, %copy_to_user.exit169.cleanup80_crit_edge ], [ %ret.2200, %land.rhs.cleanup80_crit_edge ], [ %ret.5.ph, %for.inc.cleanup80_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #13
  ret i32 %ret.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdev_poll(ptr noundef %file, ptr noundef %wait) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait1 = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #13
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %poll_wait.exit.if.end_crit_edge, label %land.lhs.true

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  %async_completed = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %async_completed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %async_completed, align 4
  %cmp.i.not = icmp eq ptr %7, %async_completed
  %spec.select = select i1 %cmp.i.not, i32 0, i32 260
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %poll_wait.exit.if.end_crit_edge
  %mask.0 = phi i32 [ 0, %poll_wait.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %9, %1
  br i1 %cmp.i.not.i, label %if.end.connected.exit.thread_crit_edge, label %connected.exit

if.end.connected.exit.thread_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %connected.exit.thread

connected.exit:                                   ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i22.not = icmp eq i32 %13, 0
  br i1 %cmp.i22.not, label %connected.exit.connected.exit.thread_crit_edge, label %connected.exit._crit_edge

connected.exit._crit_edge:                        ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %14

connected.exit.connected.exit.thread_crit_edge:   ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %connected.exit.thread

connected.exit.thread:                            ; preds = %connected.exit.connected.exit.thread_crit_edge, %if.end.connected.exit.thread_crit_edge
  %or627 = or i32 %mask.0, 16
  br label %14

14:                                               ; preds = %connected.exit.thread, %connected.exit._crit_edge
  %15 = phi i32 [ %or627, %connected.exit.thread ], [ %mask.0, %connected.exit._crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %cmp.i23.not = icmp eq ptr %17, %1
  %or11 = or i32 %15, 8
  %mask.2 = select i1 %cmp.i23.not, i32 %or11, i32 %15
  ret i32 %mask.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  %actlen.i.i = alloca i32, align 4
  %ctrl.i530 = alloca %struct.usbdevfs_ctrltransfer, align 4
  %len2.i.i = alloca i32, align 4
  %bulk.i = alloca %struct.usbdevfs_bulktransfer, align 4
  %gd.i = alloca %struct.usbdevfs_getdriver, align 4
  %ci.i = alloca %struct.usbdevfs_connectinfo, align 8
  %setintf.i = alloca %struct.usbdevfs_setinterface, align 4
  %uurb.i = alloca %struct.usbdevfs_urb, align 4
  %ds.i = alloca %struct.usbdevfs_disconnectsignal, align 4
  %ctrl.i = alloca %struct.usbdevfs_ioctl, align 4
  %num_streams.i = alloca i32, align 4
  %num_eps.i32 = alloca i32, align 4
  %eps.i33 = alloca ptr, align 4
  %intf.i34 = alloca ptr, align 4
  %num_eps.i = alloca i32, align 4
  %eps.i = alloca ptr, align 4
  %intf.i = alloca ptr, align 4
  %data.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %ci.i.i = alloca %struct.usbdevfs_conninfo_ex, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp57.i = alloca %struct.timespec64, align 8
  %tmp74.i = alloca %struct.timespec64, align 8
  %tmp103.i = alloca %struct.timespec64, align 8
  %tmp168.i = alloca %struct.timespec64, align 8
  %tmp281.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i.i, align 8
  %dev1.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 1
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.usbdev_do_ioctl.exit_crit_edge, label %if.end.i

entry.usbdev_do_ioctl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %usbdev_do_ioctl.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %mutex.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #13
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.epilog.i [
    i32 1074025740, label %do.body.i
    i32 1074025741, label %do.body12.i
  ]

do.body.i:                                        ; preds = %if.end.i
  %10 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not.i = icmp eq i8 %10, 0
  br i1 %tobool3.not.i, label %do.body.i.do.end9.i_crit_edge, label %do.end.i

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.body.i.do.end9.i_crit_edge
  %call.i.i = tail call fastcc ptr @reap_as(ptr noundef %2) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end9.i
  %11 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.do.end7.i.i_crit_edge, label %do.end.i.i

if.then.i.i.do.end7.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %dev5.i.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  %userurb.i.i = getelementptr inbounds %struct.async, ptr %call.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %userurb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %userurb.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.74, ptr noundef %15) #16
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %if.then.i.i.do.end7.i.i_crit_edge
  %call8.i.i = tail call fastcc i32 @processcompl(ptr noundef nonnull %call.i.i, ptr noundef %0) #13
  tail call fastcc void @free_async(ptr noundef nonnull %call.i.i) #13
  br label %done.i

if.end9.i.i:                                      ; preds = %do.end9.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stack.i.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %if.end9.i.i.done.thread.i_crit_edge, !prof !300

if.end9.i.i.done.thread.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread.i

signal_pending.exit.i.i:                          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %21, align 4
  %and1.i.i.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool12.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %tobool12.not.i.i, i32 -19, i32 -4
  br label %done.thread.i

do.body12.i:                                      ; preds = %if.end.i
  %27 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool13.not.i = icmp eq i8 %27, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.end21.i_crit_edge, label %do.end17.i

do.body12.i.do.end21.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21.i

do.end17.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18) #16
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end17.i, %do.body12.i.do.end21.i_crit_edge
  %lock.i.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 3
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #13
  %async_completed.i.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 5
  %28 = ptrtoint ptr %async_completed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %async_completed.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %29, %async_completed.i.i.i
  br i1 %cmp.i.not.i.i.i, label %async_getcompleted.exit.thread.i.i, label %if.then.i.i.i

async_getcompleted.exit.thread.i.i:               ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i.i.i) #13
  br label %if.else.i.i

if.then.i.i.i:                                    ; preds = %do.end21.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #13
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.async_getcompleted.exit.i.i_crit_edge

if.then.i.i.i.async_getcompleted.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %async_getcompleted.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %async_getcompleted.exit.i.i

async_getcompleted.exit.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.async_getcompleted.exit.i.i_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %29, ptr %prev.i3.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i.i.i) #13
  %tobool.not.i383.i = icmp eq ptr %29, null
  br i1 %tobool.not.i383.i, label %async_getcompleted.exit.i.i.if.else.i.i_crit_edge, label %do.body.i.i

async_getcompleted.exit.i.i.if.else.i.i_crit_edge: ; preds = %async_getcompleted.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

do.body.i.i:                                      ; preds = %async_getcompleted.exit.i.i
  %38 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool2.not.i384.i = icmp eq i8 %38, 0
  br i1 %tobool2.not.i384.i, label %do.body.i.i.do.end7.i390.i_crit_edge, label %do.end.i388.i

do.body.i.i.do.end7.i390.i_crit_edge:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i390.i

do.end.i388.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1.i, align 4
  %dev5.i386.i = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %userurb.i387.i = getelementptr inbounds %struct.async, ptr %29, i32 0, i32 7
  %41 = ptrtoint ptr %userurb.i387.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %userurb.i387.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i386.i, ptr noundef nonnull @.str.74, ptr noundef %42) #16
  br label %do.end7.i390.i

do.end7.i390.i:                                   ; preds = %do.end.i388.i, %do.body.i.i.do.end7.i390.i_crit_edge
  %call8.i389.i = tail call fastcc i32 @processcompl(ptr noundef nonnull %29, ptr noundef %0) #13
  tail call fastcc void @free_async(ptr noundef nonnull %29) #13
  br label %done.i

if.else.i.i:                                      ; preds = %async_getcompleted.exit.i.i.if.else.i.i_crit_edge, %async_getcompleted.exit.thread.i.i
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %2, align 4
  %cmp.i.not.i17.i.i = icmp eq ptr %44, %2
  br i1 %cmp.i.not.i17.i.i, label %if.else.i.i.connected.exit.thread.i.i_crit_edge, label %connected.exit.i.i

if.else.i.i.connected.exit.thread.i.i_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %connected.exit.thread.i.i

connected.exit.i.i:                               ; preds = %if.else.i.i
  %45 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.not.i.i = icmp eq i32 %48, 0
  br i1 %cmp.i.not.i.i, label %connected.exit.i.i.connected.exit.thread.i.i_crit_edge, label %connected.exit.i.i.done.thread.i_crit_edge

connected.exit.i.i.done.thread.i_crit_edge:       ; preds = %connected.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread.i

connected.exit.i.i.connected.exit.thread.i.i_crit_edge: ; preds = %connected.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %connected.exit.thread.i.i

connected.exit.thread.i.i:                        ; preds = %connected.exit.i.i.connected.exit.thread.i.i_crit_edge, %if.else.i.i.connected.exit.thread.i.i_crit_edge
  br label %done.thread.i

sw.epilog.i:                                      ; preds = %if.end.i
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %2, align 4
  %cmp.i.not.i391.i = icmp eq ptr %50, %2
  br i1 %cmp.i.not.i391.i, label %sw.epilog.i.if.then25.i_crit_edge, label %connected.exit.i

sw.epilog.i.if.then25.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.i

connected.exit.i:                                 ; preds = %sw.epilog.i
  %51 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1.i, align 4
  %state.i.i = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.not.i = icmp eq i32 %54, 0
  br i1 %cmp.i.not.i, label %connected.exit.i.if.then25.i_crit_edge, label %if.end27.i

connected.exit.i.if.then25.i_crit_edge:           ; preds = %connected.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.i

if.then25.i:                                      ; preds = %connected.exit.i.if.then25.i_crit_edge, %sw.epilog.i.if.then25.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #13
  br label %usbdev_do_ioctl.exit

if.end27.i:                                       ; preds = %connected.exit.i
  %55 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %cmd, label %sw.epilog272.i [
    i32 -1072671488, label %do.body29.i
    i32 -1072671486, label %do.body43.i
    i32 -2147199741, label %do.body60.i
    i32 21780, label %do.body77.i
    i32 -2147199723, label %do.body89.i
    i32 1090802952, label %do.body106.i
    i32 1074287889, label %do.body118.i
    i32 -2146937596, label %do.body130.i
    i32 -2147199739, label %do.body142.i
    i32 -2144578294, label %do.body154.i
    i32 21771, label %do.body171.i
    i32 -2146937586, label %do.body183.i
    i32 -2147199729, label %do.body195.i
    i32 -2147199728, label %do.body207.i
    i32 -1072933614, label %do.body219.i
    i32 -2147199720, label %do.body231.i
    i32 -2147199719, label %do.body243.i
    i32 -2147199718, label %sw.bb254.i
    i32 -2130160357, label %sw.bb256.i
    i32 -2146937572, label %sw.bb258.i
    i32 -2146937571, label %sw.bb260.i
    i32 1074025758, label %sw.bb262.i
    i32 21791, label %sw.bb264.i
    i32 21793, label %sw.bb266.i
    i32 21794, label %sw.bb268.i
    i32 21795, label %sw.bb270.i
  ]

do.body29.i:                                      ; preds = %if.end27.i
  %56 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool30.not.i = icmp eq i8 %56, 0
  br i1 %tobool30.not.i, label %do.body29.i.do.end38.i_crit_edge, label %do.end34.i

do.body29.i.do.end38.i_crit_edge:                 ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38.i

do.end34.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18) #16
  br label %do.end38.i

do.end38.i:                                       ; preds = %do.end34.i, %do.body29.i.do.end38.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctrl.i530) #13
  %57 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %ctrl.i530, i32 0, i32 1
  %58 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %ctrl.i530, i32 0, i32 2
  %59 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %ctrl.i530, i32 0, i32 3
  %60 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %ctrl.i530, i32 0, i32 4
  %61 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %ctrl.i530, i32 0, i32 5
  %62 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %ctrl.i530, i32 0, i32 6
  %63 = call ptr @memset(ptr %ctrl.i530, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i531 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i531, label %do.end38.i.proc_control.exit.thread_crit_edge, label %land.lhs.true.i.i.i534

do.end38.i.proc_control.exit.thread_crit_edge:    ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_control.exit.thread

land.lhs.true.i.i.i534:                           ; preds = %do.end38.i
  %64 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i.i532 = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i532)
  %cmp.i6.i.i533 = icmp eq i32 %asmresult.i.i.i532, 0
  br i1 %cmp.i6.i.i533, label %if.end.i.i.i542, label %land.lhs.true.i.i.i534.proc_control.exit.thread_crit_edge, !prof !300

land.lhs.true.i.i.i534.proc_control.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i534
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_control.exit.thread

if.end.i.i.i542:                                  ; preds = %land.lhs.true.i.i.i534
  %call.i.i.i.i535 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ctrl.i530, i32 noundef 16) #13
  %65 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i536 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i.i536 to ptr
  %cpu_domain.i.i.i.i.i.i537 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 4
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i537) #8, !srcloc !304
  %and.i.i.i.i.i538 = and i32 %67, -13
  %or.i.i.i.i.i539 = or i32 %and.i.i.i.i.i538, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i539) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i540 = call i32 @arm_copy_from_user(ptr noundef nonnull %ctrl.i530, ptr noundef %0, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i540)
  %tobool4.not.i.i.i541 = icmp eq i32 %call1.i.i.i.i540, 0
  br i1 %tobool4.not.i.i.i541, label %if.end.i550, label %if.end.i.i.i542.proc_control.exit.thread_crit_edge, !prof !300

if.end.i.i.i542.proc_control.exit.thread_crit_edge: ; preds = %if.end.i.i.i542
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_control.exit.thread

proc_control.exit.thread:                         ; preds = %if.end.i.i.i542.proc_control.exit.thread_crit_edge, %land.lhs.true.i.i.i534.proc_control.exit.thread_crit_edge, %do.end38.i.proc_control.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl.i530) #13
  br label %done.thread417.i

if.end.i550:                                      ; preds = %if.end.i.i.i542
  %68 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actlen.i.i) #13
  %70 = ptrtoint ptr %actlen.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %actlen.i.i, align 4, !annotation !307
  %71 = ptrtoint ptr %ctrl.i530 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ctrl.i530, align 4
  %conv.i.i547 = zext i8 %72 to i32
  %73 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %57, align 1
  %conv2.i.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %59, align 4
  %conv3.i.i = zext i16 %76 to i32
  %call.i.i548 = call fastcc i32 @check_ctrlrecip(ptr noundef %2, i32 noundef %conv.i.i547, i32 noundef %conv2.i.i, i32 noundef %conv3.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i548)
  %tobool.not.i.i549 = icmp eq i32 %call.i.i548, 0
  br i1 %tobool.not.i.i549, label %if.end.i.i552, label %if.end.i550.proc_control.exit_crit_edge

if.end.i550.proc_control.exit_crit_edge:          ; preds = %if.end.i550
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_control.exit

if.end.i.i552:                                    ; preds = %if.end.i550
  %77 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %60, align 2
  %conv5.i.i = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %78)
  %cmp.i.i551 = icmp ugt i16 %78, 4096
  br i1 %cmp.i.i551, label %proc_control.exit.thread789, label %if.end8.i.i

proc_control.exit.thread789:                      ; preds = %if.end.i.i552
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actlen.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl.i530) #13
  br label %done.thread417.i

if.end8.i.i:                                      ; preds = %if.end.i.i552
  %call9.i.i = call fastcc i32 @usbfs_increase_memory_usage(i64 noundef 4228) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end8.i.i.proc_control.exit_crit_edge

if.end8.i.i.proc_control.exit_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_control.exit

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %call13.i.i = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #13
  %79 = inttoptr i32 %call13.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end12.i.i.done.i.i604_crit_edge, label %if.end16.i.i

if.end12.i.i.done.i.i604_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i604

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %call17.i.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3072) #13
  %tobool18.not.i.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool18.not.i.i, label %if.end16.i.i.done.i.i604_crit_edge, label %if.end20.i.i

if.end16.i.i.done.i.i604_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i604

if.end20.i.i:                                     ; preds = %if.end16.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i553 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3072, i32 noundef 8) #18
  %tobool22.not.i.i = icmp eq ptr %call7.i.i.i553, null
  br i1 %tobool22.not.i.i, label %if.end20.i.i.done.i.i604_crit_edge, label %if.end24.i.i

if.end20.i.i.done.i.i604_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i604

if.end24.i.i:                                     ; preds = %if.end20.i.i
  %81 = ptrtoint ptr %ctrl.i530 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ctrl.i530, align 4
  %83 = ptrtoint ptr %call7.i.i.i553 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %call7.i.i.i553, align 8
  %84 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %57, align 1
  %bRequest28.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i553, i32 0, i32 1
  %86 = ptrtoint ptr %bRequest28.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %bRequest28.i.i, align 1
  %87 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %58, align 2
  %89 = call i16 @llvm.bswap.i16(i16 %88) #13
  %wValue29.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i553, i32 0, i32 2
  %90 = ptrtoint ptr %wValue29.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %wValue29.i.i, align 2
  %91 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %59, align 4
  %93 = call i16 @llvm.bswap.i16(i16 %92) #13
  %wIndex31.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i553, i32 0, i32 3
  %94 = ptrtoint ptr %wIndex31.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %wIndex31.i.i, align 4
  %95 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %60, align 2
  %97 = call i16 @llvm.bswap.i16(i16 %96) #13
  %wLength33.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i553, i32 0, i32 4
  %98 = ptrtoint ptr %wLength33.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %wLength33.i.i, align 2
  %99 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %61, align 4
  %101 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool34.not.i.i = icmp eq i8 %101, 0
  br i1 %tobool34.not.i.i, label %if.end24.i.i.do.end50.i.i_crit_edge, label %do.end.i.i554

if.end24.i.i.do.end50.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50.i.i

do.end.i.i554:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev37.i.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  %conv39.i.i = zext i8 %82 to i32
  %conv41.i.i = zext i8 %85 to i32
  %conv43.i.i = zext i16 %88 to i32
  %conv45.i.i = zext i16 %92 to i32
  %conv47.i.i = zext i16 %96 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37.i.i, ptr noundef nonnull @.str.79, i32 noundef %conv39.i.i, i32 noundef %conv41.i.i, i32 noundef %conv43.i.i, i32 noundef %conv45.i.i, i32 noundef %conv47.i.i) #16
  br label %do.end50.i.i

do.end50.i.i:                                     ; preds = %do.end.i.i554, %if.end24.i.i.do.end50.i.i_crit_edge
  %102 = ptrtoint ptr %ctrl.i530 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ctrl.i530, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %103)
  %tobool53.not.i.i = icmp sgt i8 %103, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool54.not.i.i = icmp eq i16 %78, 0
  %or.cond.i.i = select i1 %tobool53.not.i.i, i1 true, i1 %tobool54.not.i.i
  br i1 %or.cond.i.i, label %if.else.i.i582, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %do.end50.i.i
  %104 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %69, align 8
  %shl.i.i.i555 = shl i32 %105, 8
  %or57.i.i = or i32 %shl.i.i.i555, -2147483520
  %dev1.i.i.i556 = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 8
  %106 = ptrtoint ptr %dev1.i.i.i556 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %69, ptr %dev1.i.i.i556, align 4
  %pipe2.i.i.i557 = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 10
  %107 = ptrtoint ptr %pipe2.i.i.i557 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or57.i.i, ptr %pipe2.i.i.i557, align 4
  %setup_packet3.i.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 21
  %108 = ptrtoint ptr %setup_packet3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call7.i.i.i553, ptr %setup_packet3.i.i.i, align 4
  %transfer_buffer4.i.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 14
  %109 = ptrtoint ptr %transfer_buffer4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %79, ptr %transfer_buffer4.i.i.i, align 4
  %transfer_buffer_length.i.i.i558 = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 19
  %110 = ptrtoint ptr %transfer_buffer_length.i.i.i558 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv5.i.i, ptr %transfer_buffer_length.i.i.i558, align 4
  %complete.i.i.i559 = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 28
  %111 = ptrtoint ptr %complete.i.i.i559 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %complete.i.i.i559, align 4
  %context5.i.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 27
  %112 = ptrtoint ptr %context5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %context5.i.i.i, align 4
  %113 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i775 = icmp eq i8 %113, 0
  br i1 %tobool.not.i775, label %if.then55.i.i.snoop_urb.exit786_crit_edge, label %if.end.i782

if.then55.i.i.snoop_urb.exit786_crit_edge:        ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit786

if.end.i782:                                      ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %114 = lshr i32 %shl.i.i.i555, 15
  %and.i776 = and i32 %114, 15
  %115 = lshr i32 %or57.i.i, 30
  %arrayidx.i777 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx.i777 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i777, align 4
  %dev21.i781 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i781, ptr noundef nonnull @.str.101, i32 noundef %and.i776, ptr noundef %117, ptr noundef nonnull @.str.94, i32 noundef %conv5.i.i, i32 noundef %100) #16
  br label %snoop_urb.exit786

snoop_urb.exit786:                                ; preds = %if.end.i782, %if.then55.i.i.snoop_urb.exit786_crit_edge
  %mutex.i.i.i560 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i.i.i560) #13
  %call59.i.i561 = call fastcc i32 @usbfs_start_wait_urb(ptr noundef nonnull %call17.i.i, i32 noundef %100, ptr noundef nonnull %actlen.i.i) #13
  call void @mutex_lock_nested(ptr noundef %mutex.i.i.i560, i32 noundef 0) #13
  %118 = ptrtoint ptr %actlen.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %actlen.i.i, align 4
  %120 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i759 = icmp eq i8 %120, 0
  br i1 %tobool.not.i759, label %snoop_urb.exit786.snoop_urb.exit774_crit_edge, label %if.end.i766

snoop_urb.exit786.snoop_urb.exit774_crit_edge:    ; preds = %snoop_urb.exit786
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit774

if.end.i766:                                      ; preds = %snoop_urb.exit786
  %121 = lshr i32 %shl.i.i.i555, 15
  %and.i760 = and i32 %121, 15
  %122 = lshr i32 %or57.i.i, 30
  %arrayidx.i761 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx.i761 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i761, align 4
  %dev21.i765 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i765, ptr noundef nonnull @.str.104, i32 noundef %and.i760, ptr noundef %124, ptr noundef nonnull @.str.94, i32 noundef %119, i32 noundef %call59.i.i561) #16
  %125 = load i32, ptr @usbfs_snoop_max, align 4
  %126 = call i32 @llvm.umin.i32(i32 %125, i32 %119) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp31.not.i769 = icmp eq i32 %126, 0
  br i1 %cmp31.not.i769, label %if.end.i766.snoop_urb.exit774_crit_edge, label %if.then32.i772

if.end.i766.snoop_urb.exit774_crit_edge:          ; preds = %if.end.i766
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit774

if.then32.i772:                                   ; preds = %if.end.i766
  call void @__sanitizer_cov_trace_pc() #15
  call void @print_hex_dump(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.106, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %79, i32 noundef %126, i1 noundef zeroext true) #13
  br label %snoop_urb.exit774

snoop_urb.exit774:                                ; preds = %if.then32.i772, %if.end.i766.snoop_urb.exit774_crit_edge, %snoop_urb.exit786.snoop_urb.exit774_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i561)
  %tobool61.not.i.i562 = icmp eq i32 %call59.i.i561, 0
  br i1 %tobool61.not.i.i562, label %land.lhs.true62.i.i, label %snoop_urb.exit774.if.end83.i.i_crit_edge

snoop_urb.exit774.if.end83.i.i_crit_edge:         ; preds = %snoop_urb.exit774
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i.i

land.lhs.true62.i.i:                              ; preds = %snoop_urb.exit774
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool63.not.i.i = icmp eq i32 %119, 0
  br i1 %tobool63.not.i.i, label %land.lhs.true62.i.i.cond.false.i.i599_crit_edge, label %if.then64.i.i

land.lhs.true62.i.i.cond.false.i.i599_crit_edge:  ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i599

if.then64.i.i:                                    ; preds = %land.lhs.true62.i.i
  %127 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp9.i.i.i.i569 = icmp slt i32 %119, 0
  br i1 %cmp9.i.i.i.i569, label %land.rhs16.i.i.i.i572, label %if.then.i.i.i.i.i575

land.rhs16.i.i.i.i572:                            ; preds = %if.then64.i.i
  %.b71.i.i.i.i571 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i571, label %land.rhs16.i.i.i.i572.recv_fault.i.i_crit_edge, label %if.then27.i.i.i.i573, !prof !300

land.rhs16.i.i.i.i572.recv_fault.i.i_crit_edge:   ; preds = %land.rhs16.i.i.i.i572
  call void @__sanitizer_cov_trace_pc() #15
  br label %recv_fault.i.i

if.then27.i.i.i.i573:                             ; preds = %land.rhs16.i.i.i.i572
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %recv_fault.i.i

if.then.i.i.i.i.i575:                             ; preds = %if.then64.i.i
  call void @__check_object_size(ptr noundef nonnull %79, i32 noundef %119, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i2.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i2.i, label %if.then.i.i.i.i.i575.recv_fault.i.i_crit_edge, label %if.end.i.i.i.i578

if.then.i.i.i.i.i575.recv_fault.i.i_crit_edge:    ; preds = %if.then.i.i.i.i.i575
  call void @__sanitizer_cov_trace_pc() #15
  br label %recv_fault.i.i

if.end.i.i.i.i578:                                ; preds = %if.then.i.i.i.i.i575
  %129 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %128, i32 %119, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i.i.i576 = extractvalue { i32, i32 } %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i576)
  %cmp.i6.i.i.i577 = icmp eq i32 %asmresult.i.i.i.i576, 0
  br i1 %cmp.i6.i.i.i577, label %copy_to_user.exit.i.i581, label %if.end.i.i.i.i578.recv_fault.i.i_crit_edge

if.end.i.i.i.i578.recv_fault.i.i_crit_edge:       ; preds = %if.end.i.i.i.i578
  call void @__sanitizer_cov_trace_pc() #15
  br label %recv_fault.i.i

copy_to_user.exit.i.i581:                         ; preds = %if.end.i.i.i.i578
  %call.i.i.i.i.i579 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %79, i32 noundef %119) #13
  %call.i12.i.i.i.i580 = call i32 @arm_copy_to_user(ptr noundef %128, ptr noundef nonnull %79, i32 noundef %119) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i580)
  %tobool66.not.i.i = icmp eq i32 %call.i12.i.i.i.i580, 0
  br i1 %tobool66.not.i.i, label %copy_to_user.exit.i.i581.cond.false.i.i599_crit_edge, label %copy_to_user.exit.i.i581.recv_fault.i.i_crit_edge

copy_to_user.exit.i.i581.recv_fault.i.i_crit_edge: ; preds = %copy_to_user.exit.i.i581
  call void @__sanitizer_cov_trace_pc() #15
  br label %recv_fault.i.i

copy_to_user.exit.i.i581.cond.false.i.i599_crit_edge: ; preds = %copy_to_user.exit.i.i581
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i599

if.else.i.i582:                                   ; preds = %do.end50.i.i
  br i1 %tobool54.not.i.i, label %if.else.i.i582.if.end77.i.i594_crit_edge, label %if.then71.i.i583

if.else.i.i582.if.end77.i.i594_crit_edge:         ; preds = %if.else.i.i582
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.i.i594

if.then71.i.i583:                                 ; preds = %if.else.i.i582
  %130 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %62, align 4
  call void @__check_object_size(ptr noundef nonnull %79, i32 noundef %conv5.i.i, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i210.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i210.i.i, label %if.then71.i.i583.if.end.i.i215.i.i_crit_edge, label %land.lhs.true.i.i.i.i584

if.then71.i.i583.if.end.i.i215.i.i_crit_edge:     ; preds = %if.then71.i.i583
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i215.i.i

land.lhs.true.i.i.i.i584:                         ; preds = %if.then71.i.i583
  %132 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %131, i32 %conv5.i.i, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i212.i.i = extractvalue { i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i212.i.i)
  %cmp.i6.i213.i.i = icmp eq i32 %asmresult.i.i212.i.i, 0
  br i1 %cmp.i6.i213.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i584.if.end.i.i215.i.i_crit_edge, !prof !300

land.lhs.true.i.i.i.i584.if.end.i.i215.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i584
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i215.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i584
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i214.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %79, i32 noundef %conv5.i.i) #13
  %133 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i.i585 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i.i.i.i585 to ptr
  %cpu_domain.i.i.i.i.i.i.i586 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 4
  %135 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i586) #8, !srcloc !304
  %and.i.i.i.i.i.i587 = and i32 %135, -13
  %or.i.i.i.i.i.i588 = or i32 %and.i.i.i.i.i.i587, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i588) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i.i589 = call i32 @arm_copy_from_user(ptr noundef nonnull %79, ptr noundef %131, i32 noundef %conv5.i.i) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  br label %if.end.i.i215.i.i

if.end.i.i215.i.i:                                ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i584.if.end.i.i215.i.i_crit_edge, %if.then71.i.i583.if.end.i.i215.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %conv5.i.i, %if.then71.i.i583.if.end.i.i215.i.i_crit_edge ], [ %call1.i.i.i.i.i589, %if.then.i7.i.i.i ], [ %conv5.i.i, %land.lhs.true.i.i.i.i584.if.end.i.i215.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i590 = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i590, label %if.end.i.i215.i.i.if.end77.i.i594_crit_edge, label %if.then11.i.i.i.i593, !prof !300

if.end.i.i215.i.i.if.end77.i.i594_crit_edge:      ; preds = %if.end.i.i215.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.i.i594

if.then11.i.i.i.i593:                             ; preds = %if.end.i.i215.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i591 = sub i32 %conv5.i.i, %res.0.i.i.i.i
  %add.ptr.i.i.i.i592 = getelementptr i8, ptr %79, i32 %sub.i.i.i.i591
  %136 = call ptr @memset(ptr %add.ptr.i.i.i.i592, i32 0, i32 %res.0.i.i.i.i)
  br label %done.i.i604

if.end77.i.i594:                                  ; preds = %if.end.i.i215.i.i.if.end77.i.i594_crit_edge, %if.else.i.i582.if.end77.i.i594_crit_edge
  %137 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %69, align 8
  %shl.i218.i.i = shl i32 %138, 8
  %or79.i.i = or i32 %shl.i218.i.i, -2147483648
  %dev1.i219.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 8
  %139 = ptrtoint ptr %dev1.i219.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %69, ptr %dev1.i219.i.i, align 4
  %pipe2.i220.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 10
  %140 = ptrtoint ptr %pipe2.i220.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or79.i.i, ptr %pipe2.i220.i.i, align 4
  %setup_packet3.i221.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 21
  %141 = ptrtoint ptr %setup_packet3.i221.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call7.i.i.i553, ptr %setup_packet3.i221.i.i, align 4
  %transfer_buffer4.i222.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 14
  %142 = ptrtoint ptr %transfer_buffer4.i222.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %79, ptr %transfer_buffer4.i222.i.i, align 4
  %transfer_buffer_length.i223.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 19
  %143 = ptrtoint ptr %transfer_buffer_length.i223.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv5.i.i, ptr %transfer_buffer_length.i223.i.i, align 4
  %complete.i224.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 28
  %144 = ptrtoint ptr %complete.i224.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %complete.i224.i.i, align 4
  %context5.i225.i.i = getelementptr inbounds %struct.urb, ptr %call17.i.i, i32 0, i32 27
  %145 = ptrtoint ptr %context5.i225.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %context5.i225.i.i, align 4
  %146 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i743 = icmp eq i8 %146, 0
  br i1 %tobool.not.i743, label %if.end77.i.i594.snoop_urb.exit758_crit_edge, label %if.end.i750

if.end77.i.i594.snoop_urb.exit758_crit_edge:      ; preds = %if.end77.i.i594
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit758

if.end.i750:                                      ; preds = %if.end77.i.i594
  %147 = lshr i32 %shl.i218.i.i, 15
  %and.i744 = and i32 %147, 15
  %148 = lshr i32 %or79.i.i, 30
  %arrayidx.i745 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx.i745 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i745, align 4
  %dev21.i749 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i749, ptr noundef nonnull @.str.101, i32 noundef %and.i744, ptr noundef %150, ptr noundef nonnull @.str.93, i32 noundef %conv5.i.i, i32 noundef %100) #16
  %151 = load i32, ptr @usbfs_snoop_max, align 4
  %152 = call i32 @llvm.umin.i32(i32 %151, i32 %conv5.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp31.not.i753 = icmp eq i32 %152, 0
  br i1 %cmp31.not.i753, label %if.end.i750.snoop_urb.exit758_crit_edge, label %if.then32.i756

if.end.i750.snoop_urb.exit758_crit_edge:          ; preds = %if.end.i750
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit758

if.then32.i756:                                   ; preds = %if.end.i750
  call void @__sanitizer_cov_trace_pc() #15
  call void @print_hex_dump(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.106, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %79, i32 noundef %152, i1 noundef zeroext true) #13
  br label %snoop_urb.exit758

snoop_urb.exit758:                                ; preds = %if.then32.i756, %if.end.i750.snoop_urb.exit758_crit_edge, %if.end77.i.i594.snoop_urb.exit758_crit_edge
  %mutex.i226.i.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i226.i.i) #13
  %call81.i.i = call fastcc i32 @usbfs_start_wait_urb(ptr noundef nonnull %call17.i.i, i32 noundef %100, ptr noundef nonnull %actlen.i.i) #13
  call void @mutex_lock_nested(ptr noundef %mutex.i226.i.i, i32 noundef 0) #13
  %153 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i731 = icmp eq i8 %153, 0
  br i1 %tobool.not.i731, label %snoop_urb.exit758.if.end83.i.i_crit_edge, label %if.end.i738

snoop_urb.exit758.if.end83.i.i_crit_edge:         ; preds = %snoop_urb.exit758
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i.i

if.end.i738:                                      ; preds = %snoop_urb.exit758
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %actlen.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %actlen.i.i, align 4
  %156 = lshr i32 %shl.i218.i.i, 15
  %and.i732 = and i32 %156, 15
  %157 = lshr i32 %or79.i.i, 30
  %arrayidx.i733 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx.i733 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i733, align 4
  %dev21.i737 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i737, ptr noundef nonnull @.str.104, i32 noundef %and.i732, ptr noundef %159, ptr noundef nonnull @.str.93, i32 noundef %155, i32 noundef %call81.i.i) #16
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.end.i738, %snoop_urb.exit758.if.end83.i.i_crit_edge, %snoop_urb.exit774.if.end83.i.i_crit_edge
  %i.0.i.i595 = phi i32 [ %call59.i.i561, %snoop_urb.exit774.if.end83.i.i_crit_edge ], [ %call81.i.i, %snoop_urb.exit758.if.end83.i.i_crit_edge ], [ %call81.i.i, %if.end.i738 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i595)
  %cmp84.i.i = icmp slt i32 %i.0.i.i595, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %i.0.i.i595)
  %cmp87.not.i.i = icmp ne i32 %i.0.i.i595, -32
  %160 = and i1 %cmp84.i.i, %cmp87.not.i.i
  br i1 %160, label %do.end92.i.i, label %if.end101.i.i

do.end92.i.i:                                     ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev93.i.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  %161 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i596 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i596 to ptr
  %task.i.i597 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task.i.i597 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task.i.i597, align 8
  %comm.i.i598 = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 101
  %165 = ptrtoint ptr %ctrl.i530 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %ctrl.i530, align 4
  %conv96.i.i = zext i8 %166 to i32
  %167 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %57, align 1
  %conv98.i.i = zext i8 %168 to i32
  %169 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %60, align 2
  %conv100.i.i = zext i16 %170 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.83, ptr noundef %dev93.i.i, ptr noundef nonnull @.str.82, ptr noundef %comm.i.i598, i32 noundef %conv96.i.i, i32 noundef %conv98.i.i, i32 noundef %conv100.i.i, i32 noundef %i.0.i.i595) #16
  br label %recv_fault.i.i

if.end101.i.i:                                    ; preds = %if.end83.i.i
  br i1 %cmp84.i.i, label %if.end101.i.i.recv_fault.i.i_crit_edge, label %if.end101.i.i.cond.false.i.i599_crit_edge

if.end101.i.i.cond.false.i.i599_crit_edge:        ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i599

if.end101.i.i.recv_fault.i.i_crit_edge:           ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %recv_fault.i.i

cond.false.i.i599:                                ; preds = %if.end101.i.i.cond.false.i.i599_crit_edge, %copy_to_user.exit.i.i581.cond.false.i.i599_crit_edge, %land.lhs.true62.i.i.cond.false.i.i599_crit_edge
  %171 = ptrtoint ptr %actlen.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %actlen.i.i, align 4
  br label %recv_fault.i.i

recv_fault.i.i:                                   ; preds = %cond.false.i.i599, %if.end101.i.i.recv_fault.i.i_crit_edge, %do.end92.i.i, %copy_to_user.exit.i.i581.recv_fault.i.i_crit_edge, %if.end.i.i.i.i578.recv_fault.i.i_crit_edge, %if.then.i.i.i.i.i575.recv_fault.i.i_crit_edge, %if.then27.i.i.i.i573, %land.rhs16.i.i.i.i572.recv_fault.i.i_crit_edge
  %ret.0.i.i600 = phi i32 [ -14, %copy_to_user.exit.i.i581.recv_fault.i.i_crit_edge ], [ %172, %cond.false.i.i599 ], [ %i.0.i.i595, %if.end101.i.i.recv_fault.i.i_crit_edge ], [ %i.0.i.i595, %do.end92.i.i ], [ -14, %if.then.i.i.i.i.i575.recv_fault.i.i_crit_edge ], [ -14, %if.end.i.i.i.i578.recv_fault.i.i_crit_edge ], [ -14, %if.then27.i.i.i.i573 ], [ -14, %land.rhs16.i.i.i.i572.recv_fault.i.i_crit_edge ]
  %quirks.i.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 36
  %173 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %quirks.i.i, align 8
  %and104.i.i = and i32 %174, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i.i)
  %tobool105.not.i.i = icmp eq i32 %and104.i.i, 0
  br i1 %tobool105.not.i.i, label %recv_fault.i.i.done.i.i604_crit_edge, label %if.then106.i.i

recv_fault.i.i.done.i.i604_crit_edge:             ; preds = %recv_fault.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i604

if.then106.i.i:                                   ; preds = %recv_fault.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 200) #13
  br label %done.i.i604

done.i.i604:                                      ; preds = %if.then106.i.i, %recv_fault.i.i.done.i.i604_crit_edge, %if.then11.i.i.i.i593, %if.end20.i.i.done.i.i604_crit_edge, %if.end16.i.i.done.i.i604_crit_edge, %if.end12.i.i.done.i.i604_crit_edge
  %ret.1.i.i601 = phi i32 [ %ret.0.i.i600, %if.then106.i.i ], [ %ret.0.i.i600, %recv_fault.i.i.done.i.i604_crit_edge ], [ -12, %if.end20.i.i.done.i.i604_crit_edge ], [ -12, %if.end16.i.i.done.i.i604_crit_edge ], [ -12, %if.end12.i.i.done.i.i604_crit_edge ], [ -14, %if.then11.i.i.i.i593 ]
  %urb.0.i.i602 = phi ptr [ %call17.i.i, %if.then106.i.i ], [ %call17.i.i, %recv_fault.i.i.done.i.i604_crit_edge ], [ %call17.i.i, %if.end20.i.i.done.i.i604_crit_edge ], [ null, %if.end16.i.i.done.i.i604_crit_edge ], [ null, %if.end12.i.i.done.i.i604_crit_edge ], [ %call17.i.i, %if.then11.i.i.i.i593 ]
  %dr.0.i.i603 = phi ptr [ %call7.i.i.i553, %if.then106.i.i ], [ %call7.i.i.i553, %recv_fault.i.i.done.i.i604_crit_edge ], [ null, %if.end20.i.i.done.i.i604_crit_edge ], [ null, %if.end16.i.i.done.i.i604_crit_edge ], [ null, %if.end12.i.i.done.i.i604_crit_edge ], [ %call7.i.i.i553, %if.then11.i.i.i.i593 ]
  call void @kfree(ptr noundef %dr.0.i.i603) #13
  call void @usb_free_urb(ptr noundef %urb.0.i.i602) #13
  call void @free_pages(i32 noundef %call13.i.i, i32 noundef 0) #13
  %call.i.i.i228.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usbfs_memory_usage, i32 noundef 8) #13
  call void @generic_atomic64_sub(i64 noundef 4228, ptr noundef nonnull @usbfs_memory_usage) #13
  br label %proc_control.exit

proc_control.exit:                                ; preds = %done.i.i604, %if.end8.i.i.proc_control.exit_crit_edge, %if.end.i550.proc_control.exit_crit_edge
  %retval.0.i.i605 = phi i32 [ %ret.1.i.i601, %done.i.i604 ], [ %call.i.i548, %if.end.i550.proc_control.exit_crit_edge ], [ %call9.i.i, %if.end8.i.i.proc_control.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actlen.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl.i530) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i605)
  %cmp.i = icmp sgt i32 %retval.0.i.i605, -1
  br i1 %cmp.i, label %if.then40.i, label %proc_control.exit.done.thread417.i_crit_edge

proc_control.exit.done.thread417.i_crit_edge:     ; preds = %proc_control.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.then40.i:                                      ; preds = %proc_control.exit
  call void @__sanitizer_cov_trace_pc() #15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %4) #13
  %175 = call ptr @memcpy(ptr %i_mtime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #13
  br label %if.then280.i.sink.split

do.body43.i:                                      ; preds = %if.end27.i
  %176 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool44.not.i = icmp eq i8 %176, 0
  br i1 %tobool44.not.i, label %do.body43.i.do.end52.i_crit_edge, label %do.end48.i

do.body43.i.do.end52.i_crit_edge:                 ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52.i

do.end48.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.18) #16
  br label %do.end52.i

do.end52.i:                                       ; preds = %do.end48.i, %do.body43.i.do.end52.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bulk.i) #13
  %177 = getelementptr inbounds %struct.usbdevfs_bulktransfer, ptr %bulk.i, i32 0, i32 1
  %178 = getelementptr inbounds %struct.usbdevfs_bulktransfer, ptr %bulk.i, i32 0, i32 2
  %179 = getelementptr inbounds %struct.usbdevfs_bulktransfer, ptr %bulk.i, i32 0, i32 3
  %180 = call ptr @memset(ptr %bulk.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i402 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i402, label %do.end52.i.proc_bulk.exit.thread_crit_edge, label %land.lhs.true.i.i.i405

do.end52.i.proc_bulk.exit.thread_crit_edge:       ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread

land.lhs.true.i.i.i405:                           ; preds = %do.end52.i
  %181 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i.i403 = extractvalue { i32, i32 } %181, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i403)
  %cmp.i6.i.i404 = icmp eq i32 %asmresult.i.i.i403, 0
  br i1 %cmp.i6.i.i404, label %if.end.i.i.i413, label %land.lhs.true.i.i.i405.proc_bulk.exit.thread_crit_edge, !prof !300

land.lhs.true.i.i.i405.proc_bulk.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i405
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread

if.end.i.i.i413:                                  ; preds = %land.lhs.true.i.i.i405
  %call.i.i.i.i406 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bulk.i, i32 noundef 16) #13
  %182 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i407 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i.i.i.i.i.i.i407 to ptr
  %cpu_domain.i.i.i.i.i.i408 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 4
  %184 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i408) #8, !srcloc !304
  %and.i.i.i.i.i409 = and i32 %184, -13
  %or.i.i.i.i.i410 = or i32 %and.i.i.i.i.i409, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i410) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i411 = call i32 @arm_copy_from_user(ptr noundef nonnull %bulk.i, ptr noundef %0, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %184) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i411)
  %tobool4.not.i.i.i412 = icmp eq i32 %call1.i.i.i.i411, 0
  br i1 %tobool4.not.i.i.i412, label %if.end.i420, label %if.end.i.i.i413.proc_bulk.exit.thread_crit_edge, !prof !300

if.end.i.i.i413.proc_bulk.exit.thread_crit_edge:  ; preds = %if.end.i.i.i413
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread

proc_bulk.exit.thread:                            ; preds = %if.end.i.i.i413.proc_bulk.exit.thread_crit_edge, %land.lhs.true.i.i.i405.proc_bulk.exit.thread_crit_edge, %do.end52.i.proc_bulk.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bulk.i) #13
  br label %done.thread417.i

if.end.i420:                                      ; preds = %if.end.i.i.i413
  %185 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len2.i.i) #13
  %187 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 -1, ptr %len2.i.i, align 4, !annotation !307
  %188 = ptrtoint ptr %bulk.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bulk.i, align 4
  %and.i.i.i418 = and i32 %189, -144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i418)
  %tobool.not.i.i.i419 = icmp eq i32 %and.i.i.i418, 0
  br i1 %tobool.not.i.i.i419, label %if.end.i191.i.i, label %if.end.i420.proc_bulk.exit.thread794_crit_edge

if.end.i420.proc_bulk.exit.thread794_crit_edge:   ; preds = %if.end.i420
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

if.end.i191.i.i:                                  ; preds = %if.end.i420
  %actconfig.i.i.i421 = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 20
  %190 = ptrtoint ptr %actconfig.i.i.i421 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %actconfig.i.i.i421, align 4
  %tobool1.not.i.i.i422 = icmp eq ptr %191, null
  br i1 %tobool1.not.i.i.i422, label %if.end.i191.i.i.proc_bulk.exit.thread794_crit_edge, label %for.cond.preheader.i.i.i426

if.end.i191.i.i.proc_bulk.exit.thread794_crit_edge: ; preds = %if.end.i191.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

for.cond.preheader.i.i.i426:                      ; preds = %if.end.i191.i.i
  %bNumInterfaces.i.i.i423 = getelementptr inbounds %struct.usb_config_descriptor, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %bNumInterfaces.i.i.i423 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %bNumInterfaces.i.i.i423, align 4
  %conv.i.i.i424 = zext i8 %193 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %cmp55.not.i.i.i425 = icmp eq i8 %193, 0
  br i1 %cmp55.not.i.i.i425, label %for.cond.preheader.i.i.i426.proc_bulk.exit.thread794_crit_edge, label %for.cond.preheader.i.i.i426.for.body.i.i.i431_crit_edge

for.cond.preheader.i.i.i426.for.body.i.i.i431_crit_edge: ; preds = %for.cond.preheader.i.i.i426
  br label %for.body.i.i.i431

for.cond.preheader.i.i.i426.proc_bulk.exit.thread794_crit_edge: ; preds = %for.cond.preheader.i.i.i426
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

for.body.i.i.i431:                                ; preds = %for.inc30.i.i.i453.for.body.i.i.i431_crit_edge, %for.cond.preheader.i.i.i426.for.body.i.i.i431_crit_edge
  %i.056.i.i.i427 = phi i32 [ %inc31.i.i.i451, %for.inc30.i.i.i453.for.body.i.i.i431_crit_edge ], [ 0, %for.cond.preheader.i.i.i426.for.body.i.i.i431_crit_edge ]
  %arrayidx.i.i.i428 = getelementptr %struct.usb_host_config, ptr %191, i32 0, i32 3, i32 %i.056.i.i.i427
  %194 = ptrtoint ptr %arrayidx.i.i.i428 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i.i.i428, align 4
  %num_altsetting.i.i.i429 = getelementptr inbounds %struct.usb_interface, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %num_altsetting.i.i.i429 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %num_altsetting.i.i.i429, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp852.not.i.i.i430 = icmp eq i32 %197, 0
  br i1 %cmp852.not.i.i.i430, label %for.body.i.i.i431.for.inc30.i.i.i453_crit_edge, label %for.body10.lr.ph.i.i.i432

for.body.i.i.i431.for.inc30.i.i.i453_crit_edge:   ; preds = %for.body.i.i.i431
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i.i.i453

for.body10.lr.ph.i.i.i432:                        ; preds = %for.body.i.i.i431
  %198 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %195, align 8
  br label %for.body10.i.i.i438

for.body10.i.i.i438:                              ; preds = %for.inc27.i.i.i450.for.body10.i.i.i438_crit_edge, %for.body10.lr.ph.i.i.i432
  %j.053.i.i.i433 = phi i32 [ 0, %for.body10.lr.ph.i.i.i432 ], [ %inc28.i.i.i448, %for.inc27.i.i.i450.for.body10.i.i.i438_crit_edge ]
  %arrayidx11.i.i.i434 = getelementptr %struct.usb_host_interface, ptr %199, i32 %j.053.i.i.i433
  %bNumEndpoints.i.i.i435 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i.i.i434, i32 0, i32 4
  %200 = ptrtoint ptr %bNumEndpoints.i.i.i435 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %bNumEndpoints.i.i.i435, align 4
  %conv14.i.i.i436 = zext i8 %201 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %cmp1550.not.i.i.i437 = icmp eq i8 %201, 0
  br i1 %cmp1550.not.i.i.i437, label %for.body10.i.i.i438.for.inc27.i.i.i450_crit_edge, label %for.body17.lr.ph.i.i.i440

for.body10.i.i.i438.for.inc27.i.i.i450_crit_edge: ; preds = %for.body10.i.i.i438
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i.i.i450

for.body17.lr.ph.i.i.i440:                        ; preds = %for.body10.i.i.i438
  %endpoint.i.i.i439 = getelementptr %struct.usb_host_interface, ptr %199, i32 %j.053.i.i.i433, i32 3
  %202 = ptrtoint ptr %endpoint.i.i.i439 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %endpoint.i.i.i439, align 4
  br label %for.body17.i.i.i447

for.cond12.i.i.i443:                              ; preds = %for.body17.i.i.i447
  %inc.i.i.i441 = add nuw nsw i32 %e.051.i.i.i444, 1
  %exitcond.not.i.i.i442 = icmp eq i32 %inc.i.i.i441, %conv14.i.i.i436
  br i1 %exitcond.not.i.i.i442, label %for.cond12.i.i.i443.for.inc27.i.i.i450_crit_edge, label %for.cond12.i.i.i443.for.body17.i.i.i447_crit_edge

for.cond12.i.i.i443.for.body17.i.i.i447_crit_edge: ; preds = %for.cond12.i.i.i443
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i.i.i447

for.cond12.i.i.i443.for.inc27.i.i.i450_crit_edge: ; preds = %for.cond12.i.i.i443
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i.i.i450

for.body17.i.i.i447:                              ; preds = %for.cond12.i.i.i443.for.body17.i.i.i447_crit_edge, %for.body17.lr.ph.i.i.i440
  %e.051.i.i.i444 = phi i32 [ 0, %for.body17.lr.ph.i.i.i440 ], [ %inc.i.i.i441, %for.cond12.i.i.i443.for.body17.i.i.i447_crit_edge ]
  %bEndpointAddress.i.i.i445 = getelementptr %struct.usb_host_endpoint, ptr %203, i32 %e.051.i.i.i444, i32 0, i32 2
  %204 = ptrtoint ptr %bEndpointAddress.i.i.i445 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %bEndpointAddress.i.i.i445, align 1
  %conv20.i.i.i = zext i8 %205 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %conv20.i.i.i)
  %cmp21.i.i.i446 = icmp eq i32 %189, %conv20.i.i.i
  br i1 %cmp21.i.i.i446, label %findintfep.exit.i.i458, label %for.cond12.i.i.i443

for.inc27.i.i.i450:                               ; preds = %for.cond12.i.i.i443.for.inc27.i.i.i450_crit_edge, %for.body10.i.i.i438.for.inc27.i.i.i450_crit_edge
  %inc28.i.i.i448 = add nuw i32 %j.053.i.i.i433, 1
  %exitcond58.not.i.i.i449 = icmp eq i32 %inc28.i.i.i448, %197
  br i1 %exitcond58.not.i.i.i449, label %for.inc27.i.i.i450.for.inc30.i.i.i453_crit_edge, label %for.inc27.i.i.i450.for.body10.i.i.i438_crit_edge

for.inc27.i.i.i450.for.body10.i.i.i438_crit_edge: ; preds = %for.inc27.i.i.i450
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i.i.i438

for.inc27.i.i.i450.for.inc30.i.i.i453_crit_edge:  ; preds = %for.inc27.i.i.i450
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i.i.i453

for.inc30.i.i.i453:                               ; preds = %for.inc27.i.i.i450.for.inc30.i.i.i453_crit_edge, %for.body.i.i.i431.for.inc30.i.i.i453_crit_edge
  %inc31.i.i.i451 = add nuw nsw i32 %i.056.i.i.i427, 1
  %exitcond59.not.i.i.i452 = icmp eq i32 %inc31.i.i.i451, %conv.i.i.i424
  br i1 %exitcond59.not.i.i.i452, label %for.inc30.i.i.i453.proc_bulk.exit.thread794_crit_edge, label %for.inc30.i.i.i453.for.body.i.i.i431_crit_edge

for.inc30.i.i.i453.for.body.i.i.i431_crit_edge:   ; preds = %for.inc30.i.i.i453
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i431

for.inc30.i.i.i453.proc_bulk.exit.thread794_crit_edge: ; preds = %for.inc30.i.i.i453
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

findintfep.exit.i.i458:                           ; preds = %for.body17.i.i.i447
  %bInterfaceNumber.i.i.i454 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i.i.i434, i32 0, i32 2
  %206 = ptrtoint ptr %bInterfaceNumber.i.i.i454 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %bInterfaceNumber.i.i.i454, align 2
  %conv25.i.i.i455 = zext i8 %207 to i32
  %state.i.i.i456 = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 3
  %208 = ptrtoint ptr %state.i.i.i456 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %state.i.i.i456, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %209)
  %cmp.not.i.i.i457 = icmp eq i32 %209, 7
  br i1 %cmp.not.i.i.i457, label %if.end.i192.i.i, label %findintfep.exit.i.i458.proc_bulk.exit.thread794_crit_edge

findintfep.exit.i.i458.proc_bulk.exit.thread794_crit_edge: ; preds = %findintfep.exit.i.i458
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

if.end.i192.i.i:                                  ; preds = %findintfep.exit.i.i458
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %207)
  %cmp1.i.i2.i = icmp ugt i8 %207, 31
  br i1 %cmp1.i.i2.i, label %if.end.i192.i.i.proc_bulk.exit.thread794_crit_edge, label %if.end3.i.i.i462

if.end.i192.i.i.proc_bulk.exit.thread794_crit_edge: ; preds = %if.end.i192.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

if.end3.i.i.i462:                                 ; preds = %if.end.i192.i.i
  %ifclaimed.i.i.i459 = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 13
  %div3.i.i.i.i460 = lshr i32 %conv25.i.i.i455, 5
  %arrayidx.i.i.i.i461 = getelementptr i32, ptr %ifclaimed.i.i.i459, i32 %div3.i.i.i.i460
  %210 = ptrtoint ptr %arrayidx.i.i.i.i461 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %arrayidx.i.i.i.i461, align 4
  %212 = shl nuw i32 1, %conv25.i.i.i455
  %213 = and i32 %211, %212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i193.i.i = icmp eq i32 %213, 0
  br i1 %tobool.not.i193.i.i, label %checkintf.exit.i.i470, label %if.end3.i.i.i462.if.end6.i.i_crit_edge

if.end3.i.i.i462.if.end6.i.i_crit_edge:           ; preds = %if.end3.i.i.i462
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i.i

checkintf.exit.i.i470:                            ; preds = %if.end3.i.i.i462
  %dev7.i.i.i463 = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 15
  %214 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i19.i.i.i464 = and i32 %214, -16384
  %215 = inttoptr i32 %and.i19.i.i.i464 to ptr
  %task.i.i.i465 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %task.i.i.i465 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %task.i.i.i465, align 8
  %pid.i.i.i.i466 = getelementptr inbounds %struct.task_struct, ptr %217, i32 0, i32 68
  %218 = ptrtoint ptr %pid.i.i.i.i466 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %pid.i.i.i.i466, align 8
  %comm.i.i.i467 = getelementptr inbounds %struct.task_struct, ptr %217, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i.i.i463, ptr noundef nonnull @.str.87, i32 noundef %219, ptr noundef %comm.i.i.i467, i32 noundef %conv25.i.i.i455) #16
  %call12.i.i.i468 = call fastcc i32 @claimintf(ptr noundef %2, i32 noundef %conv25.i.i.i455) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i468)
  %tobool.not.i.i469 = icmp eq i32 %call12.i.i.i468, 0
  br i1 %tobool.not.i.i469, label %checkintf.exit.i.i470.if.end6.i.i_crit_edge, label %checkintf.exit.i.i470.proc_bulk.exit_crit_edge

checkintf.exit.i.i470.proc_bulk.exit_crit_edge:   ; preds = %checkintf.exit.i.i470
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit

checkintf.exit.i.i470.if.end6.i.i_crit_edge:      ; preds = %checkintf.exit.i.i470
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %checkintf.exit.i.i470.if.end6.i.i_crit_edge, %if.end3.i.i.i462.if.end6.i.i_crit_edge
  %220 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483522, i32 %221)
  %cmp8.i.i471 = icmp ugt i32 %221, 2147483522
  br i1 %cmp8.i.i471, label %if.end6.i.i.proc_bulk.exit.thread794_crit_edge, label %if.end10.i.i

if.end6.i.i.proc_bulk.exit.thread794_crit_edge:   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %222 = ptrtoint ptr %bulk.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %bulk.i, align 4
  %and.i.i472 = and i32 %223, 128
  %224 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %186, align 8
  %shl.i195.i.i = shl i32 %225, 8
  %and19.i.i = shl i32 %223, 15
  %shl1.i196.i.i = and i32 %and19.i.i, 4161536
  %or.i197.i.i = or i32 %shl1.i196.i.i, %shl.i195.i.i
  %226 = or i32 %and.i.i472, %or.i197.i.i
  %or21.i.i = or i32 %226, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i472)
  %tobool.not.i199.i.i = icmp eq i32 %and.i.i472, 0
  %ep_in.i.i.i = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 21
  %ep_out.i.i.i = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 22
  %cond.i.i.i = select i1 %tobool.not.i199.i.i, ptr %ep_out.i.i.i, ptr %ep_in.i.i.i
  %shr.i.i.i = lshr i32 %or.i197.i.i, 15
  %and2.i.i.i473 = and i32 %shr.i.i.i, 15
  %arrayidx.i200.i.i = getelementptr ptr, ptr %cond.i.i.i, i32 %and2.i.i.i473
  %227 = ptrtoint ptr %arrayidx.i200.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx.i200.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %228, null
  br i1 %tobool24.not.i.i, label %if.end10.i.i.proc_bulk.exit.thread794_crit_edge, label %lor.lhs.false25.i.i

if.end10.i.i.proc_bulk.exit.thread794_crit_edge:  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

lor.lhs.false25.i.i:                              ; preds = %if.end10.i.i
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %228, i32 0, i32 4
  %229 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %229, i32 2)
  %230 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %231 = and i16 %230, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %231)
  %tobool27.not.i.i = icmp eq i16 %231, 0
  br i1 %tobool27.not.i.i, label %lor.lhs.false25.i.i.proc_bulk.exit.thread794_crit_edge, label %if.end29.i.i477

lor.lhs.false25.i.i.proc_bulk.exit.thread794_crit_edge: ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit.thread794

if.end29.i.i477:                                  ; preds = %lor.lhs.false25.i.i
  %add.i.i474 = add nuw nsw i32 %221, 124
  %conv.i.i475 = zext i32 %add.i.i474 to i64
  %call30.i.i = call fastcc i32 @usbfs_increase_memory_usage(i64 noundef %conv.i.i475) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i476 = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i476, label %if.end8.i.i7.i, label %if.end29.i.i477.proc_bulk.exit_crit_edge

if.end29.i.i477.proc_bulk.exit_crit_edge:         ; preds = %if.end29.i.i477
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_bulk.exit

if.end8.i.i7.i:                                   ; preds = %if.end29.i.i477
  %call9.i.i.i498 = call noalias align 128 ptr @__kmalloc(i32 noundef %221, i32 noundef 11456) #19
  %tobool35.not.i.i = icmp eq ptr %call9.i.i.i498, null
  br i1 %tobool35.not.i.i, label %if.end8.i.i7.i.done.i.i_crit_edge, label %if.end37.i.i

if.end8.i.i7.i.done.i.i_crit_edge:                ; preds = %if.end8.i.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

if.end37.i.i:                                     ; preds = %if.end8.i.i7.i
  %call38.i.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #13
  %tobool39.not.i.i = icmp eq ptr %call38.i.i, null
  br i1 %tobool39.not.i.i, label %if.end37.i.i.done.i.i_crit_edge, label %if.end41.i.i

if.end37.i.i.done.i.i_crit_edge:                  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

if.end41.i.i:                                     ; preds = %if.end37.i.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %228, i32 0, i32 3
  %232 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %bmAttributes.i.i, align 1
  %234 = and i8 %233, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %234)
  %cmp45.i.i = icmp eq i8 %234, 3
  br i1 %cmp45.i.i, label %if.then47.i.i, label %if.else52.i.i

if.then47.i.i:                                    ; preds = %if.end41.i.i
  %or49.i.i = and i32 %or21.i.i, 2147483520
  %bInterval.i.i501 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %228, i32 0, i32 5
  %235 = ptrtoint ptr %bInterval.i.i501 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %bInterval.i.i501, align 2
  %conv51.i.i = zext i8 %236 to i32
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 8
  %237 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %186, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 10
  %238 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %or49.i.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 14
  %239 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call9.i.i.i498, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 19
  %240 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %221, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 28
  %241 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 27
  %242 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %context4.i.i.i, align 4
  %speed.i.i.i = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 4
  %243 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %speed.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %244)
  %cmp.i202.i.i = icmp eq i32 %244, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %244)
  %cmp6.i.i.i = icmp ugt i32 %244, 4
  %or.cond.i.i.i = or i1 %cmp.i202.i.i, %cmp6.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i204.i.i, label %if.then47.i.i.usb_fill_int_urb.exit.i.i_crit_edge

if.then47.i.i.usb_fill_int_urb.exit.i.i_crit_edge: ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_fill_int_urb.exit.i.i

if.then.i204.i.i:                                 ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %245 = call i32 @llvm.smax.i32(i32 %conv51.i.i, i32 1) #13
  %246 = call i32 @llvm.umin.i32(i32 %245, i32 16) #13
  %sub.i.i8.i = add nsw i32 %246, -1
  %shl.i203.i.i = shl nuw nsw i32 1, %sub.i.i8.i
  br label %usb_fill_int_urb.exit.i.i

usb_fill_int_urb.exit.i.i:                        ; preds = %if.then.i204.i.i, %if.then47.i.i.usb_fill_int_urb.exit.i.i_crit_edge
  %interval.sink.i.i.i = phi i32 [ %shl.i203.i.i, %if.then.i204.i.i ], [ %conv51.i.i, %if.then47.i.i.usb_fill_int_urb.exit.i.i_crit_edge ]
  %247 = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 25
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %interval.sink.i.i.i, ptr %247, align 4
  %start_frame.i.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 23
  %249 = ptrtoint ptr %start_frame.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 -1, ptr %start_frame.i.i.i, align 4
  br label %if.end53.i.i

if.else52.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev1.i206.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 8
  %250 = ptrtoint ptr %dev1.i206.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %186, ptr %dev1.i206.i.i, align 4
  %pipe2.i207.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 10
  %251 = ptrtoint ptr %pipe2.i207.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %or21.i.i, ptr %pipe2.i207.i.i, align 4
  %transfer_buffer3.i208.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 14
  %252 = ptrtoint ptr %transfer_buffer3.i208.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call9.i.i.i498, ptr %transfer_buffer3.i208.i.i, align 4
  %transfer_buffer_length.i209.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 19
  %253 = ptrtoint ptr %transfer_buffer_length.i209.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %221, ptr %transfer_buffer_length.i209.i.i, align 4
  %complete.i210.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 28
  %254 = ptrtoint ptr %complete.i210.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr null, ptr %complete.i210.i.i, align 4
  %context4.i211.i.i = getelementptr inbounds %struct.urb, ptr %call38.i.i, i32 0, i32 27
  %255 = ptrtoint ptr %context4.i211.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %context4.i211.i.i, align 4
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.else52.i.i, %usb_fill_int_urb.exit.i.i
  %pipe.1.i.i = phi i32 [ %or49.i.i, %usb_fill_int_urb.exit.i.i ], [ %or21.i.i, %if.else52.i.i ]
  %256 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %178, align 4
  %258 = ptrtoint ptr %bulk.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %bulk.i, align 4
  %and55.i.i = and i32 %259, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.else69.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %if.end53.i.i
  %260 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool.not.i719 = icmp eq i8 %260, 0
  br i1 %tobool.not.i719, label %if.then57.i.i.snoop_urb.exit730_crit_edge, label %if.end.i726

if.then57.i.i.snoop_urb.exit730_crit_edge:        ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit730

if.end.i726:                                      ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %261 = lshr i32 %pipe.1.i.i, 15
  %and.i720 = and i32 %261, 15
  %262 = lshr i32 %pipe.1.i.i, 30
  %arrayidx.i721 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %262
  %263 = ptrtoint ptr %arrayidx.i721 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx.i721, align 4
  %and3.i722 = lshr i32 %pipe.1.i.i, 7
  %and3.lobit.i723 = and i32 %and3.i722, 1
  %arrayidx6.i724 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %and3.lobit.i723
  %265 = ptrtoint ptr %arrayidx6.i724 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx6.i724, align 4
  %dev21.i725 = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i725, ptr noundef nonnull @.str.101, i32 noundef %and.i720, ptr noundef %264, ptr noundef %266, i32 noundef %221, i32 noundef %257) #16
  br label %snoop_urb.exit730

snoop_urb.exit730:                                ; preds = %if.end.i726, %if.then57.i.i.snoop_urb.exit730_crit_edge
  %mutex.i.i.i = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 15, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i.i.i) #13
  %call59.i.i = call fastcc i32 @usbfs_start_wait_urb(ptr noundef nonnull %call38.i.i, i32 noundef %257, ptr noundef nonnull %len2.i.i) #13
  call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #13
  %267 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %len2.i.i, align 4
  %269 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool.not.i703 = icmp eq i8 %269, 0
  br i1 %tobool.not.i703, label %snoop_urb.exit730.snoop_urb.exit718_crit_edge, label %if.end.i710

snoop_urb.exit730.snoop_urb.exit718_crit_edge:    ; preds = %snoop_urb.exit730
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit718

if.end.i710:                                      ; preds = %snoop_urb.exit730
  %270 = lshr i32 %pipe.1.i.i, 15
  %and.i704 = and i32 %270, 15
  %271 = lshr i32 %pipe.1.i.i, 30
  %arrayidx.i705 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %271
  %272 = ptrtoint ptr %arrayidx.i705 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx.i705, align 4
  %and3.i706 = lshr i32 %pipe.1.i.i, 7
  %and3.lobit.i707 = and i32 %and3.i706, 1
  %arrayidx6.i708 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %and3.lobit.i707
  %274 = ptrtoint ptr %arrayidx6.i708 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx6.i708, align 4
  %dev21.i709 = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i709, ptr noundef nonnull @.str.104, i32 noundef %and.i704, ptr noundef %273, ptr noundef %275, i32 noundef %268, i32 noundef %call59.i.i) #16
  %276 = load i32, ptr @usbfs_snoop_max, align 4
  %277 = call i32 @llvm.umin.i32(i32 %276, i32 %268) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %cmp31.not.i713 = icmp eq i32 %277, 0
  br i1 %cmp31.not.i713, label %if.end.i710.snoop_urb.exit718_crit_edge, label %if.then32.i716

if.end.i710.snoop_urb.exit718_crit_edge:          ; preds = %if.end.i710
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit718

if.then32.i716:                                   ; preds = %if.end.i710
  call void @__sanitizer_cov_trace_pc() #15
  call void @print_hex_dump(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.106, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %call9.i.i.i498, i32 noundef %277, i1 noundef zeroext true) #13
  br label %snoop_urb.exit718

snoop_urb.exit718:                                ; preds = %if.then32.i716, %if.end.i710.snoop_urb.exit718_crit_edge, %snoop_urb.exit730.snoop_urb.exit718_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool61.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool61.not.i.i, label %land.lhs.true.i.i502, label %snoop_urb.exit718.if.end81.i.i_crit_edge

snoop_urb.exit718.if.end81.i.i_crit_edge:         ; preds = %snoop_urb.exit718
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81.i.i

land.lhs.true.i.i502:                             ; preds = %snoop_urb.exit718
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool62.not.i.i = icmp eq i32 %268, 0
  br i1 %tobool62.not.i.i, label %land.lhs.true.i.i502.cond.false.i.i526_crit_edge, label %if.then63.i.i

land.lhs.true.i.i502.cond.false.i.i526_crit_edge: ; preds = %land.lhs.true.i.i502
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i526

if.then63.i.i:                                    ; preds = %land.lhs.true.i.i502
  %278 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp9.i.i.i.i505 = icmp slt i32 %268, 0
  br i1 %cmp9.i.i.i.i505, label %land.rhs16.i.i.i.i507, label %if.then.i.i.i.i.i510

land.rhs16.i.i.i.i507:                            ; preds = %if.then63.i.i
  %.b71.i.i.i.i506 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i506, label %land.rhs16.i.i.i.i507.done.i.i_crit_edge, label %if.then27.i.i.i.i508, !prof !300

land.rhs16.i.i.i.i507.done.i.i_crit_edge:         ; preds = %land.rhs16.i.i.i.i507
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

if.then27.i.i.i.i508:                             ; preds = %land.rhs16.i.i.i.i507
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %done.i.i

if.then.i.i.i.i.i510:                             ; preds = %if.then63.i.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i498, i32 noundef %268, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i9.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i9.i, label %if.then.i.i.i.i.i510.done.i.i_crit_edge, label %if.end.i.i168.i.i

if.then.i.i.i.i.i510.done.i.i_crit_edge:          ; preds = %if.then.i.i.i.i.i510
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

if.end.i.i168.i.i:                                ; preds = %if.then.i.i.i.i.i510
  %280 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %279, i32 %268, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i.i.i511 = extractvalue { i32, i32 } %280, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i511)
  %cmp.i6.i.i.i512 = icmp eq i32 %asmresult.i.i.i.i511, 0
  br i1 %cmp.i6.i.i.i512, label %copy_to_user.exit.i.i515, label %if.end.i.i168.i.i.done.i.i_crit_edge

if.end.i.i168.i.i.done.i.i_crit_edge:             ; preds = %if.end.i.i168.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

copy_to_user.exit.i.i515:                         ; preds = %if.end.i.i168.i.i
  %call.i.i.i.i.i513 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i498, i32 noundef %268) #13
  %call.i12.i.i.i.i514 = call i32 @arm_copy_to_user(ptr noundef %279, ptr noundef nonnull %call9.i.i.i498, i32 noundef %268) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i514)
  %tobool65.not.i.i = icmp eq i32 %call.i12.i.i.i.i514, 0
  br i1 %tobool65.not.i.i, label %copy_to_user.exit.i.i515.cond.false.i.i526_crit_edge, label %copy_to_user.exit.i.i515.done.i.i_crit_edge

copy_to_user.exit.i.i515.done.i.i_crit_edge:      ; preds = %copy_to_user.exit.i.i515
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

copy_to_user.exit.i.i515.cond.false.i.i526_crit_edge: ; preds = %copy_to_user.exit.i.i515
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i526

if.else69.i.i:                                    ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool70.not.i.i = icmp eq i32 %221, 0
  br i1 %tobool70.not.i.i, label %if.else69.i.i.if.end77.i.i_crit_edge, label %if.then71.i.i

if.else69.i.i.if.end77.i.i_crit_edge:             ; preds = %if.else69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.i.i

if.then71.i.i:                                    ; preds = %if.else69.i.i
  %281 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %179, align 4
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i498, i32 noundef %221, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i183.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i183.i.i, label %if.then71.i.i.if.then11.i.i.i.i525_crit_edge, label %land.lhs.true.i.i.i.i516

if.then71.i.i.if.then11.i.i.i.i525_crit_edge:     ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i525

land.lhs.true.i.i.i.i516:                         ; preds = %if.then71.i.i
  %283 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %282, i32 %221, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i185.i.i = extractvalue { i32, i32 } %283, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i185.i.i)
  %cmp.i6.i186.i.i = icmp eq i32 %asmresult.i.i185.i.i, 0
  br i1 %cmp.i6.i186.i.i, label %if.end.i.i188.i.i, label %land.lhs.true.i.i.i.i516.if.then11.i.i.i.i525_crit_edge, !prof !300

land.lhs.true.i.i.i.i516.if.then11.i.i.i.i525_crit_edge: ; preds = %land.lhs.true.i.i.i.i516
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i525

if.end.i.i188.i.i:                                ; preds = %land.lhs.true.i.i.i.i516
  %call.i.i.i187.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i498, i32 noundef %221) #13
  %284 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i.i517 = and i32 %284, -16384
  %285 = inttoptr i32 %and.i.i.i.i.i.i.i.i517 to ptr
  %cpu_domain.i.i.i.i.i.i.i518 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 4
  %286 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i518) #8, !srcloc !304
  %and.i.i.i.i.i.i519 = and i32 %286, -13
  %or.i.i.i.i.i.i520 = or i32 %and.i.i.i.i.i.i519, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i520) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i.i521 = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i.i498, ptr noundef %282, i32 noundef %221) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %286) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i521)
  %tobool4.not.i.i.i.i522 = icmp eq i32 %call1.i.i.i.i.i521, 0
  br i1 %tobool4.not.i.i.i.i522, label %if.end.i.i188.i.i.if.end77.i.i_crit_edge, label %if.end.i.i188.i.i.if.then11.i.i.i.i525_crit_edge, !prof !300

if.end.i.i188.i.i.if.then11.i.i.i.i525_crit_edge: ; preds = %if.end.i.i188.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i525

if.end.i.i188.i.i.if.end77.i.i_crit_edge:         ; preds = %if.end.i.i188.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.i.i

if.then11.i.i.i.i525:                             ; preds = %if.end.i.i188.i.i.if.then11.i.i.i.i525_crit_edge, %land.lhs.true.i.i.i.i516.if.then11.i.i.i.i525_crit_edge, %if.then71.i.i.if.then11.i.i.i.i525_crit_edge
  %res.0.i.i231.i.i = phi i32 [ %call1.i.i.i.i.i521, %if.end.i.i188.i.i.if.then11.i.i.i.i525_crit_edge ], [ %221, %if.then71.i.i.if.then11.i.i.i.i525_crit_edge ], [ %221, %land.lhs.true.i.i.i.i516.if.then11.i.i.i.i525_crit_edge ]
  %sub.i.i.i.i523 = sub i32 %221, %res.0.i.i231.i.i
  %add.ptr.i.i.i.i524 = getelementptr i8, ptr %call9.i.i.i498, i32 %sub.i.i.i.i523
  %287 = call ptr @memset(ptr %add.ptr.i.i.i.i524, i32 0, i32 %res.0.i.i231.i.i)
  br label %done.i.i

if.end77.i.i:                                     ; preds = %if.end.i.i188.i.i.if.end77.i.i_crit_edge, %if.else69.i.i.if.end77.i.i_crit_edge
  %288 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool.not.i689 = icmp eq i8 %288, 0
  br i1 %tobool.not.i689, label %if.end77.i.i.snoop_urb.exit702_crit_edge, label %if.end.i696

if.end77.i.i.snoop_urb.exit702_crit_edge:         ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit702

if.end.i696:                                      ; preds = %if.end77.i.i
  %289 = lshr i32 %pipe.1.i.i, 15
  %and.i690 = and i32 %289, 15
  %290 = lshr i32 %pipe.1.i.i, 30
  %arrayidx.i691 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %290
  %291 = ptrtoint ptr %arrayidx.i691 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx.i691, align 4
  %and3.i692 = lshr i32 %pipe.1.i.i, 7
  %and3.lobit.i693 = and i32 %and3.i692, 1
  %arrayidx6.i694 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %and3.lobit.i693
  %293 = ptrtoint ptr %arrayidx6.i694 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx6.i694, align 4
  %dev21.i695 = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i695, ptr noundef nonnull @.str.101, i32 noundef %and.i690, ptr noundef %292, ptr noundef %294, i32 noundef %221, i32 noundef %257) #16
  %295 = load i32, ptr @usbfs_snoop_max, align 4
  %296 = call i32 @llvm.umin.i32(i32 %295, i32 %221) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %cmp31.not.i = icmp eq i32 %296, 0
  br i1 %cmp31.not.i, label %if.end.i696.snoop_urb.exit702_crit_edge, label %if.then32.i

if.end.i696.snoop_urb.exit702_crit_edge:          ; preds = %if.end.i696
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit702

if.then32.i:                                      ; preds = %if.end.i696
  call void @__sanitizer_cov_trace_pc() #15
  call void @print_hex_dump(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.106, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %call9.i.i.i498, i32 noundef %296, i1 noundef zeroext true) #13
  br label %snoop_urb.exit702

snoop_urb.exit702:                                ; preds = %if.then32.i, %if.end.i696.snoop_urb.exit702_crit_edge, %if.end77.i.i.snoop_urb.exit702_crit_edge
  %mutex.i213.i.i = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 15, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i213.i.i) #13
  %call79.i.i = call fastcc i32 @usbfs_start_wait_urb(ptr noundef nonnull %call38.i.i, i32 noundef %257, ptr noundef nonnull %len2.i.i) #13
  call void @mutex_lock_nested(ptr noundef %mutex.i213.i.i, i32 noundef 0) #13
  %297 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool.not.i677 = icmp eq i8 %297, 0
  br i1 %tobool.not.i677, label %snoop_urb.exit702.if.end81.i.i_crit_edge, label %if.end.i684

snoop_urb.exit702.if.end81.i.i_crit_edge:         ; preds = %snoop_urb.exit702
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81.i.i

if.end.i684:                                      ; preds = %snoop_urb.exit702
  call void @__sanitizer_cov_trace_pc() #15
  %298 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %len2.i.i, align 4
  %300 = lshr i32 %pipe.1.i.i, 15
  %and.i678 = and i32 %300, 15
  %301 = lshr i32 %pipe.1.i.i, 30
  %arrayidx.i679 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %301
  %302 = ptrtoint ptr %arrayidx.i679 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i679, align 4
  %and3.i680 = lshr i32 %pipe.1.i.i, 7
  %and3.lobit.i681 = and i32 %and3.i680, 1
  %arrayidx6.i682 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %and3.lobit.i681
  %304 = ptrtoint ptr %arrayidx6.i682 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx6.i682, align 4
  %dev21.i683 = getelementptr inbounds %struct.usb_device, ptr %186, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i683, ptr noundef nonnull @.str.104, i32 noundef %and.i678, ptr noundef %303, ptr noundef %305, i32 noundef %299, i32 noundef %call79.i.i) #16
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.end.i684, %snoop_urb.exit702.if.end81.i.i_crit_edge, %snoop_urb.exit718.if.end81.i.i_crit_edge
  %i.0.i.i = phi i32 [ %call59.i.i, %snoop_urb.exit718.if.end81.i.i_crit_edge ], [ %call79.i.i, %snoop_urb.exit702.if.end81.i.i_crit_edge ], [ %call79.i.i, %if.end.i684 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i)
  %cmp82.i.i = icmp slt i32 %i.0.i.i, 0
  br i1 %cmp82.i.i, label %if.end81.i.i.done.i.i_crit_edge, label %if.end81.i.i.cond.false.i.i526_crit_edge

if.end81.i.i.cond.false.i.i526_crit_edge:         ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i526

if.end81.i.i.done.i.i_crit_edge:                  ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.i

cond.false.i.i526:                                ; preds = %if.end81.i.i.cond.false.i.i526_crit_edge, %copy_to_user.exit.i.i515.cond.false.i.i526_crit_edge, %land.lhs.true.i.i502.cond.false.i.i526_crit_edge
  %306 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %len2.i.i, align 4
  br label %done.i.i

done.i.i:                                         ; preds = %cond.false.i.i526, %if.end81.i.i.done.i.i_crit_edge, %if.then11.i.i.i.i525, %copy_to_user.exit.i.i515.done.i.i_crit_edge, %if.end.i.i168.i.i.done.i.i_crit_edge, %if.then.i.i.i.i.i510.done.i.i_crit_edge, %if.then27.i.i.i.i508, %land.rhs16.i.i.i.i507.done.i.i_crit_edge, %if.end37.i.i.done.i.i_crit_edge, %if.end8.i.i7.i.done.i.i_crit_edge
  %retval.1.i225.i.i = phi ptr [ %call9.i.i.i498, %if.end37.i.i.done.i.i_crit_edge ], [ null, %if.end8.i.i7.i.done.i.i_crit_edge ], [ %call9.i.i.i498, %copy_to_user.exit.i.i515.done.i.i_crit_edge ], [ %call9.i.i.i498, %cond.false.i.i526 ], [ %call9.i.i.i498, %if.end81.i.i.done.i.i_crit_edge ], [ %call9.i.i.i498, %if.then.i.i.i.i.i510.done.i.i_crit_edge ], [ %call9.i.i.i498, %if.end.i.i168.i.i.done.i.i_crit_edge ], [ %call9.i.i.i498, %if.then27.i.i.i.i508 ], [ %call9.i.i.i498, %land.rhs16.i.i.i.i507.done.i.i_crit_edge ], [ %call9.i.i.i498, %if.then11.i.i.i.i525 ]
  %ret.0.i.i527 = phi i32 [ -12, %if.end37.i.i.done.i.i_crit_edge ], [ -12, %if.end8.i.i7.i.done.i.i_crit_edge ], [ -14, %copy_to_user.exit.i.i515.done.i.i_crit_edge ], [ %307, %cond.false.i.i526 ], [ %i.0.i.i, %if.end81.i.i.done.i.i_crit_edge ], [ -14, %if.then.i.i.i.i.i510.done.i.i_crit_edge ], [ -14, %if.end.i.i168.i.i.done.i.i_crit_edge ], [ -14, %if.then27.i.i.i.i508 ], [ -14, %land.rhs16.i.i.i.i507.done.i.i_crit_edge ], [ -14, %if.then11.i.i.i.i525 ]
  %urb.0.i.i = phi ptr [ null, %if.end37.i.i.done.i.i_crit_edge ], [ null, %if.end8.i.i7.i.done.i.i_crit_edge ], [ %call38.i.i, %copy_to_user.exit.i.i515.done.i.i_crit_edge ], [ %call38.i.i, %cond.false.i.i526 ], [ %call38.i.i, %if.end81.i.i.done.i.i_crit_edge ], [ %call38.i.i, %if.then.i.i.i.i.i510.done.i.i_crit_edge ], [ %call38.i.i, %if.end.i.i168.i.i.done.i.i_crit_edge ], [ %call38.i.i, %if.then27.i.i.i.i508 ], [ %call38.i.i, %land.rhs16.i.i.i.i507.done.i.i_crit_edge ], [ %call38.i.i, %if.then11.i.i.i.i525 ]
  call void @usb_free_urb(ptr noundef %urb.0.i.i) #13
  call void @kfree(ptr noundef %retval.1.i225.i.i) #13
  %call.i.i.i676 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usbfs_memory_usage, i32 noundef 8) #13
  call void @generic_atomic64_sub(i64 noundef %conv.i.i475, ptr noundef nonnull @usbfs_memory_usage) #13
  br label %proc_bulk.exit

proc_bulk.exit.thread794:                         ; preds = %lor.lhs.false25.i.i.proc_bulk.exit.thread794_crit_edge, %if.end10.i.i.proc_bulk.exit.thread794_crit_edge, %if.end6.i.i.proc_bulk.exit.thread794_crit_edge, %if.end.i192.i.i.proc_bulk.exit.thread794_crit_edge, %findintfep.exit.i.i458.proc_bulk.exit.thread794_crit_edge, %for.inc30.i.i.i453.proc_bulk.exit.thread794_crit_edge, %for.cond.preheader.i.i.i426.proc_bulk.exit.thread794_crit_edge, %if.end.i191.i.i.proc_bulk.exit.thread794_crit_edge, %if.end.i420.proc_bulk.exit.thread794_crit_edge
  %retval.0.i.i.ph = phi i32 [ -113, %findintfep.exit.i.i458.proc_bulk.exit.thread794_crit_edge ], [ -22, %if.end.i192.i.i.proc_bulk.exit.thread794_crit_edge ], [ -22, %if.end.i420.proc_bulk.exit.thread794_crit_edge ], [ -3, %if.end.i191.i.i.proc_bulk.exit.thread794_crit_edge ], [ -2, %for.cond.preheader.i.i.i426.proc_bulk.exit.thread794_crit_edge ], [ -22, %if.end10.i.i.proc_bulk.exit.thread794_crit_edge ], [ -22, %lor.lhs.false25.i.i.proc_bulk.exit.thread794_crit_edge ], [ -22, %if.end6.i.i.proc_bulk.exit.thread794_crit_edge ], [ -2, %for.inc30.i.i.i453.proc_bulk.exit.thread794_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len2.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bulk.i) #13
  br label %done.thread417.i

proc_bulk.exit:                                   ; preds = %done.i.i, %if.end29.i.i477.proc_bulk.exit_crit_edge, %checkintf.exit.i.i470.proc_bulk.exit_crit_edge
  %retval.0.i.i = phi i32 [ %ret.0.i.i527, %done.i.i ], [ %call12.i.i.i468, %checkintf.exit.i.i470.proc_bulk.exit_crit_edge ], [ %call30.i.i, %if.end29.i.i477.proc_bulk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len2.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bulk.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp54.i = icmp sgt i32 %retval.0.i.i, -1
  br i1 %cmp54.i, label %if.then55.i, label %proc_bulk.exit.done.thread417.i_crit_edge

proc_bulk.exit.done.thread417.i_crit_edge:        ; preds = %proc_bulk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.then55.i:                                      ; preds = %proc_bulk.exit
  call void @__sanitizer_cov_trace_pc() #15
  %i_mtime56.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp57.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp57.i, ptr noundef %4) #13
  %308 = call ptr @memcpy(ptr %i_mtime56.i, ptr %tmp57.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp57.i) #13
  br label %if.then280.i.sink.split

do.body60.i:                                      ; preds = %if.end27.i
  %309 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %tobool61.not.i = icmp eq i8 %309, 0
  br i1 %tobool61.not.i, label %do.body60.i.do.end69.i_crit_edge, label %do.end65.i

do.body60.i.do.end69.i_crit_edge:                 ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69.i

do.end65.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.18) #16
  br label %do.end69.i

do.end69.i:                                       ; preds = %do.end65.i, %do.body60.i.do.end69.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1373) #13
  %310 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i326 = and i32 %310, -16384
  %311 = inttoptr i32 %and.i.i.i.i326 to ptr
  %cpu_domain.i.i.i327 = getelementptr inbounds %struct.thread_info, ptr %311, i32 0, i32 4
  %312 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i327) #8, !srcloc !304
  %and.i.i328 = and i32 %312, -13
  %or.i.i329 = or i32 %and.i.i328, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i329) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %313 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !308
  %asmresult.i330 = extractvalue { i32, i32 } %313, 0
  %asmresult1.i331 = extractvalue { i32, i32 } %313, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %312) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i330)
  %tobool.not.i332 = icmp eq i32 %asmresult.i330, 0
  br i1 %tobool.not.i332, label %if.end.i335, label %do.end69.i.done.thread417.i_crit_edge

do.end69.i.done.thread417.i_crit_edge:            ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.end.i335:                                      ; preds = %do.end69.i
  %314 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev1.i, align 4
  %and.i22.i = and i32 %asmresult1.i331, -144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.not.i.i334 = icmp eq i32 %and.i22.i, 0
  br i1 %tobool.not.i.i334, label %if.end.i.i338, label %if.end.i335.done.thread417.i_crit_edge

if.end.i335.done.thread417.i_crit_edge:           ; preds = %if.end.i335
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.end.i.i338:                                    ; preds = %if.end.i335
  %actconfig.i.i336 = getelementptr inbounds %struct.usb_device, ptr %315, i32 0, i32 20
  %316 = ptrtoint ptr %actconfig.i.i336 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %actconfig.i.i336, align 4
  %tobool1.not.i.i337 = icmp eq ptr %317, null
  br i1 %tobool1.not.i.i337, label %if.end.i.i338.done.thread417.i_crit_edge, label %for.cond.preheader.i.i342

if.end.i.i338.done.thread417.i_crit_edge:         ; preds = %if.end.i.i338
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

for.cond.preheader.i.i342:                        ; preds = %if.end.i.i338
  %bNumInterfaces.i.i339 = getelementptr inbounds %struct.usb_config_descriptor, ptr %317, i32 0, i32 3
  %318 = ptrtoint ptr %bNumInterfaces.i.i339 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %bNumInterfaces.i.i339, align 4
  %conv.i.i340 = zext i8 %319 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %cmp55.not.i.i341 = icmp eq i8 %319, 0
  br i1 %cmp55.not.i.i341, label %for.cond.preheader.i.i342.done.thread417.i_crit_edge, label %for.cond.preheader.i.i342.for.body.i.i347_crit_edge

for.cond.preheader.i.i342.for.body.i.i347_crit_edge: ; preds = %for.cond.preheader.i.i342
  br label %for.body.i.i347

for.cond.preheader.i.i342.done.thread417.i_crit_edge: ; preds = %for.cond.preheader.i.i342
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

for.body.i.i347:                                  ; preds = %for.inc30.i.i370.for.body.i.i347_crit_edge, %for.cond.preheader.i.i342.for.body.i.i347_crit_edge
  %i.056.i.i343 = phi i32 [ %inc31.i.i368, %for.inc30.i.i370.for.body.i.i347_crit_edge ], [ 0, %for.cond.preheader.i.i342.for.body.i.i347_crit_edge ]
  %arrayidx.i.i344 = getelementptr %struct.usb_host_config, ptr %317, i32 0, i32 3, i32 %i.056.i.i343
  %320 = ptrtoint ptr %arrayidx.i.i344 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx.i.i344, align 4
  %num_altsetting.i.i345 = getelementptr inbounds %struct.usb_interface, ptr %321, i32 0, i32 2
  %322 = ptrtoint ptr %num_altsetting.i.i345 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %num_altsetting.i.i345, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %cmp852.not.i.i346 = icmp eq i32 %323, 0
  br i1 %cmp852.not.i.i346, label %for.body.i.i347.for.inc30.i.i370_crit_edge, label %for.body10.lr.ph.i.i348

for.body.i.i347.for.inc30.i.i370_crit_edge:       ; preds = %for.body.i.i347
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i.i370

for.body10.lr.ph.i.i348:                          ; preds = %for.body.i.i347
  %324 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %321, align 8
  br label %for.body10.i.i354

for.body10.i.i354:                                ; preds = %for.inc27.i.i367.for.body10.i.i354_crit_edge, %for.body10.lr.ph.i.i348
  %j.053.i.i349 = phi i32 [ 0, %for.body10.lr.ph.i.i348 ], [ %inc28.i.i365, %for.inc27.i.i367.for.body10.i.i354_crit_edge ]
  %arrayidx11.i.i350 = getelementptr %struct.usb_host_interface, ptr %325, i32 %j.053.i.i349
  %bNumEndpoints.i.i351 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i.i350, i32 0, i32 4
  %326 = ptrtoint ptr %bNumEndpoints.i.i351 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %bNumEndpoints.i.i351, align 4
  %conv14.i.i352 = zext i8 %327 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %cmp1550.not.i.i353 = icmp eq i8 %327, 0
  br i1 %cmp1550.not.i.i353, label %for.body10.i.i354.for.inc27.i.i367_crit_edge, label %for.body17.lr.ph.i.i356

for.body10.i.i354.for.inc27.i.i367_crit_edge:     ; preds = %for.body10.i.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i.i367

for.body17.lr.ph.i.i356:                          ; preds = %for.body10.i.i354
  %endpoint.i.i355 = getelementptr %struct.usb_host_interface, ptr %325, i32 %j.053.i.i349, i32 3
  %328 = ptrtoint ptr %endpoint.i.i355 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %endpoint.i.i355, align 4
  br label %for.body17.i.i364

for.cond12.i.i359:                                ; preds = %for.body17.i.i364
  %inc.i.i357 = add nuw nsw i32 %e.051.i.i360, 1
  %exitcond.not.i.i358 = icmp eq i32 %inc.i.i357, %conv14.i.i352
  br i1 %exitcond.not.i.i358, label %for.cond12.i.i359.for.inc27.i.i367_crit_edge, label %for.cond12.i.i359.for.body17.i.i364_crit_edge

for.cond12.i.i359.for.body17.i.i364_crit_edge:    ; preds = %for.cond12.i.i359
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i.i364

for.cond12.i.i359.for.inc27.i.i367_crit_edge:     ; preds = %for.cond12.i.i359
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i.i367

for.body17.i.i364:                                ; preds = %for.cond12.i.i359.for.body17.i.i364_crit_edge, %for.body17.lr.ph.i.i356
  %e.051.i.i360 = phi i32 [ 0, %for.body17.lr.ph.i.i356 ], [ %inc.i.i357, %for.cond12.i.i359.for.body17.i.i364_crit_edge ]
  %bEndpointAddress.i.i361 = getelementptr %struct.usb_host_endpoint, ptr %329, i32 %e.051.i.i360, i32 0, i32 2
  %330 = ptrtoint ptr %bEndpointAddress.i.i361 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %bEndpointAddress.i.i361, align 1
  %conv20.i.i362 = zext i8 %331 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i331, i32 %conv20.i.i362)
  %cmp21.i.i363 = icmp eq i32 %asmresult1.i331, %conv20.i.i362
  br i1 %cmp21.i.i363, label %findintfep.exit.i375, label %for.cond12.i.i359

for.inc27.i.i367:                                 ; preds = %for.cond12.i.i359.for.inc27.i.i367_crit_edge, %for.body10.i.i354.for.inc27.i.i367_crit_edge
  %inc28.i.i365 = add nuw i32 %j.053.i.i349, 1
  %exitcond58.not.i.i366 = icmp eq i32 %inc28.i.i365, %323
  br i1 %exitcond58.not.i.i366, label %for.inc27.i.i367.for.inc30.i.i370_crit_edge, label %for.inc27.i.i367.for.body10.i.i354_crit_edge

for.inc27.i.i367.for.body10.i.i354_crit_edge:     ; preds = %for.inc27.i.i367
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i.i354

for.inc27.i.i367.for.inc30.i.i370_crit_edge:      ; preds = %for.inc27.i.i367
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i.i370

for.inc30.i.i370:                                 ; preds = %for.inc27.i.i367.for.inc30.i.i370_crit_edge, %for.body.i.i347.for.inc30.i.i370_crit_edge
  %inc31.i.i368 = add nuw nsw i32 %i.056.i.i343, 1
  %exitcond59.not.i.i369 = icmp eq i32 %inc31.i.i368, %conv.i.i340
  br i1 %exitcond59.not.i.i369, label %for.inc30.i.i370.done.thread417.i_crit_edge, label %for.inc30.i.i370.for.body.i.i347_crit_edge

for.inc30.i.i370.for.body.i.i347_crit_edge:       ; preds = %for.inc30.i.i370
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i347

for.inc30.i.i370.done.thread417.i_crit_edge:      ; preds = %for.inc30.i.i370
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

findintfep.exit.i375:                             ; preds = %for.body17.i.i364
  %bInterfaceNumber.i.i371 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i.i350, i32 0, i32 2
  %332 = ptrtoint ptr %bInterfaceNumber.i.i371 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %bInterfaceNumber.i.i371, align 2
  %conv25.i.i372 = zext i8 %333 to i32
  %state.i.i373 = getelementptr inbounds %struct.usb_device, ptr %315, i32 0, i32 3
  %334 = ptrtoint ptr %state.i.i373 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %state.i.i373, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %335)
  %cmp.not.i.i374 = icmp eq i32 %335, 7
  br i1 %cmp.not.i.i374, label %if.end.i23.i, label %findintfep.exit.i375.done.thread417.i_crit_edge

findintfep.exit.i375.done.thread417.i_crit_edge:  ; preds = %findintfep.exit.i375
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.end.i23.i:                                     ; preds = %findintfep.exit.i375
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %333)
  %cmp1.i.i376 = icmp ugt i8 %333, 31
  br i1 %cmp1.i.i376, label %if.end.i23.i.done.thread417.i_crit_edge, label %if.end3.i.i380

if.end.i23.i.done.thread417.i_crit_edge:          ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.end3.i.i380:                                   ; preds = %if.end.i23.i
  %ifclaimed.i.i377 = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 13
  %div3.i.i.i378 = lshr i32 %conv25.i.i372, 5
  %arrayidx.i.i.i379 = getelementptr i32, ptr %ifclaimed.i.i377, i32 %div3.i.i.i378
  %336 = ptrtoint ptr %arrayidx.i.i.i379 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load volatile i32, ptr %arrayidx.i.i.i379, align 4
  %338 = shl nuw i32 1, %conv25.i.i372
  %339 = and i32 %337, %338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not.i24.i = icmp eq i32 %339, 0
  br i1 %tobool.not.i24.i, label %checkintf.exit.i388, label %if.end3.i.i380.if.end9.i394_crit_edge

if.end3.i.i380.if.end9.i394_crit_edge:            ; preds = %if.end3.i.i380
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i394

checkintf.exit.i388:                              ; preds = %if.end3.i.i380
  %dev7.i.i381 = getelementptr inbounds %struct.usb_device, ptr %315, i32 0, i32 15
  %340 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i19.i.i382 = and i32 %340, -16384
  %341 = inttoptr i32 %and.i19.i.i382 to ptr
  %task.i.i383 = getelementptr inbounds %struct.thread_info, ptr %341, i32 0, i32 2
  %342 = ptrtoint ptr %task.i.i383 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %task.i.i383, align 8
  %pid.i.i.i384 = getelementptr inbounds %struct.task_struct, ptr %343, i32 0, i32 68
  %344 = ptrtoint ptr %pid.i.i.i384 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %pid.i.i.i384, align 8
  %comm.i.i385 = getelementptr inbounds %struct.task_struct, ptr %343, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i.i381, ptr noundef nonnull @.str.87, i32 noundef %345, ptr noundef %comm.i.i385, i32 noundef %conv25.i.i372) #16
  %call12.i.i386 = tail call fastcc i32 @claimintf(ptr noundef %2, i32 noundef %conv25.i.i372) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i386)
  %tobool7.not.i387 = icmp eq i32 %call12.i.i386, 0
  br i1 %tobool7.not.i387, label %checkintf.exit.i388.if.end9.i394_crit_edge, label %proc_resetep.exit

checkintf.exit.i388.if.end9.i394_crit_edge:       ; preds = %checkintf.exit.i388
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i394

if.end9.i394:                                     ; preds = %checkintf.exit.i388.if.end9.i394_crit_edge, %if.end3.i.i380.if.end9.i394_crit_edge
  %346 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev1.i, align 4
  %and.i26.i = and i32 %asmresult1.i331, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i)
  %tobool.not.i27.i = icmp eq i32 %and.i26.i, 0
  %ep_in.i.i389 = getelementptr inbounds %struct.usb_device, ptr %347, i32 0, i32 21
  %ep_out.i.i390 = getelementptr inbounds %struct.usb_device, ptr %347, i32 0, i32 22
  %cond.i.i391 = select i1 %tobool.not.i27.i, ptr %ep_out.i.i390, ptr %ep_in.i.i389
  %and2.i.i392 = and i32 %asmresult1.i331, 15
  %arrayidx.i28.i = getelementptr ptr, ptr %cond.i.i391, i32 %and2.i.i392
  %348 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx.i28.i, align 4
  %tobool3.not.i.i393 = icmp eq ptr %349, null
  br i1 %tobool3.not.i.i393, label %if.end9.i394.proc_resetep.exit.thread799_crit_edge, label %land.lhs.true.i.i397

if.end9.i394.proc_resetep.exit.thread799_crit_edge: ; preds = %if.end9.i394
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_resetep.exit.thread799

land.lhs.true.i.i397:                             ; preds = %if.end9.i394
  %urb_list.i.i395 = getelementptr inbounds %struct.usb_host_endpoint, ptr %349, i32 0, i32 4
  %350 = ptrtoint ptr %urb_list.i.i395 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load volatile ptr, ptr %urb_list.i.i395, align 4
  %cmp.i.not.i.i396 = icmp eq ptr %351, %urb_list.i.i395
  br i1 %cmp.i.not.i.i396, label %land.lhs.true.i.i397.proc_resetep.exit.thread799_crit_edge, label %do.end.i33.i

land.lhs.true.i.i397.proc_resetep.exit.thread799_crit_edge: ; preds = %land.lhs.true.i.i397
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_resetep.exit.thread799

do.end.i33.i:                                     ; preds = %land.lhs.true.i.i397
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i29.i = getelementptr inbounds %struct.usb_device, ptr %347, i32 0, i32 15
  %352 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i398 = and i32 %352, -16384
  %353 = inttoptr i32 %and.i.i.i398 to ptr
  %task.i30.i = getelementptr inbounds %struct.thread_info, ptr %353, i32 0, i32 2
  %354 = ptrtoint ptr %task.i30.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %task.i30.i, align 8
  %pid.i.i31.i = getelementptr inbounds %struct.task_struct, ptr %355, i32 0, i32 68
  %356 = ptrtoint ptr %pid.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %pid.i.i31.i, align 8
  %comm.i32.i = getelementptr inbounds %struct.task_struct, ptr %355, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i29.i, ptr noundef nonnull @.str.109, i32 noundef %357, ptr noundef %comm.i32.i, ptr noundef nonnull @.str.108, i32 noundef %asmresult1.i331) #16
  br label %proc_resetep.exit.thread799

proc_resetep.exit.thread799:                      ; preds = %do.end.i33.i, %land.lhs.true.i.i397.proc_resetep.exit.thread799_crit_edge, %if.end9.i394.proc_resetep.exit.thread799_crit_edge
  %358 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev1.i, align 4
  tail call void @usb_reset_endpoint(ptr noundef %359, i32 noundef %asmresult1.i331) #13
  br label %if.then72.i

proc_resetep.exit:                                ; preds = %checkintf.exit.i388
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i.i386)
  %cmp71.i = icmp sgt i32 %call12.i.i386, -1
  br i1 %cmp71.i, label %proc_resetep.exit.if.then72.i_crit_edge, label %proc_resetep.exit.done.thread417.i_crit_edge

proc_resetep.exit.done.thread417.i_crit_edge:     ; preds = %proc_resetep.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

proc_resetep.exit.if.then72.i_crit_edge:          ; preds = %proc_resetep.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then72.i

if.then72.i:                                      ; preds = %proc_resetep.exit.if.then72.i_crit_edge, %proc_resetep.exit.thread799
  %retval.0.i400802 = phi i32 [ 0, %proc_resetep.exit.thread799 ], [ %call12.i.i386, %proc_resetep.exit.if.then72.i_crit_edge ]
  %i_mtime73.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp74.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp74.i, ptr noundef %4) #13
  %360 = call ptr @memcpy(ptr %i_mtime73.i, ptr %tmp74.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp74.i) #13
  br label %if.then280.i.sink.split

do.body77.i:                                      ; preds = %if.end27.i
  %361 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool78.not.i = icmp eq i8 %361, 0
  br i1 %tobool78.not.i, label %do.body77.i.do.end86.i_crit_edge, label %do.end82.i

do.body77.i.do.end86.i_crit_edge:                 ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86.i

do.end82.i:                                       ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.18) #16
  br label %do.end86.i

do.end86.i:                                       ; preds = %do.end82.i, %do.body77.i.do.end86.i_crit_edge
  %362 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %dev1.i, align 4
  %actconfig1.i = getelementptr inbounds %struct.usb_device, ptr %363, i32 0, i32 20
  %364 = ptrtoint ptr %actconfig1.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %actconfig1.i, align 4
  %privileges_dropped.i304 = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 18
  %366 = ptrtoint ptr %privileges_dropped.i304 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %privileges_dropped.i304, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool.not.i305 = icmp eq i8 %367, 0
  %tobool2.not.i306 = icmp eq ptr %365, null
  %or.cond.i307 = select i1 %tobool.not.i305, i1 true, i1 %tobool2.not.i306
  br i1 %or.cond.i307, label %do.end86.i.if.end16.i_crit_edge, label %for.cond.preheader.i310

do.end86.i.if.end16.i_crit_edge:                  ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

for.cond.preheader.i310:                          ; preds = %do.end86.i
  %bNumInterfaces.i308 = getelementptr inbounds %struct.usb_config_descriptor, ptr %365, i32 0, i32 3
  %368 = ptrtoint ptr %bNumInterfaces.i308 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %bNumInterfaces.i308, align 4
  %conv.i309 = zext i8 %369 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %369)
  %cmp35.not.i = icmp eq i8 %369, 0
  br i1 %cmp35.not.i, label %for.cond.preheader.i310.if.end16.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i310.if.end16.i_crit_edge:     ; preds = %for.cond.preheader.i310
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i310
  %ifclaimed.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 13
  br label %for.body.i314

for.body.i314:                                    ; preds = %for.inc.i.for.body.i314_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i322, %for.inc.i.for.body.i314_crit_edge ]
  %arrayidx.i311 = getelementptr %struct.usb_host_config, ptr %365, i32 0, i32 3, i32 %i.036.i
  %370 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx.i311, align 4
  %driver.i.i312 = getelementptr inbounds %struct.usb_interface, ptr %371, i32 0, i32 7, i32 6
  %372 = ptrtoint ptr %driver.i.i312 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %driver.i.i312, align 4
  %cmp.i.not.i313 = icmp eq ptr %373, null
  br i1 %cmp.i.not.i313, label %for.body.i314.for.inc.i_crit_edge, label %land.lhs.true8.i

for.body.i314.for.inc.i_crit_edge:                ; preds = %for.body.i314
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %for.body.i314
  %cur_altsetting.i315 = getelementptr inbounds %struct.usb_interface, ptr %371, i32 0, i32 1
  %374 = ptrtoint ptr %cur_altsetting.i315 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %cur_altsetting.i315, align 4
  %bInterfaceNumber.i316 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %375, i32 0, i32 2
  %376 = ptrtoint ptr %bInterfaceNumber.i316 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %bInterfaceNumber.i316, align 2
  %conv6.i = zext i8 %377 to i32
  %div3.i.i = lshr i32 %conv6.i, 5
  %arrayidx.i.i317 = getelementptr i32, ptr %ifclaimed.i, i32 %div3.i.i
  %378 = ptrtoint ptr %arrayidx.i.i317 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load volatile i32, ptr %arrayidx.i.i317, align 4
  %and.i.i318 = and i32 %conv6.i, 31
  %380 = shl nuw i32 1, %and.i.i318
  %381 = and i32 %380, %379
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool10.not.i = icmp eq i32 %381, 0
  br i1 %tobool10.not.i, label %do.end.i321, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end.i321:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv6.i.le = zext i8 %377 to i32
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %363, i32 0, i32 15
  %382 = ptrtoint ptr %373 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %373, align 4
  %384 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i33.i = and i32 %384, -16384
  %385 = inttoptr i32 %and.i33.i to ptr
  %task.i319 = getelementptr inbounds %struct.thread_info, ptr %385, i32 0, i32 2
  %386 = ptrtoint ptr %task.i319 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %task.i319, align 8
  %comm.i320 = getelementptr inbounds %struct.task_struct, ptr %387, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13.i, ptr noundef nonnull @.str.111, i32 noundef %conv6.i.le, ptr noundef %383, ptr noundef %comm.i320) #16
  br label %done.i.thread

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %for.body.i314.for.inc.i_crit_edge
  %inc.i322 = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i323 = icmp eq i32 %inc.i322, %conv.i309
  br i1 %exitcond.not.i323, label %for.inc.i.if.end16.i_crit_edge, label %for.inc.i.for.body.i314_crit_edge

for.inc.i.for.body.i314_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i314

for.inc.i.if.end16.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.inc.i.if.end16.i_crit_edge, %for.cond.preheader.i310.if.end16.i_crit_edge, %do.end86.i.if.end16.i_crit_edge
  %call18.i = tail call i32 @usb_reset_device(ptr noundef %363) #13
  br label %done.i

do.body89.i:                                      ; preds = %if.end27.i
  %388 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %tobool90.not.i = icmp eq i8 %388, 0
  br i1 %tobool90.not.i, label %do.body89.i.do.end98.i_crit_edge, label %do.end94.i

do.body89.i.do.end98.i_crit_edge:                 ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end98.i

do.end94.i:                                       ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.18) #16
  br label %do.end98.i

do.end98.i:                                       ; preds = %do.end94.i, %do.body89.i.do.end98.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1392) #13
  %389 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i266 = and i32 %389, -16384
  %390 = inttoptr i32 %and.i.i.i.i266 to ptr
  %cpu_domain.i.i.i267 = getelementptr inbounds %struct.thread_info, ptr %390, i32 0, i32 4
  %391 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i267) #8, !srcloc !304
  %and.i.i268 = and i32 %391, -13
  %or.i.i269 = or i32 %and.i.i268, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i269) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %392 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !309
  %asmresult.i270 = extractvalue { i32, i32 } %392, 0
  %asmresult1.i271 = extractvalue { i32, i32 } %392, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %391) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i270)
  %tobool.not.i272 = icmp eq i32 %asmresult.i270, 0
  br i1 %tobool.not.i272, label %if.end.i275, label %do.end98.i.done.thread417.i_crit_edge

do.end98.i.done.thread417.i_crit_edge:            ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.end.i275:                                      ; preds = %do.end98.i
  %393 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %dev1.i, align 4
  %and.i39.i = and i32 %asmresult1.i271, -144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %tobool.not.i.i274 = icmp eq i32 %and.i39.i, 0
  br i1 %tobool.not.i.i274, label %if.end.i.i276, label %if.end.i275.done.thread417.i_crit_edge

if.end.i275.done.thread417.i_crit_edge:           ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.end.i.i276:                                    ; preds = %if.end.i275
  %actconfig.i.i = getelementptr inbounds %struct.usb_device, ptr %394, i32 0, i32 20
  %395 = ptrtoint ptr %actconfig.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %actconfig.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %396, null
  br i1 %tobool1.not.i.i, label %if.end.i.i276.done.thread417.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i276.done.thread417.i_crit_edge:         ; preds = %if.end.i.i276
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i276
  %bNumInterfaces.i.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %396, i32 0, i32 3
  %397 = ptrtoint ptr %bNumInterfaces.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %bNumInterfaces.i.i, align 4
  %conv.i.i = zext i8 %398 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %cmp55.not.i.i = icmp eq i8 %398, 0
  br i1 %cmp55.not.i.i, label %for.cond.preheader.i.i.done.thread417.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i278_crit_edge

for.cond.preheader.i.i.for.body.i.i278_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i278

for.cond.preheader.i.i.done.thread417.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

for.body.i.i278:                                  ; preds = %for.inc30.i.i.for.body.i.i278_crit_edge, %for.cond.preheader.i.i.for.body.i.i278_crit_edge
  %i.056.i.i = phi i32 [ %inc31.i.i, %for.inc30.i.i.for.body.i.i278_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i278_crit_edge ]
  %arrayidx.i.i277 = getelementptr %struct.usb_host_config, ptr %396, i32 0, i32 3, i32 %i.056.i.i
  %399 = ptrtoint ptr %arrayidx.i.i277 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %arrayidx.i.i277, align 4
  %num_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %400, i32 0, i32 2
  %401 = ptrtoint ptr %num_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %num_altsetting.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %cmp852.not.i.i = icmp eq i32 %402, 0
  br i1 %cmp852.not.i.i, label %for.body.i.i278.for.inc30.i.i_crit_edge, label %for.body10.lr.ph.i.i

for.body.i.i278.for.inc30.i.i_crit_edge:          ; preds = %for.body.i.i278
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i.i

for.body10.lr.ph.i.i:                             ; preds = %for.body.i.i278
  %403 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %400, align 8
  br label %for.body10.i.i

for.body10.i.i:                                   ; preds = %for.inc27.i.i.for.body10.i.i_crit_edge, %for.body10.lr.ph.i.i
  %j.053.i.i = phi i32 [ 0, %for.body10.lr.ph.i.i ], [ %inc28.i.i, %for.inc27.i.i.for.body10.i.i_crit_edge ]
  %arrayidx11.i.i = getelementptr %struct.usb_host_interface, ptr %404, i32 %j.053.i.i
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i.i, i32 0, i32 4
  %405 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %bNumEndpoints.i.i, align 4
  %conv14.i.i = zext i8 %406 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %cmp1550.not.i.i = icmp eq i8 %406, 0
  br i1 %cmp1550.not.i.i, label %for.body10.i.i.for.inc27.i.i_crit_edge, label %for.body17.lr.ph.i.i

for.body10.i.i.for.inc27.i.i_crit_edge:           ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i.i

for.body17.lr.ph.i.i:                             ; preds = %for.body10.i.i
  %endpoint.i.i279 = getelementptr %struct.usb_host_interface, ptr %404, i32 %j.053.i.i, i32 3
  %407 = ptrtoint ptr %endpoint.i.i279 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %endpoint.i.i279, align 4
  br label %for.body17.i.i

for.cond12.i.i:                                   ; preds = %for.body17.i.i
  %inc.i.i280 = add nuw nsw i32 %e.051.i.i, 1
  %exitcond.not.i.i281 = icmp eq i32 %inc.i.i280, %conv14.i.i
  br i1 %exitcond.not.i.i281, label %for.cond12.i.i.for.inc27.i.i_crit_edge, label %for.cond12.i.i.for.body17.i.i_crit_edge

for.cond12.i.i.for.body17.i.i_crit_edge:          ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i.i

for.cond12.i.i.for.inc27.i.i_crit_edge:           ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i.i

for.body17.i.i:                                   ; preds = %for.cond12.i.i.for.body17.i.i_crit_edge, %for.body17.lr.ph.i.i
  %e.051.i.i = phi i32 [ 0, %for.body17.lr.ph.i.i ], [ %inc.i.i280, %for.cond12.i.i.for.body17.i.i_crit_edge ]
  %bEndpointAddress.i.i = getelementptr %struct.usb_host_endpoint, ptr %408, i32 %e.051.i.i, i32 0, i32 2
  %409 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv20.i.i = zext i8 %410 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i271, i32 %conv20.i.i)
  %cmp21.i.i282 = icmp eq i32 %asmresult1.i271, %conv20.i.i
  br i1 %cmp21.i.i282, label %findintfep.exit.i, label %for.cond12.i.i

for.inc27.i.i:                                    ; preds = %for.cond12.i.i.for.inc27.i.i_crit_edge, %for.body10.i.i.for.inc27.i.i_crit_edge
  %inc28.i.i = add nuw i32 %j.053.i.i, 1
  %exitcond58.not.i.i = icmp eq i32 %inc28.i.i, %402
  br i1 %exitcond58.not.i.i, label %for.inc27.i.i.for.inc30.i.i_crit_edge, label %for.inc27.i.i.for.body10.i.i_crit_edge

for.inc27.i.i.for.body10.i.i_crit_edge:           ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i.i

for.inc27.i.i.for.inc30.i.i_crit_edge:            ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i.i

for.inc30.i.i:                                    ; preds = %for.inc27.i.i.for.inc30.i.i_crit_edge, %for.body.i.i278.for.inc30.i.i_crit_edge
  %inc31.i.i = add nuw nsw i32 %i.056.i.i, 1
  %exitcond59.not.i.i = icmp eq i32 %inc31.i.i, %conv.i.i
  br i1 %exitcond59.not.i.i, label %for.inc30.i.i.done.thread417.i_crit_edge, label %for.inc30.i.i.for.body.i.i278_crit_edge

for.inc30.i.i.for.body.i.i278_crit_edge:          ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i278

for.inc30.i.i.done.thread417.i_crit_edge:         ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

findintfep.exit.i:                                ; preds = %for.body17.i.i
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i.i, i32 0, i32 2
  %411 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv25.i.i = zext i8 %412 to i32
  %state.i.i283 = getelementptr inbounds %struct.usb_device, ptr %394, i32 0, i32 3
  %413 = ptrtoint ptr %state.i.i283 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %state.i.i283, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %414)
  %cmp.not.i.i284 = icmp eq i32 %414, 7
  br i1 %cmp.not.i.i284, label %if.end.i40.i, label %findintfep.exit.i.done.thread417.i_crit_edge

findintfep.exit.i.done.thread417.i_crit_edge:     ; preds = %findintfep.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.end.i40.i:                                     ; preds = %findintfep.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %412)
  %cmp1.i.i285 = icmp ugt i8 %412, 31
  br i1 %cmp1.i.i285, label %if.end.i40.i.done.thread417.i_crit_edge, label %if.end3.i.i289

if.end.i40.i.done.thread417.i_crit_edge:          ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.end3.i.i289:                                   ; preds = %if.end.i40.i
  %ifclaimed.i.i286 = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 13
  %div3.i.i.i287 = lshr i32 %conv25.i.i, 5
  %arrayidx.i.i.i288 = getelementptr i32, ptr %ifclaimed.i.i286, i32 %div3.i.i.i287
  %415 = ptrtoint ptr %arrayidx.i.i.i288 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load volatile i32, ptr %arrayidx.i.i.i288, align 4
  %417 = shl nuw i32 1, %conv25.i.i
  %418 = and i32 %416, %417
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %tobool.not.i41.i = icmp eq i32 %418, 0
  br i1 %tobool.not.i41.i, label %checkintf.exit.i296, label %if.end3.i.i289.if.end9.i_crit_edge

if.end3.i.i289.if.end9.i_crit_edge:               ; preds = %if.end3.i.i289
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

checkintf.exit.i296:                              ; preds = %if.end3.i.i289
  %dev7.i.i290 = getelementptr inbounds %struct.usb_device, ptr %394, i32 0, i32 15
  %419 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i19.i.i291 = and i32 %419, -16384
  %420 = inttoptr i32 %and.i19.i.i291 to ptr
  %task.i.i292 = getelementptr inbounds %struct.thread_info, ptr %420, i32 0, i32 2
  %421 = ptrtoint ptr %task.i.i292 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %task.i.i292, align 8
  %pid.i.i.i293 = getelementptr inbounds %struct.task_struct, ptr %422, i32 0, i32 68
  %423 = ptrtoint ptr %pid.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %pid.i.i.i293, align 8
  %comm.i.i294 = getelementptr inbounds %struct.task_struct, ptr %422, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i.i290, ptr noundef nonnull @.str.87, i32 noundef %424, ptr noundef %comm.i.i294, i32 noundef %conv25.i.i) #16
  %call12.i.i295 = tail call fastcc i32 @claimintf(ptr noundef %2, i32 noundef %conv25.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i295)
  %tobool7.not.i = icmp eq i32 %call12.i.i295, 0
  br i1 %tobool7.not.i, label %checkintf.exit.i296.if.end9.i_crit_edge, label %checkintf.exit.i296.proc_clearhalt.exit_crit_edge

checkintf.exit.i296.proc_clearhalt.exit_crit_edge: ; preds = %checkintf.exit.i296
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_clearhalt.exit

checkintf.exit.i296.if.end9.i_crit_edge:          ; preds = %checkintf.exit.i296
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.end9.i:                                        ; preds = %checkintf.exit.i296.if.end9.i_crit_edge, %if.end3.i.i289.if.end9.i_crit_edge
  %425 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %dev1.i, align 4
  %and.i43.i = and i32 %asmresult1.i271, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43.i)
  %tobool.not.i44.i = icmp eq i32 %and.i43.i, 0
  %ep_in.i.i = getelementptr inbounds %struct.usb_device, ptr %426, i32 0, i32 21
  %ep_out.i.i = getelementptr inbounds %struct.usb_device, ptr %426, i32 0, i32 22
  %cond.i.i297 = select i1 %tobool.not.i44.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %and2.i.i = and i32 %asmresult1.i271, 15
  %arrayidx.i45.i = getelementptr ptr, ptr %cond.i.i297, i32 %and2.i.i
  %427 = ptrtoint ptr %arrayidx.i45.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %arrayidx.i45.i, align 4
  %tobool3.not.i.i = icmp eq ptr %428, null
  br i1 %tobool3.not.i.i, label %if.end9.i.check_reset_of_active_ep.exit.i_crit_edge, label %land.lhs.true.i.i299

if.end9.i.check_reset_of_active_ep.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_reset_of_active_ep.exit.i

land.lhs.true.i.i299:                             ; preds = %if.end9.i
  %urb_list.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %428, i32 0, i32 4
  %429 = ptrtoint ptr %urb_list.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load volatile ptr, ptr %urb_list.i.i, align 4
  %cmp.i.not.i.i298 = icmp eq ptr %430, %urb_list.i.i
  br i1 %cmp.i.not.i.i298, label %land.lhs.true.i.i299.check_reset_of_active_ep.exit.i_crit_edge, label %do.end.i50.i

land.lhs.true.i.i299.check_reset_of_active_ep.exit.i_crit_edge: ; preds = %land.lhs.true.i.i299
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_reset_of_active_ep.exit.i

do.end.i50.i:                                     ; preds = %land.lhs.true.i.i299
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i46.i = getelementptr inbounds %struct.usb_device, ptr %426, i32 0, i32 15
  %431 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i300 = and i32 %431, -16384
  %432 = inttoptr i32 %and.i.i.i300 to ptr
  %task.i47.i = getelementptr inbounds %struct.thread_info, ptr %432, i32 0, i32 2
  %433 = ptrtoint ptr %task.i47.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %task.i47.i, align 8
  %pid.i.i48.i = getelementptr inbounds %struct.task_struct, ptr %434, i32 0, i32 68
  %435 = ptrtoint ptr %pid.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %pid.i.i48.i, align 8
  %comm.i49.i = getelementptr inbounds %struct.task_struct, ptr %434, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i46.i, ptr noundef nonnull @.str.109, i32 noundef %436, ptr noundef %comm.i49.i, ptr noundef nonnull @.str.113, i32 noundef %asmresult1.i271) #16
  br label %check_reset_of_active_ep.exit.i

check_reset_of_active_ep.exit.i:                  ; preds = %do.end.i50.i, %land.lhs.true.i.i299.check_reset_of_active_ep.exit.i_crit_edge, %if.end9.i.check_reset_of_active_ep.exit.i_crit_edge
  %437 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %dev1.i, align 4
  %439 = ptrtoint ptr %438 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %438, align 8
  %shl.i53.i = shl i32 %440, 8
  %and18.i = shl i32 %asmresult1.i271, 15
  %shl1.i54.i = and i32 %and18.i, 4161536
  %or.i55.i = or i32 %and.i43.i, %shl1.i54.i
  %441 = or i32 %or.i55.i, %shl.i53.i
  %or20.i = or i32 %441, -1073741824
  %call23.i = tail call i32 @usb_clear_halt(ptr noundef %438, i32 noundef %or20.i) #13
  br label %proc_clearhalt.exit

proc_clearhalt.exit:                              ; preds = %check_reset_of_active_ep.exit.i, %checkintf.exit.i296.proc_clearhalt.exit_crit_edge
  %retval.0.i301 = phi i32 [ %call23.i, %check_reset_of_active_ep.exit.i ], [ %call12.i.i295, %checkintf.exit.i296.proc_clearhalt.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i301)
  %cmp100.i = icmp sgt i32 %retval.0.i301, -1
  br i1 %cmp100.i, label %if.then101.i, label %proc_clearhalt.exit.done.thread417.i_crit_edge

proc_clearhalt.exit.done.thread417.i_crit_edge:   ; preds = %proc_clearhalt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

if.then101.i:                                     ; preds = %proc_clearhalt.exit
  call void @__sanitizer_cov_trace_pc() #15
  %i_mtime102.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp103.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp103.i, ptr noundef %4) #13
  %442 = call ptr @memcpy(ptr %i_mtime102.i, ptr %tmp103.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp103.i) #13
  br label %if.then280.i.sink.split

do.body106.i:                                     ; preds = %if.end27.i
  %443 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %tobool107.not.i = icmp eq i8 %443, 0
  br i1 %tobool107.not.i, label %do.body106.i.do.end115.i_crit_edge, label %do.end111.i

do.body106.i.do.end115.i_crit_edge:               ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end115.i

do.end111.i:                                      ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.18) #16
  br label %do.end115.i

do.end115.i:                                      ; preds = %do.end111.i, %do.body106.i.do.end115.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %gd.i) #13
  %444 = call ptr @memset(ptr %gd.i, i32 255, i32 260)
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i241 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i241, label %do.end115.i.if.then11.i.i.i255_crit_edge, label %land.lhs.true.i.i.i244

do.end115.i.if.then11.i.i.i255_crit_edge:         ; preds = %do.end115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i255

land.lhs.true.i.i.i244:                           ; preds = %do.end115.i
  %445 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 260, i32 -1226833920) #17
  %asmresult.i.i.i242 = extractvalue { i32, i32 } %445, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i242)
  %cmp.i6.i.i243 = icmp eq i32 %asmresult.i.i.i242, 0
  br i1 %cmp.i6.i.i243, label %if.end.i.i.i252, label %land.lhs.true.i.i.i244.if.then11.i.i.i255_crit_edge, !prof !300

land.lhs.true.i.i.i244.if.then11.i.i.i255_crit_edge: ; preds = %land.lhs.true.i.i.i244
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i255

if.end.i.i.i252:                                  ; preds = %land.lhs.true.i.i.i244
  %call.i.i.i.i245 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gd.i, i32 noundef 260) #13
  %446 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i246 = and i32 %446, -16384
  %447 = inttoptr i32 %and.i.i.i.i.i.i.i246 to ptr
  %cpu_domain.i.i.i.i.i.i247 = getelementptr inbounds %struct.thread_info, ptr %447, i32 0, i32 4
  %448 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i247) #8, !srcloc !304
  %and.i.i.i.i.i248 = and i32 %448, -13
  %or.i.i.i.i.i249 = or i32 %and.i.i.i.i.i248, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i249) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i250 = call i32 @arm_copy_from_user(ptr noundef nonnull %gd.i, ptr noundef %0, i32 noundef 260) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %448) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i250)
  %tobool4.not.i.i.i251 = icmp eq i32 %call1.i.i.i.i250, 0
  br i1 %tobool4.not.i.i.i251, label %if.end.i259, label %if.end.i.i.i252.if.then11.i.i.i255_crit_edge, !prof !300

if.end.i.i.i252.if.then11.i.i.i255_crit_edge:     ; preds = %if.end.i.i.i252
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i255

if.then11.i.i.i255:                               ; preds = %if.end.i.i.i252.if.then11.i.i.i255_crit_edge, %land.lhs.true.i.i.i244.if.then11.i.i.i255_crit_edge, %do.end115.i.if.then11.i.i.i255_crit_edge
  %res.0.i.i30.i = phi i32 [ %call1.i.i.i.i250, %if.end.i.i.i252.if.then11.i.i.i255_crit_edge ], [ 260, %do.end115.i.if.then11.i.i.i255_crit_edge ], [ 260, %land.lhs.true.i.i.i244.if.then11.i.i.i255_crit_edge ]
  %sub.i.i.i253 = sub i32 260, %res.0.i.i30.i
  %add.ptr.i.i.i254 = getelementptr i8, ptr %gd.i, i32 %sub.i.i.i253
  %449 = call ptr @memset(ptr %add.ptr.i.i.i254, i32 0, i32 %res.0.i.i30.i)
  br label %proc_getdriver.exit

if.end.i259:                                      ; preds = %if.end.i.i.i252
  %450 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dev1.i, align 4
  %452 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %gd.i, align 4
  %call1.i257 = call ptr @usb_ifnum_to_if(ptr noundef %451, i32 noundef %453) #13
  %tobool2.not.i258 = icmp eq ptr %call1.i257, null
  br i1 %tobool2.not.i258, label %if.end.i259.proc_getdriver.exit_crit_edge, label %lor.lhs.false.i

if.end.i259.proc_getdriver.exit_crit_edge:        ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_getdriver.exit

lor.lhs.false.i:                                  ; preds = %if.end.i259
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %call1.i257, i32 0, i32 7, i32 6
  %454 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %driver.i, align 4
  %tobool4.not.i260 = icmp eq ptr %455, null
  br i1 %tobool4.not.i260, label %lor.lhs.false.i.proc_getdriver.exit_crit_edge, label %if.end8.i.i21.i

lor.lhs.false.i.proc_getdriver.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_getdriver.exit

if.end8.i.i21.i:                                  ; preds = %lor.lhs.false.i
  %driver6.i = getelementptr inbounds %struct.usbdevfs_getdriver, ptr %gd.i, i32 0, i32 1
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %455, align 4
  %call9.i = call i32 @strlcpy(ptr noundef %driver6.i, ptr noundef %457, i32 noundef 256) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i22.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i22.i, label %if.end8.i.i21.i.proc_getdriver.exit_crit_edge, label %copy_to_user.exit.i263

if.end8.i.i21.i.proc_getdriver.exit_crit_edge:    ; preds = %if.end8.i.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_getdriver.exit

copy_to_user.exit.i263:                           ; preds = %if.end8.i.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i26.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %gd.i, i32 noundef 260) #13
  %call.i12.i.i.i261 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %gd.i, i32 noundef 260) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i261)
  %tobool11.not.i = icmp eq i32 %call.i12.i.i.i261, 0
  %spec.select.i262 = select i1 %tobool11.not.i, i32 0, i32 -14
  br label %proc_getdriver.exit

proc_getdriver.exit:                              ; preds = %copy_to_user.exit.i263, %if.end8.i.i21.i.proc_getdriver.exit_crit_edge, %lor.lhs.false.i.proc_getdriver.exit_crit_edge, %if.end.i259.proc_getdriver.exit_crit_edge, %if.then11.i.i.i255
  %retval.0.i264 = phi i32 [ -61, %lor.lhs.false.i.proc_getdriver.exit_crit_edge ], [ -61, %if.end.i259.proc_getdriver.exit_crit_edge ], [ -14, %if.then11.i.i.i255 ], [ -14, %if.end8.i.i21.i.proc_getdriver.exit_crit_edge ], [ %spec.select.i262, %copy_to_user.exit.i263 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %gd.i) #13
  br label %done.i

do.body118.i:                                     ; preds = %if.end27.i
  %458 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %458)
  %tobool119.not.i = icmp eq i8 %458, 0
  br i1 %tobool119.not.i, label %do.body118.i.do.end127.i_crit_edge, label %do.end123.i

do.body118.i.do.end127.i_crit_edge:               ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end127.i

do.end123.i:                                      ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.18) #16
  br label %do.end127.i

do.end127.i:                                      ; preds = %do.end123.i, %do.body118.i.do.end127.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ci.i) #13
  %459 = ptrtoint ptr %ci.i to i32
  call void @__asan_store8_noabort(i32 %459)
  store i64 0, ptr %ci.i, align 8
  %460 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dev1.i, align 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %461, align 8
  store i32 %463, ptr %ci.i, align 8
  %speed.i232 = getelementptr inbounds %struct.usb_device, ptr %461, i32 0, i32 4
  %464 = ptrtoint ptr %speed.i232 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %speed.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %465)
  %cmp.i233 = icmp eq i32 %465, 1
  %conv3.i = zext i1 %cmp.i233 to i8
  %slow.i = getelementptr inbounds %struct.usbdevfs_connectinfo, ptr %ci.i, i32 0, i32 1
  %466 = ptrtoint ptr %slow.i to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %conv3.i, ptr %slow.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i234 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i234, label %do.end127.i.proc_connectinfo.exit_crit_edge, label %if.end.i.i.i237

do.end127.i.proc_connectinfo.exit_crit_edge:      ; preds = %do.end127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_connectinfo.exit

if.end.i.i.i237:                                  ; preds = %do.end127.i
  %467 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i.i235 = extractvalue { i32, i32 } %467, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i235)
  %cmp.i6.i.i236 = icmp eq i32 %asmresult.i.i.i235, 0
  br i1 %cmp.i6.i.i236, label %copy_to_user.exit.i, label %if.end.i.i.i237.proc_connectinfo.exit_crit_edge

if.end.i.i.i237.proc_connectinfo.exit_crit_edge:  ; preds = %if.end.i.i.i237
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_connectinfo.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i237
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i238 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ci.i, i32 noundef 8) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ci.i, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i239 = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i240 = select i1 %tobool.not.i239, i32 0, i32 -14
  br label %proc_connectinfo.exit

proc_connectinfo.exit:                            ; preds = %copy_to_user.exit.i, %if.end.i.i.i237.proc_connectinfo.exit_crit_edge, %do.end127.i.proc_connectinfo.exit_crit_edge
  %468 = phi i32 [ -14, %do.end127.i.proc_connectinfo.exit_crit_edge ], [ -14, %if.end.i.i.i237.proc_connectinfo.exit_crit_edge ], [ %spec.select.i240, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ci.i) #13
  br label %done.i

do.body130.i:                                     ; preds = %if.end27.i
  %469 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool131.not.i = icmp eq i8 %469, 0
  br i1 %tobool131.not.i, label %do.body130.i.do.end139.i_crit_edge, label %do.end135.i

do.body130.i.do.end139.i_crit_edge:               ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end139.i

do.end135.i:                                      ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.18) #16
  br label %do.end139.i

do.end139.i:                                      ; preds = %do.end135.i, %do.body130.i.do.end139.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %setintf.i) #13
  %470 = ptrtoint ptr %setintf.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 -1, ptr %setintf.i, align 4, !annotation !307
  %471 = getelementptr inbounds %struct.usbdevfs_setinterface, ptr %setintf.i, i32 0, i32 1
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 -1, ptr %471, align 4, !annotation !307
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i204 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i204, label %do.end139.i.if.then11.i.i.i218_crit_edge, label %land.lhs.true.i.i.i207

do.end139.i.if.then11.i.i.i218_crit_edge:         ; preds = %do.end139.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i218

land.lhs.true.i.i.i207:                           ; preds = %do.end139.i
  %473 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i.i205 = extractvalue { i32, i32 } %473, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i205)
  %cmp.i6.i.i206 = icmp eq i32 %asmresult.i.i.i205, 0
  br i1 %cmp.i6.i.i206, label %if.end.i.i.i215, label %land.lhs.true.i.i.i207.if.then11.i.i.i218_crit_edge, !prof !300

land.lhs.true.i.i.i207.if.then11.i.i.i218_crit_edge: ; preds = %land.lhs.true.i.i.i207
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i218

if.end.i.i.i215:                                  ; preds = %land.lhs.true.i.i.i207
  %call.i.i.i.i208 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %setintf.i, i32 noundef 8) #13
  %474 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i209 = and i32 %474, -16384
  %475 = inttoptr i32 %and.i.i.i.i.i.i.i209 to ptr
  %cpu_domain.i.i.i.i.i.i210 = getelementptr inbounds %struct.thread_info, ptr %475, i32 0, i32 4
  %476 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i210) #8, !srcloc !304
  %and.i.i.i.i.i211 = and i32 %476, -13
  %or.i.i.i.i.i212 = or i32 %and.i.i.i.i.i211, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i212) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i213 = call i32 @arm_copy_from_user(ptr noundef nonnull %setintf.i, ptr noundef %0, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %476) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i213)
  %tobool4.not.i.i.i214 = icmp eq i32 %call1.i.i.i.i213, 0
  br i1 %tobool4.not.i.i.i214, label %if.end.i222, label %if.end.i.i.i215.if.then11.i.i.i218_crit_edge, !prof !300

if.end.i.i.i215.if.then11.i.i.i218_crit_edge:     ; preds = %if.end.i.i.i215
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i218

if.then11.i.i.i218:                               ; preds = %if.end.i.i.i215.if.then11.i.i.i218_crit_edge, %land.lhs.true.i.i.i207.if.then11.i.i.i218_crit_edge, %do.end139.i.if.then11.i.i.i218_crit_edge
  %res.0.i.i14.i = phi i32 [ %call1.i.i.i.i213, %if.end.i.i.i215.if.then11.i.i.i218_crit_edge ], [ 8, %do.end139.i.if.then11.i.i.i218_crit_edge ], [ 8, %land.lhs.true.i.i.i207.if.then11.i.i.i218_crit_edge ]
  %sub.i.i.i216 = sub i32 8, %res.0.i.i14.i
  %add.ptr.i.i.i217 = getelementptr i8, ptr %setintf.i, i32 %sub.i.i.i216
  %477 = call ptr @memset(ptr %add.ptr.i.i.i217, i32 0, i32 %res.0.i.i14.i)
  br label %proc_setintf.exit

if.end.i222:                                      ; preds = %if.end.i.i.i215
  %478 = ptrtoint ptr %setintf.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %setintf.i, align 4
  %480 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %dev1.i, align 4
  %state.i.i220 = getelementptr inbounds %struct.usb_device, ptr %481, i32 0, i32 3
  %482 = ptrtoint ptr %state.i.i220 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %state.i.i220, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %483)
  %cmp.not.i.i221 = icmp eq i32 %483, 7
  br i1 %cmp.not.i.i221, label %if.end.i.i223, label %if.end.i222.proc_setintf.exit_crit_edge

if.end.i222.proc_setintf.exit_crit_edge:          ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_setintf.exit

if.end.i.i223:                                    ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %479)
  %cmp1.i.i = icmp ugt i32 %479, 31
  br i1 %cmp1.i.i, label %if.end.i.i223.proc_setintf.exit_crit_edge, label %if.end3.i.i227

if.end.i.i223.proc_setintf.exit_crit_edge:        ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_setintf.exit

if.end3.i.i227:                                   ; preds = %if.end.i.i223
  %ifclaimed.i.i224 = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 13
  %div3.i.i.i = lshr i32 %479, 5
  %arrayidx.i.i.i225 = getelementptr i32, ptr %ifclaimed.i.i224, i32 %div3.i.i.i
  %484 = ptrtoint ptr %arrayidx.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load volatile i32, ptr %arrayidx.i.i.i225, align 4
  %486 = shl nuw i32 1, %479
  %487 = and i32 %485, %486
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %487)
  %tobool.not.i.i226 = icmp eq i32 %487, 0
  br i1 %tobool.not.i.i226, label %checkintf.exit.i, label %if.end3.i.i227.if.end4.i_crit_edge

if.end3.i.i227.if.end4.i_crit_edge:               ; preds = %if.end3.i.i227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

checkintf.exit.i:                                 ; preds = %if.end3.i.i227
  %dev7.i.i = getelementptr inbounds %struct.usb_device, ptr %481, i32 0, i32 15
  %488 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i19.i.i = and i32 %488, -16384
  %489 = inttoptr i32 %and.i19.i.i to ptr
  %task.i.i228 = getelementptr inbounds %struct.thread_info, ptr %489, i32 0, i32 2
  %490 = ptrtoint ptr %task.i.i228 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %task.i.i228, align 8
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %491, i32 0, i32 68
  %492 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %pid.i.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %491, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.87, i32 noundef %493, ptr noundef %comm.i.i, i32 noundef %479) #16
  %call12.i.i = call fastcc i32 @claimintf(ptr noundef %2, i32 noundef %479) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool2.not.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool2.not.i, label %checkintf.exit.i.if.end4.i_crit_edge, label %checkintf.exit.i.proc_setintf.exit_crit_edge

checkintf.exit.i.proc_setintf.exit_crit_edge:     ; preds = %checkintf.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_setintf.exit

checkintf.exit.i.if.end4.i_crit_edge:             ; preds = %checkintf.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.end4.i:                                        ; preds = %checkintf.exit.i.if.end4.i_crit_edge, %if.end3.i.i227.if.end4.i_crit_edge
  %494 = ptrtoint ptr %setintf.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %setintf.i, align 4
  call fastcc void @destroy_async_on_interface(ptr noundef %2, i32 noundef %495) #13
  %496 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %dev1.i, align 4
  %498 = ptrtoint ptr %setintf.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %setintf.i, align 4
  %500 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %471, align 4
  %call7.i = call i32 @usb_set_interface(ptr noundef %497, i32 noundef %499, i32 noundef %501) #13
  br label %proc_setintf.exit

proc_setintf.exit:                                ; preds = %if.end4.i, %checkintf.exit.i.proc_setintf.exit_crit_edge, %if.end.i.i223.proc_setintf.exit_crit_edge, %if.end.i222.proc_setintf.exit_crit_edge, %if.then11.i.i.i218
  %retval.0.i229 = phi i32 [ %call7.i, %if.end4.i ], [ %call12.i.i, %checkintf.exit.i.proc_setintf.exit_crit_edge ], [ -14, %if.then11.i.i.i218 ], [ -22, %if.end.i.i223.proc_setintf.exit_crit_edge ], [ -113, %if.end.i222.proc_setintf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %setintf.i) #13
  br label %done.i

do.body142.i:                                     ; preds = %if.end27.i
  %502 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %502)
  %tobool143.not.i = icmp eq i8 %502, 0
  br i1 %tobool143.not.i, label %do.body142.i.do.end151.i_crit_edge, label %do.end147.i

do.body142.i.do.end151.i_crit_edge:               ; preds = %do.body142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end151.i

do.end147.i:                                      ; preds = %do.body142.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.18) #16
  br label %do.end151.i

do.end151.i:                                      ; preds = %do.end147.i, %do.body142.i.do.end151.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1524) #13
  %503 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i187 = and i32 %503, -16384
  %504 = inttoptr i32 %and.i.i.i.i187 to ptr
  %cpu_domain.i.i.i188 = getelementptr inbounds %struct.thread_info, ptr %504, i32 0, i32 4
  %505 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i188) #8, !srcloc !304
  %and.i.i189 = and i32 %505, -13
  %or.i.i190 = or i32 %and.i.i189, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i190) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %506 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !310
  %asmresult.i191 = extractvalue { i32, i32 } %506, 0
  %asmresult1.i192 = extractvalue { i32, i32 } %506, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %505) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i191)
  %tobool.not.i193 = icmp eq i32 %asmresult.i191, 0
  br i1 %tobool.not.i193, label %if.end.i195, label %do.end151.i.done.i.thread_crit_edge

do.end151.i.done.i.thread_crit_edge:              ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.end.i195:                                      ; preds = %do.end151.i
  %507 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %dev1.i, align 4
  %actconfig3.i = getelementptr inbounds %struct.usb_device, ptr %508, i32 0, i32 20
  %509 = ptrtoint ptr %actconfig3.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %actconfig3.i, align 4
  %tobool4.not.i = icmp eq ptr %510, null
  br i1 %tobool4.not.i, label %if.end.i195.if.else.i201_crit_edge, label %for.cond.preheader.i

if.end.i195.if.else.i201_crit_edge:               ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i201

for.cond.preheader.i:                             ; preds = %if.end.i195
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %510, i32 0, i32 3
  %511 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %bNumInterfaces.i, align 4
  %conv.i196 = zext i8 %512 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %512)
  %cmp59.not.i = icmp eq i8 %512, 0
  br i1 %cmp59.not.i, label %for.cond.preheader.i.land.lhs.true.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.land.lhs.true.i_crit_edge:   ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i196
  br i1 %exitcond.not.i, label %for.cond.i.land.lhs.true.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.land.lhs.true.i_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_config, ptr %510, i32 0, i32 3, i32 %i.060.i
  %513 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %arrayidx.i, align 4
  %driver.i.i = getelementptr inbounds %struct.usb_interface, ptr %514, i32 0, i32 7, i32 6
  %515 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %driver.i.i, align 4
  %cmp.i.not.i197 = icmp eq ptr %516, null
  br i1 %cmp.i.not.i197, label %for.cond.i, label %if.end21.i

if.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev11.i = getelementptr inbounds %struct.usb_device, ptr %508, i32 0, i32 15
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %514, i32 0, i32 1
  %517 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i198 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %518, i32 0, i32 2
  %519 = ptrtoint ptr %bInterfaceNumber.i198 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %bInterfaceNumber.i198, align 2
  %conv15.i = zext i8 %520 to i32
  %521 = ptrtoint ptr %516 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %516, align 4
  %523 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i55.i = and i32 %523, -16384
  %524 = inttoptr i32 %and.i55.i to ptr
  %task.i199 = getelementptr inbounds %struct.thread_info, ptr %524, i32 0, i32 2
  %525 = ptrtoint ptr %task.i199 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %task.i199, align 8
  %comm.i200 = getelementptr inbounds %struct.task_struct, ptr %526, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11.i, ptr noundef nonnull @.str.114, i32 noundef %conv15.i, ptr noundef %522, ptr noundef %comm.i200, i32 noundef %asmresult1.i192) #16
  br label %done.i.thread

land.lhs.true.i:                                  ; preds = %for.cond.i.land.lhs.true.i_crit_edge, %for.cond.preheader.i.land.lhs.true.i_crit_edge
  %bConfigurationValue.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %510, i32 0, i32 4
  %527 = ptrtoint ptr %bConfigurationValue.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %bConfigurationValue.i, align 1
  %conv27.i = zext i8 %528 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i192, i32 %conv27.i)
  %cmp28.i = icmp eq i32 %asmresult1.i192, %conv27.i
  br i1 %cmp28.i, label %if.then30.i, label %land.lhs.true.i.if.else.i201_crit_edge

land.lhs.true.i.if.else.i201_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i201

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call32.i = tail call i32 @usb_reset_configuration(ptr noundef %508) #13
  br label %done.i

if.else.i201:                                     ; preds = %land.lhs.true.i.if.else.i201_crit_edge, %if.end.i195.if.else.i201_crit_edge
  %call34.i = tail call i32 @usb_set_configuration(ptr noundef %508, i32 noundef %asmresult1.i192) #13
  br label %done.i

do.body154.i:                                     ; preds = %if.end27.i
  %529 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %529)
  %tobool155.not.i = icmp eq i8 %529, 0
  br i1 %tobool155.not.i, label %do.body154.i.do.end163.i_crit_edge, label %do.end159.i

do.body154.i.do.end163.i_crit_edge:               ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end163.i

do.end159.i:                                      ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.18) #16
  br label %do.end163.i

do.end163.i:                                      ; preds = %do.end159.i, %do.body154.i.do.end163.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %uurb.i) #13
  %530 = call ptr @memset(ptr %uurb.i, i32 255, i32 44)
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i145 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i145, label %do.end163.i.if.then11.i.i.i159_crit_edge, label %land.lhs.true.i.i.i148

do.end163.i.if.then11.i.i.i159_crit_edge:         ; preds = %do.end163.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i159

land.lhs.true.i.i.i148:                           ; preds = %do.end163.i
  %531 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 44, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i.i146 = extractvalue { i32, i32 } %531, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i146)
  %cmp.i6.i.i147 = icmp eq i32 %asmresult.i.i.i146, 0
  br i1 %cmp.i6.i.i147, label %if.end.i.i.i156, label %land.lhs.true.i.i.i148.if.then11.i.i.i159_crit_edge, !prof !300

land.lhs.true.i.i.i148.if.then11.i.i.i159_crit_edge: ; preds = %land.lhs.true.i.i.i148
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i159

if.end.i.i.i156:                                  ; preds = %land.lhs.true.i.i.i148
  %call.i.i.i.i149 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uurb.i, i32 noundef 44) #13
  %532 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i150 = and i32 %532, -16384
  %533 = inttoptr i32 %and.i.i.i.i.i.i.i150 to ptr
  %cpu_domain.i.i.i.i.i.i151 = getelementptr inbounds %struct.thread_info, ptr %533, i32 0, i32 4
  %534 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i151) #8, !srcloc !304
  %and.i.i.i.i.i152 = and i32 %534, -13
  %or.i.i.i.i.i153 = or i32 %and.i.i.i.i.i152, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i153) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i154 = call i32 @arm_copy_from_user(ptr noundef nonnull %uurb.i, ptr noundef %0, i32 noundef 44) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %534) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i154)
  %tobool4.not.i.i.i155 = icmp eq i32 %call1.i.i.i.i154, 0
  br i1 %tobool4.not.i.i.i155, label %if.end.i164, label %if.end.i.i.i156.if.then11.i.i.i159_crit_edge, !prof !300

if.end.i.i.i156.if.then11.i.i.i159_crit_edge:     ; preds = %if.end.i.i.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i159

if.then11.i.i.i159:                               ; preds = %if.end.i.i.i156.if.then11.i.i.i159_crit_edge, %land.lhs.true.i.i.i148.if.then11.i.i.i159_crit_edge, %do.end163.i.if.then11.i.i.i159_crit_edge
  %res.0.i.i16.i = phi i32 [ %call1.i.i.i.i154, %if.end.i.i.i156.if.then11.i.i.i159_crit_edge ], [ 44, %do.end163.i.if.then11.i.i.i159_crit_edge ], [ 44, %land.lhs.true.i.i.i148.if.then11.i.i.i159_crit_edge ]
  %sub.i.i.i157 = sub i32 44, %res.0.i.i16.i
  %add.ptr.i.i.i158 = getelementptr i8, ptr %uurb.i, i32 %sub.i.i.i157
  %535 = call ptr @memset(ptr %add.ptr.i.i.i158, i32 0, i32 %res.0.i.i16.i)
  br label %proc_submiturb.exit.thread

if.end.i164:                                      ; preds = %if.end.i.i.i156
  %iso_frame_desc.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %0, i32 0, i32 12
  %536 = ptrtoint ptr %uurb.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %uurb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %537)
  %cmp.i.i160 = icmp eq i8 %537, 0
  %spec.select.i.i161 = select i1 %cmp.i.i160, i32 -232, i32 -230
  %flags.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 3
  %538 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %flags.i.i, align 4
  %and.i.i162 = and i32 %spec.select.i.i161, %539
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i162)
  %tobool.not.i.i163 = icmp eq i32 %and.i.i162, 0
  br i1 %tobool.not.i.i163, label %if.end3.i.i, label %if.end.i164.proc_submiturb.exit.thread_crit_edge

if.end.i164.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i164
  %buffer_length.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 5
  %540 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %buffer_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2146483646, i32 %541)
  %cmp4.i.i = icmp ugt i32 %541, 2146483646
  br i1 %cmp4.i.i, label %if.end3.i.i.proc_submiturb.exit.thread_crit_edge, label %if.end7.i.i

if.end3.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end7.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %541)
  %cmp9.not.i.i = icmp eq i32 %541, 0
  br i1 %cmp9.not.i.i, label %if.end7.i.i.if.end13.i.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i.i

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %buffer.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 4
  %542 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %buffer.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %543, null
  br i1 %tobool11.not.i.i, label %land.lhs.true.i.i.proc_submiturb.exit.thread_crit_edge, label %land.lhs.true.i.i.if.end13.i.i_crit_edge

land.lhs.true.i.i.if.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i.i

land.lhs.true.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end13.i.i:                                     ; preds = %land.lhs.true.i.i.if.end13.i.i_crit_edge, %if.end7.i.i.if.end13.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %537)
  %cmp16.i.i = icmp eq i8 %537, 2
  br i1 %cmp16.i.i, label %land.lhs.true18.i.i, label %if.end13.i.i.if.then23.i.i_crit_edge

if.end13.i.i.if.then23.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23.i.i

land.lhs.true18.i.i:                              ; preds = %if.end13.i.i
  %endpoint.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 1
  %544 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %endpoint.i.i, align 1
  %546 = and i8 %545, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %546)
  %cmp21.i.i = icmp eq i8 %546, 0
  br i1 %cmp21.i.i, label %land.lhs.true18.i.i.if.end34.i.i_crit_edge, label %land.lhs.true18.i.i.if.then23.i.i_crit_edge

land.lhs.true18.i.i.if.then23.i.i_crit_edge:      ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23.i.i

land.lhs.true18.i.i.if.end34.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true18.i.i.if.then23.i.i_crit_edge, %if.end13.i.i.if.then23.i.i_crit_edge
  %547 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %dev1.i, align 4
  %endpoint24.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 1
  %549 = ptrtoint ptr %endpoint24.i.i to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %endpoint24.i.i, align 1
  %551 = and i8 %550, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %551)
  %tobool.not.i.i.i166 = icmp eq i8 %551, 0
  br i1 %tobool.not.i.i.i166, label %if.end.i937.i.i, label %if.then23.i.i.proc_submiturb.exit.thread_crit_edge

if.then23.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end.i937.i.i:                                  ; preds = %if.then23.i.i
  %actconfig.i.i.i = getelementptr inbounds %struct.usb_device, ptr %548, i32 0, i32 20
  %552 = ptrtoint ptr %actconfig.i.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %actconfig.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %553, null
  br i1 %tobool1.not.i.i.i, label %if.end.i937.i.i.proc_submiturb.exit.thread_crit_edge, label %for.cond.preheader.i.i.i

if.end.i937.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end.i937.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

for.cond.preheader.i.i.i:                         ; preds = %if.end.i937.i.i
  %bNumInterfaces.i.i.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %553, i32 0, i32 3
  %554 = ptrtoint ptr %bNumInterfaces.i.i.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %bNumInterfaces.i.i.i, align 4
  %conv.i.i.i = zext i8 %555 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %555)
  %cmp55.not.i.i.i = icmp eq i8 %555, 0
  br i1 %cmp55.not.i.i.i, label %for.cond.preheader.i.i.i.proc_submiturb.exit.thread_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

for.body.i.i.i:                                   ; preds = %for.inc30.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.056.i.i.i = phi i32 [ %inc31.i.i.i, %for.inc30.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.usb_host_config, ptr %553, i32 0, i32 3, i32 %i.056.i.i.i
  %556 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %arrayidx.i.i.i, align 4
  %num_altsetting.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %557, i32 0, i32 2
  %558 = ptrtoint ptr %num_altsetting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %num_altsetting.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %559)
  %cmp852.not.i.i.i = icmp eq i32 %559, 0
  br i1 %cmp852.not.i.i.i, label %for.body.i.i.i.for.inc30.i.i.i_crit_edge, label %for.body10.lr.ph.i.i.i

for.body.i.i.i.for.inc30.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i.i.i

for.body10.lr.ph.i.i.i:                           ; preds = %for.body.i.i.i
  %560 = ptrtoint ptr %557 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %557, align 8
  br label %for.body10.i.i.i

for.body10.i.i.i:                                 ; preds = %for.inc27.i.i.i.for.body10.i.i.i_crit_edge, %for.body10.lr.ph.i.i.i
  %j.053.i.i.i = phi i32 [ 0, %for.body10.lr.ph.i.i.i ], [ %inc28.i.i.i, %for.inc27.i.i.i.for.body10.i.i.i_crit_edge ]
  %arrayidx11.i.i.i = getelementptr %struct.usb_host_interface, ptr %561, i32 %j.053.i.i.i
  %bNumEndpoints.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i.i.i, i32 0, i32 4
  %562 = ptrtoint ptr %bNumEndpoints.i.i.i to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %bNumEndpoints.i.i.i, align 4
  %conv14.i.i.i = zext i8 %563 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %563)
  %cmp1550.not.i.i.i = icmp eq i8 %563, 0
  br i1 %cmp1550.not.i.i.i, label %for.body10.i.i.i.for.inc27.i.i.i_crit_edge, label %for.body17.lr.ph.i.i.i

for.body10.i.i.i.for.inc27.i.i.i_crit_edge:       ; preds = %for.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i.i.i

for.body17.lr.ph.i.i.i:                           ; preds = %for.body10.i.i.i
  %endpoint.i.i.i = getelementptr %struct.usb_host_interface, ptr %561, i32 %j.053.i.i.i, i32 3
  %564 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %endpoint.i.i.i, align 4
  br label %for.body17.i.i.i

for.cond12.i.i.i:                                 ; preds = %for.body17.i.i.i
  %inc.i.i.i = add nuw nsw i32 %e.051.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv14.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond12.i.i.i.for.inc27.i.i.i_crit_edge, label %for.cond12.i.i.i.for.body17.i.i.i_crit_edge

for.cond12.i.i.i.for.body17.i.i.i_crit_edge:      ; preds = %for.cond12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i.i.i

for.cond12.i.i.i.for.inc27.i.i.i_crit_edge:       ; preds = %for.cond12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i.i.i

for.body17.i.i.i:                                 ; preds = %for.cond12.i.i.i.for.body17.i.i.i_crit_edge, %for.body17.lr.ph.i.i.i
  %e.051.i.i.i = phi i32 [ 0, %for.body17.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond12.i.i.i.for.body17.i.i.i_crit_edge ]
  %bEndpointAddress.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %565, i32 %e.051.i.i.i, i32 0, i32 2
  %566 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %567, i8 %550)
  %cmp21.i.i.i = icmp eq i8 %567, %550
  br i1 %cmp21.i.i.i, label %findintfep.exit.i.i, label %for.cond12.i.i.i

for.inc27.i.i.i:                                  ; preds = %for.cond12.i.i.i.for.inc27.i.i.i_crit_edge, %for.body10.i.i.i.for.inc27.i.i.i_crit_edge
  %inc28.i.i.i = add nuw i32 %j.053.i.i.i, 1
  %exitcond58.not.i.i.i = icmp eq i32 %inc28.i.i.i, %559
  br i1 %exitcond58.not.i.i.i, label %for.inc27.i.i.i.for.inc30.i.i.i_crit_edge, label %for.inc27.i.i.i.for.body10.i.i.i_crit_edge

for.inc27.i.i.i.for.body10.i.i.i_crit_edge:       ; preds = %for.inc27.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i.i.i

for.inc27.i.i.i.for.inc30.i.i.i_crit_edge:        ; preds = %for.inc27.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i.i.i

for.inc30.i.i.i:                                  ; preds = %for.inc27.i.i.i.for.inc30.i.i.i_crit_edge, %for.body.i.i.i.for.inc30.i.i.i_crit_edge
  %inc31.i.i.i = add nuw nsw i32 %i.056.i.i.i, 1
  %exitcond59.not.i.i.i = icmp eq i32 %inc31.i.i.i, %conv.i.i.i
  br i1 %exitcond59.not.i.i.i, label %for.inc30.i.i.i.proc_submiturb.exit.thread_crit_edge, label %for.inc30.i.i.i.for.body.i.i.i_crit_edge

for.inc30.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc30.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc30.i.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %for.inc30.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

findintfep.exit.i.i:                              ; preds = %for.body17.i.i.i
  %bInterfaceNumber.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i.i.i, i32 0, i32 2
  %568 = ptrtoint ptr %bInterfaceNumber.i.i.i to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %bInterfaceNumber.i.i.i, align 2
  %conv25.i.i.i = zext i8 %569 to i32
  %state.i.i.i167 = getelementptr inbounds %struct.usb_device, ptr %548, i32 0, i32 3
  %570 = ptrtoint ptr %state.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %state.i.i.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %571)
  %cmp.not.i.i.i = icmp eq i32 %571, 7
  br i1 %cmp.not.i.i.i, label %if.end.i938.i.i, label %findintfep.exit.i.i.proc_submiturb.exit.thread_crit_edge

findintfep.exit.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %findintfep.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end.i938.i.i:                                  ; preds = %findintfep.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %569)
  %cmp1.i.i6.i = icmp ugt i8 %569, 31
  br i1 %cmp1.i.i6.i, label %if.end.i938.i.i.proc_submiturb.exit.thread_crit_edge, label %if.end3.i.i.i

if.end.i938.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end.i938.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end3.i.i.i:                                    ; preds = %if.end.i938.i.i
  %ifclaimed.i.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 13
  %div3.i.i.i.i = lshr i32 %conv25.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %ifclaimed.i.i.i, i32 %div3.i.i.i.i
  %572 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %574 = shl nuw i32 1, %conv25.i.i.i
  %575 = and i32 %573, %574
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %575)
  %tobool.not.i939.i.i = icmp eq i32 %575, 0
  br i1 %tobool.not.i939.i.i, label %checkintf.exit.i.i, label %if.end3.i.i.i.if.end34.i.i_crit_edge

if.end3.i.i.i.if.end34.i.i_crit_edge:             ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

checkintf.exit.i.i:                               ; preds = %if.end3.i.i.i
  %dev7.i.i.i = getelementptr inbounds %struct.usb_device, ptr %548, i32 0, i32 15
  %576 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i19.i.i.i = and i32 %576, -16384
  %577 = inttoptr i32 %and.i19.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %577, i32 0, i32 2
  %578 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %task.i.i.i, align 8
  %pid.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %579, i32 0, i32 68
  %580 = ptrtoint ptr %pid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %pid.i.i.i.i, align 8
  %comm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %579, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i.i.i, ptr noundef nonnull @.str.87, i32 noundef %581, ptr noundef %comm.i.i.i, i32 noundef %conv25.i.i.i) #16
  %call12.i.i.i = call fastcc i32 @claimintf(ptr noundef %2, i32 noundef %conv25.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool31.not.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool31.not.i.i, label %checkintf.exit.i.i.if.end34.i.i_crit_edge, label %checkintf.exit.i.i.proc_submiturb.exit_crit_edge

checkintf.exit.i.i.proc_submiturb.exit_crit_edge: ; preds = %checkintf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit

checkintf.exit.i.i.if.end34.i.i_crit_edge:        ; preds = %checkintf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %checkintf.exit.i.i.if.end34.i.i_crit_edge, %if.end3.i.i.i.if.end34.i.i_crit_edge, %land.lhs.true18.i.i.if.end34.i.i_crit_edge
  %ifnum.0.i.i = phi i32 [ -1, %land.lhs.true18.i.i.if.end34.i.i_crit_edge ], [ %conv25.i.i.i, %checkintf.exit.i.i.if.end34.i.i_crit_edge ], [ %conv25.i.i.i, %if.end3.i.i.i.if.end34.i.i_crit_edge ]
  %582 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %dev1.i, align 4
  %endpoint36.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 1
  %584 = ptrtoint ptr %endpoint36.i.i to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %endpoint36.i.i, align 1
  %conv.i941.i.i = zext i8 %585 to i32
  %and.i942.i.i = and i32 %conv.i941.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i942.i.i)
  %tobool.not.i943.i.i = icmp eq i32 %and.i942.i.i, 0
  %and2.i.i.i = and i32 %conv.i941.i.i, 15
  %arrayidx.i944.i.i = getelementptr %struct.usb_device, ptr %583, i32 0, i32 21, i32 %and2.i.i.i
  %arrayidx5.i.i.i = getelementptr %struct.usb_device, ptr %583, i32 0, i32 22, i32 %and2.i.i.i
  %retval.0.in.i.i.i = select i1 %tobool.not.i943.i.i, ptr %arrayidx5.i.i.i, ptr %arrayidx.i944.i.i
  %586 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %retval.0.i945.i.i = load ptr, ptr %retval.0.in.i.i.i, align 4
  %tobool38.not.i.i = icmp eq ptr %retval.0.i945.i.i, null
  br i1 %tobool38.not.i.i, label %if.end34.i.i.proc_submiturb.exit.thread_crit_edge, label %if.end40.i.i

if.end34.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end40.i.i:                                     ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %585)
  %cmp44.i.i = icmp slt i8 %585, 0
  %587 = ptrtoint ptr %uurb.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %uurb.i, align 4
  %589 = zext i8 %588 to i64
  call void @__sanitizer_cov_trace_switch(i64 %589, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %588, label %if.end40.i.i.proc_submiturb.exit.thread_crit_edge [
    i8 2, label %sw.bb.i.i
    i8 3, label %sw.bb120.i.i
    i8 1, label %sw.bb142.i.i
    i8 0, label %sw.bb152.i.i
  ]

if.end40.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

sw.bb.i.i:                                        ; preds = %if.end40.i.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %retval.0.i945.i.i, i32 0, i32 3
  %590 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %bmAttributes.i.i.i, align 1
  %592 = and i8 %591, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %592)
  %cmp.i946.not.i.i = icmp eq i8 %592, 0
  br i1 %cmp.i946.not.i.i, label %if.end51.i.i, label %sw.bb.i.i.proc_submiturb.exit.thread_crit_edge

sw.bb.i.i.proc_submiturb.exit.thread_crit_edge:   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end51.i.i:                                     ; preds = %sw.bb.i.i
  %593 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %buffer_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %594)
  %cmp53.i.i = icmp slt i32 %594, 8
  br i1 %cmp53.i.i, label %if.end51.i.i.proc_submiturb.exit.thread_crit_edge, label %if.end56.i.i

if.end51.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end56.i.i:                                     ; preds = %if.end51.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %595 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %595, i32 noundef 3264, i32 noundef 8) #18
  %tobool58.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool58.not.i.i, label %if.end56.i.i.proc_submiturb.exit.thread_crit_edge, label %if.end60.i.i

if.end56.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end60.i.i:                                     ; preds = %if.end56.i.i
  %buffer61.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 4
  %596 = ptrtoint ptr %buffer61.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %buffer61.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i7.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i7.i, label %if.end60.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end60.i.i.if.then11.i.i.i.i_crit_edge:         ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end60.i.i
  %598 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %597, i32 8, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i.i.i168 = extractvalue { i32, i32 } %598, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i168)
  %cmp.i6.i.i.i169 = icmp eq i32 %asmresult.i.i.i.i168, 0
  br i1 %cmp.i6.i.i.i169, label %if.end.i.i.i.i171, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !300

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i171:                                ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i170 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 8) #13
  %599 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i.i = and i32 %599, -16384
  %600 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %600, i32 0, i32 4
  %601 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !304
  %and.i.i.i.i.i.i = and i32 %601, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i.i.i, ptr noundef %597, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %601) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end65.i.i, label %if.end.i.i.i.i171.if.then11.i.i.i.i_crit_edge, !prof !300

if.end.i.i.i.i171.if.then11.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i171.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end60.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i980.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i171.if.then11.i.i.i.i_crit_edge ], [ 8, %if.end60.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8, %res.0.i.i980.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %sub.i.i.i.i
  %602 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i980.i.i)
  br label %error.i.i

if.end65.i.i:                                     ; preds = %if.end.i.i.i.i171
  %603 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %buffer_length.i.i, align 4
  %wLength.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i, i32 0, i32 4
  %605 = ptrtoint ptr %wLength.i.i to i32
  call void @__asan_load2_noabort(i32 %605)
  %606 = load i16, ptr %wLength.i.i, align 2
  %607 = call i16 @llvm.bswap.i16(i16 %606) #13
  %conv67.i.i = zext i16 %607 to i32
  %add.i.i = add nuw nsw i32 %conv67.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %604, i32 %add.i.i)
  %cmp68.i.i = icmp slt i32 %604, %add.i.i
  br i1 %cmp68.i.i, label %if.end65.i.i.error.i.i_crit_edge, label %if.end71.i.i

if.end65.i.i.error.i.i_crit_edge:                 ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.end71.i.i:                                     ; preds = %if.end65.i.i
  %608 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %call7.i.i.i, align 8
  %conv72.i.i = zext i8 %609 to i32
  %bRequest.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i, i32 0, i32 1
  %610 = ptrtoint ptr %bRequest.i.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %bRequest.i.i, align 1
  %conv73.i.i = zext i8 %611 to i32
  %wIndex.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i, i32 0, i32 3
  %612 = ptrtoint ptr %wIndex.i.i to i32
  call void @__asan_load2_noabort(i32 %612)
  %613 = load i16, ptr %wIndex.i.i, align 4
  %614 = call i16 @llvm.bswap.i16(i16 %613) #13
  %conv74.i.i = zext i16 %614 to i32
  %call75.i.i = call fastcc i32 @check_ctrlrecip(ptr noundef %2, i32 noundef %conv72.i.i, i32 noundef %conv73.i.i, i32 noundef %conv74.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i.i)
  %tobool76.not.i.i = icmp eq i32 %call75.i.i, 0
  br i1 %tobool76.not.i.i, label %if.end78.i.i, label %if.end71.i.i.error.i.i_crit_edge

if.end71.i.i.error.i.i_crit_edge:                 ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.end78.i.i:                                     ; preds = %if.end71.i.i
  %615 = ptrtoint ptr %wLength.i.i to i32
  call void @__asan_load2_noabort(i32 %615)
  %616 = load i16, ptr %wLength.i.i, align 2
  %617 = call i16 @llvm.bswap.i16(i16 %616) #13
  %conv80.i.i = zext i16 %617 to i32
  %618 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %618)
  store i32 %conv80.i.i, ptr %buffer_length.i.i, align 4
  %619 = ptrtoint ptr %buffer61.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %buffer61.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %620, i32 8
  store ptr %add.ptr.i.i, ptr %buffer61.i.i, align 4
  %621 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %622)
  %tobool86.not.i.i = icmp sgt i8 %622, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %616)
  %tobool89.not.i.i = icmp eq i16 %616, 0
  %or.cond991.i.i = select i1 %tobool86.not.i.i, i1 true, i1 %tobool89.not.i.i
  %623 = ptrtoint ptr %endpoint36.i.i to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %endpoint36.i.i, align 1
  %625 = and i8 %624, 127
  %masksel.i.i = select i1 %or.cond991.i.i, i8 0, i8 -128
  %storemerge.i.i = or i8 %masksel.i.i, %625
  %626 = xor i1 %or.cond991.i.i, true
  store i8 %storemerge.i.i, ptr %endpoint36.i.i, align 1
  %627 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %627)
  %tobool103.not.i.i = icmp eq i8 %627, 0
  br i1 %tobool103.not.i.i, label %if.end78.i.i.sw.epilog181.i.i_crit_edge, label %do.end.i.i172

if.end78.i.i.sw.epilog181.i.i_crit_edge:          ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog181.i.i

do.end.i.i172:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %628 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %dev1.i, align 4
  %dev107.i.i = getelementptr inbounds %struct.usb_device, ptr %629, i32 0, i32 15
  %conv109.i.i = zext i8 %622 to i32
  %630 = ptrtoint ptr %bRequest.i.i to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %bRequest.i.i, align 1
  %conv111.i.i = zext i8 %631 to i32
  %wValue.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i, i32 0, i32 2
  %632 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_load2_noabort(i32 %632)
  %633 = load i16, ptr %wValue.i.i, align 2
  %634 = call i16 @llvm.bswap.i16(i16 %633) #13
  %conv112.i.i = zext i16 %634 to i32
  %635 = ptrtoint ptr %wIndex.i.i to i32
  call void @__asan_load2_noabort(i32 %635)
  %636 = load i16, ptr %wIndex.i.i, align 4
  %637 = call i16 @llvm.bswap.i16(i16 %636) #13
  %conv114.i.i = zext i16 %637 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev107.i.i, ptr noundef nonnull @.str.79, i32 noundef %conv109.i.i, i32 noundef %conv111.i.i, i32 noundef %conv112.i.i, i32 noundef %conv114.i.i, i32 noundef %conv80.i.i) #16
  br label %sw.epilog181.i.i

sw.bb120.i.i:                                     ; preds = %if.end40.i.i
  %638 = xor i1 %cmp44.i.i, true
  %bmAttributes.i947.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %retval.0.i945.i.i, i32 0, i32 3
  %639 = ptrtoint ptr %bmAttributes.i947.i.i to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %bmAttributes.i947.i.i, align 1
  %641 = and i8 %640, 3
  %and.i948.i.i = zext i8 %641 to i32
  %642 = zext i32 %and.i948.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %642, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %and.i948.i.i, label %sw.epilog.i.i [
    i32 0, label %sw.bb120.i.i.proc_submiturb.exit.thread_crit_edge
    i32 1, label %sw.bb120.i.i.proc_submiturb.exit.thread_crit_edge1030
    i32 3, label %sw.bb128.i.i
  ]

sw.bb120.i.i.proc_submiturb.exit.thread_crit_edge1030: ; preds = %sw.bb120.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

sw.bb120.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %sw.bb120.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

sw.bb128.i.i:                                     ; preds = %sw.bb120.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %.842.i.i = zext i1 %638 to i8
  %.lobit.i.i = lshr i8 %585, 7
  %643 = ptrtoint ptr %uurb.i to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 1, ptr %uurb.i, align 4
  br label %interrupt_urb.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb120.i.i
  %644 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %buffer_length.i.i, align 4
  %sub.off.i.i = add i32 %645, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub.off.i.i)
  %646 = icmp ult i32 %sub.off.i.i, 16384
  br i1 %646, label %sw.epilog.i.i.if.then137.i.i_crit_edge, label %lor.lhs.false.i.i

sw.epilog.i.i.if.then137.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then137.i.i

lor.lhs.false.i.i:                                ; preds = %sw.epilog.i.i
  %sub.i.i173 = add i32 %645, 16383
  %div.i.i = sdiv i32 %sub.i.i173, 16384
  %bus.i.i174 = getelementptr inbounds %struct.usb_device, ptr %583, i32 0, i32 12
  %647 = ptrtoint ptr %bus.i.i174 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %bus.i.i174, align 8
  %sg_tablesize.i.i = getelementptr inbounds %struct.usb_bus, ptr %648, i32 0, i32 7
  %649 = ptrtoint ptr %sg_tablesize.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %sg_tablesize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %650)
  %cmp135.i.i = icmp ugt i32 %div.i.i, %650
  br i1 %cmp135.i.i, label %lor.lhs.false.i.i.if.then137.i.i_crit_edge, label %lor.lhs.false.i.i.if.end138.i.i_crit_edge

lor.lhs.false.i.i.if.end138.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138.i.i

lor.lhs.false.i.i.if.then137.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then137.i.i

if.then137.i.i:                                   ; preds = %lor.lhs.false.i.i.if.then137.i.i_crit_edge, %sw.epilog.i.i.if.then137.i.i_crit_edge
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %if.then137.i.i, %lor.lhs.false.i.i.if.end138.i.i_crit_edge
  %num_sgs.0.i.i = phi i32 [ 0, %if.then137.i.i ], [ %div.i.i, %lor.lhs.false.i.i.if.end138.i.i_crit_edge ]
  %streams.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %retval.0.i945.i.i, i32 0, i32 10
  %651 = ptrtoint ptr %streams.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %streams.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %652)
  %tobool139.not.i.i = icmp eq i32 %652, 0
  br i1 %tobool139.not.i.i, label %if.end138.i.i.sw.epilog181.i.i_crit_edge, label %if.then140.i.i

if.end138.i.i.sw.epilog181.i.i_crit_edge:         ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog181.i.i

if.then140.i.i:                                   ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %653 = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 8
  %654 = ptrtoint ptr %653 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %653, align 4
  br label %sw.epilog181.i.i

sw.bb142.i.i:                                     ; preds = %if.end40.i.i
  %bmAttributes.i949.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %retval.0.i945.i.i, i32 0, i32 3
  %656 = ptrtoint ptr %bmAttributes.i949.i.i to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %bmAttributes.i949.i.i, align 1
  %658 = and i8 %657, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %658)
  %cmp.i950.not.i.i = icmp eq i8 %658, 3
  br i1 %cmp.i950.not.i.i, label %sw.bb142.i.i.interrupt_urb.i.i_crit_edge, label %sw.bb142.i.i.proc_submiturb.exit.thread_crit_edge

sw.bb142.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %sw.bb142.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

sw.bb142.i.i.interrupt_urb.i.i_crit_edge:         ; preds = %sw.bb142.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %interrupt_urb.i.i

interrupt_urb.i.i:                                ; preds = %sw.bb142.i.i.interrupt_urb.i.i_crit_edge, %sw.bb128.i.i
  %allow_short.2.i.i = phi i8 [ 0, %sw.bb142.i.i.interrupt_urb.i.i_crit_edge ], [ %.lobit.i.i, %sw.bb128.i.i ]
  %allow_zero.1.i.i = phi i8 [ 0, %sw.bb142.i.i.interrupt_urb.i.i_crit_edge ], [ %.842.i.i, %sw.bb128.i.i ]
  br i1 %cmp44.i.i, label %if.else150.i.i, label %if.then149.i.i

if.then149.i.i:                                   ; preds = %interrupt_urb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %allow_short.2.i.i)
  %extract.t835.i.i = icmp ne i8 %allow_short.2.i.i, 0
  br label %sw.epilog181.i.i

if.else150.i.i:                                   ; preds = %interrupt_urb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %allow_zero.1.i.i)
  %extract.t839.i.i = icmp ne i8 %allow_zero.1.i.i, 0
  br label %sw.epilog181.i.i

sw.bb152.i.i:                                     ; preds = %if.end40.i.i
  %659 = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 8
  %660 = ptrtoint ptr %659 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %659, align 4
  %662 = add i32 %661, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %662)
  %663 = icmp ult i32 %662, -128
  br i1 %663, label %sw.bb152.i.i.proc_submiturb.exit.thread_crit_edge, label %if.end159.i.i

sw.bb152.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %sw.bb152.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end159.i.i:                                    ; preds = %sw.bb152.i.i
  %bmAttributes.i952.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %retval.0.i945.i.i, i32 0, i32 3
  %664 = ptrtoint ptr %bmAttributes.i952.i.i to i32
  call void @__asan_load1_noabort(i32 %664)
  %665 = load i8, ptr %bmAttributes.i952.i.i, align 1
  %666 = and i8 %665, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %666)
  %cmp.i953.not.i.i = icmp eq i8 %666, 1
  br i1 %cmp.i953.not.i.i, label %if.end164.i.i, label %if.end159.i.i.proc_submiturb.exit.thread_crit_edge

if.end159.i.i.proc_submiturb.exit.thread_crit_edge: ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit.thread

if.end164.i.i:                                    ; preds = %if.end159.i.i
  %mul.i.i = mul nuw nsw i32 %661, 12
  %call165.i.i = call ptr @memdup_user(ptr noundef %iso_frame_desc.i, i32 noundef %mul.i.i) #13
  %cmp.i955.i.i = icmp ugt ptr %call165.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i955.i.i, label %if.then167.i.i, label %if.end164.i.i.for.body.i.i176_crit_edge

if.end164.i.i.for.body.i.i176_crit_edge:          ; preds = %if.end164.i.i
  br label %for.body.i.i176

if.then167.i.i:                                   ; preds = %if.end164.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %667 = ptrtoint ptr %call165.i.i to i32
  br label %error.i.i

for.body.i.i176:                                  ; preds = %if.end175.i.i.for.body.i.i176_crit_edge, %if.end164.i.i.for.body.i.i176_crit_edge
  %u.01006.i.i = phi i32 [ %inc.i.i177, %if.end175.i.i.for.body.i.i176_crit_edge ], [ 0, %if.end164.i.i.for.body.i.i176_crit_edge ]
  %totlen.01005.i.i = phi i32 [ %add178.i.i, %if.end175.i.i.for.body.i.i176_crit_edge ], [ 0, %if.end164.i.i.for.body.i.i176_crit_edge ]
  %arrayidx.i.i175 = getelementptr %struct.usbdevfs_iso_packet_desc, ptr %call165.i.i, i32 %u.01006.i.i
  %668 = ptrtoint ptr %arrayidx.i.i175 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %arrayidx.i.i175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %669)
  %cmp172.i.i = icmp ugt i32 %669, 98304
  br i1 %cmp172.i.i, label %for.body.i.i176.error.i.i_crit_edge, label %if.end175.i.i

for.body.i.i176.error.i.i_crit_edge:              ; preds = %for.body.i.i176
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.end175.i.i:                                    ; preds = %for.body.i.i176
  %add178.i.i = add i32 %669, %totlen.01005.i.i
  %inc.i.i177 = add nuw nsw i32 %u.01006.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i177, %661
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end175.i.i.for.body.i.i176_crit_edge

if.end175.i.i.for.body.i.i176_crit_edge:          ; preds = %if.end175.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i176

for.end.i.i:                                      ; preds = %if.end175.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul179.i.i = shl i32 %661, 4
  %670 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %670)
  store i32 %add178.i.i, ptr %buffer_length.i.i, align 4
  br label %sw.epilog181.i.i

sw.epilog181.i.i:                                 ; preds = %for.end.i.i, %if.else150.i.i, %if.then149.i.i, %if.then140.i.i, %if.end138.i.i.sw.epilog181.i.i_crit_edge, %do.end.i.i172, %if.end78.i.i.sw.epilog181.i.i_crit_edge
  %num_sgs.1.i.i = phi i32 [ 0, %for.end.i.i ], [ 0, %if.else150.i.i ], [ 0, %if.then149.i.i ], [ %num_sgs.0.i.i, %if.then140.i.i ], [ %num_sgs.0.i.i, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ 0, %do.end.i.i172 ], [ 0, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %number_of_packets.0.i.i = phi i32 [ %661, %for.end.i.i ], [ 0, %if.else150.i.i ], [ 0, %if.then149.i.i ], [ 0, %if.then140.i.i ], [ 0, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ 0, %do.end.i.i172 ], [ 0, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %stream_id.0.i.i = phi i32 [ 0, %for.end.i.i ], [ 0, %if.else150.i.i ], [ 0, %if.then149.i.i ], [ %655, %if.then140.i.i ], [ 0, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ 0, %do.end.i.i172 ], [ 0, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %is_in.1.off0.i.i = phi i1 [ %cmp44.i.i, %for.end.i.i ], [ true, %if.else150.i.i ], [ false, %if.then149.i.i ], [ %cmp44.i.i, %if.then140.i.i ], [ %cmp44.i.i, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ %626, %do.end.i.i172 ], [ %626, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %allow_short.3.off0.i.i = phi i1 [ false, %for.end.i.i ], [ true, %if.else150.i.i ], [ %extract.t835.i.i, %if.then149.i.i ], [ %cmp44.i.i, %if.then140.i.i ], [ %cmp44.i.i, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ %626, %do.end.i.i172 ], [ %626, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %allow_zero.2.off0.i.i = phi i1 [ false, %for.end.i.i ], [ %extract.t839.i.i, %if.else150.i.i ], [ true, %if.then149.i.i ], [ %638, %if.then140.i.i ], [ %638, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ false, %do.end.i.i172 ], [ false, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %u.1.i.i = phi i32 [ %mul179.i.i, %for.end.i.i ], [ 0, %if.else150.i.i ], [ 0, %if.then149.i.i ], [ 0, %if.then140.i.i ], [ 0, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ 8, %do.end.i.i172 ], [ 8, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %dr.0.i.i = phi ptr [ null, %for.end.i.i ], [ null, %if.else150.i.i ], [ null, %if.then149.i.i ], [ null, %if.then140.i.i ], [ null, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ %call7.i.i.i, %do.end.i.i172 ], [ %call7.i.i.i, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %isopkt.0.i.i = phi ptr [ %call165.i.i, %for.end.i.i ], [ null, %if.else150.i.i ], [ null, %if.then149.i.i ], [ null, %if.then140.i.i ], [ null, %if.end138.i.i.sw.epilog181.i.i_crit_edge ], [ null, %do.end.i.i172 ], [ null, %if.end78.i.i.sw.epilog181.i.i_crit_edge ]
  %671 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %buffer_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %672)
  %cmp183.i.i = icmp sgt i32 %672, 0
  br i1 %cmp183.i.i, label %land.lhs.true185.i.i, label %sw.epilog181.i.i.if.end192.i.i_crit_edge

sw.epilog181.i.i.if.end192.i.i_crit_edge:         ; preds = %sw.epilog181.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192.i.i

land.lhs.true185.i.i:                             ; preds = %sw.epilog181.i.i
  %buffer186.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 4
  %673 = ptrtoint ptr %buffer186.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %buffer186.i.i, align 4
  %675 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %674, i32 %672, i32 -1226833920) #17, !srcloc !311
  %asmresult.i.i = extractvalue { i32, i32 } %675, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp189.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp189.i.i, label %land.lhs.true185.i.i.if.end192.i.i_crit_edge, label %land.lhs.true185.i.i.error.i.i_crit_edge

land.lhs.true185.i.i.error.i.i_crit_edge:         ; preds = %land.lhs.true185.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

land.lhs.true185.i.i.if.end192.i.i_crit_edge:     ; preds = %land.lhs.true185.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192.i.i

if.end192.i.i:                                    ; preds = %land.lhs.true185.i.i.if.end192.i.i_crit_edge, %sw.epilog181.i.i.if.end192.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %676 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i669 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %676, i32 noundef 3520, i32 noundef 60) #18
  %tobool.not.i670 = icmp eq ptr %call7.i.i.i669, null
  br i1 %tobool.not.i670, label %if.end192.i.i.error.i.i_crit_edge, label %if.end.i673

if.end192.i.i.error.i.i_crit_edge:                ; preds = %if.end192.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.end.i673:                                      ; preds = %if.end192.i.i
  %call1.i671 = call ptr @usb_alloc_urb(i32 noundef %number_of_packets.0.i.i, i32 noundef 3264) #13
  %urb.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 9
  %677 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store ptr %call1.i671, ptr %urb.i, align 8
  %tobool3.not.i672 = icmp eq ptr %call1.i671, null
  br i1 %tobool3.not.i672, label %if.then4.i, label %if.end196.i.i

if.then4.i:                                       ; preds = %if.end.i673
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i669) #13
  br label %error.i.i

if.end196.i.i:                                    ; preds = %if.end.i673
  %buffer.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 4
  %678 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %buffer.i, align 4
  %680 = ptrtoint ptr %679 to i32
  %lock.i658 = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 3
  %call2.i659 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i658) #13
  %memory_list.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 6
  %681 = ptrtoint ptr %memory_list.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %iter.044.i = load ptr, ptr %memory_list.i, align 4
  %cmp7.not45.i = icmp eq ptr %iter.044.i, %memory_list.i
  br i1 %cmp7.not45.i, label %if.end196.i.i.if.end204.i.i.thread_crit_edge, label %if.end196.i.i.for.body.i660_crit_edge

if.end196.i.i.for.body.i660_crit_edge:            ; preds = %if.end196.i.i
  br label %for.body.i660

if.end196.i.i.if.end204.i.i.thread_crit_edge:     ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204.i.i.thread

for.body.i660:                                    ; preds = %for.inc.i667.for.body.i660_crit_edge, %if.end196.i.i.for.body.i660_crit_edge
  %iter.046.i = phi ptr [ %iter.0.i, %for.inc.i667.for.body.i660_crit_edge ], [ %iter.044.i, %if.end196.i.i.for.body.i660_crit_edge ]
  %vm_start.i = getelementptr inbounds %struct.usb_memory, ptr %iter.046.i, i32 0, i32 6
  %682 = ptrtoint ptr %vm_start.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %vm_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %683, i32 %680)
  %cmp9.not.i = icmp ugt i32 %683, %680
  br i1 %cmp9.not.i, label %for.body.i660.for.inc.i667_crit_edge, label %land.lhs.true.i662

for.body.i660.for.inc.i667_crit_edge:             ; preds = %for.body.i660
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i667

land.lhs.true.i662:                               ; preds = %for.body.i660
  %size.i = getelementptr inbounds %struct.usb_memory, ptr %iter.046.i, i32 0, i32 3
  %684 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %size.i, align 4
  %add.i661 = add i32 %685, %683
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i661, i32 %680)
  %cmp12.i = icmp ugt i32 %add.i661, %680
  br i1 %cmp12.i, label %if.then.i664, label %land.lhs.true.i662.for.inc.i667_crit_edge

land.lhs.true.i662.for.inc.i667_crit_edge:        ; preds = %land.lhs.true.i662
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i667

if.then.i664:                                     ; preds = %land.lhs.true.i662
  %686 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %buffer_length.i.i, align 4
  %sub.i663 = sub i32 %add.i661, %680
  call void @__sanitizer_cov_trace_cmp4(i32 %687, i32 %sub.i663)
  %cmp17.i = icmp ugt i32 %687, %sub.i663
  br i1 %cmp17.i, label %find_memory_area.exit.thread814, label %find_memory_area.exit

find_memory_area.exit.thread814:                  ; preds = %if.then.i664
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i658, i32 noundef %call2.i659) #13
  %usbm.i.i816 = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 10
  %688 = ptrtoint ptr %usbm.i.i816 to i32
  call void @__asan_store4_noabort(i32 %688)
  store ptr inttoptr (i32 -22 to ptr), ptr %usbm.i.i816, align 4
  br label %if.then200.i.i

for.inc.i667:                                     ; preds = %land.lhs.true.i662.for.inc.i667_crit_edge, %for.body.i660.for.inc.i667_crit_edge
  %689 = ptrtoint ptr %iter.046.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %iter.0.i = load ptr, ptr %iter.046.i, align 4
  %cmp7.not.i = icmp eq ptr %iter.0.i, %memory_list.i
  br i1 %cmp7.not.i, label %for.inc.i667.if.end204.i.i.thread_crit_edge, label %for.inc.i667.for.body.i660_crit_edge

for.inc.i667.for.body.i660_crit_edge:             ; preds = %for.inc.i667
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i660

for.inc.i667.if.end204.i.i.thread_crit_edge:      ; preds = %for.inc.i667
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204.i.i.thread

if.end204.i.i.thread:                             ; preds = %for.inc.i667.if.end204.i.i.thread_crit_edge, %if.end196.i.i.if.end204.i.i.thread_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i658, i32 noundef %call2.i659) #13
  %usbm.i.i810 = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 10
  %690 = ptrtoint ptr %usbm.i.i810 to i32
  call void @__asan_store4_noabort(i32 %690)
  store ptr null, ptr %usbm.i.i810, align 4
  br label %cond.false.i.i

find_memory_area.exit:                            ; preds = %if.then.i664
  %urb_use_count.i = getelementptr inbounds %struct.usb_memory, ptr %iter.046.i, i32 0, i32 2
  %691 = ptrtoint ptr %urb_use_count.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %urb_use_count.i, align 4
  %inc.i665 = add i32 %692, 1
  store i32 %inc.i665, ptr %urb_use_count.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i658, i32 noundef %call2.i659) #13
  %usbm.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 10
  %693 = ptrtoint ptr %usbm.i.i to i32
  call void @__asan_store4_noabort(i32 %693)
  store ptr %iter.046.i, ptr %usbm.i.i, align 4
  %cmp.i956.i.i = icmp ugt ptr %iter.046.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i956.i.i, label %find_memory_area.exit.if.then200.i.i_crit_edge, label %if.end204.i.i

find_memory_area.exit.if.then200.i.i_crit_edge:   ; preds = %find_memory_area.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then200.i.i

if.then200.i.i:                                   ; preds = %find_memory_area.exit.if.then200.i.i_crit_edge, %find_memory_area.exit.thread814
  %usbm.i.i819 = phi ptr [ %usbm.i.i816, %find_memory_area.exit.thread814 ], [ %usbm.i.i, %find_memory_area.exit.if.then200.i.i_crit_edge ]
  %usbm.0.i818 = phi ptr [ inttoptr (i32 -22 to ptr), %find_memory_area.exit.thread814 ], [ %iter.046.i, %find_memory_area.exit.if.then200.i.i_crit_edge ]
  %694 = ptrtoint ptr %usbm.0.i818 to i32
  %695 = ptrtoint ptr %usbm.i.i819 to i32
  call void @__asan_store4_noabort(i32 %695)
  store ptr null, ptr %usbm.i.i819, align 4
  br label %error.i.i

if.end204.i.i:                                    ; preds = %find_memory_area.exit
  %tobool206.not.i.i = icmp eq ptr %iter.046.i, null
  br i1 %tobool206.not.i.i, label %if.end204.i.i.cond.false.i.i_crit_edge, label %if.end204.i.i.cond.end.i.i_crit_edge

if.end204.i.i.cond.end.i.i_crit_edge:             ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

if.end204.i.i.cond.false.i.i_crit_edge:           ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i

cond.false.i.i:                                   ; preds = %if.end204.i.i.cond.false.i.i_crit_edge, %if.end204.i.i.thread
  %usbm.i.i813825 = phi ptr [ %usbm.i.i810, %if.end204.i.i.thread ], [ %usbm.i.i, %if.end204.i.i.cond.false.i.i_crit_edge ]
  %696 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %buffer_length.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end204.i.i.cond.end.i.i_crit_edge
  %spec.select843.i.i826 = phi i32 [ %num_sgs.1.i.i, %cond.false.i.i ], [ 0, %if.end204.i.i.cond.end.i.i_crit_edge ]
  %usbm.i.i813824 = phi ptr [ %usbm.i.i813825, %cond.false.i.i ], [ %usbm.i.i, %if.end204.i.i.cond.end.i.i_crit_edge ]
  %cond.i.i = phi i32 [ %697, %cond.false.i.i ], [ 0, %if.end204.i.i.cond.end.i.i_crit_edge ]
  %mul213.i.i = mul nsw i32 %spec.select843.i.i826, 20
  %add212.i.i = add i32 %u.1.i.i, 184
  %add214.i.i = add i32 %add212.i.i, %mul213.i.i
  %add215.i.i = add i32 %add214.i.i, %cond.i.i
  %conv216.i.i = zext i32 %add215.i.i to i64
  %call217.i.i = call fastcc i32 @usbfs_increase_memory_usage(i64 noundef %conv216.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217.i.i)
  %tobool218.not.i.i = icmp eq i32 %call217.i.i, 0
  br i1 %tobool218.not.i.i, label %if.end220.i.i, label %cond.end.i.i.error.i.i_crit_edge

cond.end.i.i.error.i.i_crit_edge:                 ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.end220.i.i:                                    ; preds = %cond.end.i.i
  %mem_usage.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 11
  %698 = ptrtoint ptr %mem_usage.i.i to i32
  call void @__asan_store4_noabort(i32 %698)
  store i32 %add215.i.i, ptr %mem_usage.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select843.i.i826)
  %tobool221.not.i.i = icmp eq i32 %spec.select843.i.i826, 0
  br i1 %tobool221.not.i.i, label %if.else269.i.i, label %if.then222.i.i

if.then222.i.i:                                   ; preds = %if.end220.i.i
  %699 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select843.i.i826, i32 20) #13
  %700 = extractvalue { i32, i1 } %699, 1
  br i1 %700, label %if.then222.i.i.kmalloc_array.exit.i.i_crit_edge, label %if.end7.i.i.i, !prof !312

if.then222.i.i.kmalloc_array.exit.i.i_crit_edge:  ; preds = %if.then222.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc_array.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.then222.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %701 = extractvalue { i32, i1 } %699, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %701, i32 noundef 11456) #19
  br label %kmalloc_array.exit.i.i

kmalloc_array.exit.i.i:                           ; preds = %if.end7.i.i.i, %if.then222.i.i.kmalloc_array.exit.i.i_crit_edge
  %retval.0.i964.i.i = phi ptr [ %call8.i.i.i, %if.end7.i.i.i ], [ null, %if.then222.i.i.kmalloc_array.exit.i.i_crit_edge ]
  %702 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %urb.i, align 8
  %sg.i.i = getelementptr inbounds %struct.urb, ptr %703, i32 0, i32 16
  %704 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %704)
  store ptr %retval.0.i964.i.i, ptr %sg.i.i, align 4
  %705 = load ptr, ptr %urb.i, align 8
  %sg225.i.i = getelementptr inbounds %struct.urb, ptr %705, i32 0, i32 16
  %706 = ptrtoint ptr %sg225.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %sg225.i.i, align 4
  %tobool226.not.i.i = icmp eq ptr %707, null
  br i1 %tobool226.not.i.i, label %kmalloc_array.exit.i.i.error.i.i_crit_edge, label %if.end228.i.i

kmalloc_array.exit.i.i.error.i.i_crit_edge:       ; preds = %kmalloc_array.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.end228.i.i:                                    ; preds = %kmalloc_array.exit.i.i
  %num_sgs230.i.i = getelementptr inbounds %struct.urb, ptr %705, i32 0, i32 18
  %708 = ptrtoint ptr %num_sgs230.i.i to i32
  call void @__asan_store4_noabort(i32 %708)
  store i32 %spec.select843.i.i826, ptr %num_sgs230.i.i, align 4
  %709 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %urb.i, align 8
  %sg232.i.i = getelementptr inbounds %struct.urb, ptr %710, i32 0, i32 16
  %711 = ptrtoint ptr %sg232.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %sg232.i.i, align 4
  %num_sgs234.i.i = getelementptr inbounds %struct.urb, ptr %710, i32 0, i32 18
  %713 = ptrtoint ptr %num_sgs234.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %num_sgs234.i.i, align 4
  call void @sg_init_table(ptr noundef %712, i32 noundef %714) #13
  %715 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %urb.i, align 8
  %num_sgs2381008.i.i = getelementptr inbounds %struct.urb, ptr %716, i32 0, i32 18
  %717 = ptrtoint ptr %num_sgs2381008.i.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %num_sgs2381008.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %718)
  %cmp2391009.i.i = icmp sgt i32 %718, 0
  br i1 %cmp2391009.i.i, label %for.body241.lr.ph.i.i, label %if.end228.i.i.if.end316.i.i_crit_edge

if.end228.i.i.if.end316.i.i_crit_edge:            ; preds = %if.end228.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end316.i.i

for.body241.lr.ph.i.i:                            ; preds = %if.end228.i.i
  %719 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %buffer_length.i.i, align 4
  br label %for.body241.i.i

for.body241.i.i:                                  ; preds = %if.end264.i.i.for.body241.i.i_crit_edge, %for.body241.lr.ph.i.i
  %totlen.11011.i.i = phi i32 [ %720, %for.body241.lr.ph.i.i ], [ %sub265.i.i, %if.end264.i.i.for.body241.i.i_crit_edge ]
  %i.01010.i.i = phi i32 [ 0, %for.body241.lr.ph.i.i ], [ %inc267.i.i, %if.end264.i.i.for.body241.i.i_crit_edge ]
  %721 = call i32 @llvm.umin.i32(i32 %totlen.11011.i.i, i32 16384) #13
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %721, i32 noundef 3264) #19
  %tobool249.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool249.not.i.i, label %for.body241.i.i.error.i.i_crit_edge, label %if.end251.i.i

for.body241.i.i.error.i.i_crit_edge:              ; preds = %for.body241.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.end251.i.i:                                    ; preds = %for.body241.i.i
  %722 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %urb.i, align 8
  %sg253.i.i = getelementptr inbounds %struct.urb, ptr %723, i32 0, i32 16
  %724 = ptrtoint ptr %sg253.i.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %sg253.i.i, align 4
  %arrayidx254.i.i = getelementptr %struct.scatterlist, ptr %725, i32 %i.01010.i.i
  %726 = ptrtoint ptr %call9.i.i.i to i32
  %cmp.i648 = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i648, label %land.lhs.true.i649, label %if.end251.i.i.do.body5.i_crit_edge, !prof !300

if.end251.i.i.do.body5.i_crit_edge:               ; preds = %if.end251.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i

land.lhs.true.i649:                               ; preds = %if.end251.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %727 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %727, %call9.i.i.i
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i649.do.body5.i_crit_edge, !prof !300

land.lhs.true.i649.do.body5.i_crit_edge:          ; preds = %land.lhs.true.i649
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i649
  %sub.i = add i32 %726, 1073741824
  %shr.i650 = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %728 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %728, %shr.i650
  %call.i651 = call i32 @pfn_valid(i32 noundef %add.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i651)
  %tobool.i = icmp eq i32 %call.i651, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !312

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i649.do.body5.i_crit_edge, %if.end251.i.i.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #13, !srcloc !313
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %729 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %729, i32 %shr.i650
  %730 = ptrtoint ptr %arrayidx254.i.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %arrayidx254.i.i, align 4
  %732 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i652 = and i32 %732, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i652)
  %tobool.not.i.i.i653 = icmp eq i32 %and2.i.i.i652, 0
  br i1 %tobool.not.i.i.i653, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !300

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !314
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i654 = and i32 %731, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i654)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i654, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !300

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !315
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i655 = and i32 %726, 3968
  %and.i.i.i656 = and i32 %731, 3
  %or.i.i.i657 = or i32 %and.i.i.i656, %732
  %733 = ptrtoint ptr %arrayidx254.i.i to i32
  call void @__asan_store4_noabort(i32 %733)
  store i32 %or.i.i.i657, ptr %arrayidx254.i.i, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %725, i32 %i.01010.i.i, i32 1
  %734 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %734)
  store i32 %and.i655, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %725, i32 %i.01010.i.i, i32 2
  %735 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %735)
  store i32 %721, ptr %length.i.i, align 4
  br i1 %is_in.1.off0.i.i, label %sg_set_buf.exit.if.end264.i.i_crit_edge, label %if.then256.i.i

sg_set_buf.exit.if.end264.i.i_crit_edge:          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end264.i.i

if.then256.i.i:                                   ; preds = %sg_set_buf.exit
  %736 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %buffer.i, align 4
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %721, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i858.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i858.i.i, label %if.then256.i.i.if.end.i.i872.i.i_crit_edge, label %land.lhs.true.i.i862.i.i

if.then256.i.i.if.end.i.i872.i.i_crit_edge:       ; preds = %if.then256.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i872.i.i

land.lhs.true.i.i862.i.i:                         ; preds = %if.then256.i.i
  %738 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %737, i32 %721, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i860.i.i = extractvalue { i32, i32 } %738, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i860.i.i)
  %cmp.i6.i861.i.i = icmp eq i32 %asmresult.i.i860.i.i, 0
  br i1 %cmp.i6.i861.i.i, label %if.then.i7.i869.i.i, label %land.lhs.true.i.i862.i.i.if.end.i.i872.i.i_crit_edge, !prof !300

land.lhs.true.i.i862.i.i.if.end.i.i872.i.i_crit_edge: ; preds = %land.lhs.true.i.i862.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i872.i.i

if.then.i7.i869.i.i:                              ; preds = %land.lhs.true.i.i862.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i863.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef %721) #13
  %739 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i864.i.i = and i32 %739, -16384
  %740 = inttoptr i32 %and.i.i.i.i.i.i864.i.i to ptr
  %cpu_domain.i.i.i.i.i865.i.i = getelementptr inbounds %struct.thread_info, ptr %740, i32 0, i32 4
  %741 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i865.i.i) #8, !srcloc !304
  %and.i.i.i.i866.i.i = and i32 %741, -13
  %or.i.i.i.i867.i.i = or i32 %and.i.i.i.i866.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i867.i.i) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i868.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i.i, ptr noundef %737, i32 noundef %721) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %741) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  br label %if.end.i.i872.i.i

if.end.i.i872.i.i:                                ; preds = %if.then.i7.i869.i.i, %land.lhs.true.i.i862.i.i.if.end.i.i872.i.i_crit_edge, %if.then256.i.i.if.end.i.i872.i.i_crit_edge
  %res.0.i.i870.i.i = phi i32 [ %721, %if.then256.i.i.if.end.i.i872.i.i_crit_edge ], [ %call1.i.i.i868.i.i, %if.then.i7.i869.i.i ], [ %721, %land.lhs.true.i.i862.i.i.if.end.i.i872.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i870.i.i)
  %tobool4.not.i.i871.i.i = icmp eq i32 %res.0.i.i870.i.i, 0
  br i1 %tobool4.not.i.i871.i.i, label %if.end261.i.i, label %if.then11.i.i875.i.i, !prof !300

if.then11.i.i875.i.i:                             ; preds = %if.end.i.i872.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i873.i.i = sub i32 %721, %res.0.i.i870.i.i
  %add.ptr.i.i874.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %sub.i.i873.i.i
  %742 = call ptr @memset(ptr %add.ptr.i.i874.i.i, i32 0, i32 %res.0.i.i870.i.i)
  br label %error.i.i

if.end261.i.i:                                    ; preds = %if.end.i.i872.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %743 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %buffer.i, align 4
  %add.ptr263.i.i = getelementptr i8, ptr %744, i32 %721
  store ptr %add.ptr263.i.i, ptr %buffer.i, align 4
  br label %if.end264.i.i

if.end264.i.i:                                    ; preds = %if.end261.i.i, %sg_set_buf.exit.if.end264.i.i_crit_edge
  %sub265.i.i = sub i32 %totlen.11011.i.i, %721
  %inc267.i.i = add nuw nsw i32 %i.01010.i.i, 1
  %745 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %urb.i, align 8
  %num_sgs238.i.i = getelementptr inbounds %struct.urb, ptr %746, i32 0, i32 18
  %747 = ptrtoint ptr %num_sgs238.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %num_sgs238.i.i, align 4
  %cmp239.i.i = icmp slt i32 %inc267.i.i, %748
  br i1 %cmp239.i.i, label %if.end264.i.i.for.body241.i.i_crit_edge, label %if.end264.i.i.if.end316.i.i_crit_edge

if.end264.i.i.if.end316.i.i_crit_edge:            ; preds = %if.end264.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end316.i.i

if.end264.i.i.for.body241.i.i_crit_edge:          ; preds = %if.end264.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body241.i.i

if.else269.i.i:                                   ; preds = %if.end220.i.i
  %749 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load i32, ptr %buffer_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %750)
  %cmp271.i.i = icmp sgt i32 %750, 0
  br i1 %cmp271.i.i, label %if.then273.i.i, label %if.else269.i.i.if.end316.i.i_crit_edge

if.else269.i.i.if.end316.i.i_crit_edge:           ; preds = %if.else269.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end316.i.i

if.then273.i.i:                                   ; preds = %if.else269.i.i
  %751 = ptrtoint ptr %usbm.i.i813824 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %usbm.i.i813824, align 4
  %tobool275.not.i.i = icmp eq ptr %752, null
  br i1 %tobool275.not.i.i, label %if.end8.i905.i.i, label %if.then276.i.i

if.then276.i.i:                                   ; preds = %if.then273.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %753 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %buffer.i, align 4
  %755 = ptrtoint ptr %754 to i32
  %mem.i.i = getelementptr inbounds %struct.usb_memory, ptr %752, i32 0, i32 4
  %756 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %mem.i.i, align 4
  %vm_start.i.i = getelementptr inbounds %struct.usb_memory, ptr %752, i32 0, i32 6
  %758 = ptrtoint ptr %vm_start.i.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %vm_start.i.i, align 4
  %sub280.i.i = sub i32 %755, %759
  %add.ptr281.i.i = getelementptr i8, ptr %757, i32 %sub280.i.i
  %760 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %urb.i, align 8
  %transfer_buffer.i.i = getelementptr inbounds %struct.urb, ptr %761, i32 0, i32 14
  %762 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %762)
  store ptr %add.ptr281.i.i, ptr %transfer_buffer.i.i, align 4
  br label %if.end316.i.i

if.end8.i905.i.i:                                 ; preds = %if.then273.i.i
  %call9.i904.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %750, i32 noundef 11456) #19
  %763 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %urb.i, align 8
  %transfer_buffer287.i.i = getelementptr inbounds %struct.urb, ptr %764, i32 0, i32 14
  %765 = ptrtoint ptr %transfer_buffer287.i.i to i32
  call void @__asan_store4_noabort(i32 %765)
  store ptr %call9.i904.i.i, ptr %transfer_buffer287.i.i, align 4
  %766 = load ptr, ptr %urb.i, align 8
  %transfer_buffer289.i.i = getelementptr inbounds %struct.urb, ptr %766, i32 0, i32 14
  %767 = ptrtoint ptr %transfer_buffer289.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %transfer_buffer289.i.i, align 4
  %tobool290.not.i.i = icmp eq ptr %768, null
  br i1 %tobool290.not.i.i, label %if.end8.i905.i.i.error.i.i_crit_edge, label %if.end292.i.i

if.end8.i905.i.i.error.i.i_crit_edge:             ; preds = %if.end8.i905.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.end292.i.i:                                    ; preds = %if.end8.i905.i.i
  br i1 %is_in.1.off0.i.i, label %if.else303.i.i, label %if.then294.i.i

if.then294.i.i:                                   ; preds = %if.end292.i.i
  %769 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %buffer.i, align 4
  %771 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %buffer_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %772)
  %cmp9.i.i.i.i = icmp slt i32 %772, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i915.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.then294.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.error.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !300

land.rhs16.i.i.i.i.error.i.i_crit_edge:           ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %error.i.i

if.then.i.i.i915.i.i:                             ; preds = %if.then294.i.i
  call void @__check_object_size(ptr noundef nonnull %768, i32 noundef %772, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i916.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i916.i.i, label %if.then.i.i.i915.i.i.if.end.i.i930.i.i_crit_edge, label %land.lhs.true.i.i920.i.i

if.then.i.i.i915.i.i.if.end.i.i930.i.i_crit_edge: ; preds = %if.then.i.i.i915.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i930.i.i

land.lhs.true.i.i920.i.i:                         ; preds = %if.then.i.i.i915.i.i
  %773 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %770, i32 %772, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i918.i.i = extractvalue { i32, i32 } %773, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i918.i.i)
  %cmp.i6.i919.i.i = icmp eq i32 %asmresult.i.i918.i.i, 0
  br i1 %cmp.i6.i919.i.i, label %if.then.i7.i927.i.i, label %land.lhs.true.i.i920.i.i.if.end.i.i930.i.i_crit_edge, !prof !300

land.lhs.true.i.i920.i.i.if.end.i.i930.i.i_crit_edge: ; preds = %land.lhs.true.i.i920.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i930.i.i

if.then.i7.i927.i.i:                              ; preds = %land.lhs.true.i.i920.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i921.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %768, i32 noundef %772) #13
  %774 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i922.i.i = and i32 %774, -16384
  %775 = inttoptr i32 %and.i.i.i.i.i.i922.i.i to ptr
  %cpu_domain.i.i.i.i.i923.i.i = getelementptr inbounds %struct.thread_info, ptr %775, i32 0, i32 4
  %776 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i923.i.i) #8, !srcloc !304
  %and.i.i.i.i924.i.i = and i32 %776, -13
  %or.i.i.i.i925.i.i = or i32 %and.i.i.i.i924.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i925.i.i) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i926.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %768, ptr noundef %770, i32 noundef %772) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %776) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  br label %if.end.i.i930.i.i

if.end.i.i930.i.i:                                ; preds = %if.then.i7.i927.i.i, %land.lhs.true.i.i920.i.i.if.end.i.i930.i.i_crit_edge, %if.then.i.i.i915.i.i.if.end.i.i930.i.i_crit_edge
  %res.0.i.i928.i.i = phi i32 [ %772, %if.then.i.i.i915.i.i.if.end.i.i930.i.i_crit_edge ], [ %call1.i.i.i926.i.i, %if.then.i7.i927.i.i ], [ %772, %land.lhs.true.i.i920.i.i.if.end.i.i930.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i928.i.i)
  %tobool4.not.i.i929.i.i = icmp eq i32 %res.0.i.i928.i.i, 0
  br i1 %tobool4.not.i.i929.i.i, label %if.end.i.i930.i.i.if.end316.i.i_crit_edge, label %if.then11.i.i933.i.i, !prof !300

if.end.i.i930.i.i.if.end316.i.i_crit_edge:        ; preds = %if.end.i.i930.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end316.i.i

if.then11.i.i933.i.i:                             ; preds = %if.end.i.i930.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i931.i.i = sub i32 %772, %res.0.i.i928.i.i
  %add.ptr.i.i932.i.i = getelementptr i8, ptr %768, i32 %sub.i.i931.i.i
  %777 = call ptr @memset(ptr %add.ptr.i.i932.i.i, i32 0, i32 %res.0.i.i928.i.i)
  br label %error.i.i

if.else303.i.i:                                   ; preds = %if.end292.i.i
  %778 = ptrtoint ptr %uurb.i to i32
  call void @__asan_load1_noabort(i32 %778)
  %779 = load i8, ptr %uurb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %779)
  %cmp306.i.i = icmp eq i8 %779, 0
  br i1 %cmp306.i.i, label %if.then308.i.i, label %if.else303.i.i.if.end316.i.i_crit_edge

if.else303.i.i.if.end316.i.i_crit_edge:           ; preds = %if.else303.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end316.i.i

if.then308.i.i:                                   ; preds = %if.else303.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %780 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %buffer_length.i.i, align 4
  %782 = call ptr @memset(ptr %768, i32 0, i32 %781)
  br label %if.end316.i.i

if.end316.i.i:                                    ; preds = %if.then308.i.i, %if.else303.i.i.if.end316.i.i_crit_edge, %if.end.i.i930.i.i.if.end316.i.i_crit_edge, %if.then276.i.i, %if.else269.i.i.if.end316.i.i_crit_edge, %if.end264.i.i.if.end316.i.i_crit_edge, %if.end228.i.i.if.end316.i.i_crit_edge
  %783 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %dev1.i, align 4
  %785 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %urb.i, align 8
  %dev319.i.i = getelementptr inbounds %struct.urb, ptr %786, i32 0, i32 8
  %787 = ptrtoint ptr %dev319.i.i to i32
  call void @__asan_store4_noabort(i32 %787)
  store ptr %784, ptr %dev319.i.i, align 4
  %788 = ptrtoint ptr %uurb.i to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %uurb.i, align 4
  %conv321.i.i = zext i8 %789 to i32
  %shl.i.i = shl i32 %conv321.i.i, 30
  %790 = load ptr, ptr %dev1.i, align 4
  %791 = ptrtoint ptr %endpoint36.i.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %endpoint36.i.i, align 1
  %793 = and i8 %792, 15
  %and325.i.i = zext i8 %793 to i32
  %794 = ptrtoint ptr %790 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %790, align 8
  %shl.i.i.i = shl i32 %795, 8
  %shl1.i.i.i = shl nuw nsw i32 %and325.i.i, 15
  %796 = and i8 %792, -128
  %and330.i.i = zext i8 %796 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %shl.i.i
  %or327.i.i = or i32 %or.i.i.i, %and330.i.i
  %or331.i.i = or i32 %or327.i.i, %shl1.i.i.i
  %797 = load ptr, ptr %urb.i, align 8
  %pipe.i.i = getelementptr inbounds %struct.urb, ptr %797, i32 0, i32 10
  %798 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 %or331.i.i, ptr %pipe.i.i, align 4
  %cond335.i.i = select i1 %is_in.1.off0.i.i, i32 512, i32 0
  %799 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %flags.i.i, align 4
  %and337.i.i = and i32 %800, 2
  %801 = or i32 %and337.i.i, %cond335.i.i
  %and346.i.i = and i32 %800, 1
  %802 = select i1 %allow_short.3.off0.i.i, i32 %and346.i.i, i32 0
  %and355.i.i = and i32 %800, 64
  %803 = select i1 %allow_zero.2.off0.i.i, i32 %and355.i.i, i32 0
  %and361.i.i = and i32 %800, 128
  %u.3.i.i = or i32 %801, %and361.i.i
  %u.4.i.i = or i32 %u.3.i.i, %802
  %804 = or i32 %u.4.i.i, %803
  %805 = load ptr, ptr %urb.i, align 8
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %805, i32 0, i32 13
  %806 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %806)
  store i32 %804, ptr %transfer_flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and346.i.i)
  %tobool371.not.i.i = icmp eq i32 %and346.i.i, 0
  %or.cond.i = select i1 %allow_short.3.off0.i.i, i1 true, i1 %tobool371.not.i.i
  br i1 %or.cond.i, label %if.end316.i.i.if.end378.i.i_crit_edge, label %do.end375.i.i

if.end316.i.i.if.end378.i.i_crit_edge:            ; preds = %if.end316.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end378.i.i

do.end375.i.i:                                    ; preds = %if.end316.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %807 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %dev1.i, align 4
  %dev377.i.i = getelementptr inbounds %struct.usb_device, ptr %808, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev377.i.i, ptr noundef nonnull @.str.118) #16
  br label %if.end378.i.i

if.end378.i.i:                                    ; preds = %do.end375.i.i, %if.end316.i.i.if.end378.i.i_crit_edge
  br i1 %allow_zero.2.off0.i.i, label %if.end378.i.i.if.end390.i.i_crit_edge, label %land.lhs.true380.i.i

if.end378.i.i.if.end390.i.i_crit_edge:            ; preds = %if.end378.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390.i.i

land.lhs.true380.i.i:                             ; preds = %if.end378.i.i
  %809 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load i32, ptr %flags.i.i, align 4
  %and382.i.i = and i32 %810, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382.i.i)
  %tobool383.not.i.i = icmp eq i32 %and382.i.i, 0
  br i1 %tobool383.not.i.i, label %land.lhs.true380.i.i.if.end390.i.i_crit_edge, label %do.end387.i.i

land.lhs.true380.i.i.if.end390.i.i_crit_edge:     ; preds = %land.lhs.true380.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390.i.i

do.end387.i.i:                                    ; preds = %land.lhs.true380.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %811 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %dev1.i, align 4
  %dev389.i.i = getelementptr inbounds %struct.usb_device, ptr %812, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev389.i.i, ptr noundef nonnull @.str.121) #16
  br label %if.end390.i.i

if.end390.i.i:                                    ; preds = %do.end387.i.i, %land.lhs.true380.i.i.if.end390.i.i_crit_edge, %if.end378.i.i.if.end390.i.i_crit_edge
  %813 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %buffer_length.i.i, align 4
  %815 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %urb.i, align 8
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %816, i32 0, i32 19
  %817 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 %814, ptr %transfer_buffer_length.i.i, align 4
  %818 = load ptr, ptr %urb.i, align 8
  %setup_packet.i.i = getelementptr inbounds %struct.urb, ptr %818, i32 0, i32 21
  %819 = ptrtoint ptr %setup_packet.i.i to i32
  call void @__asan_store4_noabort(i32 %819)
  store ptr %dr.0.i.i, ptr %setup_packet.i.i, align 4
  %start_frame.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 7
  %820 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load i32, ptr %start_frame.i.i, align 4
  %822 = load ptr, ptr %urb.i, align 8
  %start_frame395.i.i = getelementptr inbounds %struct.urb, ptr %822, i32 0, i32 23
  %823 = ptrtoint ptr %start_frame395.i.i to i32
  call void @__asan_store4_noabort(i32 %823)
  store i32 %821, ptr %start_frame395.i.i, align 4
  %824 = load ptr, ptr %urb.i, align 8
  %number_of_packets397.i.i = getelementptr inbounds %struct.urb, ptr %824, i32 0, i32 24
  %825 = ptrtoint ptr %number_of_packets397.i.i to i32
  call void @__asan_store4_noabort(i32 %825)
  store i32 %number_of_packets.0.i.i, ptr %number_of_packets397.i.i, align 4
  %826 = load ptr, ptr %urb.i, align 8
  %stream_id399.i.i = getelementptr inbounds %struct.urb, ptr %826, i32 0, i32 11
  %827 = ptrtoint ptr %stream_id399.i.i to i32
  call void @__asan_store4_noabort(i32 %827)
  store i32 %stream_id.0.i.i, ptr %stream_id399.i.i, align 4
  %bInterval.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %retval.0.i945.i.i, i32 0, i32 5
  %828 = ptrtoint ptr %bInterval.i.i to i32
  call void @__asan_load1_noabort(i32 %828)
  %829 = load i8, ptr %bInterval.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %829)
  %tobool401.not.i.i = icmp eq i8 %829, 0
  br i1 %tobool401.not.i.i, label %if.end390.i.i.if.end437.i.i_crit_edge, label %if.then402.i.i

if.end390.i.i.if.end437.i.i_crit_edge:            ; preds = %if.end390.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end437.i.i

if.then402.i.i:                                   ; preds = %if.end390.i.i
  %830 = ptrtoint ptr %uurb.i to i32
  call void @__asan_load1_noabort(i32 %830)
  %831 = load i8, ptr %uurb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %831)
  %cmp405.i.i = icmp eq i8 %831, 0
  br i1 %cmp405.i.i, label %if.then402.i.i.if.then416.i.i_crit_edge, label %lor.lhs.false407.i.i

if.then402.i.i.if.then416.i.i_crit_edge:          ; preds = %if.then402.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then416.i.i

lor.lhs.false407.i.i:                             ; preds = %if.then402.i.i
  %832 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %dev1.i, align 4
  %speed.i.i180 = getelementptr inbounds %struct.usb_device, ptr %833, i32 0, i32 4
  %834 = ptrtoint ptr %speed.i.i180 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load i32, ptr %speed.i.i180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %835)
  %cmp409.i.i = icmp eq i32 %835, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %835)
  %cmp414.i.i = icmp ugt i32 %835, 4
  %or.cond849.i.i = or i1 %cmp409.i.i, %cmp414.i.i
  br i1 %or.cond849.i.i, label %lor.lhs.false407.i.i.if.then416.i.i_crit_edge, label %if.else430.i.i

lor.lhs.false407.i.i.if.then416.i.i_crit_edge:    ; preds = %lor.lhs.false407.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then416.i.i

if.then416.i.i:                                   ; preds = %lor.lhs.false407.i.i.if.then416.i.i_crit_edge, %if.then402.i.i.if.then416.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %829)
  %cmp422.i.i = icmp ugt i8 %829, 16
  %conv419.i.i = zext i8 %829 to i32
  %sub420.i.i = add nsw i32 %conv419.i.i, -1
  %sub420.op.i.i = shl nuw i32 1, %sub420.i.i
  %shl428.i.i = select i1 %cmp422.i.i, i32 32768, i32 %sub420.op.i.i
  br label %if.end437.sink.split.i.i

if.else430.i.i:                                   ; preds = %lor.lhs.false407.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv433.i.i = zext i8 %829 to i32
  br label %if.end437.sink.split.i.i

if.end437.sink.split.i.i:                         ; preds = %if.else430.i.i, %if.then416.i.i
  %shl428.sink.i.i = phi i32 [ %shl428.i.i, %if.then416.i.i ], [ %conv433.i.i, %if.else430.i.i ]
  %836 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %urb.i, align 8
  %interval.i.i = getelementptr inbounds %struct.urb, ptr %837, i32 0, i32 25
  %838 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %shl428.sink.i.i, ptr %interval.i.i, align 4
  br label %if.end437.i.i

if.end437.i.i:                                    ; preds = %if.end437.sink.split.i.i, %if.end390.i.i.if.end437.i.i_crit_edge
  %839 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %urb.i, align 8
  %context.i.i = getelementptr inbounds %struct.urb, ptr %840, i32 0, i32 27
  %841 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %841)
  store ptr %call7.i.i.i669, ptr %context.i.i, align 4
  %842 = load ptr, ptr %urb.i, align 8
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %842, i32 0, i32 28
  %843 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %843)
  store ptr @async_completed, ptr %complete.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number_of_packets.0.i.i)
  %cmp4411012.not.i.i = icmp eq i32 %number_of_packets.0.i.i, 0
  br i1 %cmp4411012.not.i.i, label %if.end437.i.i.for.end458.i.i_crit_edge, label %if.end437.i.i.for.body443.i.i_crit_edge

if.end437.i.i.for.body443.i.i_crit_edge:          ; preds = %if.end437.i.i
  br label %for.body443.i.i

if.end437.i.i.for.end458.i.i_crit_edge:           ; preds = %if.end437.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end458.i.i

for.body443.i.i:                                  ; preds = %for.body443.i.i.for.body443.i.i_crit_edge, %if.end437.i.i.for.body443.i.i_crit_edge
  %u.61014.i.i = phi i32 [ %inc457.i.i, %for.body443.i.i.for.body443.i.i_crit_edge ], [ 0, %if.end437.i.i.for.body443.i.i_crit_edge ]
  %totlen.21013.i.i = phi i32 [ %add455.i.i, %for.body443.i.i.for.body443.i.i_crit_edge ], [ 0, %if.end437.i.i.for.body443.i.i_crit_edge ]
  %844 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %urb.i, align 8
  %arrayidx446.i.i = getelementptr %struct.urb, ptr %845, i32 0, i32 29, i32 %u.61014.i.i
  %846 = ptrtoint ptr %arrayidx446.i.i to i32
  call void @__asan_store4_noabort(i32 %846)
  store i32 %totlen.21013.i.i, ptr %arrayidx446.i.i, align 4
  %arrayidx447.i.i = getelementptr %struct.usbdevfs_iso_packet_desc, ptr %isopkt.0.i.i, i32 %u.61014.i.i
  %847 = ptrtoint ptr %arrayidx447.i.i to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load i32, ptr %arrayidx447.i.i, align 4
  %849 = load ptr, ptr %urb.i, align 8
  %length452.i.i = getelementptr %struct.urb, ptr %849, i32 0, i32 29, i32 %u.61014.i.i, i32 1
  %850 = ptrtoint ptr %length452.i.i to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 %848, ptr %length452.i.i, align 4
  %851 = load i32, ptr %arrayidx447.i.i, align 4
  %add455.i.i = add i32 %851, %totlen.21013.i.i
  %inc457.i.i = add nuw i32 %u.61014.i.i, 1
  %exitcond1026.not.i.i = icmp eq i32 %inc457.i.i, %number_of_packets.0.i.i
  br i1 %exitcond1026.not.i.i, label %for.body443.i.i.for.end458.i.i_crit_edge, label %for.body443.i.i.for.body443.i.i_crit_edge

for.body443.i.i.for.body443.i.i_crit_edge:        ; preds = %for.body443.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body443.i.i

for.body443.i.i.for.end458.i.i_crit_edge:         ; preds = %for.body443.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end458.i.i

for.end458.i.i:                                   ; preds = %for.body443.i.i.for.end458.i.i_crit_edge, %if.end437.i.i.for.end458.i.i_crit_edge
  call void @kfree(ptr noundef %isopkt.0.i.i) #13
  %ps459.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 1
  %852 = ptrtoint ptr %ps459.i.i to i32
  call void @__asan_store4_noabort(i32 %852)
  store ptr %2, ptr %ps459.i.i, align 8
  %userurb.i.i181 = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 7
  %853 = ptrtoint ptr %userurb.i.i181 to i32
  call void @__asan_store4_noabort(i32 %853)
  store ptr %0, ptr %userurb.i.i181, align 8
  %userurb_sigval460.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 8
  %854 = ptrtoint ptr %userurb_sigval460.i.i to i32
  call void @__asan_store4_noabort(i32 %854)
  store i32 %arg, ptr %userurb_sigval460.i.i, align 4
  %855 = ptrtoint ptr %usbm.i.i813824 to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %usbm.i.i813824, align 4
  %tobool462.not.i.i = icmp eq ptr %856, null
  br i1 %tobool462.not.i.i, label %if.else475.i.i, label %if.then463.i.i

if.then463.i.i:                                   ; preds = %for.end458.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %857 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %buffer.i, align 4
  %859 = ptrtoint ptr %858 to i32
  %860 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %urb.i, align 8
  %transfer_flags467.i.i = getelementptr inbounds %struct.urb, ptr %861, i32 0, i32 13
  %862 = ptrtoint ptr %transfer_flags467.i.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load i32, ptr %transfer_flags467.i.i, align 4
  %or468.i.i = or i32 %863, 4
  store i32 %or468.i.i, ptr %transfer_flags467.i.i, align 4
  %864 = ptrtoint ptr %usbm.i.i813824 to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %usbm.i.i813824, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.usb_memory, ptr %865, i32 0, i32 5
  %866 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load i32, ptr %dma_handle.i.i, align 4
  %vm_start471.i.i = getelementptr inbounds %struct.usb_memory, ptr %865, i32 0, i32 6
  %868 = ptrtoint ptr %vm_start471.i.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %vm_start471.i.i, align 4
  %sub472.i.i = add i32 %867, %859
  %add473.i.i = sub i32 %sub472.i.i, %869
  %870 = load ptr, ptr %urb.i, align 8
  %transfer_dma.i.i = getelementptr inbounds %struct.urb, ptr %870, i32 0, i32 15
  %871 = ptrtoint ptr %transfer_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %871)
  store i32 %add473.i.i, ptr %transfer_dma.i.i, align 4
  br label %if.end485.i.i

if.else475.i.i:                                   ; preds = %for.end458.i.i
  br i1 %is_in.1.off0.i.i, label %land.lhs.true478.i.i, label %if.else475.i.i.if.end485.i.i_crit_edge

if.else475.i.i.if.end485.i.i_crit_edge:           ; preds = %if.else475.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end485.i.i

land.lhs.true478.i.i:                             ; preds = %if.else475.i.i
  %872 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %buffer_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %873)
  %cmp480.i.i = icmp sgt i32 %873, 0
  br i1 %cmp480.i.i, label %if.then482.i.i, label %land.lhs.true478.i.i.if.end485.i.i_crit_edge

land.lhs.true478.i.i.if.end485.i.i_crit_edge:     ; preds = %land.lhs.true478.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end485.i.i

if.then482.i.i:                                   ; preds = %land.lhs.true478.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %874 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %buffer.i, align 4
  %userbuffer.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 6
  %876 = ptrtoint ptr %userbuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %876)
  store ptr %875, ptr %userbuffer.i.i, align 4
  br label %if.end485.i.i

if.end485.i.i:                                    ; preds = %if.then482.i.i, %land.lhs.true478.i.i.if.end485.i.i_crit_edge, %if.else475.i.i.if.end485.i.i_crit_edge, %if.then463.i.i
  %signr.i.i = getelementptr inbounds %struct.usbdevfs_urb, ptr %uurb.i, i32 0, i32 10
  %877 = ptrtoint ptr %signr.i.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %signr.i.i, align 4
  %signr486.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 4
  %879 = ptrtoint ptr %signr486.i.i to i32
  call void @__asan_store4_noabort(i32 %879)
  store i32 %878, ptr %signr486.i.i, align 4
  %ifnum487.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 5
  %880 = ptrtoint ptr %ifnum487.i.i to i32
  call void @__asan_store4_noabort(i32 %880)
  store i32 %ifnum.0.i.i, ptr %ifnum487.i.i, align 8
  %881 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i965.i.i = and i32 %881, -16384
  %882 = inttoptr i32 %and.i965.i.i to ptr
  %task.i.i182 = getelementptr inbounds %struct.thread_info, ptr %882, i32 0, i32 2
  %883 = ptrtoint ptr %task.i.i182 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %task.i.i182, align 8
  %thread_pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %884, i32 0, i32 78
  %885 = ptrtoint ptr %thread_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %thread_pid.i.i.i, align 16
  %tobool.not.i644 = icmp eq ptr %886, null
  br i1 %tobool.not.i644, label %if.end485.i.i.get_pid.exit_crit_edge, label %if.then.i645

if.end485.i.i.get_pid.exit_crit_edge:             ; preds = %if.end485.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.then.i645:                                     ; preds = %if.end485.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %886, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %886, i32 1, i32 3, i32 1) #13
  %887 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %886, ptr nonnull %886, i32 1, ptr nonnull elementtype(i32) %886) #13, !srcloc !316
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %887, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i645.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i646, !prof !312

if.then.i645.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i645
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i646:                               ; preds = %if.then.i645
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %888 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %888)
  %.not.i.i.i.i = icmp sgt i32 %888, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i646.get_pid.exit_crit_edge, label %if.else.i.i.i.i646.if.end15.sink.split.i.i.i.i_crit_edge, !prof !300

if.else.i.i.i.i646.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i646
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i646.get_pid.exit_crit_edge:        ; preds = %if.else.i.i.i.i646
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i646.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i645.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i645.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i646.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %886, i32 noundef %.sink.i.i.i.i) #13
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i646.get_pid.exit_crit_edge, %if.end485.i.i.get_pid.exit_crit_edge
  %pid.i.i183 = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 2
  %889 = ptrtoint ptr %pid.i.i183 to i32
  call void @__asan_store4_noabort(i32 %889)
  store ptr %886, ptr %pid.i.i183, align 4
  %890 = ptrtoint ptr %task.i.i182 to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %task.i.i182, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %891, i32 0, i32 99
  %892 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %cred.i.i, align 16
  %tobool.not.i638 = icmp eq ptr %893, null
  br i1 %tobool.not.i638, label %get_pid.exit.get_cred.exit_crit_edge, label %do.body.i640

get_pid.exit.get_cred.exit_crit_edge:             ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_cred.exit

do.body.i640:                                     ; preds = %get_pid.exit
  %call.i.i639 = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %893) #13
  br i1 %call.i.i639, label %if.then.i.i641, label %do.body.i640.__validate_creds.exit.i_crit_edge, !prof !312

do.body.i640.__validate_creds.exit.i_crit_edge:   ; preds = %do.body.i640
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i

if.then.i.i641:                                   ; preds = %do.body.i640
  call void @__sanitizer_cov_trace_pc() #15
  call void @__invalid_creds(ptr noundef nonnull %893, ptr noundef nonnull @.str.77, i32 noundef 253) #13
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i641, %do.body.i640.__validate_creds.exit.i_crit_edge
  %894 = getelementptr inbounds %struct.cred, ptr %893, i32 0, i32 28
  %895 = ptrtoint ptr %894 to i32
  call void @__asan_store4_noabort(i32 %895)
  store i32 0, ptr %894, align 4
  %call.i.i.i.i642 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %893, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %893, i32 1, i32 3, i32 1) #13
  %896 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %893, ptr nonnull %893, i32 1, ptr nonnull elementtype(i32) %893) #13, !srcloc !317
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %get_pid.exit.get_cred.exit_crit_edge
  %cred498.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 3
  %897 = ptrtoint ptr %cred498.i.i to i32
  call void @__asan_store4_noabort(i32 %897)
  store ptr %893, ptr %cred498.i.i, align 8
  %898 = ptrtoint ptr %userurb.i.i181 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %userurb.i.i181, align 8
  %900 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %urb.i, align 8
  %transfer_buffer_length504.i.i = getelementptr inbounds %struct.urb, ptr %901, i32 0, i32 19
  %902 = ptrtoint ptr %transfer_buffer_length504.i.i to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load i32, ptr %transfer_buffer_length504.i.i, align 4
  %904 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %904)
  %tobool.not.i623 = icmp eq i8 %904, 0
  br i1 %tobool.not.i623, label %get_cred.exit.snoop_urb.exit637_crit_edge, label %if.end.i631

get_cred.exit.snoop_urb.exit637_crit_edge:        ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit637

if.end.i631:                                      ; preds = %get_cred.exit
  %pipe502.i.i = getelementptr inbounds %struct.urb, ptr %901, i32 0, i32 10
  %905 = ptrtoint ptr %pipe502.i.i to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load i32, ptr %pipe502.i.i, align 4
  %907 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %dev1.i, align 4
  %909 = lshr i32 %906, 15
  %and.i624 = and i32 %909, 15
  %910 = lshr i32 %906, 30
  %arrayidx.i625 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %910
  %911 = ptrtoint ptr %arrayidx.i625 to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %arrayidx.i625, align 4
  %and3.i626 = lshr i32 %906, 7
  %and3.lobit.i627 = and i32 %and3.i626, 1
  %arrayidx6.i628 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %and3.lobit.i627
  %913 = ptrtoint ptr %arrayidx6.i628 to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %arrayidx6.i628, align 4
  %tobool7.not.i629 = icmp eq ptr %899, null
  %dev21.i630 = getelementptr inbounds %struct.usb_device, ptr %908, i32 0, i32 15
  br i1 %tobool7.not.i629, label %if.else15.i634, label %if.then8.i632

if.then8.i632:                                    ; preds = %if.end.i631
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i630, ptr noundef nonnull @.str.95, ptr noundef nonnull %899, i32 noundef %and.i624, ptr noundef %912, ptr noundef %914, i32 noundef %903) #16
  br label %snoop_urb.exit637

if.else15.i634:                                   ; preds = %if.end.i631
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i630, ptr noundef nonnull @.str.101, i32 noundef %and.i624, ptr noundef %912, ptr noundef %914, i32 noundef %903, i32 noundef 0) #16
  br label %snoop_urb.exit637

snoop_urb.exit637:                                ; preds = %if.else15.i634, %if.then8.i632, %get_cred.exit.snoop_urb.exit637_crit_edge
  br i1 %is_in.1.off0.i.i, label %snoop_urb.exit637.if.end510.i.i_crit_edge, label %if.then506.i.i

snoop_urb.exit637.if.end510.i.i_crit_edge:        ; preds = %snoop_urb.exit637
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end510.i.i

if.then506.i.i:                                   ; preds = %snoop_urb.exit637
  call void @__sanitizer_cov_trace_pc() #15
  %915 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %urb.i, align 8
  %transfer_buffer_length509.i.i = getelementptr inbounds %struct.urb, ptr %916, i32 0, i32 19
  %917 = ptrtoint ptr %transfer_buffer_length509.i.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load i32, ptr %transfer_buffer_length509.i.i, align 4
  call fastcc void @snoop_urb_data(ptr noundef %916, i32 noundef %918) #13
  br label %if.end510.i.i

if.end510.i.i:                                    ; preds = %if.then506.i.i, %snoop_urb.exit637.if.end510.i.i_crit_edge
  %919 = ptrtoint ptr %ps459.i.i to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %ps459.i.i, align 8
  %lock.i619 = getelementptr inbounds %struct.usb_dev_state, ptr %920, i32 0, i32 3
  %call3.i620 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i619) #13
  %async_pending.i = getelementptr inbounds %struct.usb_dev_state, ptr %920, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %920, i32 0, i32 4, i32 1
  %921 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i621 = call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i.i669, ptr noundef %922, ptr noundef %async_pending.i) #13
  br i1 %call.i.i.i621, label %if.end.i.i.i622, label %if.end510.i.i.async_newpending.exit_crit_edge

if.end510.i.i.async_newpending.exit_crit_edge:    ; preds = %if.end510.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %async_newpending.exit

if.end.i.i.i622:                                  ; preds = %if.end510.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %923 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %923)
  store ptr %call7.i.i.i669, ptr %prev.i.i, align 4
  %924 = ptrtoint ptr %call7.i.i.i669 to i32
  call void @__asan_store4_noabort(i32 %924)
  store ptr %async_pending.i, ptr %call7.i.i.i669, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i669, i32 0, i32 1
  %925 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %925)
  store ptr %922, ptr %prev3.i.i.i, align 4
  %926 = ptrtoint ptr %922 to i32
  call void @__asan_store4_noabort(i32 %926)
  store volatile ptr %call7.i.i.i669, ptr %922, align 4
  br label %async_newpending.exit

async_newpending.exit:                            ; preds = %if.end.i.i.i622, %if.end510.i.i.async_newpending.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i619, i32 noundef %call3.i620) #13
  %bmAttributes.i966.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %retval.0.i945.i.i, i32 0, i32 3
  %927 = ptrtoint ptr %bmAttributes.i966.i.i to i32
  call void @__asan_load1_noabort(i32 %927)
  %928 = load i8, ptr %bmAttributes.i966.i.i, align 1
  %929 = and i8 %928, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %929)
  %cmp.i967.not.i.i = icmp eq i8 %929, 2
  br i1 %cmp.i967.not.i.i, label %if.then514.i.i, label %if.else545.i.i

if.then514.i.i:                                   ; preds = %async_newpending.exit
  call void @_raw_spin_lock_irq(ptr noundef %lock.i658) #13
  %bEndpointAddress.i969.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %retval.0.i945.i.i, i32 0, i32 2
  %930 = ptrtoint ptr %bEndpointAddress.i969.i.i to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %bEndpointAddress.i969.i.i, align 1
  %932 = and i8 %931, 15
  %933 = lshr i8 %931, 3
  %934 = and i8 %933, 16
  %conv521.i.i = or i8 %934, %932
  %bulk_addr.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 13
  %935 = ptrtoint ptr %bulk_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %935)
  store i8 %conv521.i.i, ptr %bulk_addr.i.i, align 8
  %936 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %flags.i.i, align 4
  %and523.i.i = and i32 %937, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and523.i.i)
  %tobool524.not.i.i = icmp eq i32 %and523.i.i, 0
  br i1 %tobool524.not.i.i, label %if.else526.i.i, label %if.then525.i.i

if.then525.i.i:                                   ; preds = %if.then514.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bulk_status.i.i = getelementptr inbounds %struct.async, ptr %call7.i.i.i669, i32 0, i32 14
  %938 = ptrtoint ptr %bulk_status.i.i to i32
  call void @__asan_store1_noabort(i32 %938)
  store i8 1, ptr %bulk_status.i.i, align 1
  br label %if.end532.i.i

if.else526.i.i:                                   ; preds = %if.then514.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv528.i.i = zext i8 %conv521.i.i to i32
  %shl529.i.i = shl nuw i32 1, %conv528.i.i
  %neg530.i.i = xor i32 %shl529.i.i, -1
  %disabled_bulk_eps.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 14
  %939 = ptrtoint ptr %disabled_bulk_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load i32, ptr %disabled_bulk_eps.i.i, align 4
  %and531.i.i = and i32 %940, %neg530.i.i
  store i32 %and531.i.i, ptr %disabled_bulk_eps.i.i, align 4
  br label %if.end532.i.i

if.end532.i.i:                                    ; preds = %if.else526.i.i, %if.then525.i.i
  %disabled_bulk_eps533.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 14
  %941 = ptrtoint ptr %disabled_bulk_eps533.i.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load i32, ptr %disabled_bulk_eps533.i.i, align 4
  %943 = ptrtoint ptr %bulk_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %943)
  %944 = load i8, ptr %bulk_addr.i.i, align 8
  %conv535.i.i = zext i8 %944 to i32
  %shl536.i.i = shl nuw i32 1, %conv535.i.i
  %and537.i.i = and i32 %shl536.i.i, %942
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and537.i.i)
  %tobool538.not.i.i = icmp eq i32 %and537.i.i, 0
  br i1 %tobool538.not.i.i, label %if.else540.i.i, label %if.end532.i.i.if.end543.i.i_crit_edge

if.end532.i.i.if.end543.i.i_crit_edge:            ; preds = %if.end532.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end543.i.i

if.else540.i.i:                                   ; preds = %if.end532.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %945 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %urb.i, align 8
  %call542.i.i = call i32 @usb_submit_urb(ptr noundef %946, i32 noundef 2592) #13
  br label %if.end543.i.i

if.end543.i.i:                                    ; preds = %if.else540.i.i, %if.end532.i.i.if.end543.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call542.i.i, %if.else540.i.i ], [ -121, %if.end532.i.i.if.end543.i.i_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i658) #13
  br label %if.end548.i.i

if.else545.i.i:                                   ; preds = %async_newpending.exit
  call void @__sanitizer_cov_trace_pc() #15
  %947 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %urb.i, align 8
  %call547.i.i = call i32 @usb_submit_urb(ptr noundef %948, i32 noundef 3264) #13
  br label %if.end548.i.i

if.end548.i.i:                                    ; preds = %if.else545.i.i, %if.end543.i.i
  %ret.1.i.i = phi i32 [ %ret.0.i.i, %if.end543.i.i ], [ %call547.i.i, %if.else545.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool549.not.i.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool549.not.i.i, label %proc_submiturb.exit.thread836, label %do.end553.i.i

proc_submiturb.exit.thread836:                    ; preds = %if.end548.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %uurb.i) #13
  br label %if.then166.i

do.end553.i.i:                                    ; preds = %if.end548.i.i
  %949 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %dev1.i, align 4
  %dev555.i.i = getelementptr inbounds %struct.usb_device, ptr %950, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.83, ptr noundef %dev555.i.i, ptr noundef nonnull @.str.124, i32 noundef %ret.1.i.i) #16
  %951 = ptrtoint ptr %userurb.i.i181 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %userurb.i.i181, align 8
  %953 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %953)
  %tobool.not.i612 = icmp eq i8 %953, 0
  br i1 %tobool.not.i612, label %do.end553.i.i.snoop_urb.exit_crit_edge, label %if.end.i616

do.end553.i.i.snoop_urb.exit_crit_edge:           ; preds = %do.end553.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit

if.end.i616:                                      ; preds = %do.end553.i.i
  %954 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %urb.i, align 8
  %pipe559.i.i = getelementptr inbounds %struct.urb, ptr %955, i32 0, i32 10
  %956 = ptrtoint ptr %pipe559.i.i to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load i32, ptr %pipe559.i.i, align 4
  %958 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %dev1.i, align 4
  %960 = lshr i32 %957, 15
  %and.i613 = and i32 %960, 15
  %961 = lshr i32 %957, 30
  %arrayidx.i614 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %961
  %962 = ptrtoint ptr %arrayidx.i614 to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %arrayidx.i614, align 4
  %and3.i = lshr i32 %957, 7
  %and3.lobit.i = and i32 %and3.i, 1
  %arrayidx6.i = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %and3.lobit.i
  %964 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i615 = icmp eq ptr %952, null
  %dev21.i = getelementptr inbounds %struct.usb_device, ptr %959, i32 0, i32 15
  br i1 %tobool7.not.i615, label %if.else15.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i616
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i, ptr noundef nonnull @.str.98, ptr noundef nonnull %952, i32 noundef %and.i613, ptr noundef %963, ptr noundef %965, i32 noundef 0, i32 noundef %ret.1.i.i) #16
  br label %snoop_urb.exit

if.else15.i:                                      ; preds = %if.end.i616
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i, ptr noundef nonnull @.str.104, i32 noundef %and.i613, ptr noundef %963, ptr noundef %965, i32 noundef 0, i32 noundef %ret.1.i.i) #16
  br label %snoop_urb.exit

snoop_urb.exit:                                   ; preds = %if.else15.i, %if.then8.i, %do.end553.i.i.snoop_urb.exit_crit_edge
  %966 = ptrtoint ptr %ps459.i.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %ps459.i.i, align 8
  %lock.i608 = getelementptr inbounds %struct.usb_dev_state, ptr %967, i32 0, i32 3
  %call3.i609 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i608) #13
  %call.i.i.i610 = call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i.i669) #13
  br i1 %call.i.i.i610, label %if.end.i.i.i611, label %snoop_urb.exit.async_removepending.exit_crit_edge

snoop_urb.exit.async_removepending.exit_crit_edge: ; preds = %snoop_urb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %async_removepending.exit

if.end.i.i.i611:                                  ; preds = %snoop_urb.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i669, i32 0, i32 1
  %968 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %prev.i.i.i, align 4
  %970 = ptrtoint ptr %call7.i.i.i669 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %call7.i.i.i669, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %971, i32 0, i32 1
  %972 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %972)
  store ptr %969, ptr %prev1.i.i.i.i, align 4
  %973 = ptrtoint ptr %969 to i32
  call void @__asan_store4_noabort(i32 %973)
  store volatile ptr %971, ptr %969, align 4
  br label %async_removepending.exit

async_removepending.exit:                         ; preds = %if.end.i.i.i611, %snoop_urb.exit.async_removepending.exit_crit_edge
  %974 = ptrtoint ptr %call7.i.i.i669 to i32
  call void @__asan_store4_noabort(i32 %974)
  store volatile ptr %call7.i.i.i669, ptr %call7.i.i.i669, align 8
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i669, i32 0, i32 1
  %975 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %975)
  store ptr %call7.i.i.i669, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i608, i32 noundef %call3.i609) #13
  br label %error.i.i

error.i.i:                                        ; preds = %async_removepending.exit, %if.then11.i.i933.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.error.i.i_crit_edge, %if.end8.i905.i.i.error.i.i_crit_edge, %if.then11.i.i875.i.i, %for.body241.i.i.error.i.i_crit_edge, %kmalloc_array.exit.i.i.error.i.i_crit_edge, %cond.end.i.i.error.i.i_crit_edge, %if.then200.i.i, %if.then4.i, %if.end192.i.i.error.i.i_crit_edge, %land.lhs.true185.i.i.error.i.i_crit_edge, %for.body.i.i176.error.i.i_crit_edge, %if.then167.i.i, %if.end71.i.i.error.i.i_crit_edge, %if.end65.i.i.error.i.i_crit_edge, %if.then11.i.i.i.i
  %ret.2.i.i = phi i32 [ %667, %if.then167.i.i ], [ %694, %if.then200.i.i ], [ %call217.i.i, %cond.end.i.i.error.i.i_crit_edge ], [ %ret.1.i.i, %async_removepending.exit ], [ %call75.i.i, %if.end71.i.i.error.i.i_crit_edge ], [ -22, %if.end65.i.i.error.i.i_crit_edge ], [ -14, %land.lhs.true185.i.i.error.i.i_crit_edge ], [ -12, %kmalloc_array.exit.i.i.error.i.i_crit_edge ], [ -12, %if.end8.i905.i.i.error.i.i_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i875.i.i ], [ -14, %if.then11.i.i933.i.i ], [ -14, %if.then27.i.i.i.i ], [ -14, %land.rhs16.i.i.i.i.error.i.i_crit_edge ], [ -12, %if.then4.i ], [ -12, %if.end192.i.i.error.i.i_crit_edge ], [ -12, %for.body241.i.i.error.i.i_crit_edge ], [ -22, %for.body.i.i176.error.i.i_crit_edge ]
  %dr.1.i.i = phi ptr [ null, %if.then167.i.i ], [ %dr.0.i.i, %if.then200.i.i ], [ %dr.0.i.i, %cond.end.i.i.error.i.i_crit_edge ], [ null, %async_removepending.exit ], [ %call7.i.i.i, %if.end71.i.i.error.i.i_crit_edge ], [ %call7.i.i.i, %if.end65.i.i.error.i.i_crit_edge ], [ %dr.0.i.i, %land.lhs.true185.i.i.error.i.i_crit_edge ], [ %dr.0.i.i, %kmalloc_array.exit.i.i.error.i.i_crit_edge ], [ %dr.0.i.i, %if.end8.i905.i.i.error.i.i_crit_edge ], [ %call7.i.i.i, %if.then11.i.i.i.i ], [ %dr.0.i.i, %if.then11.i.i875.i.i ], [ %dr.0.i.i, %if.then11.i.i933.i.i ], [ %dr.0.i.i, %if.then27.i.i.i.i ], [ %dr.0.i.i, %land.rhs16.i.i.i.i.error.i.i_crit_edge ], [ %dr.0.i.i, %if.then4.i ], [ %dr.0.i.i, %if.end192.i.i.error.i.i_crit_edge ], [ %dr.0.i.i, %for.body241.i.i.error.i.i_crit_edge ], [ null, %for.body.i.i176.error.i.i_crit_edge ]
  %as.0.i.i184 = phi ptr [ null, %if.then167.i.i ], [ %call7.i.i.i669, %if.then200.i.i ], [ %call7.i.i.i669, %cond.end.i.i.error.i.i_crit_edge ], [ %call7.i.i.i669, %async_removepending.exit ], [ null, %if.end71.i.i.error.i.i_crit_edge ], [ null, %if.end65.i.i.error.i.i_crit_edge ], [ null, %land.lhs.true185.i.i.error.i.i_crit_edge ], [ %call7.i.i.i669, %kmalloc_array.exit.i.i.error.i.i_crit_edge ], [ %call7.i.i.i669, %if.end8.i905.i.i.error.i.i_crit_edge ], [ null, %if.then11.i.i.i.i ], [ %call7.i.i.i669, %if.then11.i.i875.i.i ], [ %call7.i.i.i669, %if.then11.i.i933.i.i ], [ %call7.i.i.i669, %if.then27.i.i.i.i ], [ %call7.i.i.i669, %land.rhs16.i.i.i.i.error.i.i_crit_edge ], [ null, %if.then4.i ], [ null, %if.end192.i.i.error.i.i_crit_edge ], [ %call7.i.i.i669, %for.body241.i.i.error.i.i_crit_edge ], [ null, %for.body.i.i176.error.i.i_crit_edge ]
  %isopkt.1.i.i = phi ptr [ null, %if.then167.i.i ], [ %isopkt.0.i.i, %if.then200.i.i ], [ %isopkt.0.i.i, %cond.end.i.i.error.i.i_crit_edge ], [ null, %async_removepending.exit ], [ null, %if.end71.i.i.error.i.i_crit_edge ], [ null, %if.end65.i.i.error.i.i_crit_edge ], [ %isopkt.0.i.i, %land.lhs.true185.i.i.error.i.i_crit_edge ], [ %isopkt.0.i.i, %kmalloc_array.exit.i.i.error.i.i_crit_edge ], [ %isopkt.0.i.i, %if.end8.i905.i.i.error.i.i_crit_edge ], [ null, %if.then11.i.i.i.i ], [ %isopkt.0.i.i, %if.then11.i.i875.i.i ], [ %isopkt.0.i.i, %if.then11.i.i933.i.i ], [ %isopkt.0.i.i, %if.then27.i.i.i.i ], [ %isopkt.0.i.i, %land.rhs16.i.i.i.i.error.i.i_crit_edge ], [ %isopkt.0.i.i, %if.then4.i ], [ %isopkt.0.i.i, %if.end192.i.i.error.i.i_crit_edge ], [ %isopkt.0.i.i, %for.body241.i.i.error.i.i_crit_edge ], [ %call165.i.i, %for.body.i.i176.error.i.i_crit_edge ]
  call void @kfree(ptr noundef %isopkt.1.i.i) #13
  call void @kfree(ptr noundef %dr.1.i.i) #13
  %tobool561.not.i.i = icmp eq ptr %as.0.i.i184, null
  br i1 %tobool561.not.i.i, label %error.i.i.proc_submiturb.exit_crit_edge, label %if.then562.i.i

error.i.i.proc_submiturb.exit_crit_edge:          ; preds = %error.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_submiturb.exit

if.then562.i.i:                                   ; preds = %error.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @free_async(ptr noundef nonnull %as.0.i.i184) #13
  br label %proc_submiturb.exit

proc_submiturb.exit.thread:                       ; preds = %if.end159.i.i.proc_submiturb.exit.thread_crit_edge, %sw.bb152.i.i.proc_submiturb.exit.thread_crit_edge, %sw.bb142.i.i.proc_submiturb.exit.thread_crit_edge, %sw.bb120.i.i.proc_submiturb.exit.thread_crit_edge, %sw.bb120.i.i.proc_submiturb.exit.thread_crit_edge1030, %if.end56.i.i.proc_submiturb.exit.thread_crit_edge, %if.end51.i.i.proc_submiturb.exit.thread_crit_edge, %sw.bb.i.i.proc_submiturb.exit.thread_crit_edge, %if.end40.i.i.proc_submiturb.exit.thread_crit_edge, %if.end34.i.i.proc_submiturb.exit.thread_crit_edge, %if.end.i938.i.i.proc_submiturb.exit.thread_crit_edge, %findintfep.exit.i.i.proc_submiturb.exit.thread_crit_edge, %for.inc30.i.i.i.proc_submiturb.exit.thread_crit_edge, %for.cond.preheader.i.i.i.proc_submiturb.exit.thread_crit_edge, %if.end.i937.i.i.proc_submiturb.exit.thread_crit_edge, %if.then23.i.i.proc_submiturb.exit.thread_crit_edge, %land.lhs.true.i.i.proc_submiturb.exit.thread_crit_edge, %if.end3.i.i.proc_submiturb.exit.thread_crit_edge, %if.end.i164.proc_submiturb.exit.thread_crit_edge, %if.then11.i.i.i159
  %retval.0.i185.ph = phi i32 [ -14, %if.then11.i.i.i159 ], [ -113, %findintfep.exit.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %if.end.i938.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %if.then23.i.i.proc_submiturb.exit.thread_crit_edge ], [ -3, %if.end.i937.i.i.proc_submiturb.exit.thread_crit_edge ], [ -2, %for.cond.preheader.i.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %if.end40.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %if.end159.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %sw.bb152.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %sw.bb142.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %sw.bb120.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %sw.bb120.i.i.proc_submiturb.exit.thread_crit_edge1030 ], [ -12, %if.end56.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %if.end51.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %sw.bb.i.i.proc_submiturb.exit.thread_crit_edge ], [ -2, %if.end34.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %land.lhs.true.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %if.end3.i.i.proc_submiturb.exit.thread_crit_edge ], [ -22, %if.end.i164.proc_submiturb.exit.thread_crit_edge ], [ -2, %for.inc30.i.i.i.proc_submiturb.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %uurb.i) #13
  br label %done.thread417.i

proc_submiturb.exit:                              ; preds = %if.then562.i.i, %error.i.i.proc_submiturb.exit_crit_edge, %checkintf.exit.i.i.proc_submiturb.exit_crit_edge
  %retval.0.i185 = phi i32 [ %call12.i.i.i, %checkintf.exit.i.i.proc_submiturb.exit_crit_edge ], [ %ret.2.i.i, %if.then562.i.i ], [ %ret.2.i.i, %error.i.i.proc_submiturb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %uurb.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i185)
  %cmp165.i = icmp sgt i32 %retval.0.i185, -1
  br i1 %cmp165.i, label %proc_submiturb.exit.if.then166.i_crit_edge, label %proc_submiturb.exit.done.thread417.i_crit_edge

proc_submiturb.exit.done.thread417.i_crit_edge:   ; preds = %proc_submiturb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread417.i

proc_submiturb.exit.if.then166.i_crit_edge:       ; preds = %proc_submiturb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then166.i

if.then166.i:                                     ; preds = %proc_submiturb.exit.if.then166.i_crit_edge, %proc_submiturb.exit.thread836
  %retval.0.i185839 = phi i32 [ 0, %proc_submiturb.exit.thread836 ], [ %retval.0.i185, %proc_submiturb.exit.if.then166.i_crit_edge ]
  %i_mtime167.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp168.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp168.i, ptr noundef %4) #13
  %976 = call ptr @memcpy(ptr %i_mtime167.i, ptr %tmp168.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp168.i) #13
  br label %if.then280.i.sink.split

do.body171.i:                                     ; preds = %if.end27.i
  %977 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %977)
  %tobool172.not.i = icmp eq i8 %977, 0
  br i1 %tobool172.not.i, label %do.body171.i.do.end180.i_crit_edge, label %do.end176.i

do.body171.i.do.end180.i_crit_edge:               ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end180.i

do.end176.i:                                      ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.18, ptr noundef %0) #16
  br label %do.end180.i

do.end180.i:                                      ; preds = %do.end176.i, %do.body171.i.do.end180.i_crit_edge
  %lock.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %async_pending.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end180.i
  %as.0.in.i.i = phi ptr [ %async_pending.i.i, %do.end180.i ], [ %as.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %978 = ptrtoint ptr %as.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %as.0.i.i = load ptr, ptr %as.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %as.0.i.i, %async_pending.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then.i141_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.i141_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i141

for.body.i.i:                                     ; preds = %for.cond.i.i
  %userurb2.i.i = getelementptr inbounds %struct.async, ptr %as.0.i.i, i32 0, i32 7
  %979 = ptrtoint ptr %userurb2.i.i to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %userurb2.i.i, align 4
  %cmp3.i.i = icmp eq ptr %980, %0
  br i1 %cmp3.i.i, label %if.then.i.i138, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

if.then.i.i138:                                   ; preds = %for.body.i.i
  %call.i.i.i.i137 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %as.0.i.i) #13
  br i1 %call.i.i.i.i137, label %if.end.i.i.i.i139, label %if.then.i.i138.async_getpending.exit.i_crit_edge

if.then.i.i138.async_getpending.exit.i_crit_edge: ; preds = %if.then.i.i138
  call void @__sanitizer_cov_trace_pc() #15
  br label %async_getpending.exit.i

if.end.i.i.i.i139:                                ; preds = %if.then.i.i138
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %as.0.i.i, i32 0, i32 1
  %981 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %prev.i.i.i.i, align 4
  %983 = ptrtoint ptr %as.0.i.i to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %as.0.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %984, i32 0, i32 1
  %985 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %985)
  store ptr %982, ptr %prev1.i.i.i.i.i, align 4
  %986 = ptrtoint ptr %982 to i32
  call void @__asan_store4_noabort(i32 %986)
  store volatile ptr %984, ptr %982, align 4
  br label %async_getpending.exit.i

async_getpending.exit.i:                          ; preds = %if.end.i.i.i.i139, %if.then.i.i138.async_getpending.exit.i_crit_edge
  %987 = ptrtoint ptr %as.0.i.i to i32
  call void @__asan_store4_noabort(i32 %987)
  store volatile ptr %as.0.i.i, ptr %as.0.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %as.0.i.i, i32 0, i32 1
  %988 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %988)
  store ptr %as.0.i.i, ptr %prev.i3.i.i.i, align 4
  %tobool.not.i140 = icmp eq ptr %as.0.i.i, null
  br i1 %tobool.not.i140, label %async_getpending.exit.i.if.then.i141_crit_edge, label %if.end.i142

async_getpending.exit.i.if.then.i141_crit_edge:   ; preds = %async_getpending.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i141

if.then.i141:                                     ; preds = %async_getpending.exit.i.if.then.i141_crit_edge, %for.cond.i.i.if.then.i141_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  br label %done.i.thread

if.end.i142:                                      ; preds = %async_getpending.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %urb7.i = getelementptr inbounds %struct.async, ptr %as.0.i.i, i32 0, i32 9
  %989 = ptrtoint ptr %urb7.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %urb7.i, align 4
  %call8.i = tail call ptr @usb_get_urb(ptr noundef %990) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  tail call void @usb_kill_urb(ptr noundef %990) #13
  tail call void @usb_free_urb(ptr noundef %990) #13
  br label %if.then280.i.sink.split

do.body183.i:                                     ; preds = %if.end27.i
  %991 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %991)
  %tobool184.not.i = icmp eq i8 %991, 0
  br i1 %tobool184.not.i, label %do.body183.i.do.end192.i_crit_edge, label %do.end188.i

do.body183.i.do.end192.i_crit_edge:               ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end192.i

do.end188.i:                                      ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.18) #16
  br label %do.end192.i

do.end192.i:                                      ; preds = %do.end188.i, %do.body183.i.do.end192.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ds.i) #13
  %992 = ptrtoint ptr %ds.i to i32
  call void @__asan_store4_noabort(i32 %992)
  store i32 -1, ptr %ds.i, align 4, !annotation !307
  %993 = getelementptr inbounds %struct.usbdevfs_disconnectsignal, ptr %ds.i, i32 0, i32 1
  %994 = ptrtoint ptr %993 to i32
  call void @__asan_store4_noabort(i32 %994)
  store ptr inttoptr (i32 -1 to ptr), ptr %993, align 4, !annotation !307
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i118 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i118, label %do.end192.i.if.then11.i.i.i133_crit_edge, label %land.lhs.true.i.i.i121

do.end192.i.if.then11.i.i.i133_crit_edge:         ; preds = %do.end192.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i133

land.lhs.true.i.i.i121:                           ; preds = %do.end192.i
  %995 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i.i119 = extractvalue { i32, i32 } %995, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i119)
  %cmp.i6.i.i120 = icmp eq i32 %asmresult.i.i.i119, 0
  br i1 %cmp.i6.i.i120, label %if.end.i.i.i129, label %land.lhs.true.i.i.i121.if.then11.i.i.i133_crit_edge, !prof !300

land.lhs.true.i.i.i121.if.then11.i.i.i133_crit_edge: ; preds = %land.lhs.true.i.i.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i133

if.end.i.i.i129:                                  ; preds = %land.lhs.true.i.i.i121
  %call.i.i.i.i122 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ds.i, i32 noundef 8) #13
  %996 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i123 = and i32 %996, -16384
  %997 = inttoptr i32 %and.i.i.i.i.i.i.i123 to ptr
  %cpu_domain.i.i.i.i.i.i124 = getelementptr inbounds %struct.thread_info, ptr %997, i32 0, i32 4
  %998 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i124) #8, !srcloc !304
  %and.i.i.i.i.i125 = and i32 %998, -13
  %or.i.i.i.i.i126 = or i32 %and.i.i.i.i.i125, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i126) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i127 = call i32 @arm_copy_from_user(ptr noundef nonnull %ds.i, ptr noundef %0, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %998) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i127)
  %tobool4.not.i.i.i128 = icmp eq i32 %call1.i.i.i.i127, 0
  br i1 %tobool4.not.i.i.i128, label %if.end.i134, label %if.end.i.i.i129.if.then11.i.i.i133_crit_edge, !prof !300

if.end.i.i.i129.if.then11.i.i.i133_crit_edge:     ; preds = %if.end.i.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i133

if.then11.i.i.i133:                               ; preds = %if.end.i.i.i129.if.then11.i.i.i133_crit_edge, %land.lhs.true.i.i.i121.if.then11.i.i.i133_crit_edge, %do.end192.i.if.then11.i.i.i133_crit_edge
  %res.0.i.i4.i130 = phi i32 [ %call1.i.i.i.i127, %if.end.i.i.i129.if.then11.i.i.i133_crit_edge ], [ 8, %do.end192.i.if.then11.i.i.i133_crit_edge ], [ 8, %land.lhs.true.i.i.i121.if.then11.i.i.i133_crit_edge ]
  %sub.i.i.i131 = sub i32 8, %res.0.i.i4.i130
  %add.ptr.i.i.i132 = getelementptr i8, ptr %ds.i, i32 %sub.i.i.i131
  %999 = call ptr @memset(ptr %add.ptr.i.i.i132, i32 0, i32 %res.0.i.i4.i130)
  br label %proc_disconnectsignal.exit

if.end.i134:                                      ; preds = %if.end.i.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  %1000 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load i32, ptr %ds.i, align 4
  %discsignr.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 9
  %1002 = ptrtoint ptr %discsignr.i to i32
  call void @__asan_store4_noabort(i32 %1002)
  store i32 %1001, ptr %discsignr.i, align 4
  %1003 = ptrtoint ptr %993 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %993, align 4
  %disccontext.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 12
  %1005 = ptrtoint ptr %disccontext.i to i32
  call void @__asan_store4_noabort(i32 %1005)
  store ptr %1004, ptr %disccontext.i, align 4
  br label %proc_disconnectsignal.exit

proc_disconnectsignal.exit:                       ; preds = %if.end.i134, %if.then11.i.i.i133
  %retval.0.i135 = phi i32 [ 0, %if.end.i134 ], [ -14, %if.then11.i.i.i133 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ds.i) #13
  br label %done.i

do.body195.i:                                     ; preds = %if.end27.i
  %1006 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1006)
  %tobool196.not.i = icmp eq i8 %1006, 0
  br i1 %tobool196.not.i, label %do.body195.i.do.end204.i_crit_edge, label %do.end200.i

do.body195.i.do.end204.i_crit_edge:               ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end204.i

do.end200.i:                                      ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.18) #16
  br label %do.end204.i

do.end204.i:                                      ; preds = %do.end200.i, %do.body195.i.do.end204.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2272) #13
  %1007 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i107 = and i32 %1007, -16384
  %1008 = inttoptr i32 %and.i.i.i.i107 to ptr
  %cpu_domain.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %1008, i32 0, i32 4
  %1009 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i108) #8, !srcloc !304
  %and.i.i109 = and i32 %1009, -13
  %or.i.i110 = or i32 %and.i.i109, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i110) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %1010 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !318
  %asmresult.i111 = extractvalue { i32, i32 } %1010, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1009) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i111)
  %tobool.not.i112 = icmp eq i32 %asmresult.i111, 0
  br i1 %tobool.not.i112, label %if.end.i115, label %do.end204.i.done.i.thread_crit_edge

do.end204.i.done.i.thread_crit_edge:              ; preds = %do.end204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.end.i115:                                      ; preds = %do.end204.i
  call void @__sanitizer_cov_trace_pc() #15
  %asmresult1.i113 = extractvalue { i32, i32 } %1010, 1
  %call3.i114 = tail call fastcc i32 @claimintf(ptr noundef %2, i32 noundef %asmresult1.i113) #13
  br label %done.i

do.body207.i:                                     ; preds = %if.end27.i
  %1011 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1011)
  %tobool208.not.i = icmp eq i8 %1011, 0
  br i1 %tobool208.not.i, label %do.body207.i.do.end216.i_crit_edge, label %do.end212.i

do.body207.i.do.end216.i_crit_edge:               ; preds = %do.body207.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end216.i

do.end212.i:                                      ; preds = %do.body207.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.18) #16
  br label %do.end216.i

do.end216.i:                                      ; preds = %do.end212.i, %do.body207.i.do.end216.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2282) #13
  %1012 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i92 = and i32 %1012, -16384
  %1013 = inttoptr i32 %and.i.i.i.i92 to ptr
  %cpu_domain.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %1013, i32 0, i32 4
  %1014 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i93) #8, !srcloc !304
  %and.i.i94 = and i32 %1014, -13
  %or.i.i95 = or i32 %and.i.i94, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i95) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %1015 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !319
  %asmresult.i96 = extractvalue { i32, i32 } %1015, 0
  %asmresult1.i97 = extractvalue { i32, i32 } %1015, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1014) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i96)
  %tobool.not.i98 = icmp eq i32 %asmresult.i96, 0
  br i1 %tobool.not.i98, label %if.end.i100, label %do.end216.i.done.i.thread_crit_edge

do.end216.i.done.i.thread_crit_edge:              ; preds = %do.end216.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.end.i100:                                      ; preds = %do.end216.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %asmresult1.i97)
  %cmp.i.i99 = icmp ugt i32 %asmresult1.i97, 31
  br i1 %cmp.i.i99, label %if.end.i100.done.i.thread_crit_edge, label %if.end.i.i103

if.end.i100.done.i.thread_crit_edge:              ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.end.i.i103:                                    ; preds = %if.end.i100
  %1016 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %dev1.i, align 4
  %call.i.i101 = tail call ptr @usb_ifnum_to_if(ptr noundef %1017, i32 noundef %asmresult1.i97) #13
  %tobool.not.i.i102 = icmp eq ptr %call.i.i101, null
  br i1 %tobool.not.i.i102, label %if.end.i.i103.done.i.thread_crit_edge, label %if.else.i.i104

if.end.i.i103.done.i.thread_crit_edge:            ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.else.i.i104:                                   ; preds = %if.end.i.i103
  %ifclaimed.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 13
  %call3.i.i = tail call i32 @_test_and_clear_bit(i32 noundef %asmresult1.i97, ptr noundef %ifclaimed.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else.i.i104.done.i.thread_crit_edge, label %if.end5.i

if.else.i.i104.done.i.thread_crit_edge:           ; preds = %if.else.i.i104
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.end5.i:                                        ; preds = %if.else.i.i104
  call void @__sanitizer_cov_trace_pc() #15
  %uevent_suppress.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %call.i.i101, i32 0, i32 7, i32 0, i32 8
  %1018 = ptrtoint ptr %uevent_suppress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1018)
  %bf.load.i.i.i = load i8, ptr %uevent_suppress.i.i.i, align 4
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 8
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 8
  store i8 %bf.set.i.i.i, ptr %uevent_suppress.i.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @usbfs_driver, ptr noundef nonnull %call.i.i101) #13
  %1019 = ptrtoint ptr %uevent_suppress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1019)
  %bf.load.i26.i.i = load i8, ptr %uevent_suppress.i.i.i, align 4
  %bf.clear.i27.i.i = and i8 %bf.load.i26.i.i, -9
  %bf.set.i28.i.i = or i8 %bf.clear.i27.i.i, %bf.clear.i.i.i
  store i8 %bf.set.i28.i.i, ptr %uevent_suppress.i.i.i, align 4
  tail call fastcc void @destroy_async_on_interface(ptr noundef %2, i32 noundef %asmresult1.i97) #13
  br label %if.then280.i.sink.split

do.body219.i:                                     ; preds = %if.end27.i
  %1020 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1020)
  %tobool220.not.i = icmp eq i8 %1020, 0
  br i1 %tobool220.not.i, label %do.body219.i.do.end228.i_crit_edge, label %do.end224.i

do.body219.i.do.end228.i_crit_edge:               ; preds = %do.body219.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end228.i

do.end224.i:                                      ; preds = %do.body219.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.18) #16
  br label %do.end228.i

do.end228.i:                                      ; preds = %do.end224.i, %do.body219.i.do.end228.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctrl.i) #13
  %1021 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %1021)
  store i32 -1, ptr %ctrl.i, align 4, !annotation !307
  %1022 = getelementptr inbounds %struct.usbdevfs_ioctl, ptr %ctrl.i, i32 0, i32 1
  %1023 = ptrtoint ptr %1022 to i32
  call void @__asan_store4_noabort(i32 %1023)
  store i32 -1, ptr %1022, align 4, !annotation !307
  %1024 = getelementptr inbounds %struct.usbdevfs_ioctl, ptr %ctrl.i, i32 0, i32 2
  %1025 = ptrtoint ptr %1024 to i32
  call void @__asan_store4_noabort(i32 %1025)
  store ptr inttoptr (i32 -1 to ptr), ptr %1024, align 4, !annotation !307
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i72 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i72, label %do.end228.i.if.then11.i.i.i87_crit_edge, label %land.lhs.true.i.i.i75

do.end228.i.if.then11.i.i.i87_crit_edge:          ; preds = %do.end228.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i87

land.lhs.true.i.i.i75:                            ; preds = %do.end228.i
  %1026 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i.i73 = extractvalue { i32, i32 } %1026, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i73)
  %cmp.i6.i.i74 = icmp eq i32 %asmresult.i.i.i73, 0
  br i1 %cmp.i6.i.i74, label %if.end.i.i.i83, label %land.lhs.true.i.i.i75.if.then11.i.i.i87_crit_edge, !prof !300

land.lhs.true.i.i.i75.if.then11.i.i.i87_crit_edge: ; preds = %land.lhs.true.i.i.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i87

if.end.i.i.i83:                                   ; preds = %land.lhs.true.i.i.i75
  %call.i.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ctrl.i, i32 noundef 12) #13
  %1027 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i77 = and i32 %1027, -16384
  %1028 = inttoptr i32 %and.i.i.i.i.i.i.i77 to ptr
  %cpu_domain.i.i.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %1028, i32 0, i32 4
  %1029 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i78) #8, !srcloc !304
  %and.i.i.i.i.i79 = and i32 %1029, -13
  %or.i.i.i.i.i80 = or i32 %and.i.i.i.i.i79, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i80) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i81 = call i32 @arm_copy_from_user(ptr noundef nonnull %ctrl.i, ptr noundef %0, i32 noundef 12) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1029) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i81)
  %tobool4.not.i.i.i82 = icmp eq i32 %call1.i.i.i.i81, 0
  br i1 %tobool4.not.i.i.i82, label %if.end.i89, label %if.end.i.i.i83.if.then11.i.i.i87_crit_edge, !prof !300

if.end.i.i.i83.if.then11.i.i.i87_crit_edge:       ; preds = %if.end.i.i.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i87

if.then11.i.i.i87:                                ; preds = %if.end.i.i.i83.if.then11.i.i.i87_crit_edge, %land.lhs.true.i.i.i75.if.then11.i.i.i87_crit_edge, %do.end228.i.if.then11.i.i.i87_crit_edge
  %res.0.i.i4.i84 = phi i32 [ %call1.i.i.i.i81, %if.end.i.i.i83.if.then11.i.i.i87_crit_edge ], [ 12, %do.end228.i.if.then11.i.i.i87_crit_edge ], [ 12, %land.lhs.true.i.i.i75.if.then11.i.i.i87_crit_edge ]
  %sub.i.i.i85 = sub i32 12, %res.0.i.i4.i84
  %add.ptr.i.i.i86 = getelementptr i8, ptr %ctrl.i, i32 %sub.i.i.i85
  %1030 = call ptr @memset(ptr %add.ptr.i.i.i86, i32 0, i32 %res.0.i.i4.i84)
  br label %proc_ioctl_default.exit

if.end.i89:                                       ; preds = %if.end.i.i.i83
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i88 = call fastcc i32 @proc_ioctl(ptr noundef %2, ptr noundef nonnull %ctrl.i) #13
  br label %proc_ioctl_default.exit

proc_ioctl_default.exit:                          ; preds = %if.end.i89, %if.then11.i.i.i87
  %retval.0.i90 = phi i32 [ %call1.i88, %if.end.i89 ], [ -14, %if.then11.i.i.i87 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctrl.i) #13
  br label %done.i

do.body231.i:                                     ; preds = %if.end27.i
  %1031 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1031)
  %tobool232.not.i = icmp eq i8 %1031, 0
  br i1 %tobool232.not.i, label %do.body231.i.do.end240.i_crit_edge, label %do.end236.i

do.body231.i.do.end240.i_crit_edge:               ; preds = %do.body231.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end240.i

do.end236.i:                                      ; preds = %do.body231.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.18) #16
  br label %do.end240.i

do.end240.i:                                      ; preds = %do.end236.i, %do.body231.i.do.end240.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2398) #13
  %1032 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i56 = and i32 %1032, -16384
  %1033 = inttoptr i32 %and.i.i.i.i56 to ptr
  %cpu_domain.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %1033, i32 0, i32 4
  %1034 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i57) #8, !srcloc !304
  %and.i.i58 = and i32 %1034, -13
  %or.i.i59 = or i32 %and.i.i58, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i59) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %1035 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !320
  %asmresult.i60 = extractvalue { i32, i32 } %1035, 0
  %asmresult1.i61 = extractvalue { i32, i32 } %1035, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1034) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i60)
  %tobool.not.i62 = icmp eq i32 %asmresult.i60, 0
  br i1 %tobool.not.i62, label %if.end.i66, label %do.end240.i.done.i.thread_crit_edge

do.end240.i.done.i.thread_crit_edge:              ; preds = %do.end240.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.end.i66:                                       ; preds = %do.end240.i
  %1036 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %dev1.i, align 4
  %call3.i64 = tail call i32 @usb_hub_claim_port(ptr noundef %1037, i32 noundef %asmresult1.i61, ptr noundef %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i64)
  %cmp.i65 = icmp eq i32 %call3.i64, 0
  br i1 %cmp.i65, label %do.body.i68, label %if.end.i66.done.i_crit_edge

if.end.i66.done.i_crit_edge:                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i

do.body.i68:                                      ; preds = %if.end.i66
  %1038 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1038)
  %tobool5.not.i67 = icmp eq i8 %1038, 0
  br i1 %tobool5.not.i67, label %do.body.i68.if.then280.i.sink.split_crit_edge, label %do.end.i69

do.body.i68.if.then280.i.sink.split_crit_edge:    ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then280.i.sink.split

do.end.i69:                                       ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #15
  %1039 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %dev1.i, align 4
  %dev9.i = getelementptr inbounds %struct.usb_device, ptr %1040, i32 0, i32 15
  %1041 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i23.i = and i32 %1041, -16384
  %1042 = inttoptr i32 %and.i23.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1042, i32 0, i32 2
  %1043 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %1044, i32 0, i32 68
  %1045 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load i32, ptr %pid.i.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %1044, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull @.str.131, i32 noundef %asmresult1.i61, i32 noundef %1046, ptr noundef %comm.i) #16
  br label %if.then280.i.sink.split

do.body243.i:                                     ; preds = %if.end27.i
  %1047 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1047)
  %tobool244.not.i = icmp eq i8 %1047, 0
  br i1 %tobool244.not.i, label %do.body243.i.do.end252.i_crit_edge, label %do.end248.i

do.body243.i.do.end252.i_crit_edge:               ; preds = %do.body243.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end252.i

do.end248.i:                                      ; preds = %do.body243.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.18) #16
  br label %do.end252.i

do.end252.i:                                      ; preds = %do.end248.i, %do.body243.i.do.end252.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2411) #13
  %1048 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i47 = and i32 %1048, -16384
  %1049 = inttoptr i32 %and.i.i.i.i47 to ptr
  %cpu_domain.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %1049, i32 0, i32 4
  %1050 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i48) #8, !srcloc !304
  %and.i.i49 = and i32 %1050, -13
  %or.i.i50 = or i32 %and.i.i49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i50) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %1051 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !321
  %asmresult.i = extractvalue { i32, i32 } %1051, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1050) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i51 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i51, label %if.end.i53, label %do.end252.i.done.i.thread_crit_edge

do.end252.i.done.i.thread_crit_edge:              ; preds = %do.end252.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.end.i53:                                       ; preds = %do.end252.i
  call void @__sanitizer_cov_trace_pc() #15
  %asmresult1.i = extractvalue { i32, i32 } %1051, 1
  %1052 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %dev1.i, align 4
  %call3.i = tail call i32 @usb_hub_release_port(ptr noundef %1053, i32 noundef %asmresult1.i, ptr noundef %2) #13
  br label %done.i

sw.bb254.i:                                       ; preds = %if.end27.i
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 12
  %1054 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %bus.i, align 8
  %no_stop_on_short.i = getelementptr inbounds %struct.usb_bus, ptr %1055, i32 0, i32 6
  %1056 = ptrtoint ptr %no_stop_on_short.i to i32
  call void @__asan_load1_noabort(i32 %1056)
  %bf.load.i = load i8, ptr %no_stop_on_short.i, align 2
  %1057 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1057)
  %tobool.not.i44 = icmp eq i8 %1057, 0
  %spec.select.i = select i1 %tobool.not.i44, i32 503, i32 501
  %sg_tablesize.i = getelementptr inbounds %struct.usb_bus, ptr %1055, i32 0, i32 7
  %1058 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load i32, ptr %sg_tablesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1059)
  %tobool3.not.i45 = icmp eq i32 %1059, 0
  %or5.i = or i32 %spec.select.i, 8
  %caps.1.i = select i1 %tobool3.not.i45, i32 %spec.select.i, i32 %or5.i
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2429) #13
  %1060 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i = and i32 %1060, -16384
  %1061 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1061, i32 0, i32 4
  %1062 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #8, !srcloc !304
  %and.i.i = and i32 %1062, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %1063 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %caps.1.i, i32 -1226833921) #13, !srcloc !322
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1062) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1063)
  %tobool8.not.i = icmp eq i32 %1063, 0
  br i1 %tobool8.not.i, label %sw.bb254.i.if.then280.i.sink.split_crit_edge, label %sw.bb254.i.done.i.thread_crit_edge

sw.bb254.i.done.i.thread_crit_edge:               ; preds = %sw.bb254.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

sw.bb254.i.if.then280.i.sink.split_crit_edge:     ; preds = %sw.bb254.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then280.i.sink.split

sw.bb256.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %call257.i = tail call fastcc i32 @proc_disconnect_claim(ptr noundef %2, ptr noundef %0) #13
  br label %done.i

sw.bb258.i:                                       ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_streams.i) #13
  %1064 = ptrtoint ptr %num_streams.i to i32
  call void @__asan_store4_noabort(i32 %1064)
  store i32 -1, ptr %num_streams.i, align 4, !annotation !307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_eps.i32) #13
  %1065 = ptrtoint ptr %num_eps.i32 to i32
  call void @__asan_store4_noabort(i32 %1065)
  store i32 -1, ptr %num_eps.i32, align 4, !annotation !307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eps.i33) #13
  %1066 = ptrtoint ptr %eps.i33 to i32
  call void @__asan_store4_noabort(i32 %1066)
  store ptr inttoptr (i32 -1 to ptr), ptr %eps.i33, align 4, !annotation !307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intf.i34) #13
  %1067 = ptrtoint ptr %intf.i34 to i32
  call void @__asan_store4_noabort(i32 %1067)
  store ptr inttoptr (i32 -1 to ptr), ptr %intf.i34, align 4, !annotation !307
  %call.i35 = call fastcc i32 @parse_usbdevfs_streams(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %num_streams.i, ptr noundef nonnull %num_eps.i32, ptr noundef nonnull %eps.i33, ptr noundef nonnull %intf.i34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end.i40, label %sw.bb258.i.proc_alloc_streams.exit_crit_edge

sw.bb258.i.proc_alloc_streams.exit_crit_edge:     ; preds = %sw.bb258.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_alloc_streams.exit

if.end.i40:                                       ; preds = %sw.bb258.i
  call void @__sanitizer_cov_trace_pc() #15
  %1068 = ptrtoint ptr %intf.i34 to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %intf.i34, align 4
  %1070 = ptrtoint ptr %1069 to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %1069, align 8
  %bInterfaceNumber.i37 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1071, i32 0, i32 2
  %1072 = ptrtoint ptr %bInterfaceNumber.i37 to i32
  call void @__asan_load1_noabort(i32 %1072)
  %1073 = load i8, ptr %bInterfaceNumber.i37, align 2
  %conv.i38 = zext i8 %1073 to i32
  call fastcc void @destroy_async_on_interface(ptr noundef %2, i32 noundef %conv.i38) #13
  %1074 = ptrtoint ptr %eps.i33 to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %eps.i33, align 4
  %1076 = ptrtoint ptr %num_eps.i32 to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load i32, ptr %num_eps.i32, align 4
  %1078 = ptrtoint ptr %num_streams.i to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load i32, ptr %num_streams.i, align 4
  %call1.i39 = call i32 @usb_alloc_streams(ptr noundef %1069, ptr noundef %1075, i32 noundef %1077, i32 noundef %1079, i32 noundef 3264) #13
  call void @kfree(ptr noundef %1075) #13
  br label %proc_alloc_streams.exit

proc_alloc_streams.exit:                          ; preds = %if.end.i40, %sw.bb258.i.proc_alloc_streams.exit_crit_edge
  %retval.0.i41 = phi i32 [ %call1.i39, %if.end.i40 ], [ %call.i35, %sw.bb258.i.proc_alloc_streams.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intf.i34) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eps.i33) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_eps.i32) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_streams.i) #13
  br label %done.i

sw.bb260.i:                                       ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_eps.i) #13
  %1080 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_store4_noabort(i32 %1080)
  store i32 -1, ptr %num_eps.i, align 4, !annotation !307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eps.i) #13
  %1081 = ptrtoint ptr %eps.i to i32
  call void @__asan_store4_noabort(i32 %1081)
  store ptr inttoptr (i32 -1 to ptr), ptr %eps.i, align 4, !annotation !307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intf.i) #13
  %1082 = ptrtoint ptr %intf.i to i32
  call void @__asan_store4_noabort(i32 %1082)
  store ptr inttoptr (i32 -1 to ptr), ptr %intf.i, align 4, !annotation !307
  %call.i27 = call fastcc i32 @parse_usbdevfs_streams(ptr noundef %2, ptr noundef %0, ptr noundef null, ptr noundef nonnull %num_eps.i, ptr noundef nonnull %eps.i, ptr noundef nonnull %intf.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.end.i29, label %sw.bb260.i.proc_free_streams.exit_crit_edge

sw.bb260.i.proc_free_streams.exit_crit_edge:      ; preds = %sw.bb260.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_free_streams.exit

if.end.i29:                                       ; preds = %sw.bb260.i
  call void @__sanitizer_cov_trace_pc() #15
  %1083 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load ptr, ptr %intf.i, align 4
  %1085 = ptrtoint ptr %1084 to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %1084, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1086, i32 0, i32 2
  %1087 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %1087)
  %1088 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %1088 to i32
  tail call fastcc void @destroy_async_on_interface(ptr noundef %2, i32 noundef %conv.i) #13
  %1089 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load ptr, ptr %eps.i, align 4
  %1091 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load i32, ptr %num_eps.i, align 4
  %call1.i = tail call i32 @usb_free_streams(ptr noundef %1084, ptr noundef %1090, i32 noundef %1092, i32 noundef 3264) #13
  tail call void @kfree(ptr noundef %1090) #13
  br label %proc_free_streams.exit

proc_free_streams.exit:                           ; preds = %if.end.i29, %sw.bb260.i.proc_free_streams.exit_crit_edge
  %retval.0.i30 = phi i32 [ %call1.i, %if.end.i29 ], [ %call.i27, %sw.bb260.i.proc_free_streams.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intf.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eps.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_eps.i) #13
  br label %done.i

sw.bb262.i:                                       ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #13
  %1093 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1093)
  store i32 -1, ptr %data.i, align 4, !annotation !307
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %sw.bb262.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb262.i.if.then11.i.i.i_crit_edge:             ; preds = %sw.bb262.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb262.i
  %1094 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i.i = extractvalue { i32, i32 } %1094, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !300

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i22 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data.i, i32 noundef 4) #13
  %1095 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i.i = and i32 %1095, -16384
  %1096 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1096, i32 0, i32 4
  %1097 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !304
  %and.i.i.i.i.i = and i32 %1097, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data.i, ptr noundef %0, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1097) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i24, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !300

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb262.i.if.then11.i.i.i_crit_edge
  %res.0.i.i4.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 4, %sw.bb262.i.if.then11.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 4, %res.0.i.i4.i
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i, i32 %sub.i.i.i
  %1098 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i4.i)
  br label %proc_drop_privileges.exit

if.end.i24:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %1099 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load i32, ptr %data.i, align 4
  %interface_allowed_mask.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 15
  %1101 = ptrtoint ptr %interface_allowed_mask.i to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load i32, ptr %interface_allowed_mask.i, align 4
  %and.i23 = and i32 %1102, %1100
  store i32 %and.i23, ptr %interface_allowed_mask.i, align 4
  %privileges_dropped.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 18
  %1103 = ptrtoint ptr %privileges_dropped.i to i32
  call void @__asan_store1_noabort(i32 %1103)
  store i8 1, ptr %privileges_dropped.i, align 1
  br label %proc_drop_privileges.exit

proc_drop_privileges.exit:                        ; preds = %if.end.i24, %if.then11.i.i.i
  %retval.0.i25 = phi i32 [ 0, %if.end.i24 ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #13
  br label %done.i

sw.bb264.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 4
  %1104 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load i32, ptr %speed.i, align 4
  br label %done.i

sw.bb266.i:                                       ; preds = %if.end27.i
  %suspend_allowed.i16 = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 17
  %1106 = ptrtoint ptr %suspend_allowed.i16 to i32
  call void @__asan_load1_noabort(i32 %1106)
  %1107 = load i8, ptr %suspend_allowed.i16, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1107)
  %tobool.not.i17 = icmp eq i8 %1107, 0
  br i1 %tobool.not.i17, label %sw.bb266.i.if.then280.i.sink.split_crit_edge, label %if.then.i21

sw.bb266.i.if.then280.i.sink.split_crit_edge:     ; preds = %sw.bb266.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then280.i.sink.split

if.then.i21:                                      ; preds = %sw.bb266.i
  %call.i19 = tail call i32 @usb_autoresume_device(ptr noundef %52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.i20 = icmp eq i32 %call.i19, 0
  br i1 %cmp.i20, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #15
  %1108 = ptrtoint ptr %suspend_allowed.i16 to i32
  call void @__asan_store1_noabort(i32 %1108)
  store i8 0, ptr %suspend_allowed.i16, align 4
  br label %if.then280.i.sink.split

if.else.i:                                        ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i19)
  %cmp3.not.i = icmp eq i32 %call.i19, -19
  %spec.store.select.i = select i1 %cmp3.not.i, i32 -19, i32 -5
  br label %done.i.thread

sw.bb268.i:                                       ; preds = %if.end27.i
  %1109 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load volatile ptr, ptr %2, align 4
  %cmp.i.not.i.i10 = icmp eq ptr %1110, %2
  br i1 %cmp.i.not.i.i10, label %sw.bb268.i.done.i.thread_crit_edge, label %do.body2.i

sw.bb268.i.done.i.thread_crit_edge:               ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

do.body2.i:                                       ; preds = %sw.bb268.i
  %not_yet_resumed.i14 = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 16
  %1111 = ptrtoint ptr %not_yet_resumed.i14 to i32
  call void @__asan_store4_noabort(i32 %1111)
  store volatile i32 1, ptr %not_yet_resumed.i14, align 4
  %suspend_allowed.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 17
  %1112 = ptrtoint ptr %suspend_allowed.i to i32
  call void @__asan_load1_noabort(i32 %1112)
  %1113 = load i8, ptr %suspend_allowed.i, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1113)
  %tobool5.not.i = icmp eq i8 %1113, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %do.body2.i.if.then280.i.sink.split_crit_edge

do.body2.i.if.then280.i.sink.split_crit_edge:     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then280.i.sink.split

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_autosuspend_device(ptr noundef %52) #13
  %1114 = ptrtoint ptr %suspend_allowed.i to i32
  call void @__asan_store1_noabort(i32 %1114)
  store i8 1, ptr %suspend_allowed.i, align 4
  br label %if.then280.i.sink.split

sw.bb270.i:                                       ; preds = %if.end27.i
  %mutex.i.i1 = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 15, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i1) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 2559) #13
  %not_yet_resumed.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 16
  %1115 = ptrtoint ptr %not_yet_resumed.i to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load volatile i32, ptr %not_yet_resumed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1116)
  %cmp.i2 = icmp eq i32 %1116, 0
  br i1 %cmp.i2, label %sw.bb270.i.if.end20.i_crit_edge, label %if.then.i

sw.bb270.i.if.end20.i_crit_edge:                  ; preds = %sw.bb270.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then.i:                                        ; preds = %sw.bb270.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  %1117 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #13
  %wait_for_resume.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 8
  %call46.i = call i32 @prepare_to_wait_event(ptr noundef %wait_for_resume.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #13
  %1118 = ptrtoint ptr %not_yet_resumed.i to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load volatile i32, ptr %not_yet_resumed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1119)
  %cmp1447.i = icmp eq i32 %1119, 0
  br i1 %cmp1447.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.if.end.i4_crit_edge

if.then.i.if.end.i4_crit_edge:                    ; preds = %if.then.i
  br label %if.end.i4

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end.i4:                                        ; preds = %cleanup.i.if.end.i4_crit_edge, %if.then.i.if.end.i4_crit_edge
  %call48.i = phi i32 [ %call.i, %cleanup.i.if.end.i4_crit_edge ], [ %call46.i, %if.then.i.if.end.i4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool.not.i3 = icmp eq i32 %call48.i, 0
  br i1 %tobool.not.i3, label %cleanup.i, label %if.end.i4.__out.i_crit_edge

if.end.i4.__out.i_crit_edge:                      ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out.i

cleanup.i:                                        ; preds = %if.end.i4
  call void @schedule() #13
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %wait_for_resume.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #13
  %1120 = ptrtoint ptr %not_yet_resumed.i to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load volatile i32, ptr %not_yet_resumed.i, align 4
  %cmp14.i = icmp eq i32 %1121, 0
  br i1 %cmp14.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end.i4_crit_edge

cleanup.i.if.end.i4_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i4

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wait_for_resume.i, ptr noundef nonnull %__wq_entry.i) #13
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end.i4.__out.i_crit_edge
  %__ret8.139.i = phi i32 [ 0, %for.end.i ], [ %call48.i, %if.end.i4.__out.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %__out.i, %sw.bb270.i.if.end20.i_crit_edge
  %__ret.0.i = phi i32 [ 0, %sw.bb270.i.if.end20.i_crit_edge ], [ %__ret8.139.i, %__out.i ]
  %1122 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %dev1.i, align 4
  %mutex.i36.i = getelementptr inbounds %struct.usb_device, ptr %1123, i32 0, i32 15, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i36.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i)
  %cmp24.not.i = icmp eq i32 %__ret.0.i, 0
  br i1 %cmp24.not.i, label %if.end26.i, label %if.end20.i.done.i.thread_crit_edge

if.end20.i.done.i.thread_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i.thread

if.end26.i:                                       ; preds = %if.end20.i
  %suspend_allowed.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 17
  %1124 = ptrtoint ptr %suspend_allowed.i.i to i32
  call void @__asan_load1_noabort(i32 %1124)
  %1125 = load i8, ptr %suspend_allowed.i.i, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1125)
  %tobool.not.i.i5 = icmp eq i8 %1125, 0
  br i1 %tobool.not.i.i5, label %if.end26.i.if.then280.i.sink.split_crit_edge, label %if.then.i.i7

if.end26.i.if.then280.i.sink.split_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then280.i.sink.split

if.then.i.i7:                                     ; preds = %if.end26.i
  %1126 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %dev1.i, align 4
  %call.i.i6 = call i32 @usb_autoresume_device(ptr noundef %1127) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.i.i = icmp eq i32 %call.i.i6, 0
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.else.i.i8

if.then1.i.i:                                     ; preds = %if.then.i.i7
  call void @__sanitizer_cov_trace_pc() #15
  %1128 = ptrtoint ptr %suspend_allowed.i.i to i32
  call void @__asan_store1_noabort(i32 %1128)
  store i8 0, ptr %suspend_allowed.i.i, align 4
  br label %if.then280.i.sink.split

if.else.i.i8:                                     ; preds = %if.then.i.i7
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i6)
  %cmp3.not.i.i = icmp eq i32 %call.i.i6, -19
  %spec.store.select.i.i = select i1 %cmp3.not.i.i, i32 -19, i32 -5
  br label %done.i.thread

sw.epilog272.i:                                   ; preds = %if.end27.i
  %and273.i = and i32 %cmd, -1073676289
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147461856, i32 %and273.i)
  %cond.i = icmp eq i32 %and273.i, -2147461856
  br i1 %cond.i, label %sw.bb274.i, label %sw.epilog272.i.done.thread.i_crit_edge

sw.epilog272.i.done.thread.i_crit_edge:           ; preds = %sw.epilog272.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.thread.i

sw.bb274.i:                                       ; preds = %sw.epilog272.i
  %shr.i = lshr i32 %cmd, 16
  %and275.i = and i32 %shr.i, 16383
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ci.i.i) #13
  %1129 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %ci.i.i, i32 0, i32 4
  %1130 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %ci.i.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and275.i)
  %cmp.i394.i = icmp ult i32 %and275.i, 4
  br i1 %cmp.i394.i, label %sw.bb274.i.proc_conninfo_ex.exit.i_crit_edge, label %if.end.i.i

sw.bb274.i.proc_conninfo_ex.exit.i_crit_edge:     ; preds = %sw.bb274.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %proc_conninfo_ex.exit.i

if.end.i.i:                                       ; preds = %sw.bb274.i
  %1131 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %ci.i.i, i32 0, i32 3
  %1132 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %ci.i.i, i32 0, i32 2
  %1133 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %ci.i.i, i32 0, i32 1
  %1134 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %dev1.i, align 4
  %1136 = ptrtoint ptr %1129 to i32
  call void @__asan_storeN_noabort(i32 %1136, i32 8)
  store i64 0, ptr %1129, align 4
  %1137 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_store4_noabort(i32 %1137)
  store i32 24, ptr %ci.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %1135, i32 0, i32 12
  %1138 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %bus.i.i, align 8
  %busnum.i.i = getelementptr inbounds %struct.usb_bus, ptr %1139, i32 0, i32 2
  %1140 = ptrtoint ptr %busnum.i.i to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load i32, ptr %busnum.i.i, align 4
  %1142 = ptrtoint ptr %1133 to i32
  call void @__asan_store4_noabort(i32 %1142)
  store i32 %1141, ptr %1133, align 4
  %1143 = ptrtoint ptr %1135 to i32
  call void @__asan_load4_noabort(i32 %1143)
  %1144 = load i32, ptr %1135, align 8
  %1145 = ptrtoint ptr %1132 to i32
  call void @__asan_store4_noabort(i32 %1145)
  store i32 %1144, ptr %1132, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %1135, i32 0, i32 4
  %1146 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load i32, ptr %speed.i.i, align 4
  %1148 = ptrtoint ptr %1131 to i32
  call void @__asan_store4_noabort(i32 %1148)
  store i32 %1147, ptr %1131, align 4
  %tobool.not45.i.i = icmp eq ptr %1135, null
  br i1 %tobool.not45.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %if.end.i.i.land.rhs.i396.i_crit_edge

if.end.i.i.land.rhs.i396.i_crit_edge:             ; preds = %if.end.i.i
  br label %land.rhs.i396.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

land.rhs.i396.i:                                  ; preds = %if.end14.i.i.land.rhs.i396.i_crit_edge, %if.end.i.i.land.rhs.i396.i_crit_edge
  %udev.046.i.i = phi ptr [ %1155, %if.end14.i.i.land.rhs.i396.i_crit_edge ], [ %1135, %if.end.i.i.land.rhs.i396.i_crit_edge ]
  %portnum.i.i = getelementptr inbounds %struct.usb_device, ptr %udev.046.i.i, i32 0, i32 25
  %1149 = ptrtoint ptr %portnum.i.i to i32
  call void @__asan_load1_noabort(i32 %1149)
  %1150 = load i8, ptr %portnum.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1150)
  %cmp5.not.i.i = icmp eq i8 %1150, 0
  br i1 %cmp5.not.i.i, label %land.rhs.i396.i.while.end.i.i_crit_edge, label %while.body.i.i

land.rhs.i396.i.while.end.i.i_crit_edge:          ; preds = %land.rhs.i396.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs.i396.i
  %1151 = ptrtoint ptr %1129 to i32
  call void @__asan_load1_noabort(i32 %1151)
  %1152 = load i8, ptr %1129, align 4
  %inc.i.i = add i8 %1152, 1
  store i8 %inc.i.i, ptr %1129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc.i.i)
  %cmp8.i.i = icmp ult i8 %inc.i.i, 8
  br i1 %cmp8.i.i, label %if.then10.i.i, label %while.body.i.i.if.end14.i.i_crit_edge

while.body.i.i.if.end14.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i.i

if.then10.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i = zext i8 %inc.i.i to i32
  %sub.i.i = sub nuw nsw i32 7, %conv7.i.i
  %arrayidx.i.i = getelementptr %struct.usbdevfs_conninfo_ex, ptr %ci.i.i, i32 0, i32 5, i32 %sub.i.i
  %1153 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %1153)
  store i8 %1150, ptr %arrayidx.i.i, align 1
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then10.i.i, %while.body.i.i.if.end14.i.i_crit_edge
  %parent.i.i = getelementptr inbounds %struct.usb_device, ptr %udev.046.i.i, i32 0, i32 11
  %1154 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i397.i = icmp eq ptr %1155, null
  br i1 %tobool.not.i397.i, label %if.end14.i.i.while.end.i.i_crit_edge, label %if.end14.i.i.land.rhs.i396.i_crit_edge

if.end14.i.i.land.rhs.i396.i_crit_edge:           ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i396.i

if.end14.i.i.while.end.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end14.i.i.while.end.i.i_crit_edge, %land.rhs.i396.i.while.end.i.i_crit_edge, %if.end.i.i.while.end.i.i_crit_edge
  %1156 = ptrtoint ptr %1129 to i32
  call void @__asan_load1_noabort(i32 %1156)
  %1157 = load i8, ptr %1129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1157)
  %cmp17.i.i = icmp ult i8 %1157, 7
  br i1 %cmp17.i.i, label %if.then19.i.i, label %while.end.i.i.if.end29.i.i_crit_edge

while.end.i.i.if.end29.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.then19.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv16.i.i = zext i8 %1157 to i32
  %sub25.i.i = sub nuw nsw i32 7, %conv16.i.i
  %arrayidx26.i.i = getelementptr %struct.usbdevfs_conninfo_ex, ptr %ci.i.i, i32 0, i32 5, i32 %sub25.i.i
  %1158 = call ptr @memmove(ptr %1130, ptr %arrayidx26.i.i, i32 %conv16.i.i)
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then19.i.i, %while.end.i.i.if.end29.i.i_crit_edge
  %1159 = tail call i32 @llvm.umin.i32(i32 %and275.i, i32 24) #13
  call void @__check_object_size(ptr noundef nonnull %ci.i.i, i32 noundef %1159, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end29.i.i.copy_to_user.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end29.i.i.copy_to_user.exit.i.i_crit_edge:     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end29.i.i
  %1160 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1159, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1160, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge

if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i399.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ci.i.i, i32 noundef %1159) #13
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ci.i.i, i32 noundef %1159) #13
  br label %copy_to_user.exit.i.i

copy_to_user.exit.i.i:                            ; preds = %if.then2.i.i.i.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge, %if.end29.i.i.copy_to_user.exit.i.i_crit_edge
  %n.addr.0.i.i.i = phi i32 [ %1159, %if.end29.i.i.copy_to_user.exit.i.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %1159, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %n.addr.0.i.i.i, 0
  %spec.select.i400.i = select i1 %tobool32.not.i.i, i32 0, i32 -14
  br label %proc_conninfo_ex.exit.i

proc_conninfo_ex.exit.i:                          ; preds = %copy_to_user.exit.i.i, %sw.bb274.i.proc_conninfo_ex.exit.i_crit_edge
  %retval.0.i401.i = phi i32 [ -22, %sw.bb274.i.proc_conninfo_ex.exit.i_crit_edge ], [ %spec.select.i400.i, %copy_to_user.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ci.i.i) #13
  br label %done.i

done.thread.i:                                    ; preds = %sw.epilog272.i.done.thread.i_crit_edge, %connected.exit.thread.i.i, %connected.exit.i.i.done.thread.i_crit_edge, %signal_pending.exit.i.i, %if.end9.i.i.done.thread.i_crit_edge
  %ret.1.ph.i = phi i32 [ -11, %connected.exit.i.i.done.thread.i_crit_edge ], [ -19, %connected.exit.thread.i.i ], [ %spec.select.i.i, %signal_pending.exit.i.i ], [ -4, %if.end9.i.i.done.thread.i_crit_edge ], [ -25, %sw.epilog272.i.done.thread.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #13
  br label %usbdev_do_ioctl.exit

done.thread417.i:                                 ; preds = %proc_submiturb.exit.done.thread417.i_crit_edge, %proc_submiturb.exit.thread, %proc_clearhalt.exit.done.thread417.i_crit_edge, %if.end.i40.i.done.thread417.i_crit_edge, %findintfep.exit.i.done.thread417.i_crit_edge, %for.inc30.i.i.done.thread417.i_crit_edge, %for.cond.preheader.i.i.done.thread417.i_crit_edge, %if.end.i.i276.done.thread417.i_crit_edge, %if.end.i275.done.thread417.i_crit_edge, %do.end98.i.done.thread417.i_crit_edge, %proc_resetep.exit.done.thread417.i_crit_edge, %if.end.i23.i.done.thread417.i_crit_edge, %findintfep.exit.i375.done.thread417.i_crit_edge, %for.inc30.i.i370.done.thread417.i_crit_edge, %for.cond.preheader.i.i342.done.thread417.i_crit_edge, %if.end.i.i338.done.thread417.i_crit_edge, %if.end.i335.done.thread417.i_crit_edge, %do.end69.i.done.thread417.i_crit_edge, %proc_bulk.exit.done.thread417.i_crit_edge, %proc_bulk.exit.thread794, %proc_bulk.exit.thread, %proc_control.exit.done.thread417.i_crit_edge, %proc_control.exit.thread789, %proc_control.exit.thread
  %ret.1.ph416.i = phi i32 [ %retval.0.i185, %proc_submiturb.exit.done.thread417.i_crit_edge ], [ %retval.0.i301, %proc_clearhalt.exit.done.thread417.i_crit_edge ], [ %call12.i.i386, %proc_resetep.exit.done.thread417.i_crit_edge ], [ %retval.0.i.i, %proc_bulk.exit.done.thread417.i_crit_edge ], [ %retval.0.i.i605, %proc_control.exit.done.thread417.i_crit_edge ], [ -14, %proc_control.exit.thread ], [ -22, %proc_control.exit.thread789 ], [ -14, %proc_bulk.exit.thread ], [ %retval.0.i.i.ph, %proc_bulk.exit.thread794 ], [ %retval.0.i185.ph, %proc_submiturb.exit.thread ], [ -113, %findintfep.exit.i375.done.thread417.i_crit_edge ], [ -22, %if.end.i23.i.done.thread417.i_crit_edge ], [ -22, %if.end.i335.done.thread417.i_crit_edge ], [ -3, %if.end.i.i338.done.thread417.i_crit_edge ], [ -2, %for.cond.preheader.i.i342.done.thread417.i_crit_edge ], [ -14, %do.end69.i.done.thread417.i_crit_edge ], [ -113, %findintfep.exit.i.done.thread417.i_crit_edge ], [ -22, %if.end.i40.i.done.thread417.i_crit_edge ], [ -22, %if.end.i275.done.thread417.i_crit_edge ], [ -3, %if.end.i.i276.done.thread417.i_crit_edge ], [ -2, %for.cond.preheader.i.i.done.thread417.i_crit_edge ], [ -14, %do.end98.i.done.thread417.i_crit_edge ], [ -2, %for.inc30.i.i370.done.thread417.i_crit_edge ], [ -2, %for.inc30.i.i.done.thread417.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i.i) #13
  br label %usbdev_do_ioctl.exit

done.i.thread:                                    ; preds = %if.else.i.i8, %if.end20.i.done.i.thread_crit_edge, %sw.bb268.i.done.i.thread_crit_edge, %if.else.i, %sw.bb254.i.done.i.thread_crit_edge, %do.end252.i.done.i.thread_crit_edge, %do.end240.i.done.i.thread_crit_edge, %if.else.i.i104.done.i.thread_crit_edge, %if.end.i.i103.done.i.thread_crit_edge, %if.end.i100.done.i.thread_crit_edge, %do.end216.i.done.i.thread_crit_edge, %do.end204.i.done.i.thread_crit_edge, %if.then.i141, %if.end21.i, %do.end151.i.done.i.thread_crit_edge, %do.end.i321
  %ret.1.i.ph = phi i32 [ %spec.store.select.i.i, %if.else.i.i8 ], [ -4, %if.end20.i.done.i.thread_crit_edge ], [ -19, %sw.bb268.i.done.i.thread_crit_edge ], [ %spec.store.select.i, %if.else.i ], [ -14, %do.end252.i.done.i.thread_crit_edge ], [ -14, %do.end240.i.done.i.thread_crit_edge ], [ -22, %if.end.i100.done.i.thread_crit_edge ], [ -22, %if.else.i.i104.done.i.thread_crit_edge ], [ -2, %if.end.i.i103.done.i.thread_crit_edge ], [ -14, %do.end216.i.done.i.thread_crit_edge ], [ -14, %do.end204.i.done.i.thread_crit_edge ], [ -22, %if.then.i141 ], [ -16, %if.end21.i ], [ -14, %do.end151.i.done.i.thread_crit_edge ], [ -13, %do.end.i321 ], [ -14, %sw.bb254.i.done.i.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i.i) #13
  br label %usbdev_do_ioctl.exit

done.i:                                           ; preds = %proc_conninfo_ex.exit.i, %sw.bb264.i, %proc_drop_privileges.exit, %proc_free_streams.exit, %proc_alloc_streams.exit, %sw.bb256.i, %if.end.i53, %if.end.i66.done.i_crit_edge, %proc_ioctl_default.exit, %if.end.i115, %proc_disconnectsignal.exit, %if.else.i201, %if.then30.i, %proc_setintf.exit, %proc_connectinfo.exit, %proc_getdriver.exit, %if.end16.i, %do.end7.i390.i, %do.end7.i.i
  %ret.1.i = phi i32 [ %retval.0.i401.i, %proc_conninfo_ex.exit.i ], [ %call8.i.i, %do.end7.i.i ], [ %call8.i389.i, %do.end7.i390.i ], [ %retval.0.i264, %proc_getdriver.exit ], [ %468, %proc_connectinfo.exit ], [ %retval.0.i229, %proc_setintf.exit ], [ %retval.0.i135, %proc_disconnectsignal.exit ], [ %retval.0.i90, %proc_ioctl_default.exit ], [ %call257.i, %sw.bb256.i ], [ %retval.0.i41, %proc_alloc_streams.exit ], [ %retval.0.i30, %proc_free_streams.exit ], [ %retval.0.i25, %proc_drop_privileges.exit ], [ %1105, %sw.bb264.i ], [ %call18.i, %if.end16.i ], [ %call32.i, %if.then30.i ], [ %call34.i, %if.else.i201 ], [ %call3.i114, %if.end.i115 ], [ %call3.i64, %if.end.i66.done.i_crit_edge ], [ %call3.i, %if.end.i53 ]
  call void @mutex_unlock(ptr noundef %mutex.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1.i)
  %cmp279.i = icmp sgt i32 %ret.1.i, -1
  br i1 %cmp279.i, label %done.i.if.then280.i_crit_edge, label %done.i.usbdev_do_ioctl.exit_crit_edge

done.i.usbdev_do_ioctl.exit_crit_edge:            ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usbdev_do_ioctl.exit

done.i.if.then280.i_crit_edge:                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then280.i

if.then280.i.sink.split:                          ; preds = %if.then1.i.i, %if.end26.i.if.then280.i.sink.split_crit_edge, %if.then6.i, %do.body2.i.if.then280.i.sink.split_crit_edge, %if.then1.i, %sw.bb266.i.if.then280.i.sink.split_crit_edge, %sw.bb254.i.if.then280.i.sink.split_crit_edge, %do.end.i69, %do.body.i68.if.then280.i.sink.split_crit_edge, %if.end5.i, %if.end.i142, %if.then166.i, %if.then101.i, %if.then72.i, %if.then55.i, %if.then40.i
  %ret.1414.i.ph = phi i32 [ %retval.0.i185839, %if.then166.i ], [ %retval.0.i301, %if.then101.i ], [ %retval.0.i400802, %if.then72.i ], [ %retval.0.i.i, %if.then55.i ], [ %retval.0.i.i605, %if.then40.i ], [ 0, %if.end.i142 ], [ 0, %if.end5.i ], [ 0, %do.body.i68.if.then280.i.sink.split_crit_edge ], [ 0, %do.end.i69 ], [ 0, %if.then1.i ], [ 0, %sw.bb266.i.if.then280.i.sink.split_crit_edge ], [ 0, %if.then6.i ], [ 0, %do.body2.i.if.then280.i.sink.split_crit_edge ], [ 0, %if.then1.i.i ], [ 0, %if.end26.i.if.then280.i.sink.split_crit_edge ], [ 0, %sw.bb254.i.if.then280.i.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i.i) #13
  br label %if.then280.i

if.then280.i:                                     ; preds = %if.then280.i.sink.split, %done.i.if.then280.i_crit_edge
  %ret.1414.i = phi i32 [ %ret.1.i, %done.i.if.then280.i_crit_edge ], [ %ret.1414.i.ph, %if.then280.i.sink.split ]
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp281.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp281.i, ptr noundef %4) #13
  %1161 = call ptr @memcpy(ptr %i_atime.i, ptr %tmp281.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp281.i) #13
  br label %usbdev_do_ioctl.exit

usbdev_do_ioctl.exit:                             ; preds = %if.then280.i, %done.i.usbdev_do_ioctl.exit_crit_edge, %done.i.thread, %done.thread417.i, %done.thread.i, %if.then25.i, %entry.usbdev_do_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.then25.i ], [ -1, %entry.usbdev_do_ioctl.exit_crit_edge ], [ %ret.1414.i, %if.then280.i ], [ %ret.1.i, %done.i.usbdev_do_ioctl.exit_crit_edge ], [ %ret.1.ph.i, %done.thread.i ], [ %ret.1.ph416.i, %done.thread417.i ], [ %ret.1.i.ph, %done.i.thread ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdev_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #1 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %sub = sub i32 %7, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #13
  %10 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dma_handle, align 4, !annotation !307
  %add = add i32 %sub, 36
  %conv = zext i32 %add to i64
  %call1 = tail call fastcc i32 @usbfs_increase_memory_usage(i64 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 36) #18
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.error_decrease_mem_crit_edge, label %if.end5

if.end.error_decrease_mem_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_decrease_mem

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call7 = call ptr @usb_alloc_coherent(ptr noundef %13, i32 noundef %sub, i32 noundef 1060032, ptr noundef nonnull %dma_handle) #13
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %error_decrease_mem

if.end10:                                         ; preds = %if.end5
  %14 = call ptr @memset(ptr %call7, i32 0, i32 %sub)
  %mem11 = getelementptr inbounds %struct.usb_memory, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %mem11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7, ptr %mem11, align 4
  %16 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_handle, align 4
  %dma_handle12 = getelementptr inbounds %struct.usb_memory, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %dma_handle12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dma_handle12, align 8
  %size13 = getelementptr inbounds %struct.usb_memory, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %size13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %size13, align 8
  %ps14 = getelementptr inbounds %struct.usb_memory, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %ps14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %ps14, align 8
  %21 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vma, align 4
  %vm_start16 = getelementptr inbounds %struct.usb_memory, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %vm_start16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %vm_start16, align 4
  %vma_use_count = getelementptr inbounds %struct.usb_memory, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %vma_use_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %vma_use_count, align 8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %localmem_pool = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 28
  %27 = ptrtoint ptr %localmem_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %localmem_pool, align 8
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end10.if.then19_crit_edge

if.end10.if.then19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end10
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 9
  %29 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver.i, align 8
  %flags.i = getelementptr inbounds %struct.hc_driver, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then19_crit_edge, label %if.else

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end10.if.then19_crit_edge
  %33 = ptrtoint ptr %call7 to i32
  %call.i = call i32 @__virt_to_phys(i32 noundef %33) #13
  %shr = lshr i32 %call.i, 12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %34 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vm_page_prot, align 4
  %call23 = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %22, i32 noundef %shr, i32 noundef %sub, i32 noundef %35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.then25, label %if.then19.if.end33_crit_edge

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then25:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @dec_usb_memory_use_count(ptr noundef nonnull %call7.i.i, ptr noundef %vma_use_count)
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 1
  %36 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sysdev, align 4
  %call28 = call i32 @dma_mmap_attrs(ptr noundef %37, ptr noundef %vma, ptr noundef nonnull %call7, i32 noundef %17, i32 noundef %sub, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else.if.end33_crit_edge, label %if.then30

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @dec_usb_memory_use_count(ptr noundef nonnull %call7.i.i, ptr noundef %vma_use_count)
  br label %cleanup

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.then19.if.end33_crit_edge
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %38 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vm_flags, align 4
  %or35 = or i32 %39, 67387392
  store i32 %or35, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %40 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @usbdev_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %41 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %vm_private_data, align 4
  %lock = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 3
  %call40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %memory_list = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 6
  %prev.i96 = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i96, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %43, ptr noundef %memory_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.list_add_tail.exit_crit_edge

if.end33.list_add_tail.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %prev.i96, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %memory_list, ptr %call7.i.i, align 8
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end33.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #13
  br label %cleanup

error_decrease_mem:                               ; preds = %if.then9, %if.end.error_decrease_mem_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usbfs_memory_usage, i32 noundef 8) #13
  call void @generic_atomic64_sub(i64 noundef %conv, ptr noundef nonnull @usbfs_memory_usage) #13
  br label %cleanup

cleanup:                                          ; preds = %error_decrease_mem, %list_add_tail.exit, %if.then30, %if.then25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then25 ], [ 0, %list_add_tail.exit ], [ -11, %if.then30 ], [ %call1, %entry.cleanup_crit_edge ], [ -12, %error_decrease_mem ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdev_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  %devt.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_free_ps_crit_edge, label %if.end

entry.out_free_ps_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_ps

if.end:                                           ; preds = %entry
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %1 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_rdev.i, align 8
  %shr.i.mask = and i32 %2, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 198180864, i32 %shr.i.mask)
  %cmp = icmp eq i32 %shr.i.mask, 198180864
  br i1 %cmp, label %if.then2, label %if.end.out_free_ps_crit_edge

if.end.out_free_ps_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_ps

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devt.addr.i.i) #13
  %3 = ptrtoint ptr %devt.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %devt.addr.i.i, align 4
  %call.i.i = call ptr @bus_find_device(ptr noundef nonnull @usb_bus_type, ptr noundef null, ptr noundef nonnull %devt.addr.i.i, ptr noundef nonnull @device_match_devt) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devt.addr.i.i) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 -128
  %tobool5.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not.i, %tobool5.not
  br i1 %or.cond, label %if.then2.out_free_ps_crit_edge, label %if.end7

if.then2.out_free_ps_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_ps

if.end7:                                          ; preds = %if.then2
  %mutex.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  %state = getelementptr i8, ptr %call.i.i, i32 -104
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %if.end7.out_unlock_device_crit_edge, label %if.end11

if.end7.out_unlock_device_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_device

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @usb_autoresume_device(ptr noundef nonnull %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_unlock_device_crit_edge

if.end11.out_unlock_device_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_device

if.end15:                                         ; preds = %if.end11
  %dev16 = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %dev16, align 8
  %file17 = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %file17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %file, ptr %file17, align 4
  %interface_allowed_mask = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 15
  %8 = ptrtoint ptr %interface_allowed_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %interface_allowed_mask, align 4
  %lock = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.134, ptr noundef nonnull @usbdev_open.__key, i16 noundef signext 3) #13
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %async_pending = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %async_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %async_pending, ptr %async_pending, align 4
  %prev.i89 = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %async_pending, ptr %prev.i89, align 8
  %async_completed = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %async_completed to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %async_completed, ptr %async_completed, align 4
  %prev.i90 = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %async_completed, ptr %prev.i90, align 8
  %memory_list = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %memory_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %memory_list, ptr %memory_list, align 4
  %prev.i91 = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %memory_list, ptr %prev.i91, align 8
  %wait = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 7
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.136, ptr noundef nonnull @usbdev_open.__key.135) #13
  %wait_for_resume = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %wait_for_resume, ptr noundef nonnull @.str.138, ptr noundef nonnull @usbdev_open.__key.137) #13
  %17 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 78
  %21 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %thread_pid.i, align 16
  %tobool.not.i92 = icmp eq ptr %22, null
  br i1 %tobool.not.i92, label %if.end15.get_pid.exit_crit_edge, label %if.then.i

if.end15.get_pid.exit_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.then.i:                                        ; preds = %if.end15
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %22, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %22, i32 1, i32 3, i32 1) #13
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #13, !srcloc !316
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !312

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !300

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef %.sink.i.i.i.i) #13
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %if.end15.get_pid.exit_crit_edge
  %disc_pid = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %disc_pid to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %disc_pid, align 8
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred, align 16
  %tobool.not.i93 = icmp eq ptr %29, null
  br i1 %tobool.not.i93, label %get_pid.exit.get_cred.exit_crit_edge, label %do.body.i

get_pid.exit.get_cred.exit_crit_edge:             ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_cred.exit

do.body.i:                                        ; preds = %get_pid.exit
  %call.i.i94 = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %29) #13
  br i1 %call.i.i94, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !312

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__invalid_creds(ptr noundef nonnull %29, ptr noundef nonnull @.str.77, i32 noundef 253) #13
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %30 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 28
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %30, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %29, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %29, i32 1, i32 3, i32 1) #13
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %29, ptr nonnull %29, i32 1, ptr nonnull elementtype(i32) %29) #13, !srcloc !317
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %get_pid.exit.get_cred.exit_crit_edge
  %cred34 = getelementptr inbounds %struct.usb_dev_state, ptr %call7.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %cred34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %cred34, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !323
  %filelist = getelementptr i8, ptr %call.i.i, i32 1116
  %prev.i95 = getelementptr i8, ptr %call.i.i, i32 1120
  %34 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i95, align 4
  %call.i.i96 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %35, ptr noundef %filelist) #13
  br i1 %call.i.i96, label %if.end.i.i, label %get_cred.exit.list_add_tail.exit_crit_edge

get_cred.exit.list_add_tail.exit_crit_edge:       ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %prev.i95, align 4
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %filelist, ptr %call7.i.i, align 8
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %get_cred.exit.list_add_tail.exit_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %40 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %private_data, align 4
  call void @mutex_unlock(ptr noundef %mutex.i) #13
  %41 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool44.not = icmp eq i8 %41, 0
  br i1 %tobool44.not, label %list_add_tail.exit.cleanup_crit_edge, label %do.end48

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end48:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid.i, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.139, i32 noundef %45, ptr noundef %comm) #16
  br label %cleanup

out_unlock_device:                                ; preds = %if.end11.out_unlock_device_crit_edge, %if.end7.out_unlock_device_crit_edge
  %ret.0 = phi i32 [ -19, %if.end7.out_unlock_device_crit_edge ], [ %call12, %if.end11.out_unlock_device_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #13
  call void @usb_put_dev(ptr noundef nonnull %add.ptr.i) #13
  br label %out_free_ps

out_free_ps:                                      ; preds = %out_unlock_device, %if.then2.out_free_ps_crit_edge, %if.end.out_free_ps_crit_edge, %entry.out_free_ps_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_unlock_device ], [ -12, %entry.out_free_ps_crit_edge ], [ -19, %if.end.out_free_ps_crit_edge ], [ -19, %if.then2.out_free_ps_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free_ps, %do.end48, %list_add_tail.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free_ps ], [ 0, %do.end48 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  tail call void @usb_hub_release_all_ports(ptr noundef %3, ptr noundef %1) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @usbfs_mutex, i32 noundef 0) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @usbfs_mutex) #13
  %ifclaimed = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %ifclaimed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifclaimed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not52.not = icmp eq i32 %13, 0
  br i1 %tobool.not52.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_del_init.exit.for.body_crit_edge
  %ifnum.053 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %list_del_init.exit.for.body_crit_edge ]
  %div3.i = lshr i32 %ifnum.053, 5
  %arrayidx.i = getelementptr i32, ptr %ifclaimed, i32 %div3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %16 = shl nuw i32 1, %ifnum.053
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not = icmp eq i32 %17, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  %call.i = tail call ptr @usb_ifnum_to_if(ptr noundef %19, i32 noundef %ifnum.053) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.for.inc_crit_edge, label %if.else.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef %ifnum.053, ptr noundef %ifclaimed) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.else.i.for.inc_crit_edge, label %if.then5.i

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %uevent_suppress.i.i = getelementptr inbounds %struct.usb_interface, ptr %call.i, i32 0, i32 7, i32 0, i32 8
  %20 = ptrtoint ptr %uevent_suppress.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %uevent_suppress.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 8
  %bf.set.i.i = or i8 %bf.load.i.i, 8
  store i8 %bf.set.i.i, ptr %uevent_suppress.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @usbfs_driver, ptr noundef nonnull %call.i) #13
  %21 = ptrtoint ptr %uevent_suppress.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i26.i = load i8, ptr %uevent_suppress.i.i, align 4
  %bf.clear.i27.i = and i8 %bf.load.i26.i, -9
  %bf.set.i28.i = or i8 %bf.clear.i27.i, %bf.clear.i.i
  store i8 %bf.set.i28.i, ptr %uevent_suppress.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then5.i, %if.else.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ifnum.053, 1
  %22 = ptrtoint ptr %ifclaimed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifclaimed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %ifnum.053)
  %cmp = icmp ult i32 %ifnum.053, 31
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del_init.exit.for.end_crit_edge
  %async_pending.i = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 4
  tail call fastcc void @destroy_async(ptr noundef %1, ptr noundef %async_pending.i) #13
  %suspend_allowed = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %suspend_allowed to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %suspend_allowed, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool6.not = icmp eq i8 %25, 0
  br i1 %tobool6.not, label %if.then7, label %for.end.if.end8_crit_edge

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_autosuspend_device(ptr noundef %3) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #13
  tail call void @usb_put_dev(ptr noundef %3) #13
  %disc_pid = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %disc_pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disc_pid, align 4
  tail call void @put_pid(ptr noundef %27) #13
  %cred = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred, align 4
  %tobool.not.i34 = icmp eq ptr %29, null
  br i1 %tobool.not.i34, label %if.end8.put_cred.exit_crit_edge, label %do.body.i

if.end8.put_cred.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_cred.exit

do.body.i:                                        ; preds = %if.end8
  %call.i.i35 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %29) #13
  br i1 %call.i.i35, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !312

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__invalid_creds(ptr noundef nonnull %29, ptr noundef nonnull @.str.77, i32 noundef 286) #13
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %29, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !324
  tail call void @llvm.prefetch.p0(ptr nonnull %29, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %29, ptr nonnull %29, i32 1, ptr nonnull elementtype(i32) %29) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_cred(ptr noundef nonnull %29) #13
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %if.end8.put_cred.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %async_completed.i = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %async_completed.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %async_completed.i, align 4
  %cmp.i.not.i = icmp eq ptr %32, %async_completed.i
  br i1 %cmp.i.not.i, label %put_cred.exit.while.end.sink.split_crit_edge, label %if.then.i

put_cred.exit.while.end.sink.split_crit_edge:     ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

if.then.i:                                        ; preds = %put_cred.exit
  %call.i.i.i36 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #13
  br i1 %call.i.i.i36, label %if.end.i.i.i, label %if.then.i.async_getcompleted.exit_crit_edge

if.then.i.async_getcompleted.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %async_getcompleted.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %async_getcompleted.exit

async_getcompleted.exit:                          ; preds = %if.end.i.i.i, %if.then.i.async_getcompleted.exit_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %32, ptr %32, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %32, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %tobool11.not55 = icmp eq ptr %32, null
  br i1 %tobool11.not55, label %async_getcompleted.exit.while.end_crit_edge, label %async_getcompleted.exit.while.body_crit_edge

async_getcompleted.exit.while.body_crit_edge:     ; preds = %async_getcompleted.exit
  br label %while.body

async_getcompleted.exit.while.end_crit_edge:      ; preds = %async_getcompleted.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %async_getcompleted.exit51.while.body_crit_edge, %async_getcompleted.exit.while.body_crit_edge
  %as.056 = phi ptr [ %42, %async_getcompleted.exit51.while.body_crit_edge ], [ %32, %async_getcompleted.exit.while.body_crit_edge ]
  tail call fastcc void @free_async(ptr noundef nonnull %as.056)
  %call2.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %41 = ptrtoint ptr %async_completed.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %async_completed.i, align 4
  %cmp.i.not.i41 = icmp eq ptr %42, %async_completed.i
  br i1 %cmp.i.not.i41, label %while.body.while.end.sink.split_crit_edge, label %if.then.i43

while.body.while.end.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

if.then.i43:                                      ; preds = %while.body
  %call.i.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %42) #13
  br i1 %call.i.i.i42, label %if.end.i.i.i46, label %if.then.i43.async_getcompleted.exit51_crit_edge

if.then.i43.async_getcompleted.exit51_crit_edge:  ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %async_getcompleted.exit51

if.end.i.i.i46:                                   ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i44, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %prev1.i.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i.i45, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %async_getcompleted.exit51

async_getcompleted.exit51:                        ; preds = %if.end.i.i.i46, %if.then.i43.async_getcompleted.exit51_crit_edge
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %42, ptr %42, align 4
  %prev.i3.i.i47 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i3.i.i47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %42, ptr %prev.i3.i.i47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i39) #13
  %tobool11.not = icmp eq ptr %42, null
  br i1 %tobool11.not, label %async_getcompleted.exit51.while.end_crit_edge, label %async_getcompleted.exit51.while.body_crit_edge

async_getcompleted.exit51.while.body_crit_edge:   ; preds = %async_getcompleted.exit51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

async_getcompleted.exit51.while.end_crit_edge:    ; preds = %async_getcompleted.exit51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end.sink.split:                             ; preds = %while.body.while.end.sink.split_crit_edge, %put_cred.exit.while.end.sink.split_crit_edge
  %call2.i39.lcssa.sink = phi i32 [ %call2.i, %put_cred.exit.while.end.sink.split_crit_edge ], [ %call2.i39, %while.body.while.end.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i39.lcssa.sink) #13
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %async_getcompleted.exit51.while.end_crit_edge, %async_getcompleted.exit.while.end_crit_edge
  tail call void @kfree(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_devio_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_chrdev_region(i32 noundef 198180864, i32 noundef 8192, ptr noundef nonnull @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #16
  br label %out

if.end:                                           ; preds = %entry
  tail call void @cdev_init(ptr noundef nonnull @usb_device_cdev, ptr noundef nonnull @usbdev_file_operations) #13
  %call3 = tail call i32 @cdev_add(ptr noundef nonnull @usb_device_cdev, i32 noundef 198180864, i32 noundef 8192) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 189) #16
  tail call void @unregister_chrdev_region(i32 noundef 198180864, i32 noundef 8192) #13
  br label %out

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_register_notify(ptr noundef nonnull @usbdev_nb) #13
  br label %out

out:                                              ; preds = %if.end11, %do.end8, %do.end
  %retval1.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end11 ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_register_notify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_devio_cleanup() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_unregister_notify(ptr noundef nonnull @usbdev_nb) #13
  tail call void @cdev_del(ptr noundef nonnull @usb_device_cdev) #13
  tail call void @unregister_chrdev_region(i32 noundef 198180864, i32 noundef 8192) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unregister_notify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_async_on_interface(ptr noundef %ps, i32 noundef %ifnum) unnamed_addr #1 align 64 {
entry:
  %hitlist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hitlist) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %hitlist, i32 0, i32 1
  %1 = ptrtoint ptr %hitlist to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %hitlist, ptr %hitlist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hitlist, ptr %0, align 4
  %lock = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 3
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %async_pending = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 4
  %3 = ptrtoint ptr %async_pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %async_pending, align 4
  %cmp.i.not23 = icmp eq ptr %4, %async_pending
  br i1 %cmp.i.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.024 = phi ptr [ %q.026, %for.inc.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %p.024 to i32
  call void @__asan_load4_noabort(i32 %5)
  %q.026 = load ptr, ptr %p.024, align 4
  %ifnum9 = getelementptr inbounds %struct.async, ptr %p.024, i32 0, i32 5
  %6 = ptrtoint ptr %ifnum9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifnum9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %ifnum)
  %cmp10 = icmp eq i32 %7, %ifnum
  br i1 %cmp10, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %p.024) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.024, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %p.024 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %p.024, ptr noundef %15, ptr noundef nonnull %hitlist) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %p.024, ptr %0, align 4
  %17 = ptrtoint ptr %p.024 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hitlist, ptr %p.024, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.024, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %p.024, ptr %15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %q.026, %async_pending
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  call fastcc void @destroy_async(ptr noundef %ps, ptr noundef nonnull %hitlist)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hitlist) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_async(ptr noundef %ps, ptr noundef %list) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not33 = icmp eq ptr %1, %list
  br i1 %cmp.i.not33, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %flags.034 = phi i32 [ %call2, %while.body.lr.ph ], [ %call19, %list_del_init.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  %urb7 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %urb7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb7, align 4
  %call8 = tail call ptr @usb_get_urb(ptr noundef %13) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.034) #13
  tail call void @usb_kill_urb(ptr noundef %13) #13
  tail call void @usb_free_urb(ptr noundef %13) #13
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %14 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %15, %list
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call19, %list_del_init.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @proc_disconnect_claim(ptr noundef %ps, ptr noundef %arg) unnamed_addr #1 align 64 {
entry:
  %dc = alloca %struct.usbdevfs_disconnect_claim, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %dc) #13
  %0 = call ptr @memset(ptr %dc, i32 255, i32 264)
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 264, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !300

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dc, i32 noundef 264) #13
  %2 = call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !304
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %dc, ptr noundef %arg, i32 noundef 264) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !300

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i57 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 264, %entry.if.then11.i.i_crit_edge ], [ 264, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 264, %res.0.i.i57
  %add.ptr.i.i = getelementptr i8, ptr %dc, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i57)
  br label %cleanup45

if.end:                                           ; preds = %if.end.i.i
  %dev = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dc, align 4
  %call1 = call ptr @usb_ifnum_to_if(ptr noundef %7, i32 noundef %9) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup45_crit_edge, label %if.end4

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7
  %driver = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end4.if.end42_crit_edge, label %if.then7

if.end4.if.end42_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then7:                                         ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %11, i32 -96
  %privileges_dropped = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 18
  %12 = ptrtoint ptr %privileges_dropped to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %privileges_dropped, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.end13, label %if.then7.cleanup45_crit_edge

if.then7.cleanup45_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.end13:                                         ; preds = %if.then7
  %flags = getelementptr inbounds %struct.usbdevfs_disconnect_claim, ptr %dc, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %driver15 = getelementptr inbounds %struct.usbdevfs_disconnect_claim, ptr %dc, i32 0, i32 2
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %call18 = call i32 @strncmp(ptr noundef %driver15, ptr noundef %17, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp.not = icmp eq i32 %call18, 0
  br i1 %cmp.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup45_crit_edge

land.lhs.true.cleanup45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %and22 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.do.body_crit_edge, label %land.lhs.true24

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true24:                                  ; preds = %if.end20
  %driver25 = getelementptr inbounds %struct.usbdevfs_disconnect_claim, ptr %dc, i32 0, i32 2
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 4
  %call30 = call i32 @strncmp(ptr noundef %driver25, ptr noundef %19, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true24.cleanup45_crit_edge, label %land.lhs.true24.do.body_crit_edge

land.lhs.true24.do.body_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true24.cleanup45_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

do.body:                                          ; preds = %land.lhs.true24.do.body_crit_edge, %if.end20.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @proc_disconnect_claim.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_disconnect_claim, %if.then39)) #13
          to label %cleanup [label %if.then39], !srcloc !327

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @proc_disconnect_claim.__UNIQUE_ID_ddebug260, ptr noundef %dev5, ptr noundef nonnull @.str.130) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body
  call void @usb_driver_release_interface(ptr noundef %add.ptr, ptr noundef nonnull %call1) #13
  br label %if.end42

if.end42:                                         ; preds = %cleanup, %if.end4.if.end42_crit_edge
  %20 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dc, align 4
  %call44 = call fastcc i32 @claimintf(ptr noundef %ps, i32 noundef %21)
  br label %cleanup45

cleanup45:                                        ; preds = %if.end42, %land.lhs.true24.cleanup45_crit_edge, %land.lhs.true.cleanup45_crit_edge, %if.then7.cleanup45_crit_edge, %if.end.cleanup45_crit_edge, %if.then11.i.i
  %retval.1 = phi i32 [ %call44, %if.end42 ], [ -22, %if.end.cleanup45_crit_edge ], [ -14, %if.then11.i.i ], [ -16, %land.lhs.true24.cleanup45_crit_edge ], [ -16, %land.lhs.true.cleanup45_crit_edge ], [ -13, %if.then7.cleanup45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %dc) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @reap_as(ptr noundef %ps) #1 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !290) #13
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
  %dev2 = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 1
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2, align 4
  %wait3 = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 7
  call void @add_wait_queue(ptr noundef %wait3, ptr noundef nonnull %wait) #13
  %lock.i = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 3
  %async_completed.i = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 5
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15, i32 10
  br label %__here

__here:                                           ; preds = %if.end67, %entry
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@reap_as, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %18, align 128
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %20 = ptrtoint ptr %async_completed.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %async_completed.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %async_completed.i
  br i1 %cmp.i.not.i, label %async_getcompleted.exit.thread, label %if.then.i

async_getcompleted.exit.thread:                   ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  br label %lor.lhs.false

if.then.i:                                        ; preds = %__here
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.async_getcompleted.exit_crit_edge

if.then.i.async_getcompleted.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %async_getcompleted.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %async_getcompleted.exit

async_getcompleted.exit:                          ; preds = %if.end.i.i.i, %if.then.i.async_getcompleted.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %21, ptr %21, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %21, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %tobool57.not = icmp eq ptr %21, null
  br i1 %tobool57.not, label %async_getcompleted.exit.lor.lhs.false_crit_edge, label %async_getcompleted.exit.for.end_crit_edge

async_getcompleted.exit.for.end_crit_edge:        ; preds = %async_getcompleted.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

async_getcompleted.exit.lor.lhs.false_crit_edge:  ; preds = %async_getcompleted.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %async_getcompleted.exit.lor.lhs.false_crit_edge, %async_getcompleted.exit.thread
  %30 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %ps, align 4
  %cmp.i.not.i161 = icmp eq ptr %31, %ps
  br i1 %cmp.i.not.i161, label %lor.lhs.false.for.end_crit_edge, label %connected.exit

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

connected.exit:                                   ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.not = icmp eq i32 %35, 0
  br i1 %cmp.i.not, label %connected.exit.for.end_crit_edge, label %if.end61

connected.exit.for.end_crit_edge:                 ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end61:                                         ; preds = %connected.exit
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stack.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end61.for.end_crit_edge, !prof !300

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

signal_pending.exit:                              ; preds = %if.end61
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %39, align 4
  %and1.i.i.i.i.i = and i32 %44, 1
  %tobool65.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool65.not, label %if.end67, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end67:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %mutex.i) #13
  call void @schedule() #13
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  br label %__here

for.end:                                          ; preds = %signal_pending.exit.for.end_crit_edge, %if.end61.for.end_crit_edge, %connected.exit.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %async_getcompleted.exit.for.end_crit_edge
  %as.0.i165 = phi ptr [ null, %signal_pending.exit.for.end_crit_edge ], [ %21, %async_getcompleted.exit.for.end_crit_edge ], [ null, %connected.exit.for.end_crit_edge ], [ null, %lor.lhs.false.for.end_crit_edge ], [ null, %if.end61.for.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %wait3, ptr noundef nonnull %wait) #13
  br label %__here121

__here121:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change125 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change125 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@reap_as, %__here121) to i32), ptr %task_state_change125, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %48, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret ptr %as.0.i165
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @processcompl(ptr nocapture noundef readonly %as, ptr noundef %arg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %urb1 = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 9
  %0 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb1, align 4
  %userurb2 = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 7
  %2 = ptrtoint ptr %userurb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %userurb2, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number_of_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  br i1 %cmp.i, label %entry.for.body.i_crit_edge, label %entry.compute_isochronous_actual_length.exit_crit_edge

entry.compute_isochronous_actual_length.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %compute_isochronous_actual_length.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %6 = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %actual_length3.i = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.012.i, i32 2
  %7 = ptrtoint ptr %actual_length3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length3.i, align 4
  %add.i = add i32 %8, %6
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %if.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.loopexit.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %actual_length.i, align 4
  br label %compute_isochronous_actual_length.exit

compute_isochronous_actual_length.exit:           ; preds = %if.end.loopexit.i, %entry.compute_isochronous_actual_length.exit_crit_edge
  %userbuffer = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 6
  %10 = ptrtoint ptr %userbuffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %userbuffer, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %compute_isochronous_actual_length.exit.if.end8_crit_edge, label %land.lhs.true

compute_isochronous_actual_length.exit.if.end8_crit_edge: ; preds = %compute_isochronous_actual_length.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true:                                    ; preds = %compute_isochronous_actual_length.exit
  %actual_length = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %len.0.in.i = select i1 %cmp.i, ptr %transfer_buffer_length.i, ptr %actual_length
  %14 = ptrtoint ptr %len.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %len.0.i = load i32, ptr %len.0.in.i, align 4
  %num_sgs.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_sgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.i = icmp eq i32 %16, 0
  br i1 %cmp1.i, label %if.then2.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool8.not57.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool8.not57.i, label %for.cond.preheader.i.if.end8_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end8_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sg.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  br label %for.body.i170

if.then2.i:                                       ; preds = %if.then
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp9.i.i.i = icmp slt i32 %len.0.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then2.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.cleanup_crit_edge, label %if.then27.i.i.i, !prof !300

land.rhs16.i.i.i.cleanup_crit_edge:               ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then.i.i.i.i:                                  ; preds = %if.then2.i
  tail call void @__check_object_size(ptr noundef %18, i32 noundef %len.0.i, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %11, i32 %len.0.i, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %18, i32 noundef %len.0.i) #13
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %11, ptr noundef %18, i32 noundef %len.0.i) #13
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %len.0.i, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %len.0.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.if.end8_crit_edge, label %copy_to_user.exit.i.cleanup_crit_edge

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit.i.if.end8_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

for.body.i170:                                    ; preds = %if.end14.i.for.body.i170_crit_edge, %for.body.lr.ph.i
  %len.161.i = phi i32 [ %len.0.i, %for.body.lr.ph.i ], [ %sub.i, %if.end14.i.for.body.i170_crit_edge ]
  %i.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i172, %if.end14.i.for.body.i170_crit_edge ]
  %userbuffer.addr.059.i = phi ptr [ %11, %for.body.lr.ph.i ], [ %add.ptr.i, %if.end14.i.for.body.i170_crit_edge ]
  %20 = tail call i32 @llvm.umin.i32(i32 %len.161.i, i32 16384) #13
  %21 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sg.i, align 4
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %22, i32 %i.060.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !300

do.body2.i.i.i:                                   ; preds = %for.body.i170
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !329
  unreachable

sg_virt.exit.i:                                   ; preds = %for.body.i170
  %and.i.i.i171 = and i32 %24, -4
  %25 = inttoptr i32 %and.i.i.i171 to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %25) #13
  %offset.i.i = getelementptr %struct.scatterlist, ptr %22, i32 %i.060.i, i32 1
  %26 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %27
  tail call void @__check_object_size(ptr noundef %add.ptr.i.i, i32 noundef %20, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i42.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i42.i, label %sg_virt.exit.i.cleanup_crit_edge, label %if.end.i.i46.i

sg_virt.exit.i.cleanup_crit_edge:                 ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i46.i:                                   ; preds = %sg_virt.exit.i
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuffer.addr.059.i, i32 %20, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i44.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i44.i)
  %cmp.i6.i45.i = icmp eq i32 %asmresult.i.i44.i, 0
  br i1 %cmp.i6.i45.i, label %copy_to_user.exit51.i, label %if.end.i.i46.i.cleanup_crit_edge

if.end.i.i46.i.cleanup_crit_edge:                 ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit51.i:                            ; preds = %if.end.i.i46.i
  %call.i.i.i47.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i, i32 noundef %20) #13
  %call.i12.i.i48.i = tail call i32 @arm_copy_to_user(ptr noundef %userbuffer.addr.059.i, ptr noundef %add.ptr.i.i, i32 noundef %20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i48.i)
  %tobool12.not.i = icmp eq i32 %call.i12.i.i48.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %copy_to_user.exit51.i.cleanup_crit_edge

copy_to_user.exit51.i.cleanup_crit_edge:          ; preds = %copy_to_user.exit51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i:                                       ; preds = %copy_to_user.exit51.i
  %add.ptr.i = getelementptr i8, ptr %userbuffer.addr.059.i, i32 %20
  %sub.i = sub i32 %len.161.i, %20
  %inc.i172 = add nuw i32 %i.060.i, 1
  %29 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_sgs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i172, i32 %30)
  %cmp7.i = icmp uge i32 %inc.i172, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool8.not.i = icmp eq i32 %sub.i, 0
  %or.cond.i = select i1 %cmp7.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %if.end14.i.if.end8_crit_edge, label %if.end14.i.for.body.i170_crit_edge

if.end14.i.for.body.i170_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i170

if.end14.i.if.end8_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %if.end14.i.if.end8_crit_edge, %copy_to_user.exit.i.if.end8_crit_edge, %for.cond.preheader.i.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %compute_isochronous_actual_length.exit.if.end8_crit_edge
  %status = getelementptr inbounds %struct.usbdevfs_urb, ptr %3, i32 0, i32 2
  %status9 = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 12
  %31 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status9, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2027) #13
  %33 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !304
  %and.i = and i32 %35, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %status, i32 %32, i32 -1226833921) #13, !srcloc !330
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.not = icmp eq i32 %36, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %actual_length18 = getelementptr inbounds %struct.usbdevfs_urb, ptr %3, i32 0, i32 6
  %actual_length20 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %37 = ptrtoint ptr %actual_length20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual_length20, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2029) #13
  %39 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i147 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i147 to ptr
  %cpu_domain.i.i148 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i148) #8, !srcloc !304
  %and.i149 = and i32 %41, -13
  %or.i150 = or i32 %and.i149, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i150) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %42 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %actual_length18, i32 %38, i32 -1226833921) #13, !srcloc !331
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool32.not = icmp eq i32 %42, 0
  br i1 %tobool32.not, label %if.end34, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end14
  %error_count = getelementptr inbounds %struct.usbdevfs_urb, ptr %3, i32 0, i32 9
  %error_count39 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 26
  %43 = ptrtoint ptr %error_count39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %error_count39, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2031) #13
  %45 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i151 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i151 to ptr
  %cpu_domain.i.i152 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i152) #8, !srcloc !304
  %and.i153 = and i32 %47, -13
  %or.i154 = or i32 %and.i153, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i154) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %error_count, i32 %44, i32 -1226833921) #13, !srcloc !332
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool51.not = icmp eq i32 %48, 0
  br i1 %tobool51.not, label %if.end53, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end53:                                         ; preds = %if.end34
  %ep = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %49 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ep, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bmAttributes.i, align 1
  %53 = and i8 %52, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp.i173.not = icmp eq i8 %53, 1
  br i1 %cmp.i173.not, label %for.cond.preheader, label %if.end53.if.end103_crit_edge

if.end53.if.end103_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

for.cond.preheader:                               ; preds = %if.end53
  %54 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %number_of_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp183.not = icmp eq i32 %55, 0
  br i1 %cmp183.not, label %for.cond.preheader.if.end103_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end103_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

for.cond:                                         ; preds = %if.end78
  %inc = add nuw i32 %i.0184, 1
  %56 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %number_of_packets.i, align 4
  %cmp = icmp ult i32 %inc, %57
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.if.end103_crit_edge

for.cond.if.end103_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0184 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %actual_length60 = getelementptr %struct.usbdevfs_urb, ptr %3, i32 0, i32 12, i32 %i.0184, i32 1
  %actual_length64 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.0184, i32 2
  %58 = ptrtoint ptr %actual_length64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %actual_length64, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2037) #13
  %60 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i155 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i155 to ptr
  %cpu_domain.i.i156 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i156) #8, !srcloc !304
  %and.i157 = and i32 %62, -13
  %or.i158 = or i32 %and.i157, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i158) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %63 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %actual_length60, i32 %59, i32 -1226833921) #13, !srcloc !333
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool76.not = icmp eq i32 %63, 0
  br i1 %tobool76.not, label %if.end78, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end78:                                         ; preds = %for.body
  %status84 = getelementptr %struct.usbdevfs_urb, ptr %3, i32 0, i32 12, i32 %i.0184, i32 2
  %status88 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.0184, i32 3
  %64 = ptrtoint ptr %status88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status88, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2040) #13
  %66 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i159 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i159 to ptr
  %cpu_domain.i.i160 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i160) #8, !srcloc !304
  %and.i161 = and i32 %68, -13
  %or.i162 = or i32 %and.i161, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i162) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %status84, i32 %65, i32 -1226833921) #13, !srcloc !334
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool100.not = icmp eq i32 %69, 0
  br i1 %tobool100.not, label %for.cond, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end103:                                        ; preds = %for.cond.if.end103_crit_edge, %for.cond.preheader.if.end103_crit_edge, %if.end53.if.end103_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 2045) #13
  %70 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i163 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i163 to ptr
  %cpu_domain.i.i164 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 4
  %72 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i164) #8, !srcloc !304
  %and.i165 = and i32 %72, -13
  %or.i166 = or i32 %and.i165, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i166) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %73 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, ptr %3, i32 -1226833921) #13, !srcloc !335
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool119.not = icmp eq i32 %73, 0
  %. = select i1 %tobool119.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.end78.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %copy_to_user.exit51.i.cleanup_crit_edge, %if.end.i.i46.i.cleanup_crit_edge, %sg_virt.exit.i.cleanup_crit_edge, %copy_to_user.exit.i.cleanup_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end103 ], [ -14, %if.end34.cleanup_crit_edge ], [ -14, %if.end14.cleanup_crit_edge ], [ -14, %if.end8.cleanup_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.cleanup_crit_edge ], [ -14, %copy_to_user.exit.i.cleanup_crit_edge ], [ -14, %if.end78.cleanup_crit_edge ], [ -14, %for.body.cleanup_crit_edge ], [ -14, %copy_to_user.exit51.i.cleanup_crit_edge ], [ -14, %sg_virt.exit.i.cleanup_crit_edge ], [ -14, %if.end.i.i46.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_async(ptr noundef %as) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pid = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 2
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pid, align 4
  tail call void @put_pid(ptr noundef %1) #13
  %cred = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 3
  %2 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cred, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #13
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !312

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.77, i32 noundef 286) #13
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !324
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.if.end_crit_edge

__validate_creds.exit.i.if.end_crit_edge:         ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_cred(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %__validate_creds.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %urb = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 9
  %5 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb, align 4
  %num_sgs42 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %num_sgs42 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_sgs42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp43 = icmp sgt i32 %8, 0
  br i1 %cmp43, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %9 = phi ptr [ %18, %for.inc.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %i.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sg = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %11, i32 %i.044
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !300

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !329
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %13, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %sg_page.exit.for.inc_crit_edge, label %sg_virt.exit

sg_page.exit.for.inc_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sg_virt.exit:                                     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = inttoptr i32 %and.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef nonnull %14) #13
  %offset.i = getelementptr %struct.scatterlist, ptr %11, i32 %i.044, i32 1
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %16
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  br label %for.inc

for.inc:                                          ; preds = %sg_virt.exit, %sg_page.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %17 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb, align 4
  %num_sgs = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_sgs, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi ptr [ %6, %if.end.for.end_crit_edge ], [ %18, %for.inc.for.end_crit_edge ]
  %sg11 = getelementptr inbounds %struct.urb, ptr %.lcssa, i32 0, i32 16
  %21 = ptrtoint ptr %sg11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sg11, align 4
  tail call void @kfree(ptr noundef %22) #13
  %usbm = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 10
  %23 = ptrtoint ptr %usbm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usbm, align 4
  %cmp12 = icmp eq ptr %24, null
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %28) #13
  br label %if.end17

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %urb_use_count = getelementptr inbounds %struct.usb_memory, ptr %24, i32 0, i32 2
  tail call fastcc void @dec_usb_memory_use_count(ptr noundef nonnull %24, ptr noundef %urb_use_count)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  %29 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urb, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %32) #13
  %33 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %34) #13
  %mem_usage = getelementptr inbounds %struct.async, ptr %as, i32 0, i32 11
  %35 = ptrtoint ptr %mem_usage to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mem_usage, align 4
  %conv = zext i32 %36 to i64
  %call.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usbfs_memory_usage, i32 noundef 8) #13
  tail call void @generic_atomic64_sub(i64 noundef %conv, ptr noundef nonnull @usbfs_memory_usage) #13
  tail call void @kfree(ptr noundef %as) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dec_usb_memory_use_count(ptr noundef %usbm, ptr nocapture noundef %count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps1 = getelementptr inbounds %struct.usb_memory, ptr %usbm, i32 0, i32 7
  %0 = ptrtoint ptr %ps1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps1, align 4
  %lock = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %count, align 4
  %urb_use_count = getelementptr inbounds %struct.usb_memory, ptr %usbm, i32 0, i32 2
  %4 = ptrtoint ptr %urb_use_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %urb_use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %vma_use_count = getelementptr inbounds %struct.usb_memory, ptr %usbm, i32 0, i32 1
  %6 = ptrtoint ptr %vma_use_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma_use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %usbm) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %usbm, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %usbm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usbm, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %14 = ptrtoint ptr %usbm to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %usbm, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %usbm, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %dev = getelementptr inbounds %struct.usb_dev_state, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %size = getelementptr inbounds %struct.usb_memory, ptr %usbm, i32 0, i32 3
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %mem = getelementptr inbounds %struct.usb_memory, ptr %usbm, i32 0, i32 4
  %20 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem, align 4
  %dma_handle = getelementptr inbounds %struct.usb_memory, ptr %usbm, i32 0, i32 5
  %22 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_handle, align 4
  tail call void @usb_free_coherent(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23) #13
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %add = add i32 %25, 36
  %conv12 = zext i32 %add to i64
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usbfs_memory_usage, i32 noundef 8) #13
  tail call void @generic_atomic64_sub(i64 noundef %conv12, ptr noundef nonnull @usbfs_memory_usage) #13
  tail call void @kfree(ptr noundef %usbm) #13
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %list_del.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_ctrlrecip(ptr noundef %ps, i32 noundef %requesttype, i32 noundef %request, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %state = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 4, label %entry.if.end_crit_edge
    i32 6, label %entry.if.end_crit_edge171
    i32 7, label %entry.if.end_crit_edge172
  ]

entry.if.end_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge171, %entry.if.end_crit_edge172
  %and = and i32 %requesttype, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and)
  %cmp8 = icmp eq i32 %and, 64
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %requesttype)
  %cmp11 = icmp eq i32 %requesttype, 161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request)
  %cmp13 = icmp eq i32 %request, 0
  %or.cond = and i1 %cmp11, %cmp13
  br i1 %or.cond, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end10
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %actconfig, align 4
  %shr = lshr i32 %index, 8
  %and16 = and i32 %index, 255
  %call = tail call ptr @usb_find_alt_setting(ptr noundef %6, i32 noundef %shr, i32 noundef %and16) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then14.sw.bb54_crit_edge, label %land.lhs.true17

if.then14.sw.bb54_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb54

land.lhs.true17:                                  ; preds = %if.then14
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp18 = icmp eq i8 %8, 7
  br i1 %cmp18, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.sw.bb54_crit_edge

land.lhs.true17.sw.bb54_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb54

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %and23 = and i32 %index, 255
  %and24 = and i32 %requesttype, 31
  %9 = zext i32 %and24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %and24, label %if.end22.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end22.sw.bb54_crit_edge
  ]

if.end22.sw.bb54_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb54

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end22
  %and25 = and i32 %index, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %sw.bb.cleanup_crit_edge, label %if.end29

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %sw.bb
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %and.i = and i32 %index, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end29
  %actconfig.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %actconfig.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end.i.if.end.i84_crit_edge, label %for.cond.preheader.i

if.end.i.if.end.i84_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i84

for.cond.preheader.i:                             ; preds = %if.end.i
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bNumInterfaces.i, align 4
  %conv.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp55.not.i = icmp eq i8 %15, 0
  br i1 %cmp55.not.i, label %for.cond.preheader.i.if.end.i84_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.if.end.i84_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i84

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %16 = trunc i32 %index to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.056.i = phi i32 [ %inc31.i, %for.inc30.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.usb_host_config, ptr %13, i32 0, i32 3, i32 %i.056.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp852.not.i = icmp eq i32 %20, 0
  br i1 %cmp852.not.i, label %for.body.i.for.inc30.i_crit_edge, label %for.body10.lr.ph.i

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i

for.body10.lr.ph.i:                               ; preds = %for.body.i
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc27.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %j.053.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc28.i, %for.inc27.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.usb_host_interface, ptr %22, i32 %j.053.i
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i, i32 0, i32 4
  %23 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bNumEndpoints.i, align 4
  %conv14.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp1550.not.i = icmp eq i8 %24, 0
  br i1 %cmp1550.not.i, label %for.body10.i.for.inc27.i_crit_edge, label %for.body17.lr.ph.i

for.body10.i.for.inc27.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i

for.body17.lr.ph.i:                               ; preds = %for.body10.i
  %endpoint.i = getelementptr %struct.usb_host_interface, ptr %22, i32 %j.053.i, i32 3
  %25 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %endpoint.i, align 4
  br label %for.body17.i

for.cond12.i:                                     ; preds = %for.body17.i
  %inc.i = add nuw nsw i32 %e.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv14.i
  br i1 %exitcond.not.i, label %for.cond12.i.for.inc27.i_crit_edge, label %for.cond12.i.for.body17.i_crit_edge

for.cond12.i.for.body17.i_crit_edge:              ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i

for.cond12.i.for.inc27.i_crit_edge:               ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i

for.body17.i:                                     ; preds = %for.cond12.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %e.051.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc.i, %for.cond12.i.for.body17.i_crit_edge ]
  %bEndpointAddress.i = getelementptr %struct.usb_host_endpoint, ptr %26, i32 %e.051.i, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %16)
  %cmp21.i = icmp eq i8 %28, %16
  br i1 %cmp21.i, label %findintfep.exit, label %for.cond12.i

for.inc27.i:                                      ; preds = %for.cond12.i.for.inc27.i_crit_edge, %for.body10.i.for.inc27.i_crit_edge
  %inc28.i = add nuw i32 %j.053.i, 1
  %exitcond58.not.i = icmp eq i32 %inc28.i, %20
  br i1 %exitcond58.not.i, label %for.inc27.i.for.inc30.i_crit_edge, label %for.inc27.i.for.body10.i_crit_edge

for.inc27.i.for.body10.i_crit_edge:               ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i

for.inc27.i.for.inc30.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc27.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %inc31.i = add nuw nsw i32 %i.056.i, 1
  %exitcond59.not.i = icmp eq i32 %inc31.i, %conv.i
  br i1 %exitcond59.not.i, label %if.then34, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

findintfep.exit:                                  ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i, i32 0, i32 2
  %29 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bInterfaceNumber.i, align 2
  br label %if.then51

if.then34:                                        ; preds = %for.inc30.i
  br i1 %tobool.not.i, label %if.then34.if.end.i84_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34.if.end.i84_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i84

if.end.i84:                                       ; preds = %if.then34.if.end.i84_crit_edge, %for.cond.preheader.i.if.end.i84_crit_edge, %if.end.i.if.end.i84_crit_edge
  %xor160 = xor i32 %and23, 128
  %actconfig.i82 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 20
  %31 = ptrtoint ptr %actconfig.i82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %actconfig.i82, align 4
  %tobool1.not.i83 = icmp eq ptr %32, null
  br i1 %tobool1.not.i83, label %if.end.i84.cleanup_crit_edge, label %for.cond.preheader.i88

if.end.i84.cleanup_crit_edge:                     ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i88:                           ; preds = %if.end.i84
  %bNumInterfaces.i85 = getelementptr inbounds %struct.usb_config_descriptor, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %bNumInterfaces.i85 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bNumInterfaces.i85, align 4
  %conv.i86 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp55.not.i87 = icmp eq i8 %34, 0
  br i1 %cmp55.not.i87, label %for.cond.preheader.i88.cleanup_crit_edge, label %for.cond.preheader.i88.for.body.i93_crit_edge

for.cond.preheader.i88.for.body.i93_crit_edge:    ; preds = %for.cond.preheader.i88
  br label %for.body.i93

for.cond.preheader.i88.cleanup_crit_edge:         ; preds = %for.cond.preheader.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i93:                                     ; preds = %for.inc30.i119.for.body.i93_crit_edge, %for.cond.preheader.i88.for.body.i93_crit_edge
  %i.056.i89 = phi i32 [ %inc31.i117, %for.inc30.i119.for.body.i93_crit_edge ], [ 0, %for.cond.preheader.i88.for.body.i93_crit_edge ]
  %arrayidx.i90 = getelementptr %struct.usb_host_config, ptr %32, i32 0, i32 3, i32 %i.056.i89
  %35 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i90, align 4
  %num_altsetting.i91 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %num_altsetting.i91 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_altsetting.i91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp852.not.i92 = icmp eq i32 %38, 0
  br i1 %cmp852.not.i92, label %for.body.i93.for.inc30.i119_crit_edge, label %for.body10.lr.ph.i94

for.body.i93.for.inc30.i119_crit_edge:            ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i119

for.body10.lr.ph.i94:                             ; preds = %for.body.i93
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 8
  br label %for.body10.i100

for.body10.i100:                                  ; preds = %for.inc27.i116.for.body10.i100_crit_edge, %for.body10.lr.ph.i94
  %j.053.i95 = phi i32 [ 0, %for.body10.lr.ph.i94 ], [ %inc28.i114, %for.inc27.i116.for.body10.i100_crit_edge ]
  %arrayidx11.i96 = getelementptr %struct.usb_host_interface, ptr %40, i32 %j.053.i95
  %bNumEndpoints.i97 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i96, i32 0, i32 4
  %41 = ptrtoint ptr %bNumEndpoints.i97 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bNumEndpoints.i97, align 4
  %conv14.i98 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp1550.not.i99 = icmp eq i8 %42, 0
  br i1 %cmp1550.not.i99, label %for.body10.i100.for.inc27.i116_crit_edge, label %for.body17.lr.ph.i102

for.body10.i100.for.inc27.i116_crit_edge:         ; preds = %for.body10.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i116

for.body17.lr.ph.i102:                            ; preds = %for.body10.i100
  %endpoint.i101 = getelementptr %struct.usb_host_interface, ptr %40, i32 %j.053.i95, i32 3
  %43 = ptrtoint ptr %endpoint.i101 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %endpoint.i101, align 4
  br label %for.body17.i110

for.cond12.i105:                                  ; preds = %for.body17.i110
  %inc.i103 = add nuw nsw i32 %e.051.i106, 1
  %exitcond.not.i104 = icmp eq i32 %inc.i103, %conv14.i98
  br i1 %exitcond.not.i104, label %for.cond12.i105.for.inc27.i116_crit_edge, label %for.cond12.i105.for.body17.i110_crit_edge

for.cond12.i105.for.body17.i110_crit_edge:        ; preds = %for.cond12.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i110

for.cond12.i105.for.inc27.i116_crit_edge:         ; preds = %for.cond12.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i116

for.body17.i110:                                  ; preds = %for.cond12.i105.for.body17.i110_crit_edge, %for.body17.lr.ph.i102
  %e.051.i106 = phi i32 [ 0, %for.body17.lr.ph.i102 ], [ %inc.i103, %for.cond12.i105.for.body17.i110_crit_edge ]
  %bEndpointAddress.i107 = getelementptr %struct.usb_host_endpoint, ptr %44, i32 %e.051.i106, i32 0, i32 2
  %45 = ptrtoint ptr %bEndpointAddress.i107 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bEndpointAddress.i107, align 1
  %conv20.i108 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %xor160, i32 %conv20.i108)
  %cmp21.i109 = icmp eq i32 %xor160, %conv20.i108
  br i1 %cmp21.i109, label %findintfep.exit121, label %for.cond12.i105

for.inc27.i116:                                   ; preds = %for.cond12.i105.for.inc27.i116_crit_edge, %for.body10.i100.for.inc27.i116_crit_edge
  %inc28.i114 = add nuw i32 %j.053.i95, 1
  %exitcond58.not.i115 = icmp eq i32 %inc28.i114, %38
  br i1 %exitcond58.not.i115, label %for.inc27.i116.for.inc30.i119_crit_edge, label %for.inc27.i116.for.body10.i100_crit_edge

for.inc27.i116.for.body10.i100_crit_edge:         ; preds = %for.inc27.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i100

for.inc27.i116.for.inc30.i119_crit_edge:          ; preds = %for.inc27.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i119

for.inc30.i119:                                   ; preds = %for.inc27.i116.for.inc30.i119_crit_edge, %for.body.i93.for.inc30.i119_crit_edge
  %inc31.i117 = add nuw nsw i32 %i.056.i89, 1
  %exitcond59.not.i118 = icmp eq i32 %inc31.i117, %conv.i86
  br i1 %exitcond59.not.i118, label %for.inc30.i119.cleanup_crit_edge, label %for.inc30.i119.for.body.i93_crit_edge

for.inc30.i119.for.body.i93_crit_edge:            ; preds = %for.inc30.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i93

for.inc30.i119.cleanup_crit_edge:                 ; preds = %for.inc30.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

findintfep.exit121:                               ; preds = %for.body17.i110
  call void @__sanitizer_cov_trace_pc() #15
  %bInterfaceNumber.i111 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i96, i32 0, i32 2
  %47 = ptrtoint ptr %bInterfaceNumber.i111 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bInterfaceNumber.i111, align 2
  %dev41 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %49 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i122 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i122 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 68
  %53 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid.i, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev41, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %54, ptr noundef %comm, i32 noundef %and23, i32 noundef %xor160) #16
  br label %if.then51

if.then51:                                        ; preds = %findintfep.exit121, %findintfep.exit
  %ret.0.ph.in = phi i8 [ %30, %findintfep.exit ], [ %48, %findintfep.exit121 ]
  %ret.0.ph = zext i8 %ret.0.ph.in to i32
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %58)
  %cmp.not.i = icmp eq i32 %58, 7
  br i1 %cmp.not.i, label %if.end.i123, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i123:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %ret.0.ph.in)
  %cmp1.i = icmp ugt i8 %ret.0.ph.in, 31
  br i1 %cmp1.i, label %if.end.i123.cleanup_crit_edge, label %if.end3.i

if.end.i123.cleanup_crit_edge:                    ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i123
  %ifclaimed.i = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 13
  %div3.i.i = lshr i32 %ret.0.ph, 5
  %arrayidx.i.i = getelementptr i32, ptr %ifclaimed.i, i32 %div3.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i.i, align 4
  %61 = shl nuw i32 1, %ret.0.ph
  %62 = and i32 %60, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i124 = icmp eq i32 %62, 0
  br i1 %tobool.not.i124, label %do.end.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  %63 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i19.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i19.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid.i.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i, ptr noundef nonnull @.str.87, i32 noundef %68, ptr noundef %comm.i, i32 noundef %ret.0.ph) #16
  br label %cleanup.sink.split

sw.bb54:                                          ; preds = %if.end22.sw.bb54_crit_edge, %land.lhs.true17.sw.bb54_crit_edge, %if.then14.sw.bb54_crit_edge
  %and23147 = phi i32 [ %and23, %if.end22.sw.bb54_crit_edge ], [ %and16, %if.then14.sw.bb54_crit_edge ], [ %and16, %land.lhs.true17.sw.bb54_crit_edge ]
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %state.i127 = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %state.i127 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state.i127, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %72)
  %cmp.not.i128 = icmp eq i32 %72, 7
  br i1 %cmp.not.i128, label %if.end.i130, label %sw.bb54.cleanup_crit_edge

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i130:                                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and23147)
  %cmp1.i129 = icmp ugt i32 %and23147, 31
  br i1 %cmp1.i129, label %if.end.i130.cleanup_crit_edge, label %if.end3.i135

if.end.i130.cleanup_crit_edge:                    ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i135:                                     ; preds = %if.end.i130
  %ifclaimed.i131 = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 13
  %div3.i.i132 = lshr i32 %and23147, 5
  %arrayidx.i.i133 = getelementptr i32, ptr %ifclaimed.i131, i32 %div3.i.i132
  %73 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %arrayidx.i.i133, align 4
  %75 = shl nuw i32 1, %and23147
  %76 = and i32 %74, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i134 = icmp eq i32 %76, 0
  br i1 %tobool.not.i134, label %do.end.i142, label %if.end3.i135.cleanup_crit_edge

if.end3.i135.cleanup_crit_edge:                   ; preds = %if.end3.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i142:                                      ; preds = %if.end3.i135
  call void @__sanitizer_cov_trace_pc() #15
  %dev7.i136 = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 15
  %77 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i19.i137 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i19.i137 to ptr
  %task.i138 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i138 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i138, align 8
  %pid.i.i139 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %pid.i.i139 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pid.i.i139, align 8
  %comm.i140 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i136, ptr noundef nonnull @.str.87, i32 noundef %82, ptr noundef %comm.i140, i32 noundef %and23147) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end.i142, %do.end.i
  %and23147.sink = phi i32 [ %and23147, %do.end.i142 ], [ %ret.0.ph, %do.end.i ]
  %call12.i141 = tail call fastcc i32 @claimintf(ptr noundef %ps, i32 noundef %and23147.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.i135.cleanup_crit_edge, %if.end.i130.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i123.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %for.inc30.i119.cleanup_crit_edge, %for.cond.preheader.i88.cleanup_crit_edge, %if.end.i84.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -113, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ -2, %for.cond.preheader.i88.cleanup_crit_edge ], [ -3, %if.end.i84.cleanup_crit_edge ], [ -22, %if.then34.cleanup_crit_edge ], [ -113, %if.then51.cleanup_crit_edge ], [ -22, %if.end.i123.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ], [ -113, %sw.bb54.cleanup_crit_edge ], [ -22, %if.end.i130.cleanup_crit_edge ], [ 0, %if.end3.i135.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ %call12.i141, %cleanup.sink.split ], [ -2, %for.inc30.i119.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbfs_increase_memory_usage(i64 noundef %amount) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @usbfs_memory_mb, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usbfs_memory_usage, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %amount, ptr noundef nonnull @usbfs_memory_usage) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %conv = zext i32 %0 to i64
  %shl = shl nuw nsw i64 %conv, 20
  %call.i.i7 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @usbfs_memory_usage, i32 noundef 8) #13
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef nonnull @usbfs_memory_usage) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %shl)
  %cmp2 = icmp ugt i64 %call.i, %shl
  br i1 %cmp2, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @usbfs_memory_usage, i32 noundef 8) #13
  tail call void @generic_atomic64_sub(i64 noundef %amount, ptr noundef nonnull @usbfs_memory_usage) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbfs_start_wait_urb(ptr noundef %urb, i32 noundef %timeout, ptr nocapture noundef writeonly %actlen) unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ctx) #13
  %0 = getelementptr inbounds i8, ptr %ctx, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ctx, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %ctx, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @init_completion.__key) #13
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %3 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx, ptr %context, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @usbfs_blocking_completion, ptr %complete, align 4
  %5 = ptrtoint ptr %actlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %actlen, align 4
  %call = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !300

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool3.not = icmp eq i32 %timeout, 0
  br i1 %tobool3.not, label %if.end.cond.end_crit_edge, label %if.else.i

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #13
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %if.end.cond.end_crit_edge
  %cond = phi i32 [ 2147483647, %if.end.cond.end_crit_edge ], [ %call2.i, %if.else.i ]
  %call5 = call i32 @wait_for_completion_killable_timeout(ptr noundef nonnull %ctx, i32 noundef %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp slt i32 %call5, 1
  br i1 %cmp, label %if.then6, label %cond.end.if.end13_crit_edge

cond.end.if.end13_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then6:                                         ; preds = %cond.end
  call void @usb_kill_urb(ptr noundef %urb) #13
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %8 = ptrtoint ptr %actlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %actlen, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %cmp7.not = icmp eq i32 %10, -2
  br i1 %cmp7.not, label %if.else, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp9 = icmp slt i32 %call5, 0
  %. = select i1 %cmp9, i32 -4, i32 -110
  br label %cleanup

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %cond.end.if.end13_crit_edge
  %actual_length14 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length14, align 4
  %13 = ptrtoint ptr %actlen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %actlen, align 4
  %status15 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %14 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ %., %if.else ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ctx) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_alt_setting(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @claimintf(ptr noundef %ps, i32 noundef %ifnum) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %ifnum)
  %cmp = icmp ugt i32 %ifnum, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifclaimed = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 13
  %div3.i = lshr i32 %ifnum, 5
  %arrayidx.i = getelementptr i32, ptr %ifclaimed, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = shl nuw i32 1, %ifnum
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %privileges_dropped = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 18
  %6 = ptrtoint ptr %privileges_dropped to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %privileges_dropped, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %land.lhs.true

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %interface_allowed_mask = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 15
  %arrayidx.i39 = getelementptr i32, ptr %interface_allowed_mask, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i39, align 4
  %10 = and i32 %9, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %call9 = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef %ifnum) #13
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %uevent_suppress.i = getelementptr inbounds %struct.usb_interface, ptr %call9, i32 0, i32 7, i32 0, i32 8
  %11 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %uevent_suppress.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 8
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %uevent_suppress.i, align 4
  %call15 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @usbfs_driver, ptr noundef nonnull %call9, ptr noundef %ps) #13
  %12 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i47 = load i8, ptr %uevent_suppress.i, align 4
  %bf.clear.i48 = and i8 %bf.load.i47, -9
  %bf.set.i49 = or i8 %bf.clear.i48, %bf.clear.i
  store i8 %bf.set.i49, ptr %uevent_suppress.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp18 = icmp eq i32 %call15, 0
  br i1 %cmp18, label %if.then19, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef %ifnum, ptr noundef %ifclaimed) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -13, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then19 ], [ %call15, %if.end17.cleanup_crit_edge ], [ -2, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbfs_blocking_completion(ptr nocapture noundef readonly %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_reset_endpoint(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_completed(ptr nocapture noundef readonly %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ps1 = getelementptr inbounds %struct.async, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps1, align 4
  %lock = getelementptr inbounds %struct.usb_dev_state, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %async_completed = getelementptr inbounds %struct.usb_dev_state, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.usb_dev_state, ptr %3, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %11, ptr noundef %async_completed) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %async_completed, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %1, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %status6 = getelementptr inbounds %struct.async, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %status6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %status6, align 4
  %signr7 = getelementptr inbounds %struct.async, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %signr7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %signr7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %list_move_tail.exit.do.body13_crit_edge, label %if.then

list_move_tail.exit.do.body13_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13

if.then:                                          ; preds = %list_move_tail.exit
  %userurb_sigval = getelementptr inbounds %struct.async, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %userurb_sigval to i32
  call void @__asan_load4_noabort(i32 %21)
  %addr.sroa.0.0.copyload = load i32, ptr %userurb_sigval, align 4
  %pid9 = getelementptr inbounds %struct.async, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %pid9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pid9, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then.get_pid.exit_crit_edge, label %if.then.i

if.then.get_pid.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %23, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 1, i32 3, i32 1) #13
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #13, !srcloc !316
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !312

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !300

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %23, i32 noundef %.sink.i.i.i.i) #13
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %if.then.get_pid.exit_crit_edge
  %cred11 = getelementptr inbounds %struct.async, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %cred11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cred11, align 4
  %tobool.not.i84 = icmp eq ptr %27, null
  br i1 %tobool.not.i84, label %get_pid.exit.do.body13_crit_edge, label %do.body.i

get_pid.exit.do.body13_crit_edge:                 ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13

do.body.i:                                        ; preds = %get_pid.exit
  %call.i.i85 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %27) #13
  br i1 %call.i.i85, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !312

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__invalid_creds(ptr noundef nonnull %27, ptr noundef nonnull @.str.77, i32 noundef 253) #13
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %28 = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 28
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %28, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %27, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %27, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #13, !srcloc !317
  br label %do.body13

do.body13:                                        ; preds = %__validate_creds.exit.i, %get_pid.exit.do.body13_crit_edge, %list_move_tail.exit.do.body13_crit_edge
  %pid.0 = phi ptr [ null, %list_move_tail.exit.do.body13_crit_edge ], [ %23, %get_pid.exit.do.body13_crit_edge ], [ %23, %__validate_creds.exit.i ]
  %cred.0 = phi ptr [ null, %list_move_tail.exit.do.body13_crit_edge ], [ null, %get_pid.exit.do.body13_crit_edge ], [ %27, %__validate_creds.exit.i ]
  %addr.sroa.0.0 = phi i32 [ -1, %list_move_tail.exit.do.body13_crit_edge ], [ %addr.sroa.0.0.copyload, %get_pid.exit.do.body13_crit_edge ], [ %addr.sroa.0.0.copyload, %__validate_creds.exit.i ]
  %errno.0 = phi i32 [ -1, %list_move_tail.exit.do.body13_crit_edge ], [ %17, %get_pid.exit.do.body13_crit_edge ], [ %17, %__validate_creds.exit.i ]
  %31 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool14.not = icmp eq i8 %31, 0
  br i1 %tobool14.not, label %do.end22.thread, label %do.end22

do.end22.thread:                                  ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %actual_length104 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  br label %snoop_urb.exit

do.end22:                                         ; preds = %do.body13
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.126) #16
  %.pr = load i8, ptr @usbfs_snoop, align 1
  %userurb = getelementptr inbounds %struct.async, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %userurb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %userurb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %36 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual_length, align 4
  %38 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i86 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i86, label %do.end22.snoop_urb.exit_crit_edge, label %if.end.i

do.end22.snoop_urb.exit_crit_edge:                ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %snoop_urb.exit

if.end.i:                                         ; preds = %do.end22
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %40 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pipe, align 4
  %dev23 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %42 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev23, align 4
  %44 = lshr i32 %41, 15
  %and.i = and i32 %44, 15
  %45 = lshr i32 %41, 30
  %arrayidx.i = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %and3.i = lshr i32 %41, 7
  %and3.lobit.i = and i32 %and3.i, 1
  %arrayidx6.i = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %and3.lobit.i
  %48 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %35, null
  %dev21.i = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15
  br i1 %tobool7.not.i, label %if.else15.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i, ptr noundef nonnull @.str.98, ptr noundef nonnull %35, i32 noundef %and.i, ptr noundef %47, ptr noundef %49, i32 noundef %37, i32 noundef %39) #16
  br label %snoop_urb.exit

if.else15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21.i, ptr noundef nonnull @.str.104, i32 noundef %and.i, ptr noundef %47, ptr noundef %49, i32 noundef %37, i32 noundef %39) #16
  br label %snoop_urb.exit

snoop_urb.exit:                                   ; preds = %if.else15.i, %if.then8.i, %do.end22.snoop_urb.exit_crit_edge, %do.end22.thread
  %actual_length106 = phi ptr [ %actual_length104, %do.end22.thread ], [ %actual_length, %if.then8.i ], [ %actual_length, %if.else15.i ], [ %actual_length, %do.end22.snoop_urb.exit_crit_edge ]
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %50 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %transfer_flags.i, align 4
  %52 = and i32 %51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool26.not = icmp eq i32 %52, 0
  br i1 %tobool26.not, label %snoop_urb.exit.if.end29_crit_edge, label %if.then27

snoop_urb.exit.if.end29_crit_edge:                ; preds = %snoop_urb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %snoop_urb.exit
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %actual_length106 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %actual_length106, align 4
  tail call fastcc void @snoop_urb_data(ptr noundef %urb, i32 noundef %54)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %snoop_urb.exit.if.end29_crit_edge
  %55 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp31 = icmp slt i32 %56, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end29.if.end46_crit_edge

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end29
  %bulk_addr = getelementptr inbounds %struct.async, ptr %1, i32 0, i32 13
  %57 = ptrtoint ptr %bulk_addr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bulk_addr, align 4
  %conv33 = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool34.not = icmp eq i8 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %56)
  %cmp37.not = icmp eq i32 %56, -104
  %or.cond = select i1 %tobool34.not, i1 true, i1 %cmp37.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %56)
  %cmp41.not = icmp eq i32 %56, -2
  %or.cond83 = select i1 %or.cond, i1 true, i1 %cmp41.not
  br i1 %or.cond83, label %land.lhs.true.if.end46_crit_edge, label %if.then43

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then43:                                        ; preds = %land.lhs.true
  %async_pending.i = getelementptr inbounds %struct.usb_dev_state, ptr %3, i32 0, i32 4
  %59 = ptrtoint ptr %async_pending.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %as.065.i = load ptr, ptr %async_pending.i, align 4
  %cmp.not66.i = icmp eq ptr %as.065.i, %async_pending.i
  br i1 %cmp.not66.i, label %if.then43.for.end.i_crit_edge, label %if.then43.for.body.i_crit_edge

if.then43.for.body.i_crit_edge:                   ; preds = %if.then43
  br label %for.body.i

if.then43.for.end.i_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then43.for.body.i_crit_edge
  %as.067.i = phi ptr [ %as.0.i, %for.inc.i.for.body.i_crit_edge ], [ %as.065.i, %if.then43.for.body.i_crit_edge ]
  %bulk_addr2.i = getelementptr inbounds %struct.async, ptr %as.067.i, i32 0, i32 13
  %60 = ptrtoint ptr %bulk_addr2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bulk_addr2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %58)
  %cmp3.i = icmp eq i8 %61, %58
  br i1 %cmp3.i, label %if.then.i88, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i88:                                      ; preds = %for.body.i
  %bulk_status.i = getelementptr inbounds %struct.async, ptr %as.067.i, i32 0, i32 14
  %62 = ptrtoint ptr %bulk_status.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bulk_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp6.not.i = icmp eq i8 %63, 1
  br i1 %cmp6.not.i, label %if.end.i89, label %if.then.i88.rescan.preheader.i_crit_edge

if.then.i88.rescan.preheader.i_crit_edge:         ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %rescan.preheader.i

if.end.i89:                                       ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %bulk_status.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %bulk_status.i, align 1
  %65 = ptrtoint ptr %bulk_addr2.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %bulk_addr2.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i89, %for.body.i.for.inc.i_crit_edge
  %66 = ptrtoint ptr %as.067.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %as.0.i = load ptr, ptr %as.067.i, align 4
  %cmp.not.i = icmp eq ptr %as.0.i, %async_pending.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then43.for.end.i_crit_edge
  %shl.i = shl nuw i32 1, %conv33
  %disabled_bulk_eps.i = getelementptr inbounds %struct.usb_dev_state, ptr %3, i32 0, i32 14
  %67 = ptrtoint ptr %disabled_bulk_eps.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %disabled_bulk_eps.i, align 4
  %or.i = or i32 %68, %shl.i
  store i32 %or.i, ptr %disabled_bulk_eps.i, align 4
  br label %rescan.preheader.i

rescan.preheader.i:                               ; preds = %for.end.i, %if.then.i88.rescan.preheader.i_crit_edge
  %prev.i = getelementptr inbounds %struct.usb_dev_state, ptr %3, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %as.16871.i = load ptr, ptr %prev.i, align 4
  %cmp24.not6972.i = icmp eq ptr %as.16871.i, %async_pending.i
  br i1 %cmp24.not6972.i, label %rescan.preheader.i.if.end46_crit_edge, label %rescan.preheader.i.for.body27.i_crit_edge

rescan.preheader.i.for.body27.i_crit_edge:        ; preds = %rescan.preheader.i
  br label %for.body27.i

rescan.preheader.i.if.end46_crit_edge:            ; preds = %rescan.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

for.body27.i:                                     ; preds = %for.body27.i.backedge, %rescan.preheader.i.for.body27.i_crit_edge
  %as.170.i = phi ptr [ %as.170.i.be, %for.body27.i.backedge ], [ %as.16871.i, %rescan.preheader.i.for.body27.i_crit_edge ]
  %bulk_status28.i = getelementptr inbounds %struct.async, ptr %as.170.i, i32 0, i32 14
  %70 = ptrtoint ptr %bulk_status28.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bulk_status28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp30.i = icmp eq i8 %71, 2
  br i1 %cmp30.i, label %if.then32.i, label %for.inc38.i

if.then32.i:                                      ; preds = %for.body27.i
  %bulk_status28.i.le = getelementptr inbounds %struct.async, ptr %as.170.i, i32 0, i32 14
  %72 = ptrtoint ptr %bulk_status28.i.le to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %bulk_status28.i.le, align 1
  %urb34.i = getelementptr inbounds %struct.async, ptr %as.170.i, i32 0, i32 9
  %73 = ptrtoint ptr %urb34.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %urb34.i, align 4
  %call.i = tail call ptr @usb_get_urb(ptr noundef %74) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %call35.i = tail call i32 @usb_unlink_urb(ptr noundef %74) #13
  tail call void @usb_free_urb(ptr noundef %74) #13
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %as.168.i = load ptr, ptr %prev.i, align 4
  %cmp24.not69.i = icmp eq ptr %as.168.i, %async_pending.i
  br i1 %cmp24.not69.i, label %if.then32.i.if.end46_crit_edge, label %if.then32.i.for.body27.i.backedge_crit_edge

if.then32.i.for.body27.i.backedge_crit_edge:      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27.i.backedge

if.then32.i.if.end46_crit_edge:                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

for.inc38.i:                                      ; preds = %for.body27.i
  %prev41.i = getelementptr inbounds %struct.list_head, ptr %as.170.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev41.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %as.1.i = load ptr, ptr %prev41.i, align 4
  %cmp24.not.i = icmp eq ptr %as.1.i, %async_pending.i
  br i1 %cmp24.not.i, label %for.inc38.i.if.end46_crit_edge, label %for.inc38.i.for.body27.i.backedge_crit_edge

for.inc38.i.for.body27.i.backedge_crit_edge:      ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27.i.backedge

for.inc38.i.if.end46_crit_edge:                   ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

for.body27.i.backedge:                            ; preds = %for.inc38.i.for.body27.i.backedge_crit_edge, %if.then32.i.for.body27.i.backedge_crit_edge
  %as.170.i.be = phi ptr [ %as.1.i, %for.inc38.i.for.body27.i.backedge_crit_edge ], [ %as.168.i, %if.then32.i.for.body27.i.backedge_crit_edge ]
  br label %for.body27.i

if.end46:                                         ; preds = %for.inc38.i.if.end46_crit_edge, %if.then32.i.if.end46_crit_edge, %rescan.preheader.i.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end29.if.end46_crit_edge
  %wait = getelementptr inbounds %struct.usb_dev_state, ptr %3, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br i1 %tobool.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %addr.sroa.0.0, 0
  %call50 = tail call i32 @kill_pid_usb_asyncio(i32 noundef %20, i32 noundef %errno.0, [1 x i32] %.fca.0.insert, ptr noundef %pid.0, ptr noundef %cred.0) #13
  tail call void @put_pid(ptr noundef %pid.0) #13
  %tobool.not.i90 = icmp eq ptr %cred.0, null
  br i1 %tobool.not.i90, label %if.then49.if.end51_crit_edge, label %do.body.i92

if.then49.if.end51_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

do.body.i92:                                      ; preds = %if.then49
  %call.i.i91 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %cred.0) #13
  br i1 %call.i.i91, label %if.then.i.i93, label %do.body.i92.__validate_creds.exit.i96_crit_edge, !prof !312

do.body.i92.__validate_creds.exit.i96_crit_edge:  ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i96

if.then.i.i93:                                    ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__invalid_creds(ptr noundef nonnull %cred.0, ptr noundef nonnull @.str.77, i32 noundef 286) #13
  br label %__validate_creds.exit.i96

__validate_creds.exit.i96:                        ; preds = %if.then.i.i93, %do.body.i92.__validate_creds.exit.i96_crit_edge
  %call.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cred.0, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !324
  tail call void @llvm.prefetch.p0(ptr nonnull %cred.0, i32 1, i32 3, i32 1) #13
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %cred.0, ptr nonnull %cred.0, i32 1, ptr nonnull elementtype(i32) %cred.0) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i95 = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i95)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i95, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i96.if.end51_crit_edge

__validate_creds.exit.i96.if.end51_crit_edge:     ; preds = %__validate_creds.exit.i96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then1.i:                                       ; preds = %__validate_creds.exit.i96
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_cred(ptr noundef nonnull %cred.0) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then1.i, %__validate_creds.exit.i96.if.end51_crit_edge, %if.then49.if.end51_crit_edge, %if.end46.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snoop_urb_data(ptr nocapture noundef readonly %urb, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @usbfs_snoop_max, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 %len)
  %2 = load i8, ptr @usbfs_snoop, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_sgs = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 18
  %3 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %5 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp629 = icmp slt i32 %6, 1
  br i1 %cmp629, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sg = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 16
  br label %for.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.106, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef %8, i32 noundef %1, i1 noundef zeroext true) #13
  br label %cleanup

for.body:                                         ; preds = %sg_virt.exit.for.body_crit_edge, %for.body.lr.ph
  %len.addr.033 = phi i32 [ %1, %for.body.lr.ph ], [ %sub, %sg_virt.exit.for.body_crit_edge ]
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sg_virt.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sg, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %10, i32 %i.032
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !300

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !329
  unreachable

sg_virt.exit:                                     ; preds = %for.body
  %13 = tail call i32 @llvm.umin.i32(i32 %len.addr.033, i32 16384)
  %and.i.i = and i32 %12, -4
  %14 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %14) #13
  %offset.i = getelementptr %struct.scatterlist, ptr %10, i32 %i.032, i32 1
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.106, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef %add.ptr.i, i32 noundef %13, i1 noundef zeroext true) #13
  %sub = sub i32 %len.addr.033, %13
  %inc = add nuw nsw i32 %i.032, 1
  %17 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %18)
  %cmp6 = icmp sge i32 %inc, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool7.not = icmp eq i32 %sub, 0
  %or.cond28 = select i1 %cmp6, i1 true, i1 %tobool7.not
  br i1 %or.cond28, label %sg_virt.exit.cleanup_crit_edge, label %sg_virt.exit.for.body_crit_edge

sg_virt.exit.for.body_crit_edge:                  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sg_virt.exit.cleanup_crit_edge:                   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %sg_virt.exit.cleanup_crit_edge, %if.then3, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid_usb_asyncio(i32 noundef, i32 noundef, [1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @proc_ioctl(ptr noundef %ps, ptr nocapture noundef readonly %ctl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %privileges_dropped = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 18
  %0 = ptrtoint ptr %privileges_dropped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %privileges_dropped, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ps, align 4
  %cmp.i.not.i = icmp eq ptr %3, %ps
  br i1 %cmp.i.not.i, label %if.end.cleanup_crit_edge, label %connected.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

connected.exit:                                   ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %state.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i155.not = icmp eq i32 %7, 0
  br i1 %cmp.i155.not, label %connected.exit.cleanup_crit_edge, label %if.end4

connected.exit.cleanup_crit_edge:                 ; preds = %connected.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %connected.exit
  %ioctl_code = getelementptr inbounds %struct.usbdevfs_ioctl, ptr %ctl, i32 0, i32 1
  %8 = ptrtoint ptr %ioctl_code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ioctl_code, align 4
  %10 = lshr i32 %9, 16
  %and = and i32 %10, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end4.if.end21_crit_edge, label %if.end8.i

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end8.i:                                        ; preds = %if.end4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3264) #19
  %cmp7 = icmp eq ptr %call9.i, null
  br i1 %cmp7, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  %11 = ptrtoint ptr %ioctl_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ioctl_code, align 4
  %13 = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end9
  %data = getelementptr inbounds %struct.usbdevfs_ioctl, ptr %ctl, i32 0, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %and, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then15.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then15.if.then11.i.i_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then15
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 %and, i32 -1226833920) #17, !srcloc !303
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i137, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !300

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i137:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %and) #13
  %17 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !304
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %15, i32 noundef %and) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i137.if.end21_crit_edge, label %if.end.i.i137.if.then11.i.i_crit_edge, !prof !300

if.end.i.i137.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i137.if.end21_crit_edge:                 ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then11.i.i:                                    ; preds = %if.end.i.i137.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then15.if.then11.i.i_crit_edge
  %res.0.i.i159 = phi i32 [ %call1.i.i.i, %if.end.i.i137.if.then11.i.i_crit_edge ], [ %and, %if.then15.if.then11.i.i_crit_edge ], [ %and, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %and, %res.0.i.i159
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i159)
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %21 = call ptr @memset(ptr %call9.i, i32 0, i32 %and)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end.i.i137.if.end21_crit_edge, %if.end4.if.end21_crit_edge
  %buf.0 = phi ptr [ %call9.i, %if.else ], [ null, %if.end4.if.end21_crit_edge ], [ %call9.i, %if.end.i.i137.if.end21_crit_edge ]
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %state = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp22.not = icmp eq i32 %25, 7
  br i1 %cmp22.not, label %if.else24, label %if.end21.if.end92_crit_edge

if.end21.if.end92_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.else24:                                        ; preds = %if.end21
  %26 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctl, align 4
  %call26 = tail call ptr @usb_ifnum_to_if(ptr noundef %23, i32 noundef %27) #13
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.else24.if.end92_crit_edge, label %if.else29

if.else24.if.end92_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.else29:                                        ; preds = %if.else24
  %28 = ptrtoint ptr %ioctl_code to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ioctl_code, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %29, label %sw.default [
    i32 21782, label %sw.bb
    i32 21783, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.else29
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %call26, i32 0, i32 7
  %driver32 = getelementptr inbounds %struct.usb_interface, ptr %call26, i32 0, i32 7, i32 6
  %31 = ptrtoint ptr %driver32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver32, align 4
  %tobool33.not = icmp eq ptr %32, null
  br i1 %tobool33.not, label %sw.bb.if.end92_crit_edge, label %if.then34

sw.bb.if.end92_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then34:                                        ; preds = %sw.bb
  %add.ptr = getelementptr i8, ptr %32, i32 -96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @proc_ioctl.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_ioctl, %if.then42)) #13
          to label %if.end78.thread165 [label %if.then42], !srcloc !327

if.then42:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @proc_ioctl.__UNIQUE_ID_ddebug259, ptr noundef %dev31, ptr noundef nonnull @.str.130) #13
  br label %if.end78.thread165

if.end78.thread165:                               ; preds = %if.then42, %if.then34
  tail call void @usb_driver_release_interface(ptr noundef %add.ptr, ptr noundef nonnull %call26) #13
  br label %land.lhs.true

sw.bb47:                                          ; preds = %if.else29
  %driver49 = getelementptr inbounds %struct.usb_interface, ptr %call26, i32 0, i32 7, i32 6
  %33 = ptrtoint ptr %driver49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver49, align 4
  %tobool50.not = icmp eq ptr %34, null
  br i1 %tobool50.not, label %if.then51, label %sw.bb47.if.end92_crit_edge

sw.bb47.if.end92_crit_edge:                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then51:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #15
  %dev48 = getelementptr inbounds %struct.usb_interface, ptr %call26, i32 0, i32 7
  %call53 = tail call i32 @device_attach(ptr noundef %dev48) #13
  br label %if.end78

sw.default:                                       ; preds = %if.else29
  %driver57 = getelementptr inbounds %struct.usb_interface, ptr %call26, i32 0, i32 7, i32 6
  %35 = ptrtoint ptr %driver57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver57, align 4
  %tobool58.not = icmp eq ptr %36, null
  %add.ptr64 = getelementptr i8, ptr %36, i32 -96
  %cmp66169 = icmp eq ptr %add.ptr64, null
  %cmp66 = or i1 %tobool58.not, %cmp66169
  br i1 %cmp66, label %sw.default.if.end92_crit_edge, label %lor.lhs.false

sw.default.if.end92_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

lor.lhs.false:                                    ; preds = %sw.default
  %unlocked_ioctl = getelementptr i8, ptr %36, i32 -84
  %37 = ptrtoint ptr %unlocked_ioctl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %unlocked_ioctl, align 4
  %cmp67 = icmp eq ptr %38, null
  br i1 %cmp67, label %lor.lhs.false.if.end92_crit_edge, label %if.else69

lor.lhs.false.if.end92_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.else69:                                        ; preds = %lor.lhs.false
  %call72 = tail call i32 %38(ptr noundef nonnull %call26, i32 noundef %29, ptr noundef %buf.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call72)
  %cmp73 = icmp eq i32 %call72, -515
  br i1 %cmp73, label %if.else69.if.end92_crit_edge, label %if.else69.if.end78_crit_edge

if.else69.if.end78_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.else69.if.end92_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.end78:                                         ; preds = %if.else69.if.end78_crit_edge, %if.then51
  %retval1.0 = phi i32 [ %call72, %if.else69.if.end78_crit_edge ], [ %call53, %if.then51 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval1.0)
  %cmp79 = icmp sgt i32 %retval1.0, -1
  br i1 %cmp79, label %if.end78.land.lhs.true_crit_edge, label %if.end78.if.end92_crit_edge

if.end78.if.end92_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.end78.land.lhs.true_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end78.land.lhs.true_crit_edge, %if.end78.thread165
  %retval1.0168 = phi i32 [ 0, %if.end78.thread165 ], [ %retval1.0, %if.end78.land.lhs.true_crit_edge ]
  %39 = ptrtoint ptr %ioctl_code to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ioctl_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp84.not = icmp sgt i32 %40, -1
  %brmerge = select i1 %cmp84.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %land.lhs.true.if.end92_crit_edge, label %land.lhs.true87

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

land.lhs.true87:                                  ; preds = %land.lhs.true
  %data88 = getelementptr inbounds %struct.usbdevfs_ioctl, ptr %ctl, i32 0, i32 2
  %41 = ptrtoint ptr %data88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data88, align 4
  tail call void @__check_object_size(ptr noundef %buf.0, i32 noundef %and, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i147 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i147, label %land.lhs.true87.if.end92_crit_edge, label %if.end.i.i151

land.lhs.true87.if.end92_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.end.i.i151:                                    ; preds = %land.lhs.true87
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %42, i32 %and, i32 -1226833920) #17, !srcloc !301
  %asmresult.i.i149 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i149)
  %cmp.i6.i150 = icmp eq i32 %asmresult.i.i149, 0
  br i1 %cmp.i6.i150, label %copy_to_user.exit, label %if.end.i.i151.if.end92_crit_edge

if.end.i.i151.if.end92_crit_edge:                 ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

copy_to_user.exit:                                ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i152 = tail call zeroext i1 @__kasan_check_read(ptr noundef %buf.0, i32 noundef %and) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %42, ptr noundef %buf.0, i32 noundef %and) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %cmp90.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %cmp90.not, i32 %retval1.0168, i32 -14
  br label %if.end92

if.end92:                                         ; preds = %copy_to_user.exit, %if.end.i.i151.if.end92_crit_edge, %land.lhs.true87.if.end92_crit_edge, %land.lhs.true.if.end92_crit_edge, %if.end78.if.end92_crit_edge, %if.else69.if.end92_crit_edge, %lor.lhs.false.if.end92_crit_edge, %sw.default.if.end92_crit_edge, %sw.bb47.if.end92_crit_edge, %sw.bb.if.end92_crit_edge, %if.else24.if.end92_crit_edge, %if.end21.if.end92_crit_edge
  %retval1.1 = phi i32 [ %retval1.0168, %land.lhs.true.if.end92_crit_edge ], [ %retval1.0, %if.end78.if.end92_crit_edge ], [ -25, %sw.default.if.end92_crit_edge ], [ -25, %lor.lhs.false.if.end92_crit_edge ], [ -16, %sw.bb47.if.end92_crit_edge ], [ -61, %sw.bb.if.end92_crit_edge ], [ -22, %if.else24.if.end92_crit_edge ], [ -113, %if.end21.if.end92_crit_edge ], [ -25, %if.else69.if.end92_crit_edge ], [ -14, %land.lhs.true87.if.end92_crit_edge ], [ -14, %if.end.i.i151.if.end92_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef %buf.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then11.i.i, %if.end8.i.cleanup_crit_edge, %connected.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ %retval1.1, %if.end92 ], [ -13, %entry.cleanup_crit_edge ], [ -19, %connected.exit.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_claim_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_release_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_usbdevfs_streams(ptr noundef %ps, ptr noundef %streams, ptr noundef writeonly %num_streams_ret, ptr nocapture noundef writeonly %num_eps_ret, ptr nocapture noundef writeonly %eps_ret, ptr nocapture noundef writeonly %intf_ret) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 938) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !304
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %streams, i32 -1226833921) #13, !srcloc !336
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 939) #13
  %num_eps7 = getelementptr inbounds %struct.usbdevfs_streams, ptr %streams, i32 0, i32 1
  %4 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i118 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i118 to ptr
  %cpu_domain.i.i119 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i119) #8, !srcloc !304
  %and.i120 = and i32 %6, -13
  %or.i121 = or i32 %and.i120, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i121) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %num_eps7, i32 -1226833921) #13, !srcloc !337
  %asmresult14 = extractvalue { i32, i32 } %7, 0
  %asmresult15 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult14)
  %tobool17.not = icmp eq i32 %asmresult14, 0
  br i1 %tobool17.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = add i32 %asmresult15, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -30, i32 %8)
  %9 = icmp ult i32 %8, -30
  br i1 %9, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %tobool22.not = icmp eq ptr %num_streams_ret, null
  %tobool22.not.not = xor i1 %tobool22.not, true
  %10 = add i32 %asmresult2, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %10)
  %11 = icmp ult i32 %10, -65535
  %or.cond = select i1 %tobool22.not.not, i1 %11, i1 false
  br i1 %or.cond, label %if.end21.cleanup_crit_edge, label %if.end7.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i:                                        ; preds = %if.end21
  %12 = shl nuw nsw i32 %asmresult15, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #19
  %tobool29.not = icmp eq ptr %call8.i, null
  br i1 %tobool29.not, label %if.end7.i.cleanup_crit_edge, label %for.body.lr.ph

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7.i
  %dev = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 1
  %ifclaimed.i = getelementptr inbounds %struct.usb_dev_state, ptr %ps, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %intf.0152 = phi ptr [ null, %for.body.lr.ph ], [ %intf.1, %for.inc.for.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 954) #13
  %arrayidx = getelementptr %struct.usbdevfs_streams, ptr %streams, i32 0, i32 2, i32 %i.0153
  %13 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i.i.i122 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i122 to ptr
  %cpu_domain.i.i123 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i123) #8, !srcloc !304
  %and.i124 = and i32 %15, -13
  %or.i125 = or i32 %and.i124, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i125) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %16 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx, i32 -1226833921) #13, !srcloc !338
  %asmresult43 = extractvalue { i32, i32 } %16, 0
  %asmresult44 = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #13, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult43)
  %tobool46.not = icmp eq i32 %asmresult43, 0
  br i1 %tobool46.not, label %if.end48, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end48:                                         ; preds = %for.body
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %and.i126 = and i32 %asmresult44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i = icmp eq i32 %and.i126, 0
  %and2.i = and i32 %asmresult44, 15
  %arrayidx.i = getelementptr %struct.usb_device, ptr %18, i32 0, i32 21, i32 %and2.i
  %arrayidx5.i = getelementptr %struct.usb_device, ptr %18, i32 0, i32 22, i32 %and2.i
  %retval.0.in.i = select i1 %tobool.not.i, ptr %arrayidx5.i, ptr %arrayidx.i
  %19 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %retval.0.i127 = load ptr, ptr %retval.0.in.i, align 4
  %arrayidx50 = getelementptr ptr, ptr %call8.i, i32 %i.0153
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i127, ptr %arrayidx50, align 4
  %tobool52.not = icmp eq ptr %retval.0.i127, null
  br i1 %tobool52.not, label %if.end48.error_crit_edge, label %if.end54

if.end48.error_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end54:                                         ; preds = %if.end48
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %and.i128 = and i32 %asmresult44, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %if.end.i130, label %if.end54.error_crit_edge

if.end54.error_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i130:                                      ; preds = %if.end54
  %actconfig.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %actconfig.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.end.i130.error_crit_edge, label %for.cond.preheader.i

if.end.i130.error_crit_edge:                      ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

for.cond.preheader.i:                             ; preds = %if.end.i130
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bNumInterfaces.i, align 4
  %conv.i131 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp55.not.i = icmp eq i8 %26, 0
  br i1 %cmp55.not.i, label %for.cond.preheader.i.error_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.error_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %27 = trunc i32 %asmresult44 to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.056.i = phi i32 [ %inc31.i, %for.inc30.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i132 = getelementptr %struct.usb_host_config, ptr %24, i32 0, i32 3, i32 %i.056.i
  %28 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i132, align 4
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp852.not.i = icmp eq i32 %31, 0
  br i1 %cmp852.not.i, label %for.body.i.for.inc30.i_crit_edge, label %for.body10.lr.ph.i

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i

for.body10.lr.ph.i:                               ; preds = %for.body.i
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 8
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc27.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %j.053.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc28.i, %for.inc27.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.usb_host_interface, ptr %33, i32 %j.053.i
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i, i32 0, i32 4
  %34 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bNumEndpoints.i, align 4
  %conv14.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp1550.not.i = icmp eq i8 %35, 0
  br i1 %cmp1550.not.i, label %for.body10.i.for.inc27.i_crit_edge, label %for.body17.lr.ph.i

for.body10.i.for.inc27.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i

for.body17.lr.ph.i:                               ; preds = %for.body10.i
  %endpoint.i = getelementptr %struct.usb_host_interface, ptr %33, i32 %j.053.i, i32 3
  %36 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %endpoint.i, align 4
  br label %for.body17.i

for.cond12.i:                                     ; preds = %for.body17.i
  %inc.i = add nuw nsw i32 %e.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv14.i
  br i1 %exitcond.not.i, label %for.cond12.i.for.inc27.i_crit_edge, label %for.cond12.i.for.body17.i_crit_edge

for.cond12.i.for.body17.i_crit_edge:              ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i

for.cond12.i.for.inc27.i_crit_edge:               ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27.i

for.body17.i:                                     ; preds = %for.cond12.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %e.051.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc.i, %for.cond12.i.for.body17.i_crit_edge ]
  %bEndpointAddress.i = getelementptr %struct.usb_host_endpoint, ptr %37, i32 %e.051.i, i32 0, i32 2
  %38 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %27)
  %cmp21.i = icmp eq i8 %39, %27
  br i1 %cmp21.i, label %findintfep.exit, label %for.cond12.i

for.inc27.i:                                      ; preds = %for.cond12.i.for.inc27.i_crit_edge, %for.body10.i.for.inc27.i_crit_edge
  %inc28.i = add nuw i32 %j.053.i, 1
  %exitcond58.not.i = icmp eq i32 %inc28.i, %31
  br i1 %exitcond58.not.i, label %for.inc27.i.for.inc30.i_crit_edge, label %for.inc27.i.for.body10.i_crit_edge

for.inc27.i.for.body10.i_crit_edge:               ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i

for.inc27.i.for.inc30.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc27.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %inc31.i = add nuw nsw i32 %i.056.i, 1
  %exitcond59.not.i = icmp eq i32 %inc31.i, %conv.i131
  br i1 %exitcond59.not.i, label %for.inc30.i.error_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc30.i.error_crit_edge:                      ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

findintfep.exit:                                  ; preds = %for.body17.i
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx11.i, i32 0, i32 2
  %40 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv25.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0153)
  %cmp62 = icmp eq i32 %i.0153, 0
  br i1 %cmp62, label %if.then64, label %if.else

if.then64:                                        ; preds = %findintfep.exit
  %state.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 3
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %43)
  %cmp.not.i = icmp eq i32 %43, 7
  br i1 %cmp.not.i, label %if.end.i134, label %if.then64.error_crit_edge

if.then64.error_crit_edge:                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i134:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %41)
  %cmp1.i = icmp ugt i8 %41, 31
  br i1 %cmp1.i, label %if.end.i134.error_crit_edge, label %if.end3.i

if.end.i134.error_crit_edge:                      ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end3.i:                                        ; preds = %if.end.i134
  %div3.i.i = lshr i32 %conv25.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %ifclaimed.i, i32 %div3.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i.i, align 4
  %46 = shl nuw i32 1, %conv25.i
  %47 = and i32 %45, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i135 = icmp eq i32 %47, 0
  br i1 %tobool.not.i135, label %checkintf.exit, label %if.end3.i.if.end69_crit_edge

if.end3.i.if.end69_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

checkintf.exit:                                   ; preds = %if.end3.i
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  %48 = tail call i32 @llvm.read_register.i32(metadata !290) #13
  %and.i19.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i19.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid.i.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i, ptr noundef nonnull @.str.87, i32 noundef %53, ptr noundef %comm.i, i32 noundef %conv25.i) #16
  %call12.i = tail call fastcc i32 @claimintf(ptr noundef %ps, i32 noundef %conv25.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp66 = icmp slt i32 %call12.i, 0
  br i1 %cmp66, label %checkintf.exit.error_crit_edge, label %checkintf.exit.if.end69_crit_edge

checkintf.exit.if.end69_crit_edge:                ; preds = %checkintf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

checkintf.exit.error_crit_edge:                   ; preds = %checkintf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end69:                                         ; preds = %checkintf.exit.if.end69_crit_edge, %if.end3.i.if.end69_crit_edge
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %call71 = tail call ptr @usb_ifnum_to_if(ptr noundef %55, i32 noundef %conv25.i) #13
  br label %for.inc

if.else:                                          ; preds = %findintfep.exit
  %56 = ptrtoint ptr %intf.0152 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intf.0152, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %59)
  %cmp73.not = icmp eq i8 %41, %59
  br i1 %cmp73.not, label %if.else.for.inc_crit_edge, label %if.else.error_crit_edge

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.end69
  %intf.1 = phi ptr [ %call71, %if.end69 ], [ %intf.0152, %if.else.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, %asmresult15
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %tobool22.not, label %for.end.if.end80_crit_edge, label %if.then79

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then79:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %num_streams_ret to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %asmresult2, ptr %num_streams_ret, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %for.end.if.end80_crit_edge
  %61 = ptrtoint ptr %num_eps_ret to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %asmresult15, ptr %num_eps_ret, align 4
  %62 = ptrtoint ptr %eps_ret to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call8.i, ptr %eps_ret, align 4
  %63 = ptrtoint ptr %intf_ret to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %intf.1, ptr %intf_ret, align 4
  br label %cleanup

error:                                            ; preds = %if.else.error_crit_edge, %checkintf.exit.error_crit_edge, %if.end.i134.error_crit_edge, %if.then64.error_crit_edge, %for.inc30.i.error_crit_edge, %for.cond.preheader.i.error_crit_edge, %if.end.i130.error_crit_edge, %if.end54.error_crit_edge, %if.end48.error_crit_edge, %for.body.error_crit_edge
  %ret.0 = phi i32 [ -2, %for.inc30.i.error_crit_edge ], [ -113, %if.then64.error_crit_edge ], [ -22, %if.end.i134.error_crit_edge ], [ -22, %if.end54.error_crit_edge ], [ -3, %if.end.i130.error_crit_edge ], [ -2, %for.cond.preheader.i.error_crit_edge ], [ -22, %if.else.error_crit_edge ], [ -22, %if.end48.error_crit_edge ], [ -14, %for.body.error_crit_edge ], [ %call12.i, %checkintf.exit.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end80, %if.end7.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end80 ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_alloc_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_free_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autoresume_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autosuspend_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbdev_vm_open(ptr nocapture noundef readonly %vma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %ps = getelementptr inbounds %struct.usb_memory, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps, align 4
  %lock = getelementptr inbounds %struct.usb_dev_state, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %vma_use_count = getelementptr inbounds %struct.usb_memory, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vma_use_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma_use_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %vma_use_count, align 4
  %6 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps, align 4
  %lock6 = getelementptr inbounds %struct.usb_dev_state, ptr %7, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock6, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbdev_vm_close(ptr nocapture noundef readonly %vma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %vma_use_count = getelementptr inbounds %struct.usb_memory, ptr %1, i32 0, i32 1
  tail call fastcc void @dec_usb_memory_use_count(ptr noundef %1, ptr noundef %vma_use_count)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_devt(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hub_release_all_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdev_notify(ptr nocapture noundef readnone %self, i32 noundef %action, ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cond = icmp eq i32 %action, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @usbfs_mutex, i32 noundef 0) #13
  %filelist.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 34
  %0 = ptrtoint ptr %filelist.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %filelist.i, align 4
  %cmp.i.not21.i = icmp eq ptr %1, %filelist.i
  br i1 %cmp.i.not21.i, label %sw.bb.usbdev_remove.exit_crit_edge, label %sw.bb.while.body.i_crit_edge

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

sw.bb.usbdev_remove.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %usbdev_remove.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %2 = phi ptr [ %21, %if.end.i.while.body.i_crit_edge ], [ %1, %sw.bb.while.body.i_crit_edge ]
  %async_pending.i.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 4
  tail call fastcc void @destroy_async(ptr noundef %2, ptr noundef %async_pending.i.i) #13
  %wait.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  %not_yet_resumed.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %not_yet_resumed.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %not_yet_resumed.i, align 4
  %wait_for_resume.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wait_for_resume.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %prev.i3.i.i, align 4
  %discsignr.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 9
  %12 = ptrtoint ptr %discsignr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %discsignr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not.i = icmp eq i32 %13, 0
  br i1 %tobool8.not.i, label %list_del_init.exit.i.if.end.i_crit_edge, label %if.then.i

list_del_init.exit.i.if.end.i_crit_edge:          ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %disccontext.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 12
  %disc_pid.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 10
  %14 = ptrtoint ptr %disc_pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disc_pid.i, align 4
  %cred.i = getelementptr inbounds %struct.usb_dev_state, ptr %2, i32 0, i32 11
  %16 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred.i, align 4
  %18 = ptrtoint ptr %disccontext.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack.i = load i32, ptr %disccontext.i, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call10.i = tail call i32 @kill_pid_usb_asyncio(i32 noundef %13, i32 noundef 32, [1 x i32] %19, ptr noundef %15, ptr noundef %17) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del_init.exit.i.if.end.i_crit_edge
  %20 = ptrtoint ptr %filelist.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %filelist.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %filelist.i
  br i1 %cmp.i.not.i, label %if.end.i.usbdev_remove.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.usbdev_remove.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usbdev_remove.exit

usbdev_remove.exit:                               ; preds = %if.end.i.usbdev_remove.exit_crit_edge, %sw.bb.usbdev_remove.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @usbfs_mutex) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %usbdev_remove.exit, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !57, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !149, !151, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !214, !215, !217, !219, !220, !221, !222, !224, !225, !226, !227, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !272, !274, !275, !277, !278, !280, !281, !283, !285, !286, !287, !288}
!llvm.named.register.sp = !{!290}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298}
!llvm.ident = !{!299}

!0 = !{ptr @__param_usbfs_snoop, !1, !"__param_usbfs_snoop", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/devio.c", i32 113, i32 1}
!2 = !{ptr @__UNIQUE_ID_usbfs_snooptype239, !1, !"__UNIQUE_ID_usbfs_snooptype239", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_usbfs_snoop240, !4, !"__UNIQUE_ID_usbfs_snoop240", i1 false, i1 false}
!4 = !{!"../drivers/usb/core/devio.c", i32 114, i32 1}
!5 = !{ptr @__param_usbfs_snoop_max, !6, !"__param_usbfs_snoop_max", i1 false, i1 false}
!6 = !{!"../drivers/usb/core/devio.c", i32 117, i32 1}
!7 = !{ptr @__UNIQUE_ID_usbfs_snoop_maxtype241, !6, !"__UNIQUE_ID_usbfs_snoop_maxtype241", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_usbfs_snoop_max242, !9, !"__UNIQUE_ID_usbfs_snoop_max242", i1 false, i1 false}
!9 = !{!"../drivers/usb/core/devio.c", i32 118, i32 1}
!10 = !{ptr @__param_usbfs_memory_mb, !11, !"__param_usbfs_memory_mb", i1 false, i1 false}
!11 = !{!"../drivers/usb/core/devio.c", i32 135, i32 1}
!12 = !{ptr @__UNIQUE_ID_usbfs_memory_mbtype243, !11, !"__UNIQUE_ID_usbfs_memory_mbtype243", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_usbfs_memory_mb244, !14, !"__UNIQUE_ID_usbfs_memory_mb244", i1 false, i1 false}
!14 = !{!"../drivers/usb/core/devio.c", i32 136, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/core/devio.c", i32 750, i32 11}
!17 = !{ptr @usbfs_driver, !18, !"usbfs_driver", i1 false, i1 false}
!18 = !{!"../drivers/usb/core/devio.c", i32 749, i32 19}
!19 = !{ptr @usbdev_file_operations, !20, !"usbdev_file_operations", i1 false, i1 false}
!20 = !{!"../drivers/usb/core/devio.c", i32 2813, i32 30}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/core/devio.c", i32 2869, i32 6}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/core/devio.c", i32 2871, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @usb_devio_init._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @usb_devio_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/core/devio.c", i32 2877, i32 3}
!31 = !{ptr @usb_devio_init._entry.5, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @usb_devio_init._entry_ptr.7, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @usbfs_snoop, !34, !"usbfs_snoop", i1 false, i1 false}
!34 = !{!"../drivers/usb/core/devio.c", i32 112, i32 13}
!35 = !{ptr @usb_device_cdev, !36, !"usb_device_cdev", i1 false, i1 false}
!36 = !{!"../drivers/usb/core/devio.c", i32 2862, i32 20}
!37 = !{ptr @__param_str_usbfs_snoop, !1, !"__param_str_usbfs_snoop", i1 false, i1 false}
!38 = !{ptr @__param_str_usbfs_snoop_max, !6, !"__param_str_usbfs_snoop_max", i1 false, i1 false}
!39 = !{ptr @usbfs_snoop_max, !40, !"usbfs_snoop_max", i1 false, i1 false}
!40 = !{!"../drivers/usb/core/devio.c", i32 116, i32 17}
!41 = !{ptr @__param_str_usbfs_memory_mb, !11, !"__param_str_usbfs_memory_mb", i1 false, i1 false}
!42 = !{ptr @usbfs_memory_mb, !43, !"usbfs_memory_mb", i1 false, i1 false}
!43 = !{!"../drivers/usb/core/devio.c", i32 134, i32 12}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/core/devio.c", i32 59, i32 8}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @usbfs_mutex, !45, !"usbfs_mutex", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/core/devio.c", i32 710, i32 3}
!50 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @driver_disconnect._entry, !49, !"_entry", i1 false, i1 false}
!54 = !{ptr @driver_disconnect._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/core/devio.c", i32 2588, i32 3}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @usbdev_do_ioctl._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @usbdev_do_ioctl._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/core/devio.c", i32 2593, i32 3}
!70 = !{ptr @usbdev_do_ioctl._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @usbdev_do_ioctl._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/core/devio.c", i32 2617, i32 3}
!74 = !{ptr @usbdev_do_ioctl._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @usbdev_do_ioctl._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/core/devio.c", i32 2624, i32 3}
!78 = !{ptr @usbdev_do_ioctl._entry.26, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @usbdev_do_ioctl._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/core/devio.c", i32 2631, i32 3}
!82 = !{ptr @usbdev_do_ioctl._entry.29, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @usbdev_do_ioctl._entry_ptr.31, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/core/devio.c", i32 2638, i32 3}
!86 = !{ptr @usbdev_do_ioctl._entry.32, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @usbdev_do_ioctl._entry_ptr.34, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/core/devio.c", i32 2643, i32 3}
!90 = !{ptr @usbdev_do_ioctl._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @usbdev_do_ioctl._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/core/devio.c", i32 2650, i32 3}
!94 = !{ptr @usbdev_do_ioctl._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @usbdev_do_ioctl._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/core/devio.c", i32 2655, i32 3}
!98 = !{ptr @usbdev_do_ioctl._entry.41, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @usbdev_do_ioctl._entry_ptr.43, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/core/devio.c", i32 2660, i32 3}
!102 = !{ptr @usbdev_do_ioctl._entry.44, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @usbdev_do_ioctl._entry_ptr.46, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/core/devio.c", i32 2665, i32 3}
!106 = !{ptr @usbdev_do_ioctl._entry.47, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @usbdev_do_ioctl._entry_ptr.49, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/core/devio.c", i32 2670, i32 3}
!110 = !{ptr @usbdev_do_ioctl._entry.50, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @usbdev_do_ioctl._entry_ptr.52, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/core/devio.c", i32 2710, i32 3}
!114 = !{ptr @usbdev_do_ioctl._entry.53, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @usbdev_do_ioctl._entry_ptr.55, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/core/devio.c", i32 2715, i32 3}
!118 = !{ptr @usbdev_do_ioctl._entry.56, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @usbdev_do_ioctl._entry_ptr.58, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/core/devio.c", i32 2720, i32 3}
!122 = !{ptr @usbdev_do_ioctl._entry.59, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @usbdev_do_ioctl._entry_ptr.61, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/core/devio.c", i32 2725, i32 3}
!126 = !{ptr @usbdev_do_ioctl._entry.62, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @usbdev_do_ioctl._entry_ptr.64, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/core/devio.c", i32 2730, i32 3}
!130 = !{ptr @usbdev_do_ioctl._entry.65, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @usbdev_do_ioctl._entry_ptr.67, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/core/devio.c", i32 2735, i32 3}
!134 = !{ptr @usbdev_do_ioctl._entry.68, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @usbdev_do_ioctl._entry_ptr.70, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/core/devio.c", i32 2740, i32 3}
!138 = !{ptr @usbdev_do_ioctl._entry.71, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @usbdev_do_ioctl._entry_ptr.73, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/core/devio.c", i32 2083, i32 3}
!142 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @proc_reapurb._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @proc_reapurb._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/usb/core/devio.c", i32 2061, i32 3}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../drivers/usb/core/devio.c", i32 2072, i32 2}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/cred.h", i32 286, i32 3}
!151 = !{ptr @usbfs_memory_usage, !152, !"usbfs_memory_usage", i1 false, i1 false}
!152 = !{!"../drivers/usb/core/devio.c", i32 142, i32 19}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/core/devio.c", i32 2100, i32 3}
!155 = !{ptr @proc_reapurbnonblock._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @proc_reapurbnonblock._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/core/devio.c", i32 1186, i32 2}
!159 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @do_proc_control._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @do_proc_control._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/core/devio.c", i32 1226, i32 3}
!164 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @do_proc_control._entry.81, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @do_proc_control._entry_ptr.84, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/core/devio.c", i32 900, i32 5}
!169 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @check_ctrlrecip._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @check_ctrlrecip._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/core/devio.c", i32 826, i32 2}
!174 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @checkintf._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @checkintf._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/core/devio.c", i32 472, i32 32}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/core/devio.c", i32 472, i32 40}
!181 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/core/devio.c", i32 472, i32 47}
!183 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/core/devio.c", i32 472, i32 55}
!185 = !{ptr @snoop_urb.types, !186, !"types", i1 false, i1 false}
!186 = !{!"../drivers/usb/core/devio.c", i32 472, i32 21}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/core/devio.c", i32 473, i32 31}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/core/devio.c", i32 473, i32 38}
!191 = !{ptr @snoop_urb.dirs, !192, !"dirs", i1 false, i1 false}
!192 = !{!"../drivers/usb/core/devio.c", i32 473, i32 21}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/core/devio.c", i32 486, i32 4}
!195 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @snoop_urb._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @snoop_urb._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/core/devio.c", i32 490, i32 4}
!200 = !{ptr @snoop_urb._entry.97, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @snoop_urb._entry_ptr.99, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/core/devio.c", i32 496, i32 4}
!204 = !{ptr @snoop_urb._entry.100, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @snoop_urb._entry_ptr.102, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/core/devio.c", i32 500, i32 4}
!208 = !{ptr @snoop_urb._entry.103, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @snoop_urb._entry_ptr.105, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/core/devio.c", i32 507, i32 30}
!212 = !{ptr @init_completion.__key, !213, !"__key", i1 false, i1 false}
!213 = !{!"../include/linux/completion.h", i32 87, i32 2}
!214 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.108, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/core/devio.c", i32 1381, i32 40}
!217 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/core/devio.c", i32 1363, i32 3}
!219 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @check_reset_of_active_ep._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @check_reset_of_active_ep._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/core/devio.c", i32 1490, i32 5}
!224 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @proc_resetdevice._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @proc_resetdevice._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/core/devio.c", i32 1400, i32 40}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/core/devio.c", i32 1538, i32 5}
!231 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @proc_setconfig._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @proc_setconfig._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/core/devio.c", i32 1671, i32 3}
!236 = !{ptr @proc_do_submiturb._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @proc_do_submiturb._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/core/devio.c", i32 1862, i32 3}
!240 = !{ptr @proc_do_submiturb._entry.117, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @proc_do_submiturb._entry_ptr.119, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/core/devio.c", i32 1864, i32 3}
!244 = !{ptr @proc_do_submiturb._entry.120, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @proc_do_submiturb._entry_ptr.122, !243, !"_entry_ptr", i1 false, i1 false}
!246 = distinct !{null, !247, !"__warned", i1 false, i1 false}
!247 = !{!"../drivers/usb/core/devio.c", i32 1906, i32 13}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/core/devio.c", i32 1947, i32 3}
!250 = !{ptr @proc_do_submiturb._entry.123, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @proc_do_submiturb._entry_ptr.125, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/core/devio.c", i32 621, i32 2}
!254 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @async_completed._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @async_completed._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/core/devio.c", i32 2331, i32 4}
!259 = !{ptr @.str.129, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @proc_ioctl.__UNIQUE_ID_ddebug259, !258, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/core/devio.c", i32 2402, i32 3}
!264 = !{ptr @.str.132, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @proc_claim_port._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @proc_claim_port._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/core/devio.c", i32 2463, i32 3}
!269 = !{ptr @proc_disconnect_claim.__UNIQUE_ID_ddebug260, !268, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!270 = !{ptr @usbdev_vm_ops, !271, !"usbdev_vm_ops", i1 false, i1 false}
!271 = !{!"../drivers/usb/core/devio.c", i32 212, i32 42}
!272 = !{ptr @usbdev_open.__key, !273, !"__key", i1 false, i1 false}
!273 = !{!"../drivers/usb/core/devio.c", i32 1041, i32 2}
!274 = !{ptr @.str.134, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @usbdev_open.__key.135, !276, !"__key", i1 false, i1 false}
!276 = !{!"../drivers/usb/core/devio.c", i32 1046, i32 2}
!277 = !{ptr @.str.136, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @usbdev_open.__key.137, !279, !"__key", i1 false, i1 false}
!279 = !{!"../drivers/usb/core/devio.c", i32 1047, i32 2}
!280 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!281 = distinct !{null, !282, !"__warned", i1 false, i1 false}
!282 = !{!"../drivers/usb/core/devio.c", i32 1049, i32 13}
!283 = !{ptr @.str.139, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/core/devio.c", i32 1056, i32 2}
!285 = !{ptr @.str.140, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @usbdev_open._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @usbdev_open._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @usbdev_nb, !289, !"usbdev_nb", i1 false, i1 false}
!289 = !{!"../drivers/usb/core/devio.c", i32 2858, i32 30}
!290 = !{!"sp"}
!291 = !{i32 1, !"wchar_size", i32 2}
!292 = !{i32 1, !"min_enum_size", i32 4}
!293 = !{i32 8, !"branch-target-enforcement", i32 0}
!294 = !{i32 8, !"sign-return-address", i32 0}
!295 = !{i32 8, !"sign-return-address-all", i32 0}
!296 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!297 = !{i32 7, !"uwtable", i32 1}
!298 = !{i32 7, !"frame-pointer", i32 2}
!299 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!300 = !{!"branch_weights", i32 2000, i32 1}
!301 = !{i64 2152235490, i64 2152235515}
!302 = !{i8 0, i8 2}
!303 = !{i64 2152234809, i64 2152234834}
!304 = !{i64 4730364}
!305 = !{i64 4730561}
!306 = !{i64 2152215794}
!307 = !{!"auto-init"}
!308 = !{i64 2155224957, i64 2155225237, i64 2155225571, i64 2155225905}
!309 = !{i64 2155237200, i64 2155237480, i64 2155237814, i64 2155238148}
!310 = !{i64 2155254435, i64 2155254715, i64 2155255049, i64 2155255383}
!311 = !{i64 2155272480, i64 2155272505}
!312 = !{!"branch_weights", i32 1, i32 2000}
!313 = !{i64 2154470248, i64 2154470740, i64 2154470285, i64 2154470341, i64 2154470375, i64 2154470399, i64 2154470440, i64 2154470461, i64 2154470489, i64 2154470523}
!314 = !{i64 2154463929, i64 2154464421, i64 2154463966, i64 2154464022, i64 2154464056, i64 2154464080, i64 2154464121, i64 2154464142, i64 2154464170, i64 2154464204}
!315 = !{i64 2154465539, i64 2154466031, i64 2154465576, i64 2154465632, i64 2154465666, i64 2154465690, i64 2154465731, i64 2154465752, i64 2154465780, i64 2154465814}
!316 = !{i64 2148723860, i64 2148723892, i64 2148723921, i64 2148723955, i64 2148723986, i64 2148724009}
!317 = !{i64 2148722330, i64 2148722356, i64 2148722385, i64 2148722419, i64 2148722450, i64 2148722473}
!318 = !{i64 2155357316, i64 2155357596, i64 2155357930, i64 2155358264}
!319 = !{i64 2155369583, i64 2155369863, i64 2155370197, i64 2155370531}
!320 = !{i64 2155388552, i64 2155388832, i64 2155389166, i64 2155389500}
!321 = !{i64 2155402886, i64 2155403166, i64 2155403500, i64 2155403834}
!322 = !{i64 2155412494, i64 2155412774, i64 2155413108, i64 2155413442}
!323 = !{i64 2155204623}
!324 = !{i64 2148810806}
!325 = !{i64 2148725515, i64 2148725547, i64 2148725576, i64 2148725610, i64 2148725641, i64 2148725664}
!326 = !{i64 2148811035}
!327 = !{i64 2148546928, i64 2148546933, i64 2148546946, i64 2148546990, i64 2148547024, i64 2148547045}
!328 = !{i64 2155345326}
!329 = !{i64 2154467487, i64 2154467979, i64 2154467524, i64 2154467580, i64 2154467614, i64 2154467638, i64 2154467679, i64 2154467700, i64 2154467728, i64 2154467762}
!330 = !{i64 2155288167, i64 2155288447, i64 2155288781, i64 2155289115}
!331 = !{i64 2155297070, i64 2155297350, i64 2155297684, i64 2155298018}
!332 = !{i64 2155305959, i64 2155306239, i64 2155306573, i64 2155306907}
!333 = !{i64 2155314988, i64 2155315268, i64 2155315602, i64 2155315936}
!334 = !{i64 2155323968, i64 2155324248, i64 2155324582, i64 2155324916}
!335 = !{i64 2155332863, i64 2155333143, i64 2155333477, i64 2155333811}
!336 = !{i64 2155173352, i64 2155173632, i64 2155173966, i64 2155174300}
!337 = !{i64 2155185595, i64 2155185875, i64 2155186209, i64 2155186543}
!338 = !{i64 2155192886, i64 2155193166, i64 2155193500, i64 2155193834}
