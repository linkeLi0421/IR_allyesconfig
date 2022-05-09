; ModuleID = '/llk/IR_all_yes/drivers/usb/class/usblp.c_pt.bc'
source_filename = "../drivers/usb/class/usblp.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.quirk_printer_struct = type { i16, i16, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.usblp = type { ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, ptr, %struct.usb_anchor, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, ptr, [4 x %struct.anon.68], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.anon.68 = type { i32, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_usblp__246_1468_usblp_driver_init6 = internal global ptr @usblp_driver_init, section ".initcall6.init", align 4
@usblp_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usblp_probe, ptr @usblp_disconnect, ptr null, ptr @usblp_suspend, ptr @usblp_resume, ptr null, ptr null, ptr null, ptr @usblp_ids, ptr @usblp_groups, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usblp_driver_exit = internal global ptr @usblp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author247 = internal constant [98 x i8] c"usblp.author=Michael Gee, Pavel Machek, Vojtech Pavlik, Randy Dunlap, Pete Zaitcev, David Paschal\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [50 x i8] c"usblp.description=USB Printer Device Class driver\00", section ".modinfo", align 1
@__param_str_proto_bias = internal constant [17 x i8] c"usblp.proto_bias\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@proto_bias = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_proto_bias = internal constant %struct.kernel_param { ptr @__param_str_proto_bias, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @proto_bias } }, section "__param", align 4
@__UNIQUE_ID_proto_biastype249 = internal constant [30 x i8] c"usblp.parmtype=proto_bias:int\00", section ".modinfo", align 1
@__UNIQUE_ID_proto_bias250 = internal constant [48 x i8] c"usblp.parm=proto_bias:Favourite protocol number\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [35 x i8] c"usblp.file=drivers/usb/class/usblp\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [18 x i8] c"usblp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usblp\00", [26 x i8] zeroinitializer }, align 32
@usblp_ids = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 112, i16 0, i16 0, i16 0, i16 0, i8 7, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 112, i16 0, i16 0, i16 0, i16 0, i8 7, i8 1, i8 2, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 112, i16 0, i16 0, i16 0, i16 0, i8 7, i8 1, i8 3, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 7, i8 1, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 7, i8 1, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 7, i8 1, i8 3, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1208, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@usblp_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @usblp_group, ptr null], [24 x i8] zeroinitializer }, align 32
@usblp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&usblp->wmut\00", [19 x i8] zeroinitializer }, align 32
@usblp_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&usblp->mut\00", [20 x i8] zeroinitializer }, align 32
@usblp_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&usblp->lock\00", [19 x i8] zeroinitializer }, align 32
@usblp_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&usblp->rwait\00", [18 x i8] zeroinitializer }, align 32
@usblp_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&usblp->wwait\00", [18 x i8] zeroinitializer }, align 32
@usblp_probe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.11, ptr @.str.12, i8 1, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usblp_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/class/usblp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"incompatible printer-class device 0x%4.4X/0x%4.4X\0A\00", [45 x i8] zeroinitializer }, align 32
@usblp_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.35, ptr @usblp_devnode, ptr @usblp_fops, i32 0 }, [16 x i8] zeroinitializer }, align 32
@usblp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 1212, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"usblp: Not able to get a minor (base %u, slice default): %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usblp_probe._entry_ptr = internal global ptr @usblp_probe._entry, section ".printk_index", align 4
@usblp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.11, i32 1223, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"usblp%d: USB %sdirectional printer dev %d if %d alt %d proto %d vid 0x%4.4X pid 0x%4.4X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usblp_probe._entry_ptr.19 = internal global ptr @usblp_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Bi\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Uni\00", [28 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@quirk_printers = internal constant { [17 x %struct.quirk_printer_struct], [56 x i8] } { [17 x %struct.quirk_printer_struct] [%struct.quirk_printer_struct { i16 1008, i16 4, i32 1 }, %struct.quirk_printer_struct { i16 1008, i16 260, i32 1 }, %struct.quirk_printer_struct { i16 1008, i16 516, i32 1 }, %struct.quirk_printer_struct { i16 1008, i16 772, i32 1 }, %struct.quirk_printer_struct { i16 1008, i16 1028, i32 1 }, %struct.quirk_printer_struct { i16 1008, i16 1284, i32 1 }, %struct.quirk_printer_struct { i16 1008, i16 1540, i32 1 }, %struct.quirk_printer_struct { i16 1008, i16 2052, i32 1 }, %struct.quirk_printer_struct { i16 1008, i16 4356, i32 1 }, %struct.quirk_printer_struct { i16 1033, i16 -4162, i32 1 }, %struct.quirk_printer_struct { i16 1033, i16 -16652, i32 1 }, %struct.quirk_printer_struct { i16 1033, i16 -3906, i32 1 }, %struct.quirk_printer_struct { i16 1033, i16 -3650, i32 1 }, %struct.quirk_printer_struct { i16 1154, i16 16, i32 1 }, %struct.quirk_printer_struct { i16 1273, i16 13, i32 1 }, %struct.quirk_printer_struct { i16 1208, i16 514, i32 4 }, %struct.quirk_printer_struct zeroinitializer], [56 x i8] zeroinitializer }, align 32
@usblp_select_alts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.11, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016usblp%d: Disabling reads from problematic bidirectional printer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usblp_select_alts\00", [46 x i8] zeroinitializer }, align 32
@usblp_select_alts._entry_ptr = internal global ptr @usblp_select_alts._entry, section ".printk_index", align 4
@usblp_set_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.11, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013usblp: can't set desired altsetting %d on interface %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usblp_set_protocol\00", [45 x i8] zeroinitializer }, align 32
@usblp_set_protocol._entry_ptr = internal global ptr @usblp_set_protocol._entry, section ".printk_index", align 4
@usblp_set_protocol.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.11, ptr @.str.29, i8 1, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usblp%d set protocol %d\0A\00", [39 x i8] zeroinitializer }, align 32
@usblp_cache_device_id_string.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.11, ptr @.str.31, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usblp_cache_device_id_string\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"usblp%d: error = %d reading IEEE-1284 Device ID string\0A\00", [40 x i8] zeroinitializer }, align 32
@usblp_cache_device_id_string.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.11, ptr @.str.32, i8 1, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"usblp%d Device ID string [len=%d]=\22%s\22\0A\00", [56 x i8] zeroinitializer }, align 32
@usblp_ctrl_msg.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.11, ptr @.str.34, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usblp_ctrl_msg\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"usblp_control_msg: rq: 0x%02x dir: %d recip: %d value: %d idx: %d len: %#x result: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lp%d\00", [27 x i8] zeroinitializer }, align 32
@usblp_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @usblp_read, ptr @usblp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usblp_poll, ptr @usblp_ioctl, ptr @usblp_ioctl, ptr null, i32 0, ptr @usblp_open, ptr null, ptr @usblp_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb/%s\00", [25 x i8] zeroinitializer }, align 32
@usblp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.11, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013usblp%d: error %d reading from printer\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usblp_read\00", [21 x i8] zeroinitializer }, align 32
@usblp_read._entry_ptr = internal global ptr @usblp_read._entry, section ".printk_index", align 4
@usblp_submit_read.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.11, ptr @.str.41, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usblp_submit_read\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error submitting urb (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@usblp_bulk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.11, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014usblp%d: nonzero read bulk status received: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usblp_bulk_read\00", [16 x i8] zeroinitializer }, align 32
@usblp_bulk_read._entry_ptr = internal global ptr @usblp_bulk_read._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@usblp_check_status._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.usblp_check_status = private unnamed_addr constant [19 x i8] c"usblp_check_status\00", align 1
@usblp_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.usblp_check_status, ptr @.str.11, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013usblp%d: error %d reading printer status\0A\00", [52 x i8] zeroinitializer }, align 32
@usblp_check_status._entry_ptr = internal global ptr @usblp_check_status._entry, section ".printk_index", align 4
@usblp_check_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.usblp_check_status, ptr @.str.11, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016usblp%d: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@usblp_check_status._entry_ptr.52 = internal global ptr @usblp_check_status._entry.50, section ".printk_index", align 4
@usblp_messages = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"out of paper\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"off-line\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"on fire\00", [24 x i8] zeroinitializer }, align 32
@usblp_bulk_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.11, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014usblp%d: nonzero write bulk status received: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usblp_bulk_write\00", [47 x i8] zeroinitializer }, align 32
@usblp_bulk_write._entry_ptr = internal global ptr @usblp_bulk_write._entry, section ".printk_index", align 4
@usblp_ioctl.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.11, ptr @.str.60, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usblp_ioctl\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"usblp_ioctl: cmd=0x%x (%c nr=%d len=%d dir=%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@usblp_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.11, i32 624, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"usblp%d: error = %d setting HP channel\0A\00", [56 x i8] zeroinitializer }, align 32
@usblp_ioctl._entry_ptr = internal global ptr @usblp_ioctl._entry, section ".printk_index", align 4
@usblp_ioctl.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.11, ptr @.str.62, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"usblp%d requested/got HP channel %ld/%d\0A\00", [55 x i8] zeroinitializer }, align 32
@usblp_ioctl.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.11, ptr @.str.63, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"usblp%d is bus=%d, device=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@usblp_ioctl.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.11, ptr @.str.64, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"usblp%d is VID=0x%4.4X, PID=0x%4.4X\0A\00", [59 x i8] zeroinitializer }, align 32
@usblp_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usblp_ioctl._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.11, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013usblp%d:failed reading printer status (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@usblp_ioctl._entry_ptr.67 = internal global ptr @usblp_ioctl._entry.65, section ".printk_index", align 4
@usblp_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.68, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usblp_mutex, i64 52), ptr getelementptr (i8, ptr @usblp_mutex, i64 52) }, ptr @usblp_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usblp_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usblp_mutex\00", [20 x i8] zeroinitializer }, align 32
@usblp_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.11, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016usblp%d: removed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usblp_cleanup\00", [18 x i8] zeroinitializer }, align 32
@usblp_cleanup._entry_ptr = internal global ptr @usblp_cleanup._entry, section ".printk_index", align 4
@usblp_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.11, i32 1399, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bogus disconnect\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usblp_disconnect\00", [47 x i8] zeroinitializer }, align 32
@usblp_disconnect._entry_ptr = internal global ptr @usblp_disconnect._entry, section ".printk_index", align 4
@usblp_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usblp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usblp_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_ieee1284_id, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_ieee1284_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ieee1284_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ieee1284_id\00", [20 x i8] zeroinitializer }, align 32
@switch.table.usblp_probe = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 1008, i64 1033, i64 1154, i64 1208, i64 1273]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 16, i64 48884, i64 61374, i64 61630, i64 61886]
@__sancov_gen_cov_switch_values.77 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1540, i64 1547]
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"usblp_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1457, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"proto_bias\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 302, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1468, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant [10 x i8] c"usblp_ids\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1444, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"usblp_groups\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1141, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1142, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1143, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1144, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1145, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1183, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"usblp_class\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1098, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1210, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1216, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1367, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1368, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [15 x i8] c"quirk_printers\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 213, i32 42 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1303, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1347, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1355, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1369, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1386, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 264, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1099, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant [11 x i8] c"usblp_fops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1081, i32 37 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1095, i32 31 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 861, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1035, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 316, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 230, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 214, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 174, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 371, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 387, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [15 x i8] c"usblp_messages\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 361, i32 20 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 361, i32 41 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 361, i32 47 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 361, i32 63 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 361, i32 75 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 340, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 534, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 621, i32 5 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 629, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 650, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 671, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 692, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant [12 x i8] c"usblp_mutex\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 244, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 460, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1399, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant [12 x i8] c"usblp_group\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1123, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant [12 x i8] c"usblp_attrs\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1119, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant [21 x i8] c"dev_attr_ieee1284_id\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [29 x i8] c"../drivers/usb/class/usblp.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1117, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant [25 x i8] c"switch.table.usblp_probe\00", align 1
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__UNIQUE_ID_proto_bias250, ptr @__UNIQUE_ID_proto_biastype249, ptr @__exitcall_usblp_driver_exit, ptr @__initcall__kmod_usblp__246_1468_usblp_driver_init6, ptr @__param_proto_bias, ptr @usblp_bulk_read._entry, ptr @usblp_bulk_read._entry_ptr, ptr @usblp_bulk_write._entry, ptr @usblp_bulk_write._entry_ptr, ptr @usblp_check_status._entry, ptr @usblp_check_status._entry.50, ptr @usblp_check_status._entry_ptr, ptr @usblp_check_status._entry_ptr.52, ptr @usblp_cleanup._entry, ptr @usblp_cleanup._entry_ptr, ptr @usblp_disconnect._entry, ptr @usblp_disconnect._entry_ptr, ptr @usblp_driver_exit, ptr @usblp_ioctl._entry, ptr @usblp_ioctl._entry.65, ptr @usblp_ioctl._entry_ptr, ptr @usblp_ioctl._entry_ptr.67, ptr @usblp_probe._entry, ptr @usblp_probe._entry.16, ptr @usblp_probe._entry_ptr, ptr @usblp_probe._entry_ptr.19, ptr @usblp_read._entry, ptr @usblp_read._entry_ptr, ptr @usblp_select_alts._entry, ptr @usblp_select_alts._entry_ptr, ptr @usblp_set_protocol._entry, ptr @usblp_set_protocol._entry_ptr, ptr @usblp_driver, ptr @proto_bias, ptr @.str, ptr @usblp_ids, ptr @usblp_groups, ptr @usblp_probe.__key, ptr @.str.1, ptr @usblp_probe.__key.2, ptr @.str.3, ptr @usblp_probe.__key.4, ptr @.str.5, ptr @usblp_probe.__key.6, ptr @.str.7, ptr @usblp_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @usblp_class, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @init_usb_anchor.__key, ptr @.str.22, ptr @init_usb_anchor.__key.23, ptr @.str.24, ptr @quirk_printers, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @usblp_fops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @usblp_check_status._rs, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @usblp_messages, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @usblp_ioctl._rs, ptr @.str.66, ptr @usblp_mutex, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @usblp_group, ptr @usblp_attrs, ptr @dev_attr_ieee1284_id, ptr @.str.74, ptr @switch.table.usblp_probe], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto_bias to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_printers to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_select_alts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_set_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_bulk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_check_status._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_check_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_messages to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_bulk_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_ioctl._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usblp_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ieee1284_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.usblp_probe to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usblp_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usblp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @usblp_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %epwrite.i = alloca ptr, align 4
  %epread.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 556) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %wmut = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %wmut, ptr noundef nonnull @.str.1, ptr noundef nonnull @usblp_probe.__key) #11
  %mut = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mut, ptr noundef nonnull @.str.3, ptr noundef nonnull @usblp_probe.__key.2) #11
  %lock = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @usblp_probe.__key.4, i16 noundef signext 3) #11
  %rwait = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %rwait, ptr noundef nonnull @.str.7, ptr noundef nonnull @usblp_probe.__key.6) #11
  %wwait = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wwait, ptr noundef nonnull @.str.9, ptr noundef nonnull @usblp_probe.__key.8) #11
  %urbs = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 6
  %4 = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 6, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 104)
  %6 = ptrtoint ptr %urbs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %urbs, ptr %urbs, align 8
  %prev.i.i = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %urbs, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_usb_anchor.__key.23, i16 noundef signext 3) #11
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %8 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %11 to i32
  %ifnum = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %ifnum to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %ifnum, align 4
  %call17 = tail call ptr @usb_get_intf(ptr noundef %intf) #11
  %intf18 = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %intf18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %intf18, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 1024) #14
  %device_id_string = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 25
  %15 = ptrtoint ptr %device_id_string to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %device_id_string, align 8
  %tobool20.not = icmp eq ptr %call7.i, null
  br i1 %tobool20.not, label %if.end.abort_crit_edge, label %if.end22

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end22:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i144 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 1024) #14
  %readbuf = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %readbuf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i144, ptr %readbuf, align 8
  %tobool24.not = icmp eq ptr %call7.i144, null
  br i1 %tobool24.not, label %if.end22.abort_crit_edge, label %if.end26

if.end22.abort_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end26:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i145 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 8) #14
  %statusbuf = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %statusbuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i145, ptr %statusbuf, align 4
  %tobool29.not = icmp eq ptr %call7.i145, null
  br i1 %tobool29.not, label %if.end26.abort_crit_edge, label %if.end31

if.end26.abort_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end31:                                         ; preds = %if.end26
  %idVendor = getelementptr i8, ptr %1, i32 936
  %20 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idVendor, align 8
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %idProduct = getelementptr i8, ptr %1, i32 938
  %23 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idProduct, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %22, label %if.end31.usblp_quirks.exit_crit_edge [
    i16 1008, label %land.lhs.true.i
    i16 1033, label %land.lhs.true.9.i
    i16 1154, label %land.lhs.true.13.i
    i16 1273, label %land.lhs.true.14.i
    i16 1208, label %land.lhs.true.15.i
  ]

if.end31.usblp_quirks.exit_crit_edge:             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_quirks.exit

land.lhs.true.i:                                  ; preds = %if.end31
  %27 = add i16 %25, -4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %28)
  %29 = icmp ult i16 %28, 18
  br i1 %29, label %switch.hole_check, label %land.lhs.true.i.usblp_quirks.exit_crit_edge

land.lhs.true.i.usblp_quirks.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_quirks.exit

if.then.fold.split39.i:                           ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.fold.split40.i:                           ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.fold.split41.i:                           ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

switch.hole_check:                                ; preds = %land.lhs.true.i
  %switch.maskindex = zext i16 %28 to i32
  %switch.shifted = lshr i32 131455, %switch.maskindex
  %30 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %switch.lobit.not = icmp eq i32 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.usblp_quirks.exit_crit_edge, label %switch.lookup

switch.hole_check.usblp_quirks.exit_crit_edge:    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_quirks.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %31 = sext i16 %28 to i32
  %switch.gep = getelementptr inbounds [18 x i32], ptr @switch.table.usblp_probe, i32 0, i32 %31
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.15.i.if.then.i_crit_edge, %land.lhs.true.14.i.if.then.i_crit_edge, %land.lhs.true.13.i.if.then.i_crit_edge, %land.lhs.true.9.i.if.then.i_crit_edge, %switch.lookup, %if.then.fold.split41.i, %if.then.fold.split40.i, %if.then.fold.split39.i
  %i.016.lcssa.i = phi i32 [ 9, %land.lhs.true.9.i.if.then.i_crit_edge ], [ 13, %land.lhs.true.13.i.if.then.i_crit_edge ], [ 14, %land.lhs.true.14.i.if.then.i_crit_edge ], [ 15, %land.lhs.true.15.i.if.then.i_crit_edge ], [ 10, %if.then.fold.split39.i ], [ 11, %if.then.fold.split40.i ], [ 12, %if.then.fold.split41.i ], [ %switch.load, %switch.lookup ]
  %quirks.i = getelementptr [17 x %struct.quirk_printer_struct], ptr @quirk_printers, i32 0, i32 %i.016.lcssa.i, i32 2
  %33 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirks.i, align 4
  br label %usblp_quirks.exit

land.lhs.true.9.i:                                ; preds = %if.end31
  %35 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %25, label %land.lhs.true.9.i.usblp_quirks.exit_crit_edge [
    i16 -4162, label %land.lhs.true.9.i.if.then.i_crit_edge
    i16 -16652, label %if.then.fold.split39.i
    i16 -3906, label %if.then.fold.split40.i
    i16 -3650, label %if.then.fold.split41.i
  ]

land.lhs.true.9.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.9.i.usblp_quirks.exit_crit_edge:    ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_quirks.exit

land.lhs.true.13.i:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %24)
  %cmp8.13.i = icmp eq i16 %24, 4096
  br i1 %cmp8.13.i, label %land.lhs.true.13.i.if.then.i_crit_edge, label %land.lhs.true.13.i.usblp_quirks.exit_crit_edge

land.lhs.true.13.i.usblp_quirks.exit_crit_edge:   ; preds = %land.lhs.true.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_quirks.exit

land.lhs.true.13.i.if.then.i_crit_edge:           ; preds = %land.lhs.true.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.14.i:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp2(i16 3328, i16 %24)
  %cmp8.14.i = icmp eq i16 %24, 3328
  br i1 %cmp8.14.i, label %land.lhs.true.14.i.if.then.i_crit_edge, label %land.lhs.true.14.i.usblp_quirks.exit_crit_edge

land.lhs.true.14.i.usblp_quirks.exit_crit_edge:   ; preds = %land.lhs.true.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_quirks.exit

land.lhs.true.14.i.if.then.i_crit_edge:           ; preds = %land.lhs.true.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.15.i:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp2(i16 514, i16 %24)
  %cmp8.15.i = icmp eq i16 %24, 514
  br i1 %cmp8.15.i, label %land.lhs.true.15.i.if.then.i_crit_edge, label %land.lhs.true.15.i.usblp_quirks.exit_crit_edge

land.lhs.true.15.i.usblp_quirks.exit_crit_edge:   ; preds = %land.lhs.true.15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_quirks.exit

land.lhs.true.15.i.if.then.i_crit_edge:           ; preds = %land.lhs.true.15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

usblp_quirks.exit:                                ; preds = %land.lhs.true.15.i.usblp_quirks.exit_crit_edge, %land.lhs.true.14.i.usblp_quirks.exit_crit_edge, %land.lhs.true.13.i.usblp_quirks.exit_crit_edge, %land.lhs.true.9.i.usblp_quirks.exit_crit_edge, %if.then.i, %switch.hole_check.usblp_quirks.exit_crit_edge, %land.lhs.true.i.usblp_quirks.exit_crit_edge, %if.end31.usblp_quirks.exit_crit_edge
  %retval.0.i146 = phi i32 [ %34, %if.then.i ], [ 0, %land.lhs.true.15.i.usblp_quirks.exit_crit_edge ], [ 0, %land.lhs.true.14.i.usblp_quirks.exit_crit_edge ], [ 0, %land.lhs.true.13.i.usblp_quirks.exit_crit_edge ], [ 0, %land.lhs.true.i.usblp_quirks.exit_crit_edge ], [ 0, %land.lhs.true.9.i.usblp_quirks.exit_crit_edge ], [ 0, %if.end31.usblp_quirks.exit_crit_edge ], [ 0, %switch.hole_check.usblp_quirks.exit_crit_edge ]
  %quirks = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 19
  %36 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i146, ptr %quirks, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %epwrite.i) #11
  %37 = ptrtoint ptr %epwrite.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %epwrite.i, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %epread.i) #11
  %38 = ptrtoint ptr %epread.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %epread.i, align 4, !annotation !207
  %39 = ptrtoint ptr %intf18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf18, align 8
  %arrayidx.i = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 0
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 1
  %42 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %arrayidx.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 2
  %43 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 3
  %44 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %arrayidx.3.i, align 8
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp2131.not.i = icmp eq i32 %46, 0
  br i1 %cmp2131.not.i, label %usblp_quirks.exit.for.end63.i_crit_edge, label %for.body3.lr.ph.i

usblp_quirks.exit.for.end63.i_crit_edge:          ; preds = %usblp_quirks.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63.i

for.body3.lr.ph.i:                                ; preds = %usblp_quirks.exit
  %minor.i = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 14
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc61.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %i.0132.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc62.i, %for.inc61.i.for.body3.i_crit_edge ]
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %40, align 8
  %arrayidx4.i = getelementptr %struct.usb_host_interface, ptr %48, i32 %i.0132.i
  %bInterfaceClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx4.i, i32 0, i32 5
  %49 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bInterfaceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %50)
  %cmp5.not.i = icmp eq i8 %50, 7
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %for.body3.i.if.then.i148_crit_edge

for.body3.i.if.then.i148_crit_edge:               ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i148

lor.lhs.false.i:                                  ; preds = %for.body3.i
  %bInterfaceSubClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx4.i, i32 0, i32 6
  %51 = ptrtoint ptr %bInterfaceSubClass.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bInterfaceSubClass.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp9.not.i = icmp eq i8 %52, 1
  br i1 %cmp9.not.i, label %lor.lhs.false.i.if.end12.i_crit_edge, label %lor.lhs.false.i.if.then.i148_crit_edge

lor.lhs.false.i.if.then.i148_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i148

lor.lhs.false.i.if.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i148:                                     ; preds = %lor.lhs.false.i.if.then.i148_crit_edge, %for.body3.i.if.then.i148_crit_edge
  %53 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %quirks, align 4
  %and.i = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i148.for.inc61.i_crit_edge, label %if.then.i148.if.end12.i_crit_edge

if.then.i148.if.end12.i_crit_edge:                ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i148.for.inc61.i_crit_edge:               ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61.i

if.end12.i:                                       ; preds = %if.then.i148.if.end12.i_crit_edge, %lor.lhs.false.i.if.end12.i_crit_edge
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx4.i, i32 0, i32 7
  %55 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bInterfaceProtocol.i, align 1
  %57 = add i8 %56, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %57)
  %58 = icmp ult i8 %57, -3
  br i1 %58, label %if.end12.i.for.inc61.i_crit_edge, label %if.end24.i

if.end12.i.for.inc61.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61.i

if.end24.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp28.i = icmp ugt i8 %56, 1
  br i1 %cmp28.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 @usb_find_common_endpoints(ptr noundef %arrayidx4.i, ptr noundef nonnull %epread.i, ptr noundef nonnull %epwrite.i, ptr noundef null, ptr noundef null) #11
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %epread.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %epread.i, align 4
  %call.i.i = call i32 @usb_find_common_endpoints(ptr noundef %arrayidx4.i, ptr noundef null, ptr noundef nonnull %epwrite.i, ptr noundef null, ptr noundef null) #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then30.i
  %res.0.i = phi i32 [ %call.i, %if.then30.i ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %tobool33.not.i = icmp eq i32 %res.0.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end32.i.for.inc61.i_crit_edge

if.end32.i.for.inc61.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61.i

if.end35.i:                                       ; preds = %if.end32.i
  %60 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %quirks, align 4
  %and37.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end35.i.if.end41.i_crit_edge, label %do.end.i

if.end35.i.if.end41.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

do.end.i:                                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %minor.i, align 8
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %63) #15
  %64 = ptrtoint ptr %epread.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %epread.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end.i, %if.end35.i.if.end41.i_crit_edge
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx4.i, i32 0, i32 3
  %65 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bAlternateSetting.i, align 1
  %conv43.i = zext i8 %66 to i32
  %67 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bInterfaceProtocol.i, align 1
  %idxprom.i = zext i8 %68 to i32
  %arrayidx47.i = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 %idxprom.i
  %69 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv43.i, ptr %arrayidx47.i, align 4
  %70 = ptrtoint ptr %epwrite.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %epwrite.i, align 4
  %72 = load i8, ptr %bInterfaceProtocol.i, align 1
  %idxprom52.i = zext i8 %72 to i32
  %epwrite54.i = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 %idxprom52.i, i32 1
  %73 = ptrtoint ptr %epwrite54.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %epwrite54.i, align 4
  %74 = ptrtoint ptr %epread.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %epread.i, align 4
  %76 = load i8, ptr %bInterfaceProtocol.i, align 1
  %idxprom58.i = zext i8 %76 to i32
  %epread60.i = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 %idxprom58.i, i32 2
  %77 = ptrtoint ptr %epread60.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %epread60.i, align 4
  br label %for.inc61.i

for.inc61.i:                                      ; preds = %if.end41.i, %if.end32.i.for.inc61.i_crit_edge, %if.end12.i.for.inc61.i_crit_edge, %if.then.i148.for.inc61.i_crit_edge
  %inc62.i = add nuw i32 %i.0132.i, 1
  %78 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_altsetting.i, align 8
  %cmp2.i = icmp ult i32 %inc62.i, %79
  br i1 %cmp2.i, label %for.inc61.i.for.body3.i_crit_edge, label %for.inc61.i.for.end63.i_crit_edge

for.inc61.i.for.end63.i_crit_edge:                ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63.i

for.inc61.i.for.body3.i_crit_edge:                ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.end63.i:                                      ; preds = %for.inc61.i.for.end63.i_crit_edge, %usblp_quirks.exit.for.end63.i_crit_edge
  %80 = load i32, ptr @proto_bias, align 4
  %81 = add i32 %80, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %land.lhs.true68.i, label %for.end63.i.if.end75.i_crit_edge

for.end63.i.if.end75.i_crit_edge:                 ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i

land.lhs.true68.i:                                ; preds = %for.end63.i
  %arrayidx70.i = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 %80
  %83 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp72.not.i = icmp eq i32 %84, -1
  br i1 %cmp72.not.i, label %land.lhs.true68.i.if.end75.i_crit_edge, label %land.lhs.true68.i.if.end53_crit_edge

land.lhs.true68.i.if.end53_crit_edge:             ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true68.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i

if.end75.i:                                       ; preds = %land.lhs.true68.i.if.end75.i_crit_edge, %for.end63.i.if.end75.i_crit_edge
  %85 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %cmp79.not.i = icmp eq i32 %86, -1
  br i1 %cmp79.not.i, label %if.end82.i, label %if.end75.i.if.end53_crit_edge

if.end75.i.if.end53_crit_edge:                    ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end82.i:                                       ; preds = %if.end75.i
  %87 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp86.not.i = icmp eq i32 %88, -1
  br i1 %cmp86.not.i, label %if.end89.i, label %if.end82.i.if.end53_crit_edge

if.end82.i.if.end53_crit_edge:                    ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end89.i:                                       ; preds = %if.end82.i
  %89 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp93.not.i = icmp eq i32 %90, -1
  br i1 %cmp93.not.i, label %do.body37, label %if.end89.i.if.end53_crit_edge

if.end89.i.if.end53_crit_edge:                    ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.body37:                                        ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epread.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epwrite.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_probe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_probe, %if.then42)) #11
          to label %abort [label %if.then42], !srcloc !208

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %dev43 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %91 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %idVendor, align 8
  %93 = call i16 @llvm.bswap.i16(i16 %92)
  %conv46 = zext i16 %93 to i32
  %94 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %idProduct, align 2
  %96 = call i16 @llvm.bswap.i16(i16 %95)
  %conv49 = zext i16 %96 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_probe.__UNIQUE_ID_ddebug242, ptr noundef %dev43, ptr noundef nonnull @.str.12, i32 noundef %conv46, i32 noundef %conv49) #11
  br label %abort

if.end53:                                         ; preds = %if.end89.i.if.end53_crit_edge, %if.end82.i.if.end53_crit_edge, %if.end75.i.if.end53_crit_edge, %land.lhs.true68.i.if.end53_crit_edge
  %retval.0.i149.ph = phi i32 [ 3, %if.end89.i.if.end53_crit_edge ], [ 1, %if.end82.i.if.end53_crit_edge ], [ 2, %if.end75.i.if.end53_crit_edge ], [ %80, %land.lhs.true68.i.if.end53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epread.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epwrite.i) #11
  %call54 = call fastcc i32 @usblp_set_protocol(ptr noundef nonnull %call7.i.i, i32 noundef %retval.0.i149.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.abort_crit_edge, label %if.end58

if.end53.abort_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end58:                                         ; preds = %if.end53
  %call59 = call fastcc i32 @usblp_cache_device_id_string(ptr noundef nonnull %call7.i.i)
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %97 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %present = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 22
  %98 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %present, align 1
  %call60 = call i32 @usb_register_dev(ptr noundef %intf, ptr noundef nonnull @usblp_class) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %dev66 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef %call60) #15
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %abort

if.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %minor = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 4
  %100 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %minor, align 8
  %minor68 = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 14
  %102 = ptrtoint ptr %minor68 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %minor68, align 8
  %dev72 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %bidir = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 23
  %103 = ptrtoint ptr %bidir to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %bidir, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool75.not = icmp eq i8 %104, 0
  %cond = select i1 %tobool75.not, ptr @.str.21, ptr @.str.20
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i, align 8
  %107 = ptrtoint ptr %ifnum to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ifnum, align 4
  %current_protocol = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 13
  %109 = ptrtoint ptr %current_protocol to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %current_protocol, align 4
  %arrayidx = getelementptr %struct.usblp, ptr %call7.i.i, i32 0, i32 12, i32 %110
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx, align 4
  %113 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call7.i.i, align 8
  %idVendor81 = getelementptr inbounds %struct.usb_device, ptr %114, i32 0, i32 16, i32 7
  %115 = ptrtoint ptr %idVendor81 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %idVendor81, align 8
  %117 = call i16 @llvm.bswap.i16(i16 %116)
  %conv82 = zext i16 %117 to i32
  %idProduct85 = getelementptr inbounds %struct.usb_device, ptr %114, i32 0, i32 16, i32 8
  %118 = ptrtoint ptr %idProduct85 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %idProduct85, align 2
  %120 = call i16 @llvm.bswap.i16(i16 %119)
  %conv86 = zext i16 %120 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72, ptr noundef nonnull @.str.17, i32 noundef %101, ptr noundef nonnull %cond, i32 noundef %106, i32 noundef %108, i32 noundef %112, i32 noundef %110, i32 noundef %conv82, i32 noundef %conv86) #15
  br label %cleanup

abort:                                            ; preds = %do.end65, %if.end53.abort_crit_edge, %if.then42, %do.body37, %if.end26.abort_crit_edge, %if.end22.abort_crit_edge, %if.end.abort_crit_edge
  %retval1.0 = phi i32 [ %call60, %do.end65 ], [ -12, %if.end.abort_crit_edge ], [ -12, %if.end22.abort_crit_edge ], [ -12, %if.end26.abort_crit_edge ], [ -19, %if.then42 ], [ -19, %if.end53.abort_crit_edge ], [ -19, %do.body37 ]
  %readbuf87 = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 4
  %121 = ptrtoint ptr %readbuf87 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %readbuf87, align 8
  call void @kfree(ptr noundef %122) #11
  %statusbuf88 = getelementptr inbounds %struct.usblp, ptr %call7.i.i, i32 0, i32 5
  %123 = ptrtoint ptr %statusbuf88 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %statusbuf88, align 4
  call void @kfree(ptr noundef %124) #11
  %125 = ptrtoint ptr %device_id_string to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device_id_string, align 8
  call void @kfree(ptr noundef %126) #11
  %127 = ptrtoint ptr %intf18 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %intf18, align 8
  call void @usb_put_intf(ptr noundef %128) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %abort, %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end67 ], [ %retval1.0, %abort ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usblp_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @usblp_class) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.72) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/class/usblp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1400, 0\0A.popsection", ""() #11, !srcloc !209
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @usblp_mutex, i32 noundef 0) #11
  %mut = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #11
  %present = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %present, align 1
  %wwait = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wwait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %rwait = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %rwait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i.i, align 4
  %urbs.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 6
  tail call void @usb_kill_anchored_urbs(ptr noundef %urbs.i) #11
  tail call void @mutex_unlock(ptr noundef %mut) #11
  tail call void @usb_poison_anchored_urbs(ptr noundef %urbs.i) #11
  %used = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %minor.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %minor.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %9) #15
  %readbuf.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %readbuf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readbuf.i, align 4
  tail call void @kfree(ptr noundef %11) #11
  %device_id_string.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %device_id_string.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_id_string.i, align 4
  tail call void @kfree(ptr noundef %13) #11
  %statusbuf.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %statusbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %statusbuf.i, align 4
  tail call void @kfree(ptr noundef %15) #11
  %intf.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf.i, align 4
  tail call void @usb_put_intf(ptr noundef %17) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @usblp_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urbs.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 6
  tail call void @usb_kill_anchored_urbs(ptr noundef %urbs.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bidir.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %bidir.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bidir.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %land.lhs.true.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %entry
  %used.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call fastcc i32 @usblp_submit_read(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.handle_bidir.exit_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i.handle_bidir.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_bidir.exit

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %land.lhs.true.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  br label %handle_bidir.exit

handle_bidir.exit:                                ; preds = %if.end5.i, %if.then.i.handle_bidir.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -5, %if.then.i.handle_bidir.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usblp_set_protocol(ptr nocapture noundef %usblp, i32 noundef %protocol) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %protocol, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %0)
  %1 = icmp ult i32 %0, -3
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %intf = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp ugt i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.usblp, ptr %usblp, i32 0, i32 12, i32 %protocol
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %8 = ptrtoint ptr %usblp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usblp, align 4
  %ifnum = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 10
  %10 = ptrtoint ptr %ifnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifnum, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef %11, i32 noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %do.end, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %ifnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifnum, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %7, i32 noundef %13) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end7.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %epread = getelementptr %struct.usblp, ptr %usblp, i32 0, i32 12, i32 %protocol, i32 2
  %14 = ptrtoint ptr %epread to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %epread, align 4
  %cmp16 = icmp ne ptr %15, null
  %conv17 = zext i1 %cmp16 to i8
  %bidir = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 23
  %16 = ptrtoint ptr %bidir to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv17, ptr %bidir, align 2
  %current_protocol = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 13
  %17 = ptrtoint ptr %current_protocol to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %protocol, ptr %current_protocol, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_set_protocol.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_set_protocol, %if.then23)) #11
          to label %cleanup [label %if.then23], !srcloc !208

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf, align 4
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %minor = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 14
  %20 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_set_protocol.__UNIQUE_ID_ddebug243, ptr noundef %dev25, ptr noundef nonnull @.str.29, i32 noundef %21, i32 noundef %protocol) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end13, %do.end, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usblp_cache_device_id_string(ptr nocapture noundef readonly %usblp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id_string = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 25
  %0 = ptrtoint ptr %device_id_string to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_id_string, align 4
  %ifnum.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 10
  %2 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifnum.i, align 4
  %shl.i = shl i32 %3, 8
  %current_protocol.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 13
  %4 = ptrtoint ptr %current_protocol.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_protocol.i, align 4
  %arrayidx.i = getelementptr %struct.usblp, ptr %usblp, i32 0, i32 12, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %7, %shl.i
  %8 = ptrtoint ptr %usblp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usblp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or9.i = or i32 %shl.i.i, -2147483520
  %conv14.i = trunc i32 %or.i to i16
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or9.i, i8 noundef zeroext 0, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i, ptr noundef %1, i16 noundef zeroext 1023, i32 noundef 5000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_cache_device_id_string, %if.then21.i)) #11
          to label %usblp_ctrl_msg.exit [label %if.then21.i], !srcloc !208

if.then21.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intf.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  %12 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf.i, align 4
  %dev22.i = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, ptr noundef %dev22.i, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %or.i, i32 noundef 1023, i32 noundef %call16.i) #11
  br label %usblp_ctrl_msg.exit

usblp_ctrl_msg.exit:                              ; preds = %if.then21.i, %entry
  %14 = tail call i32 @llvm.smin.i32(i32 %call16.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %usblp_ctrl_msg.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_cache_device_id_string.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_cache_device_id_string, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !208

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  %15 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  %minor = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 14
  %17 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_cache_device_id_string.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %18, i32 noundef %14) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %19 = ptrtoint ptr %device_id_string to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_id_string, align 4
  %arrayidx = getelementptr i8, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx, align 1
  %22 = load ptr, ptr %device_id_string, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %22, align 1
  br label %cleanup

if.end8:                                          ; preds = %usblp_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %device_id_string to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_id_string, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %28 = tail call i16 @llvm.umin.i16(i16 %27, i16 1023)
  %29 = tail call i16 @llvm.umax.i16(i16 %28, i16 2)
  %length.0 = zext i16 %29 to i32
  %arrayidx19 = getelementptr i8, ptr %25, i32 %length.0
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx19, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_cache_device_id_string.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_cache_device_id_string, %if.then32)) #11
          to label %cleanup [label %if.then32], !srcloc !208

if.then32:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %intf33 = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  %31 = ptrtoint ptr %intf33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf33, align 4
  %dev34 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  %minor35 = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 14
  %33 = ptrtoint ptr %minor35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %minor35, align 4
  %35 = ptrtoint ptr %device_id_string to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_id_string, align 4
  %arrayidx37 = getelementptr i8, ptr %36, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_cache_device_id_string.__UNIQUE_ID_ddebug245, ptr noundef %dev34, ptr noundef nonnull @.str.32, i32 noundef %34, i32 noundef %length.0, ptr noundef %arrayidx37) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end8, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %length.0, %if.then32 ], [ %length.0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usblp_ctrl_msg(ptr nocapture noundef readonly %usblp, i32 noundef %request, i32 noundef %type, i32 noundef %dir, i32 noundef %recip, i32 noundef %value, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ifnum = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 10
  %0 = ptrtoint ptr %ifnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request)
  %cmp = icmp eq i32 %request, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %type)
  %cmp2 = icmp eq i32 %type, 32
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl i32 %1, 8
  %current_protocol = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 13
  %2 = ptrtoint ptr %current_protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_protocol, align 4
  %arrayidx = getelementptr %struct.usblp, ptr %usblp, i32 0, i32 12, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %or = or i32 %5, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index.0 = phi i32 [ %or, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %usblp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usblp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool = icmp ne i32 %dir, 0
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %. = select i1 %tobool, i32 -2147483520, i32 -2147483648
  %or9 = or i32 %shl.i, %.
  %conv = trunc i32 %request to i8
  %or10 = or i32 %dir, %type
  %or11 = or i32 %or10, %recip
  %conv12 = trunc i32 %or11 to i8
  %conv13 = trunc i32 %value to i16
  %conv14 = trunc i32 %index.0 to i16
  %conv15 = trunc i32 %len to i16
  %call16 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or9, i8 noundef zeroext %conv, i8 noundef zeroext %conv12, i16 noundef zeroext %conv13, i16 noundef zeroext %conv14, ptr noundef %buf, i16 noundef zeroext %conv15, i32 noundef 5000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_ctrl_msg, %if.then21)) #11
          to label %do.end [label %if.then21], !srcloc !208

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  %lnot.ext27 = zext i1 %tobool to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, ptr noundef %dev22, ptr noundef nonnull @.str.34, i32 noundef %request, i32 noundef %lnot.ext27, i32 noundef %recip, i32 noundef %value, i32 noundef %index.0, i32 noundef %len, i32 noundef %call16) #11
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end
  %12 = tail call i32 @llvm.smin.i32(i32 %call16, i32 0)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @usblp_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i) #11
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %len, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %bidir = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %bidir to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bidir, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = lshr i32 %5, 11
  %and.lobit = and i32 %and, 1
  %call = tail call fastcc i32 @usblp_rwait_and_lock(ptr noundef %1, i32 noundef %and.lobit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %present = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end4.done_crit_edge, label %if.end7

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end7:                                          ; preds = %if.end4
  %rstatus = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %rstatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %minor = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %11, i32 noundef %9) #15
  %call11 = tail call fastcc i32 @usblp_submit_read(ptr noundef %1)
  br label %done

if.end12:                                         ; preds = %if.end7
  %readcount = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %readcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %readcount, align 4
  %sub = sub i32 %9, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16.not = icmp eq i32 %14, 0
  br i1 %cmp16.not, label %if.end12.if.end21_crit_edge, label %land.lhs.true

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end12
  %readbuf = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %readbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %readbuf, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.i.i = icmp slt i32 %14, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %land.lhs.true
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.done_crit_edge, label %if.then27.i.i, !prof !210

land.rhs16.i.i.done_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %done

if.then.i.i.i:                                    ; preds = %land.lhs.true
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %14, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.done_crit_edge, label %if.end.i.i

if.then.i.i.i.done_crit_edge:                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %14, i32 -1226833920) #16, !srcloc !211
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.done_crit_edge

if.end.i.i.done_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %14) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %add.ptr, i32 noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool19.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool19.not, label %copy_to_user.exit.if.end21_crit_edge, label %copy_to_user.exit.done_crit_edge

copy_to_user.exit.done_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

copy_to_user.exit.if.end21_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %copy_to_user.exit.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %18 = ptrtoint ptr %readcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %readcount, align 4
  %add = add i32 %19, %14
  store i32 %add, ptr %readcount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp23 = icmp eq i32 %add, %9
  br i1 %cmp23, label %if.then24, label %if.end21.done_crit_edge

if.end21.done_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call fastcc i32 @usblp_submit_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  %20 = select i1 %cmp26, i1 %cmp16.not, i1 false
  %spec.select = select i1 %20, i32 -5, i32 %14
  br label %done

done:                                             ; preds = %if.then24, %if.end21.done_crit_edge, %copy_to_user.exit.done_crit_edge, %if.end.i.i.done_crit_edge, %if.then.i.i.i.done_crit_edge, %if.then27.i.i, %land.rhs16.i.i.done_crit_edge, %do.end, %if.end4.done_crit_edge
  %count.0 = phi i32 [ -5, %do.end ], [ %14, %if.end21.done_crit_edge ], [ -19, %if.end4.done_crit_edge ], [ -14, %copy_to_user.exit.done_crit_edge ], [ -14, %if.then.i.i.i.done_crit_edge ], [ -14, %if.end.i.i.done_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.done_crit_edge ], [ %spec.select, %if.then24 ]
  %mut = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mut) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.0, %done ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wmut = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %wmut, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.raise_biglock.thread_crit_edge

entry.raise_biglock.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %raise_biglock.thread

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = lshr i32 %3, 11
  %and.lobit = and i32 %and, 1
  %call3 = tail call fastcc i32 @usblp_wwait(ptr noundef %1, i32 noundef %and.lobit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %raise_biglock.thread123, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6160.not = icmp eq i32 %count, 0
  br i1 %cmp6160.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %current_protocol.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 13
  %urbs = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 6
  %lock = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 3
  %wcomplete = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 15
  %wstatus50 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 17
  br label %while.body

raise_biglock.thread123:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %wmut) #11
  br label %raise_biglock.thread

while.cond:                                       ; preds = %if.end49
  %add55 = add i32 %38, %writecount.0161
  %cmp6 = icmp ult i32 %add55, %count
  br i1 %cmp6, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %writecount.0161 = phi i32 [ 0, %while.body.lr.ph ], [ %add55, %while.cond.while.body_crit_edge ]
  %sub = sub i32 %count, %writecount.0161
  %4 = tail call i32 @llvm.smin.i32(i32 %sub, i32 8192)
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #17
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %while.body.raise_biglock_crit_edge, label %if.end.i

while.body.raise_biglock_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %raise_biglock

if.end.i:                                         ; preds = %while.body
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %cmp2.i = icmp eq ptr %call1.i, null
  br i1 %cmp2.i, label %if.then3.i, label %if.end13

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %raise_biglock

if.end13:                                         ; preds = %if.end.i
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %current_protocol.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_protocol.i, align 4
  %epwrite.i = getelementptr %struct.usblp, ptr %1, i32 0, i32 12, i32 %8, i32 1
  %9 = ptrtoint ptr %epwrite.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %epwrite.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %14, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %15 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %16 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %4, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %19 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @usblp_bulk_write, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %20 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 13
  %21 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %transfer_flags.i, align 4
  %or7.i = or i32 %22, 256
  store i32 %or7.i, ptr %transfer_flags.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call1.i, ptr noundef %urbs) #11
  %23 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transfer_buffer3.i.i, align 4
  %add.ptr = getelementptr i8, ptr %buffer, i32 %writecount.0161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end13
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.raise_badaddr_crit_edge, label %if.then27.i.i, !prof !210

land.rhs16.i.i.raise_badaddr_crit_edge:           ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raise_badaddr

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %raise_badaddr

if.then.i.i.i:                                    ; preds = %if.end13
  tail call void @__check_object_size(ptr noundef %24, i32 noundef %4, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %4, i32 -1226833920) #16, !srcloc !212
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !210

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %24, i32 noundef %4) #11
  %26 = tail call i32 @llvm.read_register.i32(metadata !197) #11
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !213
  %and.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %24, ptr noundef %add.ptr, i32 noundef %4) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #11, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end17, label %if.then11.i.i, !prof !210

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %sub.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %raise_badaddr

if.end17:                                         ; preds = %if.end.i.i
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %30 = ptrtoint ptr %wcomplete to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %wcomplete, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %call19 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call1.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %wstatus50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %wstatus50, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %no_paper = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 24
  %32 = ptrtoint ptr %no_paper to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %no_paper, align 1
  %33 = ptrtoint ptr %wcomplete to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %wcomplete, align 4
  %wwait = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wwait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call19)
  %cmp25.not = icmp eq i32 %call19, -12
  %spec.store.select63 = select i1 %cmp25.not, i32 -12, i32 -5
  br label %raise_badaddr

if.end28:                                         ; preds = %if.end17
  %34 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_flags, align 4
  %and30 = lshr i32 %35, 11
  %and30.lobit = and i32 %and30, 1
  %call36 = tail call fastcc i32 @usblp_wwait(ptr noundef %1, i32 noundef %and30.lobit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end49

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call36)
  %cmp39 = icmp eq i32 %call36, -11
  %add = select i1 %cmp39, i32 %4, i32 0
  %spec.select = add i32 %add, %writecount.0161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call36)
  %cmp42 = icmp eq i32 %call36, -28
  br i1 %cmp42, label %if.then43, label %if.then38.raise_biglock_crit_edge

if.then38.raise_biglock_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %raise_biglock

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %no_paper45 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 24
  %36 = ptrtoint ptr %no_paper45 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %no_paper45, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %add47 = add i32 %spec.select, %4
  br label %raise_biglock

if.end49:                                         ; preds = %if.end28
  %37 = ptrtoint ptr %wstatus50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wstatus50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp51 = icmp slt i32 %38, 0
  br i1 %cmp51, label %if.end49.raise_biglock_crit_edge, label %while.cond

if.end49.raise_biglock_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %raise_biglock

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %writecount.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add55, %while.cond.while.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wmut) #11
  br label %cleanup

raise_badaddr:                                    ; preds = %if.then21, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.raise_badaddr_crit_edge
  %rv.0 = phi i32 [ %spec.store.select63, %if.then21 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.raise_badaddr_crit_edge ]
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call1.i) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i) #11
  br label %raise_biglock

raise_biglock:                                    ; preds = %raise_badaddr, %if.end49.raise_biglock_crit_edge, %if.then43, %if.then38.raise_biglock_crit_edge, %if.then3.i, %while.body.raise_biglock_crit_edge
  %rv.1 = phi i32 [ %rv.0, %raise_badaddr ], [ -28, %if.then43 ], [ %call36, %if.then38.raise_biglock_crit_edge ], [ -12, %if.then3.i ], [ -12, %while.body.raise_biglock_crit_edge ], [ -5, %if.end49.raise_biglock_crit_edge ]
  %writecount.2 = phi i32 [ %writecount.0161, %raise_badaddr ], [ %add47, %if.then43 ], [ %spec.select, %if.then38.raise_biglock_crit_edge ], [ %writecount.0161, %if.then3.i ], [ %writecount.0161, %if.end49.raise_biglock_crit_edge ], [ %writecount.0161, %while.body.raise_biglock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wmut) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writecount.2)
  %tobool58.not = icmp eq i32 %writecount.2, 0
  br i1 %tobool58.not, label %raise_biglock.raise_biglock.thread_crit_edge, label %raise_biglock.cleanup_crit_edge

raise_biglock.cleanup_crit_edge:                  ; preds = %raise_biglock
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

raise_biglock.raise_biglock.thread_crit_edge:     ; preds = %raise_biglock
  call void @__sanitizer_cov_trace_pc() #13
  br label %raise_biglock.thread

raise_biglock.thread:                             ; preds = %raise_biglock.raise_biglock.thread_crit_edge, %raise_biglock.thread123, %entry.raise_biglock.thread_crit_edge
  %rv.2122 = phi i32 [ %rv.1, %raise_biglock.raise_biglock.thread_crit_edge ], [ %call3, %raise_biglock.thread123 ], [ -4, %entry.raise_biglock.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %raise_biglock.thread, %raise_biglock.cleanup_crit_edge, %while.end
  %retval.0 = phi i32 [ %writecount.0.lcssa, %while.end ], [ %rv.2122, %raise_biglock.thread ], [ %writecount.2, %raise_biglock.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rwait = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit42_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit42_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit42

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %rwait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i40_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i40_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i40

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %file, ptr noundef nonnull %rwait, ptr noundef nonnull %wait) #11
  br label %land.lhs.true.i40

land.lhs.true.i40:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i40_crit_edge
  %wwait43 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i37 = icmp eq ptr %5, null
  %tobool3.not.i38 = icmp eq ptr %wwait43, null
  %or.cond.i39 = or i1 %tobool3.not.i38, %tobool1.not.i37
  br i1 %or.cond.i39, label %land.lhs.true.i40.poll_wait.exit42_crit_edge, label %if.then.i41

land.lhs.true.i40.poll_wait.exit42_crit_edge:     ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit42

if.then.i41:                                      ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wwait43, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit42

poll_wait.exit42:                                 ; preds = %if.then.i41, %land.lhs.true.i40.poll_wait.exit42_crit_edge, %entry.poll_wait.exit42_crit_edge
  %mut = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #11
  %present = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool.not, i32 16, i32 0
  tail call void @mutex_unlock(ptr noundef %mut) #11
  %lock = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %bidir = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %bidir to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bidir, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %poll_wait.exit42.if.end11_crit_edge, label %land.lhs.true

poll_wait.exit42.if.end11_crit_edge:              ; preds = %poll_wait.exit42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %poll_wait.exit42
  call void @__sanitizer_cov_trace_pc() #13
  %rcomplete = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %rcomplete to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rcomplete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  %or10 = or i32 %spec.select, 65
  %spec.select35 = select i1 %tobool8.not, i32 %spec.select, i32 %or10
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %poll_wait.exit42.if.end11_crit_edge
  %ret.1 = phi i32 [ %spec.select, %poll_wait.exit42.if.end11_crit_edge ], [ %spec.select35, %land.lhs.true ]
  %no_paper = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %no_paper to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %no_paper, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end11.if.then15_crit_edge

if.end11.if.then15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end11
  %wcomplete = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %wcomplete to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wcomplete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end11.if.then15_crit_edge
  %or16 = or i32 %ret.1, 260
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %lor.lhs.false.if.end17_crit_edge
  %ret.2 = phi i32 [ %or16, %if.then15 ], [ %ret.1, %lor.lhs.false.if.end17_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %newChannel = alloca i8, align 1
  %status = alloca i32, align 4
  %twoints = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %newChannel) #11
  %2 = ptrtoint ptr %newChannel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %newChannel, align 1, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %twoints) #11
  %4 = ptrtoint ptr %twoints to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %twoints, align 4, !annotation !207
  %5 = getelementptr inbounds [2 x i32], ptr %twoints, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !207
  %mut = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #11
  %present = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %do.body

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ioctl.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_ioctl, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !208

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %shr = lshr i32 %cmd, 8
  %and = and i32 %shr, 255
  %and7 = and i32 %cmd, 255
  %shr8 = lshr i32 %cmd, 16
  %and9 = and i32 %shr8, 16383
  %shr10 = lshr i32 %cmd, 30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ioctl.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %cmd, i32 noundef %and, i32 noundef %and7, i32 noundef %and9, i32 noundef %shr10) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %11 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %11)
  %cmp = icmp eq i32 %11, 20480
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %do.end
  %trunc = trunc i32 %cmd to i8
  %12 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %trunc, label %if.then15.done_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb38
    i8 3, label %sw.bb58
    i8 4, label %sw.bb70
    i8 5, label %sw.bb113
    i8 6, label %sw.bb155
    i8 7, label %sw.bb202
  ]

if.then15.done_crit_edge:                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb:                                            ; preds = %if.then15
  %shr18.mask = and i32 %cmd, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr18.mask)
  %cmp20.not = icmp eq i32 %shr18.mask, -2147483648
  br i1 %cmp20.not, label %if.end22, label %sw.bb.done_crit_edge

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end22:                                         ; preds = %sw.bb
  %call23 = tail call fastcc i32 @usblp_cache_device_id_string(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.done_crit_edge, label %if.end26

if.end22.done_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end26:                                         ; preds = %if.end22
  %shr27 = lshr i32 %cmd, 16
  %and28 = and i32 %shr27, 16383
  %13 = tail call i32 @llvm.umin.i32(i32 %call23, i32 %and28)
  %14 = inttoptr i32 %arg to ptr
  %device_id_string = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %device_id_string to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_id_string, align 4
  tail call void @__check_object_size(ptr noundef %16, i32 noundef %13, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end26.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end26.copy_to_user.exit_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end26
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 %13, i32 -1226833920) #16, !srcloc !211
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %16, i32 noundef %13) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %14, ptr noundef %16, i32 noundef %13) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end26.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %13, %if.end26.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %13, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool35.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool35.not, i32 0, i32 -14
  br label %done

sw.bb38:                                          ; preds = %if.then15
  %shr39.mask = and i32 %cmd, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr39.mask)
  %cmp41.not = icmp ne i32 %shr39.mask, -2147483648
  %18 = and i32 %cmd, 1073217536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp44 = icmp eq i32 %18, 0
  %or.cond = or i1 %cmp41.not, %cmp44
  br i1 %or.cond, label %sw.bb38.done_crit_edge, label %if.end46

sw.bb38.done_crit_edge:                           ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end46:                                         ; preds = %sw.bb38
  %current_protocol = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %current_protocol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_protocol, align 4
  %21 = ptrtoint ptr %twoints to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %twoints, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %5, align 4
  %arrayidx49 = getelementptr %struct.usblp, ptr %1, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp50 = icmp sgt i32 %24, -1
  br i1 %cmp50, label %if.then51, label %if.end46.for.inc_crit_edge

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %5, align 4
  %or = or i32 %26, 2
  store i32 %or, ptr %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then51, %if.end46.for.inc_crit_edge
  %arrayidx49.1 = getelementptr %struct.usblp, ptr %1, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx49.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp50.1 = icmp sgt i32 %28, -1
  br i1 %cmp50.1, label %if.then51.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then51.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  %or.1 = or i32 %30, 4
  store i32 %or.1, ptr %5, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then51.1, %for.inc.for.inc.1_crit_edge
  %arrayidx49.2 = getelementptr %struct.usblp, ptr %1, i32 0, i32 12, i32 3
  %31 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx49.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp50.2 = icmp sgt i32 %32, -1
  br i1 %cmp50.2, label %if.then51.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then51.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  %or.2 = or i32 %34, 8
  store i32 %or.2, ptr %5, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then51.2, %for.inc.1.for.inc.2_crit_edge
  %35 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #11
  %call.i.i323 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i323, label %for.inc.2.done_crit_edge, label %if.end.i.i327

for.inc.2.done_crit_edge:                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end.i.i327:                                    ; preds = %for.inc.2
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 8, i32 -1226833920) #16, !srcloc !211
  %asmresult.i.i325 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i325)
  %cmp.i6.i326 = icmp eq i32 %asmresult.i.i325, 0
  br i1 %cmp.i6.i326, label %copy_to_user.exit332, label %if.end.i.i327.done_crit_edge

if.end.i.i327.done_crit_edge:                     ; preds = %if.end.i.i327
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

copy_to_user.exit332:                             ; preds = %if.end.i.i327
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i328 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %twoints, i32 noundef 8) #11
  %call.i12.i.i329 = call i32 @arm_copy_to_user(ptr noundef %35, ptr noundef nonnull %twoints, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i329)
  %tobool55.not = icmp eq i32 %call.i12.i.i329, 0
  %spec.select399 = select i1 %tobool55.not, i32 0, i32 -14
  br label %done

sw.bb58:                                          ; preds = %if.then15
  %shr59.mask = and i32 %cmd, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr59.mask)
  %cmp61.not = icmp eq i32 %shr59.mask, 1073741824
  br i1 %cmp61.not, label %if.end63, label %sw.bb58.done_crit_edge

sw.bb58.done_crit_edge:                           ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end63:                                         ; preds = %sw.bb58
  %urbs.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 6
  tail call void @usb_kill_anchored_urbs(ptr noundef %urbs.i) #11
  %call64 = tail call fastcc i32 @usblp_set_protocol(ptr noundef %1, i32 noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end63.done_crit_edge

if.end63.done_crit_edge:                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %current_protocol67 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %current_protocol67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %current_protocol67, align 4
  %call68 = tail call fastcc i32 @usblp_set_protocol(ptr noundef %1, i32 noundef %38)
  br label %done

sw.bb70:                                          ; preds = %if.then15
  %shr71.mask = and i32 %cmd, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr71.mask)
  %cmp73.not = icmp eq i32 %shr71.mask, 1073741824
  br i1 %cmp73.not, label %lor.lhs.false74, label %sw.bb70.done_crit_edge

sw.bb70.done_crit_edge:                           ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

lor.lhs.false74:                                  ; preds = %sw.bb70
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 16, i32 7
  %41 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4093, i16 %42)
  %cmp76.not = icmp eq i16 %42, -4093
  br i1 %cmp76.not, label %lor.lhs.false78, label %lor.lhs.false74.done_crit_edge

lor.lhs.false74.done_crit_edge:                   ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

lor.lhs.false78:                                  ; preds = %lor.lhs.false74
  %quirks = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quirks, align 4
  %and79 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end82, label %lor.lhs.false78.done_crit_edge

lor.lhs.false78.done_crit_edge:                   ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end82:                                         ; preds = %lor.lhs.false78
  %call83 = call fastcc i32 @usblp_hp_channel_change_request(ptr noundef %1, i32 noundef %arg, ptr noundef nonnull %newChannel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %do.end89, label %do.body93

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev91 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  %minor = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %47 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91, ptr noundef nonnull @.str.61, i32 noundef %48, i32 noundef %call83) #15
  br label %done

do.body93:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ioctl.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_ioctl, %if.then105)) #11
          to label %done [label %if.then105], !srcloc !208

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  %intf106 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 11
  %49 = ptrtoint ptr %intf106 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf106, align 4
  %dev107 = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7
  %minor108 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %51 = ptrtoint ptr %minor108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %minor108, align 4
  %53 = ptrtoint ptr %newChannel to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %newChannel, align 1
  %conv109 = zext i8 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ioctl.__UNIQUE_ID_ddebug234, ptr noundef %dev107, ptr noundef nonnull @.str.62, i32 noundef %52, i32 noundef %arg, i32 noundef %conv109) #11
  br label %done

sw.bb113:                                         ; preds = %if.then15
  %shr114.mask = and i32 %cmd, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr114.mask)
  %cmp116.not = icmp ne i32 %shr114.mask, -2147483648
  %55 = and i32 %cmd, 1073217536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp121 = icmp eq i32 %55, 0
  %or.cond314 = or i1 %cmp116.not, %cmp121
  br i1 %or.cond314, label %sw.bb113.done_crit_edge, label %if.end124

sw.bb113.done_crit_edge:                          ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end124:                                        ; preds = %sw.bb113
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %busnum, align 4
  %62 = ptrtoint ptr %twoints to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %twoints, align 4
  %63 = load ptr, ptr %1, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %5, align 4
  %67 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #11
  %call.i.i341 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i341, label %if.end124.done_crit_edge, label %if.end.i.i345

if.end124.done_crit_edge:                         ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end.i.i345:                                    ; preds = %if.end124
  %68 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %67, i32 8, i32 -1226833920) #16, !srcloc !211
  %asmresult.i.i343 = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i343)
  %cmp.i6.i344 = icmp eq i32 %asmresult.i.i343, 0
  br i1 %cmp.i6.i344, label %copy_to_user.exit350, label %if.end.i.i345.done_crit_edge

if.end.i.i345.done_crit_edge:                     ; preds = %if.end.i.i345
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

copy_to_user.exit350:                             ; preds = %if.end.i.i345
  %call.i.i.i346 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %twoints, i32 noundef 8) #11
  %call.i12.i.i347 = call i32 @arm_copy_to_user(ptr noundef %67, ptr noundef nonnull %twoints, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i347)
  %tobool131.not = icmp eq i32 %call.i12.i.i347, 0
  br i1 %tobool131.not, label %do.body134, label %copy_to_user.exit350.done_crit_edge

copy_to_user.exit350.done_crit_edge:              ; preds = %copy_to_user.exit350
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body134:                                       ; preds = %copy_to_user.exit350
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ioctl.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_ioctl, %if.then146)) #11
          to label %done [label %if.then146], !srcloc !208

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  %intf147 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 11
  %69 = ptrtoint ptr %intf147 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %intf147, align 4
  %dev148 = getelementptr inbounds %struct.usb_interface, ptr %70, i32 0, i32 7
  %minor149 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %71 = ptrtoint ptr %minor149 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %minor149, align 4
  %73 = ptrtoint ptr %twoints to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %twoints, align 4
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ioctl.__UNIQUE_ID_ddebug235, ptr noundef %dev148, ptr noundef nonnull @.str.63, i32 noundef %72, i32 noundef %74, i32 noundef %76) #11
  br label %done

sw.bb155:                                         ; preds = %if.then15
  %shr156.mask = and i32 %cmd, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr156.mask)
  %cmp158.not = icmp ne i32 %shr156.mask, -2147483648
  %77 = and i32 %cmd, 1073217536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp163 = icmp eq i32 %77, 0
  %or.cond315 = or i1 %cmp158.not, %cmp163
  br i1 %or.cond315, label %sw.bb155.done_crit_edge, label %if.end166

sw.bb155.done_crit_edge:                          ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end166:                                        ; preds = %sw.bb155
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %idVendor169 = getelementptr inbounds %struct.usb_device, ptr %79, i32 0, i32 16, i32 7
  %80 = ptrtoint ptr %idVendor169 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %idVendor169, align 8
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %conv170 = zext i16 %82 to i32
  %83 = ptrtoint ptr %twoints to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv170, ptr %twoints, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %85, i32 0, i32 16, i32 8
  %86 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %idProduct, align 2
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %conv174 = zext i16 %88 to i32
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv174, ptr %5, align 4
  %90 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #11
  %call.i.i359 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i359, label %if.end166.done_crit_edge, label %if.end.i.i363

if.end166.done_crit_edge:                         ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end.i.i363:                                    ; preds = %if.end166
  %91 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %90, i32 8, i32 -1226833920) #16, !srcloc !211
  %asmresult.i.i361 = extractvalue { i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i361)
  %cmp.i6.i362 = icmp eq i32 %asmresult.i.i361, 0
  br i1 %cmp.i6.i362, label %copy_to_user.exit368, label %if.end.i.i363.done_crit_edge

if.end.i.i363.done_crit_edge:                     ; preds = %if.end.i.i363
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

copy_to_user.exit368:                             ; preds = %if.end.i.i363
  %call.i.i.i364 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %twoints, i32 noundef 8) #11
  %call.i12.i.i365 = call i32 @arm_copy_to_user(ptr noundef %90, ptr noundef nonnull %twoints, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i365)
  %tobool178.not = icmp eq i32 %call.i12.i.i365, 0
  br i1 %tobool178.not, label %do.body181, label %copy_to_user.exit368.done_crit_edge

copy_to_user.exit368.done_crit_edge:              ; preds = %copy_to_user.exit368
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body181:                                       ; preds = %copy_to_user.exit368
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ioctl.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_ioctl, %if.then193)) #11
          to label %done [label %if.then193], !srcloc !208

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #13
  %intf194 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 11
  %92 = ptrtoint ptr %intf194 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %intf194, align 4
  %dev195 = getelementptr inbounds %struct.usb_interface, ptr %93, i32 0, i32 7
  %minor196 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %94 = ptrtoint ptr %minor196 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %minor196, align 4
  %96 = ptrtoint ptr %twoints to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %twoints, align 4
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ioctl.__UNIQUE_ID_ddebug236, ptr noundef %dev195, ptr noundef nonnull @.str.64, i32 noundef %95, i32 noundef %97, i32 noundef %99) #11
  br label %done

sw.bb202:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %cmd)
  %cmp205.not = icmp ult i32 %cmd, 1073741824
  br i1 %cmp205.not, label %if.end208, label %sw.bb202.done_crit_edge

sw.bb202.done_crit_edge:                          ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end208:                                        ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #13
  %call209 = tail call fastcc i32 @usblp_ctrl_msg(ptr noundef %1, i32 noundef 2, i32 noundef 32, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %done

if.else:                                          ; preds = %do.end
  %100 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %cmd, label %if.else.done_crit_edge [
    i32 1547, label %sw.bb210
    i32 1540, label %sw.bb231
  ]

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb210:                                         ; preds = %if.else
  %statusbuf = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 5
  %101 = ptrtoint ptr %statusbuf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %statusbuf, align 4
  %ifnum.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 10
  %103 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ifnum.i, align 4
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 8
  %shl.i.i = shl i32 %108, 8
  %or9.i = or i32 %shl.i.i, -2147483520
  %conv14.i = trunc i32 %104 to i16
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %106, i32 noundef %or9.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i, ptr noundef %102, i16 noundef zeroext 1, i32 noundef 5000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_ioctl, %if.then21.i)) #11
          to label %usblp_ctrl_msg.exit [label %if.then21.i], !srcloc !208

if.then21.i:                                      ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #13
  %intf.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 11
  %109 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %intf.i, align 4
  %dev22.i = getelementptr inbounds %struct.usb_interface, ptr %110, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, ptr noundef %dev22.i, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %104, i32 noundef 1, i32 noundef %call16.i) #11
  br label %usblp_ctrl_msg.exit

usblp_ctrl_msg.exit:                              ; preds = %if.then21.i, %sw.bb210
  %111 = tail call i32 @llvm.smin.i32(i32 %call16.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %tobool212.not = icmp sgt i32 %call16.i, -1
  br i1 %tobool212.not, label %if.end224, label %if.then213

if.then213:                                       ; preds = %usblp_ctrl_msg.exit
  %call214 = tail call i32 @___ratelimit(ptr noundef nonnull @usblp_ioctl._rs, ptr noundef nonnull @.str.59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.then213.done_crit_edge, label %do.end219

if.then213.done_crit_edge:                        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.end219:                                        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #13
  %minor221 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %112 = ptrtoint ptr %minor221 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %minor221, align 4
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %113, i32 noundef %111) #15
  br label %done

if.end224:                                        ; preds = %usblp_ctrl_msg.exit
  %114 = ptrtoint ptr %statusbuf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %statusbuf, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 1
  %conv226 = zext i8 %117 to i32
  %118 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv226, ptr %status, align 4
  %119 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #11
  %call.i.i377 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i377, label %if.end224.done_crit_edge, label %if.end.i.i381

if.end224.done_crit_edge:                         ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end.i.i381:                                    ; preds = %if.end224
  %120 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %119, i32 4, i32 -1226833920) #16, !srcloc !211
  %asmresult.i.i379 = extractvalue { i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i379)
  %cmp.i6.i380 = icmp eq i32 %asmresult.i.i379, 0
  br i1 %cmp.i6.i380, label %copy_to_user.exit386, label %if.end.i.i381.done_crit_edge

if.end.i.i381.done_crit_edge:                     ; preds = %if.end.i.i381
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

copy_to_user.exit386:                             ; preds = %if.end.i.i381
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i382 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %status, i32 noundef 4) #11
  %call.i12.i.i383 = call i32 @arm_copy_to_user(ptr noundef %119, ptr noundef nonnull %status, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i383)
  %tobool228.not = icmp eq i32 %call.i12.i.i383, 0
  %spec.select400 = select i1 %tobool228.not, i32 0, i32 -14
  br label %done

sw.bb231:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool232.not = icmp eq i32 %arg, 0
  %flags236 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 20
  %121 = ptrtoint ptr %flags236 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags236, align 4
  br i1 %tobool232.not, label %if.else235, label %if.then233

if.then233:                                       ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #13
  %or234 = or i32 %122, 64
  %123 = ptrtoint ptr %flags236 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or234, ptr %flags236, align 4
  br label %done

if.else235:                                       ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #13
  %and237 = and i32 %122, -65
  %124 = ptrtoint ptr %flags236 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %and237, ptr %flags236, align 4
  br label %done

done:                                             ; preds = %if.else235, %if.then233, %copy_to_user.exit386, %if.end.i.i381.done_crit_edge, %if.end224.done_crit_edge, %do.end219, %if.then213.done_crit_edge, %if.else.done_crit_edge, %if.end208, %sw.bb202.done_crit_edge, %if.then193, %do.body181, %copy_to_user.exit368.done_crit_edge, %if.end.i.i363.done_crit_edge, %if.end166.done_crit_edge, %sw.bb155.done_crit_edge, %if.then146, %do.body134, %copy_to_user.exit350.done_crit_edge, %if.end.i.i345.done_crit_edge, %if.end124.done_crit_edge, %sw.bb113.done_crit_edge, %if.then105, %do.body93, %do.end89, %lor.lhs.false78.done_crit_edge, %lor.lhs.false74.done_crit_edge, %sw.bb70.done_crit_edge, %if.then66, %if.end63.done_crit_edge, %sw.bb58.done_crit_edge, %copy_to_user.exit332, %if.end.i.i327.done_crit_edge, %for.inc.2.done_crit_edge, %sw.bb38.done_crit_edge, %copy_to_user.exit, %if.end22.done_crit_edge, %sw.bb.done_crit_edge, %if.then15.done_crit_edge, %entry.done_crit_edge
  %retval1.0 = phi i32 [ %call209, %if.end208 ], [ 0, %if.then193 ], [ 0, %if.then146 ], [ -5, %do.end89 ], [ 0, %if.then105 ], [ %call64, %if.then66 ], [ %call64, %if.end63.done_crit_edge ], [ 0, %if.then233 ], [ 0, %if.else235 ], [ -19, %entry.done_crit_edge ], [ -22, %sw.bb.done_crit_edge ], [ %call23, %if.end22.done_crit_edge ], [ -22, %sw.bb38.done_crit_edge ], [ -22, %sw.bb58.done_crit_edge ], [ -22, %lor.lhs.false78.done_crit_edge ], [ -22, %lor.lhs.false74.done_crit_edge ], [ -22, %sw.bb70.done_crit_edge ], [ -22, %sw.bb113.done_crit_edge ], [ -14, %copy_to_user.exit350.done_crit_edge ], [ -22, %sw.bb155.done_crit_edge ], [ -14, %copy_to_user.exit368.done_crit_edge ], [ -22, %sw.bb202.done_crit_edge ], [ -25, %if.then15.done_crit_edge ], [ -5, %do.end219 ], [ -5, %if.then213.done_crit_edge ], [ -25, %if.else.done_crit_edge ], [ 0, %do.body93 ], [ 0, %do.body134 ], [ 0, %do.body181 ], [ -14, %for.inc.2.done_crit_edge ], [ -14, %if.end.i.i327.done_crit_edge ], [ -14, %if.end124.done_crit_edge ], [ -14, %if.end.i.i345.done_crit_edge ], [ -14, %if.end166.done_crit_edge ], [ -14, %if.end.i.i363.done_crit_edge ], [ -14, %if.end224.done_crit_edge ], [ -14, %if.end.i.i381.done_crit_edge ], [ %spec.select399, %copy_to_user.exit332 ], [ %spec.select400, %copy_to_user.exit386 ], [ %spec.select, %copy_to_user.exit ]
  call void @mutex_unlock(ptr noundef %mut) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %twoints) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %newChannel) #11
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @usblp_mutex, i32 noundef 0) #11
  %call2 = tail call ptr @usb_find_interface(ptr noundef nonnull @usblp_driver, i32 noundef %and.i) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end4

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call2, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %lor.lhs.false

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %if.end4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false8

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %present = getelementptr inbounds %struct.usblp, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %lor.lhs.false8.out_crit_edge, label %if.end11

lor.lhs.false8.out_crit_edge:                     ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %lor.lhs.false8
  %used = getelementptr inbounds %struct.usblp, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end11
  %call15 = tail call i32 @usb_autopm_get_interface(ptr noundef nonnull %call2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end18:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %used, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %private_data, align 4
  %wcomplete = getelementptr inbounds %struct.usblp, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %wcomplete to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %wcomplete, align 4
  %wstatus = getelementptr inbounds %struct.usblp, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %wstatus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %wstatus, align 4
  %rcomplete = getelementptr inbounds %struct.usblp, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %rcomplete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rcomplete, align 4
  %bidir.i = getelementptr inbounds %struct.usblp, ptr %3, i32 0, i32 23
  %15 = ptrtoint ptr %bidir.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bidir.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end18.out_crit_edge, label %land.lhs.true.i

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i:                                  ; preds = %if.end18
  %17 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.out_crit_edge, label %if.then.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call fastcc i32 @usblp_submit_read(ptr noundef nonnull %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then22, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then22:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_autopm_put_interface(ptr noundef nonnull %call2) #11
  %19 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %used, align 4
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %if.then22, %if.then.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end18.out_crit_edge, %if.end14.out_crit_edge, %if.end11.out_crit_edge, %lor.lhs.false8.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end4.out_crit_edge, %entry.out_crit_edge
  %retval1.0 = phi i32 [ -16, %if.end11.out_crit_edge ], [ %call15, %if.end14.out_crit_edge ], [ -5, %if.then22 ], [ -19, %lor.lhs.false8.out_crit_edge ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %if.end4.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ %call15, %if.end18.out_crit_edge ], [ %call15, %land.lhs.true.i.out_crit_edge ], [ %call15, %if.then.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @usblp_mutex) #11
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usblp_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -65
  store i32 %and, ptr %flags, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @usblp_mutex, i32 noundef 0) #11
  %used = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %used, align 4
  %present = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %urbs.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 6
  tail call void @usb_kill_anchored_urbs(ptr noundef %urbs.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %intf = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %8) #11
  %9 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %minor.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %12) #15
  %readbuf.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %readbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %readbuf.i, align 4
  tail call void @kfree(ptr noundef %14) #11
  %device_id_string.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %device_id_string.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_id_string.i, align 4
  tail call void @kfree(ptr noundef %16) #11
  %statusbuf.i = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %statusbuf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %statusbuf.i, align 4
  tail call void @kfree(ptr noundef %18) #11
  %19 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf, align 4
  tail call void @usb_put_intf(ptr noundef %20) #11
  tail call void @kfree(ptr noundef %1) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @usblp_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usblp_rwait_and_lock(ptr noundef %usblp, i32 noundef %nonblock) #2 align 64 {
entry:
  %waita = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %waita) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %waita to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %waita, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !197) #11
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
  %rwait = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 7
  call void @add_wait_queue(ptr noundef %rwait, ptr noundef nonnull %waita) #11
  %mut = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 2
  %call2172 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mut, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2172)
  %tobool.not173 = icmp eq i32 %call2172, 0
  br i1 %tobool.not173, label %__here.lr.ph, label %entry.__here125_crit_edge

entry.__here125_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here125

__here.lr.ph:                                     ; preds = %entry
  %present.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 22
  %lock.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 3
  %rcomplete.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool15.not.i = icmp eq i32 %nonblock, 0
  br label %__here

__here:                                           ; preds = %if.end73.__here_crit_edge, %__here.lr.ph
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@usblp_rwait_and_lock, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !216
  %18 = ptrtoint ptr %present.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %present.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %__here.if.then68_crit_edge, label %if.end.i

__here.if.then68_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

if.end.i:                                         ; preds = %__here
  %20 = call i32 @llvm.read_register.i32(metadata !197) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end.i.if.then68_crit_edge, !prof !210

if.end.i.if.then68_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

signal_pending.exit.i:                            ; preds = %if.end.i
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i, label %do.body5.i, label %signal_pending.exit.i.if.then68_crit_edge

signal_pending.exit.i.if.then68_crit_edge:        ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

do.body5.i:                                       ; preds = %signal_pending.exit.i
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %31 = ptrtoint ptr %rcomplete.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rcomplete.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool10.not.i = icmp eq i32 %32, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #11
  br i1 %tobool10.not.i, label %if.end13.i, label %do.body5.i.__here125_crit_edge

do.body5.i.__here125_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here125

if.end13.i:                                       ; preds = %do.body5.i
  br i1 %tobool15.not.i, label %if.end73, label %if.end13.i.if.then68_crit_edge

if.end13.i.if.then68_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

if.then68:                                        ; preds = %if.end13.i.if.then68_crit_edge, %signal_pending.exit.i.if.then68_crit_edge, %if.end.i.if.then68_crit_edge, %__here.if.then68_crit_edge
  %retval.0.i.ph = phi i32 [ -4, %if.end.i.if.then68_crit_edge ], [ -11, %if.end13.i.if.then68_crit_edge ], [ -4, %signal_pending.exit.i.if.then68_crit_edge ], [ -19, %__here.if.then68_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #11
  br label %__here125

if.end73:                                         ; preds = %if.end13.i
  call void @mutex_unlock(ptr noundef %mut) #11
  call void @schedule() #11
  %call2 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mut, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end73.__here_crit_edge, label %if.end73.__here125_crit_edge

if.end73.__here125_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here125

if.end73.__here_crit_edge:                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here125:                                        ; preds = %if.end73.__here125_crit_edge, %if.then68, %do.body5.i.__here125_crit_edge, %entry.__here125_crit_edge
  %rc.0 = phi i32 [ %retval.0.i.ph, %if.then68 ], [ -4, %entry.__here125_crit_edge ], [ -4, %if.end73.__here125_crit_edge ], [ 0, %do.body5.i.__here125_crit_edge ]
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %task_state_change129 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change129 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@usblp_rwait_and_lock, %__here125) to i32), ptr %task_state_change129, align 4
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !217
  call void @remove_wait_queue(ptr noundef %rwait, ptr noundef nonnull %waita) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %waita) #11
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usblp_submit_read(ptr noundef %usblp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %usblp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usblp, align 4
  %current_protocol = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 13
  %2 = ptrtoint ptr %current_protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_protocol, align 4
  %epread = getelementptr %struct.usblp, ptr %usblp, i32 0, i32 12, i32 %3, i32 2
  %4 = ptrtoint ptr %epread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epread, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or3 = or i32 %or.i, -1073741696
  %readbuf = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 4
  %10 = ptrtoint ptr %readbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readbuf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or3, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @usblp_bulk_read, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %usblp, ptr %context4.i, align 4
  %urbs = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 6
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %urbs) #11
  %lock = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %readcount = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 9
  %18 = ptrtoint ptr %readcount to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %readcount, align 4
  %rcomplete = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 16
  %19 = ptrtoint ptr %rcomplete to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rcomplete, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #11
  %call12 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.body16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body16:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_submit_read.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_submit_read, %if.then21)) #11
          to label %do.body27 [label %if.then21], !srcloc !208

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  %20 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf, align 4
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_submit_read.__UNIQUE_ID_ddebug241, ptr noundef %dev22, ptr noundef nonnull @.str.41, i32 noundef %call12) #11
  br label %do.body27

do.body27:                                        ; preds = %if.then21, %do.body16
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %rstatus = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 18
  %22 = ptrtoint ptr %rstatus to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call12, ptr %rstatus, align 4
  %23 = ptrtoint ptr %rcomplete to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rcomplete, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usblp_bulk_read(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %present = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %land.lhs.true

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

land.lhs.true:                                    ; preds = %entry
  %used = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %land.lhs.true.do.body8_crit_edge, label %do.end

land.lhs.true.do.body8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %minor = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %minor, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %9, i32 noundef %3) #15
  br label %do.body8

do.body8:                                         ; preds = %do.end, %land.lhs.true.do.body8_crit_edge, %entry.do.body8_crit_edge
  %lock = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp slt i32 %3, 0
  br i1 %cmp17, label %do.body8.if.end21_crit_edge, label %if.else

do.body8.if.end21_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %do.body8.if.end21_crit_edge
  %.sink = phi i32 [ %11, %if.else ], [ %3, %do.body8.if.end21_crit_edge ]
  %12 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %rcomplete = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %rcomplete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %rcomplete, align 4
  %rwait = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %rwait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #11
  tail call void @usb_free_urb(ptr noundef %urb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
define internal fastcc i32 @usblp_wwait(ptr noundef %usblp, i32 noundef %nonblock) #2 align 64 {
entry:
  %waita = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %waita) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %waita to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %waita, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !197) #11
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
  %wwait = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 8
  call void @add_wait_queue(ptr noundef %wwait, ptr noundef nonnull %waita) #11
  %mut = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 2
  %call2188 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mut, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2188)
  %tobool.not189 = icmp eq i32 %call2188, 0
  br i1 %tobool.not189, label %__here.lr.ph, label %entry.__here137_crit_edge

entry.__here137_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here137

__here.lr.ph:                                     ; preds = %entry
  %present.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 22
  %lock.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 3
  %wcomplete.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 15
  %flags75 = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 20
  %statusbuf = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 5
  %ifnum.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 10
  %intf.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  br label %__here

__here:                                           ; preds = %if.end86.__here_crit_edge, %__here.lr.ph
  %err.0190 = phi i32 [ 0, %__here.lr.ph ], [ %err.1, %if.end86.__here_crit_edge ]
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@usblp_wwait, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !218
  %18 = ptrtoint ptr %present.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %present.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %__here.usblp_wtest.exit.thread_crit_edge, label %if.end.i

__here.usblp_wtest.exit.thread_crit_edge:         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_wtest.exit.thread

if.end.i:                                         ; preds = %__here
  %20 = call i32 @llvm.read_register.i32(metadata !197) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end.i.usblp_wtest.exit.thread_crit_edge, !prof !210

if.end.i.usblp_wtest.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_wtest.exit.thread

signal_pending.exit.i:                            ; preds = %if.end.i
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i, label %do.body5.i, label %signal_pending.exit.i.usblp_wtest.exit.thread_crit_edge

signal_pending.exit.i.usblp_wtest.exit.thread_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usblp_wtest.exit.thread

do.body5.i:                                       ; preds = %signal_pending.exit.i
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %31 = ptrtoint ptr %wcomplete.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wcomplete.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #11
  %33 = or i32 %32, %nonblock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %.not = icmp eq i32 %33, 0
  br i1 %.not, label %if.end70, label %usblp_wtest.exit.thread.split.loop.exit

usblp_wtest.exit.thread.split.loop.exit:          ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool10.not.i.not.le = icmp eq i32 %32, 0
  %.mux.le = select i1 %tobool10.not.i.not.le, i32 -11, i32 0
  br label %usblp_wtest.exit.thread

usblp_wtest.exit.thread:                          ; preds = %usblp_wtest.exit.thread.split.loop.exit, %signal_pending.exit.i.usblp_wtest.exit.thread_crit_edge, %if.end.i.usblp_wtest.exit.thread_crit_edge, %__here.usblp_wtest.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %.mux.le, %usblp_wtest.exit.thread.split.loop.exit ], [ -19, %__here.usblp_wtest.exit.thread_crit_edge ], [ -4, %signal_pending.exit.i.usblp_wtest.exit.thread_crit_edge ], [ -4, %if.end.i.usblp_wtest.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #11
  br label %__here137

if.end70:                                         ; preds = %do.body5.i
  call void @mutex_unlock(ptr noundef %mut) #11
  %call72 = call i32 @schedule_timeout(i32 noundef 150) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end70.if.end86_crit_edge

if.end70.if.end86_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then74:                                        ; preds = %if.end70
  %34 = ptrtoint ptr %flags75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags75, align 4
  %and = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %if.then74
  %call78 = call fastcc i32 @usblp_check_status(ptr noundef %usblp, i32 noundef %err.0190)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call78)
  %cmp79 = icmp eq i32 %call78, 1
  br i1 %cmp79, label %if.then77.__here137_crit_edge, label %if.then77.if.end86_crit_edge

if.then77.if.end86_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then77.__here137_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here137

if.else:                                          ; preds = %if.then74
  call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #11
  %36 = ptrtoint ptr %statusbuf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %statusbuf, align 4
  %38 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ifnum.i, align 4
  %40 = ptrtoint ptr %usblp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usblp, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i = shl i32 %43, 8
  %or9.i = or i32 %shl.i.i, -2147483520
  %conv14.i = trunc i32 %39 to i16
  %call16.i = call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or9.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i, ptr noundef %37, i16 noundef zeroext 1, i32 noundef 5000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_wwait, %if.then21.i)) #11
          to label %usblp_ctrl_msg.exit [label %if.then21.i], !srcloc !208

if.then21.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %intf.i, align 4
  %dev22.i = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, ptr noundef %dev22.i, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %39, i32 noundef 1, i32 noundef %call16.i) #11
  br label %usblp_ctrl_msg.exit

usblp_ctrl_msg.exit:                              ; preds = %if.then21.i, %if.else
  call void @mutex_unlock(ptr noundef %mut) #11
  br label %if.end86

if.end86:                                         ; preds = %usblp_ctrl_msg.exit, %if.then77.if.end86_crit_edge, %if.end70.if.end86_crit_edge
  %err.1 = phi i32 [ %call78, %if.then77.if.end86_crit_edge ], [ %err.0190, %usblp_ctrl_msg.exit ], [ %err.0190, %if.end70.if.end86_crit_edge ]
  %call2 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mut, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end86.__here_crit_edge, label %if.end86.__here137_crit_edge

if.end86.__here137_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here137

if.end86.__here_crit_edge:                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here137:                                        ; preds = %if.end86.__here137_crit_edge, %if.then77.__here137_crit_edge, %usblp_wtest.exit.thread, %entry.__here137_crit_edge
  %rc.0 = phi i32 [ %retval.0.i.ph, %usblp_wtest.exit.thread ], [ -4, %entry.__here137_crit_edge ], [ -28, %if.then77.__here137_crit_edge ], [ -4, %if.end86.__here137_crit_edge ]
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %task_state_change141 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 212
  %48 = ptrtoint ptr %task_state_change141 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 ptrtoint (ptr blockaddress(@usblp_wwait, %__here137) to i32), ptr %task_state_change141, align 4
  %49 = load ptr, ptr %task, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %49, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !219
  call void @remove_wait_queue(ptr noundef %wwait, ptr noundef nonnull %waita) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %waita) #11
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usblp_check_status(ptr noundef %usblp, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mut = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #11
  %statusbuf = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 5
  %0 = ptrtoint ptr %statusbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %statusbuf, align 4
  %ifnum.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 10
  %2 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifnum.i, align 4
  %4 = ptrtoint ptr %usblp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usblp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or9.i = or i32 %shl.i.i, -2147483520
  %conv14.i = trunc i32 %3 to i16
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or9.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i, ptr noundef %1, i16 noundef zeroext 1, i32 noundef 5000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_check_status, %if.then21.i)) #11
          to label %usblp_ctrl_msg.exit [label %if.then21.i], !srcloc !208

if.then21.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intf.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  %8 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf.i, align 4
  %dev22.i = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, ptr noundef %dev22.i, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %3, i32 noundef 1, i32 noundef %call16.i) #11
  br label %usblp_ctrl_msg.exit

usblp_ctrl_msg.exit:                              ; preds = %if.then21.i, %entry
  %10 = tail call i32 @llvm.smin.i32(i32 %call16.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %usblp_ctrl_msg.exit
  tail call void @mutex_unlock(ptr noundef %mut) #11
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @usblp_check_status._rs, ptr noundef nonnull @__func__.usblp_check_status) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %minor = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 14
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %12, i32 noundef %10) #15
  br label %cleanup

if.end5:                                          ; preds = %usblp_ctrl_msg.exit
  %13 = ptrtoint ptr %statusbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %statusbuf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  tail call void @mutex_unlock(ptr noundef %mut) #11
  %conv = zext i8 %16 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %neg, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 3
  %and12 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %newerr.1 = select i1 %tobool13.not, i32 %spec.select, i32 1
  %and18 = and i32 %neg, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %newerr.2 = select i1 %tobool19.not, i32 %newerr.1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %newerr.2, i32 %err)
  %cmp23.not = icmp eq i32 %newerr.2, %err
  br i1 %cmp23.not, label %if.end5.cleanup_crit_edge, label %do.end28

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end28:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %minor30 = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 14
  %17 = ptrtoint ptr %minor30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minor30, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @usblp_messages, i32 0, i32 %newerr.2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %18, ptr noundef %20) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end5.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ %newerr.2, %do.end28 ], [ %err, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usblp_bulk_write(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %present = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %land.lhs.true

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

land.lhs.true:                                    ; preds = %entry
  %used = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %land.lhs.true.do.body8_crit_edge, label %do.end

land.lhs.true.do.body8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %minor = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %minor, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %9, i32 noundef %3) #15
  br label %do.body8

do.body8:                                         ; preds = %do.end, %land.lhs.true.do.body8_crit_edge, %entry.do.body8_crit_edge
  %lock = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp slt i32 %3, 0
  br i1 %cmp17, label %do.body8.if.end21_crit_edge, label %if.else

do.body8.if.end21_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %do.body8.if.end21_crit_edge
  %.sink = phi i32 [ %11, %if.else ], [ %3, %do.body8.if.end21_crit_edge ]
  %12 = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %no_paper = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %no_paper to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %no_paper, align 1
  %wcomplete = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %wcomplete to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %wcomplete, align 4
  %wwait = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wwait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #11
  tail call void @usb_free_urb(ptr noundef %urb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usblp_hp_channel_change_request(ptr nocapture noundef readonly %usblp, i32 noundef %channel, ptr nocapture noundef writeonly %new_channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifnum.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 10
  %1 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ifnum.i, align 4
  %3 = ptrtoint ptr %usblp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usblp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or9.i = or i32 %shl.i.i, -2147483520
  %conv13.i = trunc i32 %channel to i16
  %conv14.i = trunc i32 %2 to i16
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or9.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext %conv13.i, i16 noundef zeroext %conv14.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usblp_hp_channel_change_request, %if.then21.i)) #11
          to label %usblp_ctrl_msg.exit [label %if.then21.i], !srcloc !208

if.then21.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %intf.i = getelementptr inbounds %struct.usblp, ptr %usblp, i32 0, i32 11
  %7 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf.i, align 4
  %dev22.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, ptr noundef %dev22.i, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef %channel, i32 noundef %2, i32 noundef 1, i32 noundef %call16.i) #11
  br label %usblp_ctrl_msg.exit

usblp_ctrl_msg.exit:                              ; preds = %if.then21.i, %if.end
  %9 = tail call i32 @llvm.smin.i32(i32 %call16.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp = icmp sgt i32 %call16.i, -1
  br i1 %cmp, label %if.then2, label %usblp_ctrl_msg.exit.if.end3_crit_edge

usblp_ctrl_msg.exit.if.end3_crit_edge:            ; preds = %usblp_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %usblp_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i.i, align 8
  %12 = ptrtoint ptr %new_channel to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %new_channel, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %usblp_ctrl_msg.exit.if.end3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ieee1284_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_id_string = getelementptr inbounds %struct.usblp, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %device_id_string to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_id_string, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5 = icmp eq i8 %7, 0
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr8 = getelementptr i8, ptr %3, i32 2
  %stpcpy = tail call ptr @stpcpy(ptr %buf, ptr %add.ptr8) #18
  %8 = ptrtoint ptr %stpcpy to i32
  %9 = ptrtoint ptr %buf to i32
  %10 = sub i32 %8, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !116, !118, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !186, !187, !189, !191, !192, !194, !195}
!llvm.named.register.sp = !{!197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__initcall__kmod_usblp__246_1468_usblp_driver_init6, !1, !"__initcall__kmod_usblp__246_1468_usblp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/class/usblp.c", i32 1468, i32 1}
!2 = !{ptr @__exitcall_usblp_driver_exit, !1, !"__exitcall_usblp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author247, !4, !"__UNIQUE_ID_author247", i1 false, i1 false}
!4 = !{!"../drivers/usb/class/usblp.c", i32 1470, i32 1}
!5 = !{ptr @__UNIQUE_ID_description248, !6, !"__UNIQUE_ID_description248", i1 false, i1 false}
!6 = !{!"../drivers/usb/class/usblp.c", i32 1471, i32 1}
!7 = !{ptr @__param_proto_bias, !8, !"__param_proto_bias", i1 false, i1 false}
!8 = !{!"../drivers/usb/class/usblp.c", i32 1472, i32 1}
!9 = !{ptr @__UNIQUE_ID_proto_biastype249, !8, !"__UNIQUE_ID_proto_biastype249", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_proto_bias250, !11, !"__UNIQUE_ID_proto_bias250", i1 false, i1 false}
!11 = !{!"../drivers/usb/class/usblp.c", i32 1473, i32 1}
!12 = !{ptr @__UNIQUE_ID_file251, !13, !"__UNIQUE_ID_file251", i1 false, i1 false}
!13 = !{!"../drivers/usb/class/usblp.c", i32 1474, i32 1}
!14 = !{ptr @__UNIQUE_ID_license252, !13, !"__UNIQUE_ID_license252", i1 false, i1 false}
!15 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @usblp_driver, !17, !"usblp_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/class/usblp.c", i32 1457, i32 26}
!18 = !{ptr @usblp_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/usb/class/usblp.c", i32 1141, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @usblp_probe.__key.2, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/usb/class/usblp.c", i32 1142, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @usblp_probe.__key.4, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/usb/class/usblp.c", i32 1143, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @usblp_probe.__key.6, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/usb/class/usblp.c", i32 1144, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @usblp_probe.__key.8, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/usb/class/usblp.c", i32 1145, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/class/usblp.c", i32 1183, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @usblp_probe.__UNIQUE_ID_ddebug242, !34, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/class/usblp.c", i32 1210, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @usblp_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @usblp_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/class/usblp.c", i32 1216, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @usblp_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @usblp_probe._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @init_usb_anchor.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @init_usb_anchor.__key.23, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @quirk_printers, !58, !"quirk_printers", i1 false, i1 false}
!58 = !{!"../drivers/usb/class/usblp.c", i32 213, i32 42}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/class/usblp.c", i32 1303, i32 4}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @usblp_select_alts._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @usblp_select_alts._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/class/usblp.c", i32 1347, i32 4}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @usblp_set_protocol._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @usblp_set_protocol._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/class/usblp.c", i32 1355, i32 2}
!71 = !{ptr @usblp_set_protocol.__UNIQUE_ID_ddebug243, !70, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/class/usblp.c", i32 1369, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @usblp_cache_device_id_string.__UNIQUE_ID_ddebug244, !73, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/class/usblp.c", i32 1386, i32 2}
!78 = !{ptr @usblp_cache_device_id_string.__UNIQUE_ID_ddebug245, !77, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/class/usblp.c", i32 264, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @usblp_ctrl_msg.__UNIQUE_ID_ddebug232, !80, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/class/usblp.c", i32 1099, i32 11}
!85 = !{ptr @usblp_class, !86, !"usblp_class", i1 false, i1 false}
!86 = !{!"../drivers/usb/class/usblp.c", i32 1098, i32 32}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/class/usblp.c", i32 1095, i32 31}
!89 = !{ptr @usblp_fops, !90, !"usblp_fops", i1 false, i1 false}
!90 = !{!"../drivers/usb/class/usblp.c", i32 1081, i32 37}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/class/usblp.c", i32 861, i32 3}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @usblp_read._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @usblp_read._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/usb/class/usblp.c", i32 975, i32 3}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../drivers/usb/class/usblp.c", i32 985, i32 2}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/class/usblp.c", i32 1035, i32 3}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @usblp_submit_read.__UNIQUE_ID_ddebug241, !101, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/class/usblp.c", i32 316, i32 4}
!106 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @usblp_bulk_read._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @usblp_bulk_read._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!111 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../drivers/usb/class/usblp.c", i32 912, i32 3}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/usb/class/usblp.c", i32 933, i32 2}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/class/usblp.c", i32 371, i32 3}
!122 = !{ptr @usblp_check_status._rs, !121, !"_rs", i1 false, i1 false}
!123 = !{ptr @__func__.usblp_check_status, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @usblp_check_status._entry, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @usblp_check_status._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/class/usblp.c", i32 387, i32 3}
!129 = !{ptr @usblp_check_status._entry.50, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @usblp_check_status._entry_ptr.52, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/class/usblp.c", i32 361, i32 41}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/class/usblp.c", i32 361, i32 47}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/class/usblp.c", i32 361, i32 63}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/class/usblp.c", i32 361, i32 75}
!139 = !{ptr @usblp_messages, !140, !"usblp_messages", i1 false, i1 false}
!140 = !{!"../drivers/usb/class/usblp.c", i32 361, i32 20}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/class/usblp.c", i32 340, i32 4}
!143 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @usblp_bulk_write._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @usblp_bulk_write._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/class/usblp.c", i32 534, i32 2}
!148 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @usblp_ioctl.__UNIQUE_ID_ddebug233, !147, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/class/usblp.c", i32 621, i32 5}
!152 = !{ptr @usblp_ioctl._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @usblp_ioctl._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/class/usblp.c", i32 629, i32 4}
!156 = !{ptr @usblp_ioctl.__UNIQUE_ID_ddebug234, !155, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/class/usblp.c", i32 650, i32 4}
!159 = !{ptr @usblp_ioctl.__UNIQUE_ID_ddebug235, !158, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/class/usblp.c", i32 671, i32 4}
!162 = !{ptr @usblp_ioctl.__UNIQUE_ID_ddebug236, !161, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!163 = !{ptr @usblp_ioctl._rs, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../drivers/usb/class/usblp.c", i32 692, i32 5}
!165 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @usblp_ioctl._entry.65, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @usblp_ioctl._entry_ptr.67, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/class/usblp.c", i32 244, i32 8}
!170 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @usblp_mutex, !169, !"usblp_mutex", i1 false, i1 false}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/class/usblp.c", i32 460, i32 2}
!174 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @usblp_cleanup._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @usblp_cleanup._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/class/usblp.c", i32 1399, i32 3}
!179 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @usblp_disconnect._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @usblp_disconnect._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @usblp_ids, !183, !"usblp_ids", i1 false, i1 false}
!183 = !{!"../drivers/usb/class/usblp.c", i32 1444, i32 35}
!184 = !{ptr @usblp_groups, !185, !"usblp_groups", i1 false, i1 false}
!185 = !{!"../drivers/usb/class/usblp.c", i32 1123, i32 1}
!186 = !{ptr @usblp_group, !185, !"usblp_group", i1 false, i1 false}
!187 = !{ptr @usblp_attrs, !188, !"usblp_attrs", i1 false, i1 false}
!188 = !{!"../drivers/usb/class/usblp.c", i32 1119, i32 26}
!189 = !{ptr @.str.74, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/class/usblp.c", i32 1117, i32 8}
!191 = !{ptr @dev_attr_ieee1284_id, !190, !"dev_attr_ieee1284_id", i1 false, i1 false}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/class/usblp.c", i32 1114, i32 22}
!194 = !{ptr @__param_str_proto_bias, !8, !"__param_str_proto_bias", i1 false, i1 false}
!195 = !{ptr @proto_bias, !196, !"proto_bias", i1 false, i1 false}
!196 = !{!"../drivers/usb/class/usblp.c", i32 302, i32 12}
!197 = !{!"sp"}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{!"auto-init"}
!208 = !{i64 2148991806, i64 2148991811, i64 2148991824, i64 2148991868, i64 2148991902, i64 2148991923}
!209 = !{i64 2154043965, i64 2154044456, i64 2154044002, i64 2154044058, i64 2154044092, i64 2154044116, i64 2154044157, i64 2154044178, i64 2154044206, i64 2154044240}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{i64 2152154978, i64 2152155003}
!212 = !{i64 2152154297, i64 2152154322}
!213 = !{i64 4645791}
!214 = !{i64 4645988}
!215 = !{i64 2152131221}
!216 = !{i64 2154009871}
!217 = !{i64 2154014601}
!218 = !{i64 2153999437}
!219 = !{i64 2154004373}
