; ModuleID = '/llk/IR_all_yes/drivers/media/rc/imon.c_pt.bc'
source_filename = "../drivers/media/rc/imon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.imon_panel_key_table = type { i64, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.imon_context = type { ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.mutex, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, ptr, i8, [8 x i8], [8 x i8], i32, %struct.tx_t, i16, i16, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i8, i64, i8, i8, i8, [128 x i8], [64 x i8], [128 x i8], [64 x i8], [128 x i8], [64 x i8], %struct.timer_list, i32, i32, ptr }
%struct.tx_t = type { [35 x i8], %struct.completion, i8, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.imon_usb_dev_descr = type { i16, [0 x %struct.imon_panel_key_table] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.70 = type { ptr }

@__UNIQUE_ID_author237 = internal constant [46 x i8] c"imon.author=Jarod Wilson <jarod@wilsonet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [66 x i8] c"imon.description=Driver for SoundGraph iMON MultiMedia IR/Display\00", section ".modinfo", align 1
@__UNIQUE_ID_version239 = internal constant [19 x i8] c"imon.version=0.9.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"imon\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.9.4\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file240 = internal constant [32 x i8] c"imon.file=drivers/media/rc/imon\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [17 x i8] c"imon.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"imon.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype242 = internal constant [25 x i8] c"imon.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug243 = internal constant [58 x i8] c"imon.parm=debug:Debug messages: 0=no, 1=yes (default: no)\00", section ".modinfo", align 1
@__param_str_display_type = internal constant [18 x i8] c"imon.display_type\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@display_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_display_type = internal constant %struct.kernel_param { ptr @__param_str_display_type, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @display_type } }, section "__param", align 4
@__UNIQUE_ID_display_typetype244 = internal constant [31 x i8] c"imon.parmtype=display_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_display_type245 = internal constant [113 x i8] c"imon.parm=display_type:Type of attached display. 0=autodetect, 1=vfd, 2=lcd, 3=vga, 4=none (default: autodetect)\00", section ".modinfo", align 1
@__param_str_pad_stabilize = internal constant [19 x i8] c"imon.pad_stabilize\00", align 1
@pad_stabilize = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_pad_stabilize = internal constant %struct.kernel_param { ptr @__param_str_pad_stabilize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pad_stabilize } }, section "__param", align 4
@__UNIQUE_ID_pad_stabilizetype246 = internal constant [32 x i8] c"imon.parmtype=pad_stabilize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pad_stabilize247 = internal constant [124 x i8] c"imon.parm=pad_stabilize:Apply stabilization algorithm to iMON PAD presses in arrow key mode. 0=disable, 1=enable (default).\00", section ".modinfo", align 1
@__param_str_nomouse = internal constant [13 x i8] c"imon.nomouse\00", align 1
@nomouse = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nomouse = internal constant %struct.kernel_param { ptr @__param_str_nomouse, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @nomouse } }, section "__param", align 4
@__UNIQUE_ID_nomousetype248 = internal constant [27 x i8] c"imon.parmtype=nomouse:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomouse249 = internal constant [127 x i8] c"imon.parm=nomouse:Disable mouse input device mode when IR device is open. 0=don't disable, 1=disable. (default: don't disable)\00", section ".modinfo", align 1
@__param_str_pad_thresh = internal constant [16 x i8] c"imon.pad_thresh\00", align 1
@pad_thresh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pad_thresh = internal constant %struct.kernel_param { ptr @__param_str_pad_thresh, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pad_thresh } }, section "__param", align 4
@__UNIQUE_ID_pad_threshtype250 = internal constant [29 x i8] c"imon.parmtype=pad_thresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pad_thresh251 = internal constant [103 x i8] c"imon.parm=pad_thresh:Threshold at which a pad push registers as an arrow key in kbd mode (default: 28)\00", section ".modinfo", align 1
@__initcall__kmod_imon__272_2597_imon_driver_init6 = internal global ptr @imon_driver_init, section ".initcall6.init", align 4
@imon_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @imon_probe, ptr @imon_disconnect, ptr null, ptr @imon_suspend, ptr @imon_resume, ptr null, ptr null, ptr null, ptr @imon_usb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_imon_driver_exit = internal global ptr @imon_driver_exit, section ".exitcall.exit", align 4
@imon_usb_id_table = internal constant { [21 x %struct.usb_device_id], [104 x i8] } { [21 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5570, i16 -36, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 52, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_DH102 to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 53, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 54, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_OEM_VFD to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 55, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 57, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 58, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 59, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 60, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 61, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 62, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 63, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 64, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 67, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 68, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 69, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id { i16 3, i16 5570, i16 70, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @imon_default_table to i32) }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@imon_probe.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imon_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/media/rc/imon.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: found iMON device (%04x:%04x, intf%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@driver_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @driver_lock, i64 52), ptr getelementptr (i8, ptr @driver_lock, i64 52) }, ptr @driver_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@imon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 2433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013imon:%s: failed to initialize context!\0A\00", [54 x i8] zeroinitializer }, align 32
@imon_probe._entry_ptr = internal global ptr @imon_probe._entry, section ".printk_index", align 4
@imon_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013imon:%s: failed to attach to context!\0A\00", [55 x i8] zeroinitializer }, align 32
@imon_probe._entry_ptr.9 = internal global ptr @imon_probe._entry.7, section ".printk_index", align 4
@imon_rf_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @imon_rf_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@imon_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 2466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013imon:%s: Could not create RF sysfs entries(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@imon_probe._entry_ptr.12 = internal global ptr @imon_probe._entry.10, section ".printk_index", align 4
@imon_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 2477, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"iMON device (%04x:%04x, intf%d) on usb<%d:%d> initialized\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imon_probe._entry_ptr.17 = internal global ptr @imon_probe._entry.13, section ".printk_index", align 4
@imon_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 2487, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to register, err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@imon_probe._entry_ptr.21 = internal global ptr @imon_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"driver_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"driver_lock\00", [20 x i8] zeroinitializer }, align 32
@imon_init_intf0.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ictx->lock\00", [20 x i8] zeroinitializer }, align 32
@imon_init_intf0.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ictx->kc_lock\00", [17 x i8] zeroinitializer }, align 32
@imon_init_intf0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 2264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013imon:%s: usb_submit_urb failed for intf0 (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imon_init_intf0\00", [16 x i8] zeroinitializer }, align 32
@imon_init_intf0._entry_ptr = internal global ptr @imon_init_intf0._entry, section ".printk_index", align 4
@imon_init_intf0._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 2270, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: input device setup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@imon_init_intf0._entry_ptr.31 = internal global ptr @imon_init_intf0._entry.29, section ".printk_index", align 4
@imon_init_intf0._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.4, i32 2276, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: rc device setup failed\0A\00", [36 x i8] zeroinitializer }, align 32
@imon_init_intf0._entry_ptr.34 = internal global ptr @imon_init_intf0._entry.32, section ".printk_index", align 4
@imon_init_intf0._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.4, i32 2299, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to initialize intf0, err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@imon_init_intf0._entry_ptr.37 = internal global ptr @imon_init_intf0._entry.35, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@imon_find_endpoints.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 2, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imon_find_endpoints\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: found IR endpoint\0A\00", [41 x i8] zeroinitializer }, align 32
@imon_find_endpoints.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.4, ptr @.str.41, i8 2, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: found display endpoint\0A\00", [36 x i8] zeroinitializer }, align 32
@imon_find_endpoints.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.4, ptr @.str.42, i8 2, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: device uses control endpoint, not interface OUT endpoint\0A\00", [34 x i8] zeroinitializer }, align 32
@imon_find_endpoints.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.4, ptr @.str.43, i8 2, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: device has no display\0A\00", [37 x i8] zeroinitializer }, align 32
@imon_find_endpoints.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.4, ptr @.str.44, i8 2, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: iMON Touch device found\0A\00", [35 x i8] zeroinitializer }, align 32
@imon_find_endpoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str.4, i32 2195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013imon:%s: no valid input (IR) endpoint found\0A\00", [49 x i8] zeroinitializer }, align 32
@imon_find_endpoints._entry_ptr = internal global ptr @imon_find_endpoints._entry, section ".printk_index", align 4
@usb_rx_callback_intf0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1766, ptr @.str.48, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"imon %s: status(%d): ignored\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_rx_callback_intf0\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb_rx_callback_intf0._entry_ptr = internal global ptr @usb_rx_callback_intf0._entry, section ".printk_index", align 4
@imon_incoming_packet.prev_time = internal global { i64, [24 x i8] } zeroinitializer, align 32
@imon_incoming_packet.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 1, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imon_incoming_packet\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"toggling to %s mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mouse\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"keyboard\00", [23 x i8] zeroinitializer }, align 32
@imon_incoming_packet.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.4, ptr @.str.53, i8 1, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mouse mode disabled, passing key value\0A\00", [56 x i8] zeroinitializer }, align 32
@imon_incoming_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.4, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016intf%d decoded packet: %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@imon_incoming_packet._entry_ptr = internal global ptr @imon_incoming_packet._entry, section ".printk_index", align 4
@imon_incoming_packet._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.4, i32 1712, ptr @.str.48, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"imon %s: invalid incoming packet size (len = %d, intf%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@imon_incoming_packet._entry_ptr.57 = internal global ptr @imon_incoming_packet._entry.55, section ".printk_index", align 4
@imon_incoming_packet._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.49, ptr @.str.4, i32 1725, ptr @.str.48, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: remote associated refid=%02X\0A\00", [62 x i8] zeroinitializer }, align 32
@imon_incoming_packet._entry_ptr.60 = internal global ptr @imon_incoming_packet._entry.58, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@imon_mouse_event.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 1, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imon_mouse_event\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sending mouse data via input subsystem\0A\00", [56 x i8] zeroinitializer }, align 32
@stabilize.prev_time = internal global { i64, [24 x i8] } zeroinitializer, align 32
@stabilize.hit_time = internal global { i64, [24 x i8] } zeroinitializer, align 32
@stabilize.x = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stabilize.y = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stabilize.prev_result = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stabilize.hits = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"iMON Panel, Knob and Mouse(%04x:%04x)\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input1\00", [24 x i8] zeroinitializer }, align 32
@imon_init_idev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 2056, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"input dev register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imon_init_idev\00", [17 x i8] zeroinitializer }, align 32
@imon_init_idev._entry_ptr = internal global ptr @imon_init_idev._entry, section ".printk_index", align 4
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@imon_init_rdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 1962, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"remote control dev allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imon_init_rdev\00", [17 x i8] zeroinitializer }, align 32
@imon_init_rdev._entry_ptr = internal global ptr @imon_init_rdev._entry, section ".printk_index", align 4
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iMON Remote (%04x:%04x)\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@imon_init_rdev._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.4, i32 1988, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"panel buttons/knobs setup failed\0A\00", [62 x i8] zeroinitializer }, align 32
@imon_init_rdev._entry_ptr.74 = internal global ptr @imon_init_rdev._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-imon-mce\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-imon-pad\00", [20 x i8] zeroinitializer }, align 32
@imon_init_rdev._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.69, ptr @.str.4, i32 2004, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"remote input dev register failed\0A\00", [62 x i8] zeroinitializer }, align 32
@imon_init_rdev._entry_ptr.79 = internal global ptr @imon_init_rdev._entry.77, section ".printk_index", align 4
@__const.imon_ir_change_protocol.ir_proto_packet = private unnamed_addr constant [8 x i8] c"\00\00\00\00\00\00\00\86", align 1
@imon_ir_change_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 1123, ptr @.str.48, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Looks like you're trying to use an IR protocol this device does not support\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imon_ir_change_protocol\00", [40 x i8] zeroinitializer }, align 32
@imon_ir_change_protocol._entry_ptr = internal global ptr @imon_ir_change_protocol._entry, section ".printk_index", align 4
@imon_ir_change_protocol.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Configuring IR receiver for MCE protocol\0A\00", [54 x i8] zeroinitializer }, align 32
@imon_ir_change_protocol.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.83, i8 1, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Configuring IR receiver for iMON protocol\0A\00", [53 x i8] zeroinitializer }, align 32
@imon_ir_change_protocol.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.84, i8 1, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PAD stabilize functionality disabled\0A\00", [58 x i8] zeroinitializer }, align 32
@imon_ir_change_protocol._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.4, i32 1136, ptr @.str.48, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Unsupported IR protocol specified, overriding to iMON IR protocol\0A\00", [61 x i8] zeroinitializer }, align 32
@imon_ir_change_protocol._entry_ptr.87 = internal global ptr @imon_ir_change_protocol._entry.85, section ".printk_index", align 4
@imon_ir_change_protocol.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.84, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@send_packet._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.send_packet = private unnamed_addr constant [12 x i8] c"send_packet\00", align 1
@send_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @__func__.send_packet, ptr @.str.4, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013imon:%s: error submitting urb(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@send_packet._entry_ptr = internal global ptr @send_packet._entry, section ".printk_index", align 4
@send_packet._rs.90 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@send_packet._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @__func__.send_packet, ptr @.str.4, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013imon:%s: task interrupted\0A\00", [35 x i8] zeroinitializer }, align 32
@send_packet._entry_ptr.93 = internal global ptr @send_packet._entry.91, section ".printk_index", align 4
@send_packet._rs.94 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@send_packet._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @__func__.send_packet, ptr @.str.4, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013imon:%s: packet tx failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@send_packet._entry_ptr.97 = internal global ptr @send_packet._entry.95, section ".printk_index", align 4
@imon_get_ffdc_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 1833, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"0xffdc iMON Knob, iMON IR\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imon_get_ffdc_type\00", [45 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr = internal global ptr @imon_get_ffdc_type._entry, section ".printk_index", align 4
@imon_get_ffdc_type._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 1838, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0xffdc iMON 2.4G LT, iMON RF\00", [35 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.102 = internal global ptr @imon_get_ffdc_type._entry.100, section ".printk_index", align 4
@imon_get_ffdc_type._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.4, i32 1844, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0xffdc iMON VFD + knob, no IR\00", [34 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.105 = internal global ptr @imon_get_ffdc_type._entry.103, section ".printk_index", align 4
@imon_get_ffdc_type._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.4, i32 1851, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0xffdc iMON VFD, iMON IR\00", [39 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.108 = internal global ptr @imon_get_ffdc_type._entry.106, section ".printk_index", align 4
@imon_get_ffdc_type._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.99, ptr @.str.4, i32 1857, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0xffdc iMON VFD, MCE IR\00", [40 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.111 = internal global ptr @imon_get_ffdc_type._entry.109, section ".printk_index", align 4
@imon_get_ffdc_type._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.99, ptr @.str.4, i32 1863, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"0xffdc iMON VFD, iMON or MCE IR\00", [32 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.114 = internal global ptr @imon_get_ffdc_type._entry.112, section ".printk_index", align 4
@imon_get_ffdc_type._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.99, ptr @.str.4, i32 1869, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0xffdc iMON LCD, MCE IR\00", [40 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.117 = internal global ptr @imon_get_ffdc_type._entry.115, section ".printk_index", align 4
@imon_get_ffdc_type._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.99, ptr @.str.4, i32 1875, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0xffdc iMON Inside, iMON IR\00", [36 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.120 = internal global ptr @imon_get_ffdc_type._entry.118, section ".printk_index", align 4
@imon_get_ffdc_type._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.99, ptr @.str.4, i32 1880, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"0xffdc iMON UltraBay, LCD + IR\00", [33 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.123 = internal global ptr @imon_get_ffdc_type._entry.121, section ".printk_index", align 4
@imon_get_ffdc_type._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.99, ptr @.str.4, i32 1887, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unknown 0xffdc device, defaulting to VFD and iMON IR\00", [43 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.126 = internal global ptr @imon_get_ffdc_type._entry.124, section ".printk_index", align 4
@imon_get_ffdc_type._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.99, ptr @.str.4, i32 1897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c (id 0x%02x)\0A\00", [16 x i8] zeroinitializer }, align 32
@imon_get_ffdc_type._entry_ptr.129 = internal global ptr @imon_get_ffdc_type._entry.127, section ".printk_index", align 4
@ultrabay_table = internal constant { { i16, [19 x %struct.imon_panel_key_table] }, [72 x i8] } { { i16, [19 x %struct.imon_panel_key_table] } { i16 2, [19 x %struct.imon_panel_key_table] [%struct.imon_panel_key_table { i64 64424574958, i32 226 }, %struct.imon_panel_key_table { i64 16842734, i32 103 }, %struct.imon_panel_key_table { i64 131054, i32 108 }, %struct.imon_panel_key_table { i64 94489346030, i32 28 }, %struct.imon_panel_key_table { i64 133144051694, i32 392 }, %struct.imon_panel_key_table { i64 137439018990, i32 393 }, %struct.imon_panel_key_table { i64 141733986286, i32 212 }, %struct.imon_panel_key_table { i64 167503790062, i32 389 }, %struct.imon_panel_key_table { i64 150323920878, i32 377 }, %struct.imon_panel_key_table { i64 21474901998, i32 412 }, %struct.imon_panel_key_table { i64 30064836590, i32 168 }, %struct.imon_panel_key_table { i64 17179934702, i32 128 }, %struct.imon_panel_key_table { i64 8590000110, i32 164 }, %struct.imon_panel_key_table { i64 34359803886, i32 208 }, %struct.imon_panel_key_table { i64 25769869294, i32 407 }, %struct.imon_panel_key_table { i64 281474976776174, i32 115 }, %struct.imon_panel_key_table { i64 72057594037993454, i32 114 }, %struct.imon_panel_key_table { i64 4295032814, i32 113 }, %struct.imon_panel_key_table zeroinitializer] }, [72 x i8] zeroinitializer }, align 32
@imon_set_display_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 1947, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: overriding display type to %d via modparam\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imon_set_display_type\00", [42 x i8] zeroinitializer }, align 32
@imon_set_display_type._entry_ptr = internal global ptr @imon_set_display_type._entry, section ".printk_index", align 4
@imon_init_intf1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&ictx->ttimer)\00", [16 x i8] zeroinitializer }, align 32
@imon_init_intf1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.4, i32 2346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013imon:%s: usb_submit_urb failed for intf1 (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imon_init_intf1\00", [16 x i8] zeroinitializer }, align 32
@imon_init_intf1._entry_ptr = internal global ptr @imon_init_intf1._entry, section ".printk_index", align 4
@imon_init_intf1._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.4, i32 2366, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to initialize intf1, err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@imon_init_intf1._entry_ptr.138 = internal global ptr @imon_init_intf1._entry.136, section ".printk_index", align 4
@.str.139 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iMON USB Touchscreen (%04x:%04x)\00", [63 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input2\00", [24 x i8] zeroinitializer }, align 32
@imon_init_touch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.4, i32 2101, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"touchscreen input dev register failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imon_init_touch\00", [16 x i8] zeroinitializer }, align 32
@imon_init_touch._entry_ptr = internal global ptr @imon_init_touch._entry, section ".printk_index", align 4
@usb_rx_callback_intf1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.143, ptr @.str.4, i32 1807, ptr @.str.48, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_rx_callback_intf1\00", [42 x i8] zeroinitializer }, align 32
@usb_rx_callback_intf1._entry_ptr = internal global ptr @usb_rx_callback_intf1._entry, section ".printk_index", align 4
@imon_rf_sysfs_entries = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_associate_remote, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_associate_remote = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @associate_remote_show, ptr @associate_remote_store }, [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"associate_remote\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"associating\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"closed\0A\00", [24 x i8] zeroinitializer }, align 32
@associate_remote_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.4, i32 798, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"Visit https://www.lirc.org/html/imon-24g.html for instructions on how to associate your iMON 2.4G DT/LT remote\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"associate_remote_show\00", [42 x i8] zeroinitializer }, align 32
@associate_remote_show._entry_ptr = internal global ptr @associate_remote_show._entry, section ".printk_index", align 4
@send_associate_24g._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.4, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013imon:%s: no context for device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send_associate_24g\00", [45 x i8] zeroinitializer }, align 32
@send_associate_24g._entry_ptr = internal global ptr @send_associate_24g._entry, section ".printk_index", align 4
@send_associate_24g._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.4, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013imon:%s: no iMON device present\0A\00", [61 x i8] zeroinitializer }, align 32
@send_associate_24g._entry_ptr.153 = internal global ptr @send_associate_24g._entry.151, section ".printk_index", align 4
@imon_init_display.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.154, ptr @.str.4, ptr @.str.155, i8 2, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imon_init_display\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Registering iMON display with sysfs\0A\00", [59 x i8] zeroinitializer }, align 32
@imon_display_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @imon_display_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@imon_init_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.4, i32 2382, ptr @.str.20, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not create display sysfs entries(%d)\00", [53 x i8] zeroinitializer }, align 32
@imon_init_display._entry_ptr = internal global ptr @imon_init_display._entry, section ".printk_index", align 4
@imon_lcd_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.170, ptr null, ptr @lcd_fops, i32 144 }, [16 x i8] zeroinitializer }, align 32
@imon_vfd_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.170, ptr null, ptr @vfd_fops, i32 144 }, [16 x i8] zeroinitializer }, align 32
@imon_init_display._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.154, ptr @.str.4, i32 2390, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not get a minor number for display\0A\00", [54 x i8] zeroinitializer }, align 32
@imon_init_display._entry_ptr.159 = internal global ptr @imon_init_display._entry.157, section ".printk_index", align 4
@imon_display_sysfs_entries = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_imon_clock, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_imon_clock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @imon_clock_show, ptr @imon_clock_store }, [36 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imon_clock\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Not supported.\00", [17 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"To set the clock on your iMON display:\0A# date \22+%%y %%m %%d %%w %%H %%M %%S\22 > imon_clock\0A%s\00", [35 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0ANOTE: imon device must be closed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%u %u %u %u %u %u %u\00", [43 x i8] zeroinitializer }, align 32
@send_set_imon_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.166, ptr @.str.4, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_set_imon_clock\00", [44 x i8] zeroinitializer }, align 32
@send_set_imon_clock._entry_ptr = internal global ptr @send_set_imon_clock._entry, section ".printk_index", align 4
@send_set_imon_clock._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.4, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013imon:%s: send_packet failed for packet %d\0A\00", [51 x i8] zeroinitializer }, align 32
@send_set_imon_clock._entry_ptr.169 = internal global ptr @send_set_imon_clock._entry.167, section ".printk_index", align 4
@.str.170 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcd%d\00", [26 x i8] zeroinitializer }, align 32
@lcd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @lcd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @display_open, ptr null, ptr @display_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lcd_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.lcd_write = private unnamed_addr constant [10 x i8] c"lcd_write\00", align 1
@lcd_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @__func__.lcd_write, ptr @.str.4, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lcd_write._entry_ptr = internal global ptr @lcd_write._entry, section ".printk_index", align 4
@lcd_write._rs.171 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lcd_write._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @__func__.lcd_write, ptr @.str.4, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013imon:%s: no iMON display present\0A\00", [60 x i8] zeroinitializer }, align 32
@lcd_write._entry_ptr.174 = internal global ptr @lcd_write._entry.172, section ".printk_index", align 4
@lcd_write._rs.175 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lcd_write._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @__func__.lcd_write, ptr @.str.4, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013imon:%s: invalid payload size: %d (expected 8)\0A\00", [46 x i8] zeroinitializer }, align 32
@lcd_write._entry_ptr.178 = internal global ptr @lcd_write._entry.176, section ".printk_index", align 4
@lcd_write._rs.179 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lcd_write._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @__func__.lcd_write, ptr @.str.4, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013imon:%s: send packet failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@lcd_write._entry_ptr.182 = internal global ptr @lcd_write._entry.180, section ".printk_index", align 4
@lcd_write.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.lcd_write, ptr @.str.4, ptr @.str.183, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: write %d bytes to LCD\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@display_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.4, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013imon:%s: could not find interface for minor %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"display_open\00", [19 x i8] zeroinitializer }, align 32
@display_open._entry_ptr = internal global ptr @display_open._entry, section ".printk_index", align 4
@display_open._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.4, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013imon:%s: no context found for minor %d\0A\00", [54 x i8] zeroinitializer }, align 32
@display_open._entry_ptr.191 = internal global ptr @display_open._entry.189, section ".printk_index", align 4
@display_open._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.4, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013imon:%s: display not supported by device\0A\00", [52 x i8] zeroinitializer }, align 32
@display_open._entry_ptr.194 = internal global ptr @display_open._entry.192, section ".printk_index", align 4
@display_open._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.188, ptr @.str.4, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013imon:%s: display port is already open\0A\00", [55 x i8] zeroinitializer }, align 32
@display_open._entry_ptr.197 = internal global ptr @display_open._entry.195, section ".printk_index", align 4
@display_open.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.188, ptr @.str.4, ptr @.str.198, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"display port opened\0A\00", [43 x i8] zeroinitializer }, align 32
@display_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.199, ptr @.str.4, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"display_close\00", [18 x i8] zeroinitializer }, align 32
@display_close._entry_ptr = internal global ptr @display_close._entry, section ".printk_index", align 4
@display_close._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.199, ptr @.str.4, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@display_close._entry_ptr.201 = internal global ptr @display_close._entry.200, section ".printk_index", align 4
@display_close._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.199, ptr @.str.4, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013imon:%s: display is not open\0A\00", [32 x i8] zeroinitializer }, align 32
@display_close._entry_ptr.204 = internal global ptr @display_close._entry.202, section ".printk_index", align 4
@display_close.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.199, ptr @.str.4, ptr @.str.205, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.205 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"display port closed\0A\00", [43 x i8] zeroinitializer }, align 32
@vfd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @vfd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @display_open, ptr null, ptr @display_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vfd_write.vfd_packet6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\00\00\00\00\FF\FF", [25 x i8] zeroinitializer }, align 32
@vfd_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vfd_write = private unnamed_addr constant [10 x i8] c"vfd_write\00", align 1
@vfd_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @__func__.vfd_write, ptr @.str.4, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vfd_write._entry_ptr = internal global ptr @vfd_write._entry, section ".printk_index", align 4
@vfd_write._rs.206 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vfd_write._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @__func__.vfd_write, ptr @.str.4, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vfd_write._entry_ptr.208 = internal global ptr @vfd_write._entry.207, section ".printk_index", align 4
@vfd_write._rs.209 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vfd_write._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @__func__.vfd_write, ptr @.str.4, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013imon:%s: invalid payload size\0A\00", [63 x i8] zeroinitializer }, align 32
@vfd_write._entry_ptr.212 = internal global ptr @vfd_write._entry.210, section ".printk_index", align 4
@vfd_write._rs.213 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vfd_write._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @__func__.vfd_write, ptr @.str.4, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013imon:%s: send packet #%d failed\0A\00", [61 x i8] zeroinitializer }, align 32
@vfd_write._entry_ptr.216 = internal global ptr @vfd_write._entry.214, section ".printk_index", align 4
@vfd_write._rs.217 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vfd_write._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @__func__.vfd_write, ptr @.str.4, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vfd_write._entry_ptr.219 = internal global ptr @vfd_write._entry.218, section ".printk_index", align 4
@imon_disconnect.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.220, ptr @.str.4, ptr @.str.221, i8 2, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imon_disconnect\00", [16 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: iMON device (intf%d) disconnected\0A\00", [57 x i8] zeroinitializer }, align 32
@free_imon_context.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.222, ptr @.str.4, ptr @.str.223, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"free_imon_context\00", [46 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: iMON context freed\0A\00", [40 x i8] zeroinitializer }, align 32
@imon_default_table = internal constant { { i16, [41 x %struct.imon_panel_key_table] }, [168 x i8] } { { i16, [41 x %struct.imon_panel_key_table] } { i16 0, [41 x %struct.imon_panel_key_table] [%struct.imon_panel_key_table { i64 251723758, i32 226 }, %struct.imon_panel_key_table { i64 302055406, i32 103 }, %struct.imon_panel_key_table { i64 318832622, i32 108 }, %struct.imon_panel_key_table { i64 335609838, i32 105 }, %struct.imon_panel_key_table { i64 352387054, i32 106 }, %struct.imon_panel_key_table { i64 369164270, i32 28 }, %struct.imon_panel_key_table { i64 385941486, i32 1 }, %struct.imon_panel_key_table { i64 520159214, i32 392 }, %struct.imon_panel_key_table { i64 536936430, i32 393 }, %struct.imon_panel_key_table { i64 553713646, i32 212 }, %struct.imon_panel_key_table { i64 654376942, i32 389 }, %struct.imon_panel_key_table { i64 587268078, i32 377 }, %struct.imon_panel_key_table { i64 721485806, i32 174 }, %struct.imon_panel_key_table { i64 738263022, i32 353 }, %struct.imon_panel_key_table { i64 755040238, i32 139 }, %struct.imon_panel_key_table { i64 83951598, i32 412 }, %struct.imon_panel_key_table { i64 117506030, i32 168 }, %struct.imon_panel_key_table { i64 67174382, i32 128 }, %struct.imon_panel_key_table { i64 1006698478, i32 164 }, %struct.imon_panel_key_table { i64 134283246, i32 208 }, %struct.imon_panel_key_table { i64 100728814, i32 407 }, %struct.imon_panel_key_table { i64 4295032814, i32 106 }, %struct.imon_panel_key_table { i64 1099511693294, i32 105 }, %struct.imon_panel_key_table { i64 1023475694, i32 353 }, %struct.imon_panel_key_table { i64 281474976776174, i32 115 }, %struct.imon_panel_key_table { i64 72057594037993454, i32 114 }, %struct.imon_panel_key_table { i64 16842734, i32 113 }, %struct.imon_panel_key_table { i64 281479271677934, i32 115 }, %struct.imon_panel_key_table { i64 72057598332895214, i32 114 }, %struct.imon_panel_key_table { i64 8589934574, i32 113 }, %struct.imon_panel_key_table { i64 68719476718, i32 226 }, %struct.imon_panel_key_table { i64 81604378606, i32 103 }, %struct.imon_panel_key_table { i64 85899345902, i32 108 }, %struct.imon_panel_key_table { i64 90194313198, i32 105 }, %struct.imon_panel_key_table { i64 94489280494, i32 106 }, %struct.imon_panel_key_table { i64 98784247790, i32 28 }, %struct.imon_panel_key_table { i64 103079215086, i32 1 }, %struct.imon_panel_key_table { i64 282574488338414, i32 115 }, %struct.imon_panel_key_table { i64 72058693549555694, i32 114 }, %struct.imon_panel_key_table { i64 9895604649966, i32 113 }, %struct.imon_panel_key_table zeroinitializer] }, [168 x i8] zeroinitializer }, align 32
@imon_DH102 = internal constant { { i16, [14 x %struct.imon_panel_key_table] }, [56 x i8] } { { i16, [14 x %struct.imon_panel_key_table] } { i16 0, [14 x %struct.imon_panel_key_table] [%struct.imon_panel_key_table { i64 281474976776174, i32 115 }, %struct.imon_panel_key_table { i64 72057594037993454, i32 114 }, %struct.imon_panel_key_table { i64 4295032814, i32 113 }, %struct.imon_panel_key_table { i64 64424574958, i32 226 }, %struct.imon_panel_key_table { i64 77309476846, i32 103 }, %struct.imon_panel_key_table { i64 81604444142, i32 108 }, %struct.imon_panel_key_table { i64 85899411438, i32 105 }, %struct.imon_panel_key_table { i64 90194378734, i32 106 }, %struct.imon_panel_key_table { i64 94489346030, i32 28 }, %struct.imon_panel_key_table { i64 98784313326, i32 1 }, %struct.imon_panel_key_table { i64 184683659246, i32 174 }, %struct.imon_panel_key_table { i64 188978626542, i32 353 }, %struct.imon_panel_key_table { i64 193273593838, i32 139 }, %struct.imon_panel_key_table zeroinitializer] }, [56 x i8] zeroinitializer }, align 32
@imon_OEM_VFD = internal constant { { i16, [37 x %struct.imon_panel_key_table] }, [136 x i8] } { { i16, [37 x %struct.imon_panel_key_table] } { i16 1, [37 x %struct.imon_panel_key_table] [%struct.imon_panel_key_table { i64 251723758, i32 226 }, %struct.imon_panel_key_table { i64 302055406, i32 103 }, %struct.imon_panel_key_table { i64 318832622, i32 108 }, %struct.imon_panel_key_table { i64 335609838, i32 105 }, %struct.imon_panel_key_table { i64 352387054, i32 106 }, %struct.imon_panel_key_table { i64 369164270, i32 28 }, %struct.imon_panel_key_table { i64 385941486, i32 1 }, %struct.imon_panel_key_table { i64 520159214, i32 392 }, %struct.imon_panel_key_table { i64 721485806, i32 174 }, %struct.imon_panel_key_table { i64 738263022, i32 353 }, %struct.imon_panel_key_table { i64 755040238, i32 139 }, %struct.imon_panel_key_table { i64 83951598, i32 412 }, %struct.imon_panel_key_table { i64 117506030, i32 168 }, %struct.imon_panel_key_table { i64 67174382, i32 128 }, %struct.imon_panel_key_table { i64 1006698478, i32 164 }, %struct.imon_panel_key_table { i64 134283246, i32 208 }, %struct.imon_panel_key_table { i64 100728814, i32 407 }, %struct.imon_panel_key_table { i64 4295032814, i32 106 }, %struct.imon_panel_key_table { i64 1099511693294, i32 105 }, %struct.imon_panel_key_table { i64 1023475694, i32 353 }, %struct.imon_panel_key_table { i64 281474976776174, i32 115 }, %struct.imon_panel_key_table { i64 72057594037993454, i32 114 }, %struct.imon_panel_key_table { i64 16842734, i32 113 }, %struct.imon_panel_key_table { i64 281479271677934, i32 115 }, %struct.imon_panel_key_table { i64 72057598332895214, i32 114 }, %struct.imon_panel_key_table { i64 8589934574, i32 113 }, %struct.imon_panel_key_table { i64 68719476718, i32 226 }, %struct.imon_panel_key_table { i64 81604378606, i32 103 }, %struct.imon_panel_key_table { i64 85899345902, i32 108 }, %struct.imon_panel_key_table { i64 90194313198, i32 105 }, %struct.imon_panel_key_table { i64 94489280494, i32 106 }, %struct.imon_panel_key_table { i64 98784247790, i32 28 }, %struct.imon_panel_key_table { i64 103079215086, i32 1 }, %struct.imon_panel_key_table { i64 282574488338414, i32 115 }, %struct.imon_panel_key_table { i64 72058693549555694, i32 114 }, %struct.imon_panel_key_table { i64 9895604649966, i32 113 }, %struct.imon_panel_key_table zeroinitializer] }, [136 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 33, i64 36, i64 38, i64 48, i64 53, i64 70, i64 78, i64 126, i64 133, i64 152, i64 158, i64 159]
@__sancov_gen_cov_switch_values.227 = internal global [12 x i64] [i64 10, i64 16, i64 52, i64 53, i64 56, i64 57, i64 60, i64 65, i64 66, i64 67, i64 69, i64 65500]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.229 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967294]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 104]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 64, i64 524288, i64 8388608]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 8, i64 78, i64 94]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 32, i64 402, i64 403]
@__sancov_gen_cov_switch_values.234 = internal global [6 x i64] [i64 4, i64 16, i64 127, i64 128, i64 32512, i64 32768]
@__sancov_gen_cov_switch_values.235 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967294]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 448, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 452, i32 13 }
@___asan_gen_.249 = private unnamed_addr constant [13 x i8] c"display_type\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 457, i32 12 }
@___asan_gen_.252 = private unnamed_addr constant [14 x i8] c"pad_stabilize\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 461, i32 12 }
@___asan_gen_.255 = private unnamed_addr constant [8 x i8] c"nomouse\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 469, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant [11 x i8] c"pad_thresh\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 474, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant [12 x i8] c"imon_driver\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 433, i32 26 }
@___asan_gen_.264 = private unnamed_addr constant [18 x i8] c"imon_usb_id_table\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 357, i32 35 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2416, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [12 x i8] c"driver_lock\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2433, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2449, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant [19 x i8] c"imon_rf_attr_group\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 915, i32 37 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2465, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2475, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2487, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 443, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2227, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2228, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2264, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2270, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2276, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2299, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 87, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2142, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2148, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2170, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2181, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2190, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2195, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1765, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1581, i32 17 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1613, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1619, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1646, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1711, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1724, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1352, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant [10 x i8] c"prev_time\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1175, i32 17 }
@___asan_gen_.453 = private unnamed_addr constant [9 x i8] c"hit_time\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1176, i32 17 }
@___asan_gen_.456 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1177, i32 13 }
@___asan_gen_.459 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1177, i32 16 }
@___asan_gen_.462 = private unnamed_addr constant [12 x i8] c"prev_result\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1177, i32 19 }
@___asan_gen_.465 = private unnamed_addr constant [5 x i8] c"hits\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1177, i32 32 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2028, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2034, i32 27 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2056, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 912, i32 31 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1962, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1967, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1970, i32 27 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1988, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1998, i32 20 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2000, i32 20 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2004, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1123, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1126, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1130, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1132, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1136, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 632, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 640, i32 4 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 646, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1833, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1838, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1844, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1851, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1857, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1863, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1869, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1875, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1880, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1887, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1897, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant [15 x i8] c"ultrabay_table\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 321, i32 40 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1946, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2318, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2346, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2366, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2077, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2083, i32 28 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2101, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1806, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant [22 x i8] c"imon_rf_sysfs_entries\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 910, i32 26 }
@___asan_gen_.699 = private unnamed_addr constant [26 x i8] c"dev_attr_associate_remote\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 899, i32 8 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 794, i32 16 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 796, i32 16 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 798, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 678, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 683, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2376, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant [24 x i8] c"imon_display_attr_group\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 906, i32 37 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2381, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant [15 x i8] c"imon_lcd_class\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 198, i32 32 }
@___asan_gen_.753 = private unnamed_addr constant [15 x i8] c"imon_vfd_class\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 192, i32 32 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2390, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant [27 x i8] c"imon_display_sysfs_entries\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 901, i32 26 }
@___asan_gen_.765 = private unnamed_addr constant [20 x i8] c"dev_attr_imon_clock\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 898, i32 8 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 837, i32 34 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 840, i32 4 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 843, i32 4 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 843, i32 45 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 872, i32 18 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 711, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 772, i32 4 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 199, i32 11 }
@___asan_gen_.801 = private unnamed_addr constant [9 x i8] c"lcd_fops\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 170, i32 37 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1025, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1032, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1038, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1051, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 1054, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 230, i32 6 }
@___asan_gen_.844 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 214, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.847, i32 156, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 508, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 515, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 523, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 526, i32 3 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 531, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 553, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 560, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 563, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 567, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant [9 x i8] c"vfd_fops\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 161, i32 37 }
@___asan_gen_.900 = private unnamed_addr constant [12 x i8] c"vfd_packet6\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 938, i32 29 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 943, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 950, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 956, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 982, i32 4 }
@___asan_gen_.933 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.936 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 996, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 2550, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 488, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant [19 x i8] c"imon_default_table\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 205, i32 40 }
@___asan_gen_.954 = private unnamed_addr constant [11 x i8] c"imon_DH102\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 300, i32 40 }
@___asan_gen_.957 = private unnamed_addr constant [13 x i8] c"imon_OEM_VFD\00", align 1
@___asan_gen_.958 = private constant [27 x i8] c"../drivers/media/rc/imon.c\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.958, i32 254, i32 40 }
@llvm.compiler.used = appending global [327 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_debug243, ptr @__UNIQUE_ID_debugtype242, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_display_type245, ptr @__UNIQUE_ID_display_typetype244, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_nomouse249, ptr @__UNIQUE_ID_nomousetype248, ptr @__UNIQUE_ID_pad_stabilize247, ptr @__UNIQUE_ID_pad_stabilizetype246, ptr @__UNIQUE_ID_pad_thresh251, ptr @__UNIQUE_ID_pad_threshtype250, ptr @__UNIQUE_ID_version239, ptr @__exitcall_imon_driver_exit, ptr @__initcall__kmod_imon__272_2597_imon_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_display_type, ptr @__param_nomouse, ptr @__param_pad_stabilize, ptr @__param_pad_thresh, ptr @associate_remote_show._entry, ptr @associate_remote_show._entry_ptr, ptr @display_close._entry, ptr @display_close._entry.200, ptr @display_close._entry.202, ptr @display_close._entry_ptr, ptr @display_close._entry_ptr.201, ptr @display_close._entry_ptr.204, ptr @display_open._entry, ptr @display_open._entry.189, ptr @display_open._entry.192, ptr @display_open._entry.195, ptr @display_open._entry_ptr, ptr @display_open._entry_ptr.191, ptr @display_open._entry_ptr.194, ptr @display_open._entry_ptr.197, ptr @imon_driver_exit, ptr @imon_find_endpoints._entry, ptr @imon_find_endpoints._entry_ptr, ptr @imon_get_ffdc_type._entry, ptr @imon_get_ffdc_type._entry.100, ptr @imon_get_ffdc_type._entry.103, ptr @imon_get_ffdc_type._entry.106, ptr @imon_get_ffdc_type._entry.109, ptr @imon_get_ffdc_type._entry.112, ptr @imon_get_ffdc_type._entry.115, ptr @imon_get_ffdc_type._entry.118, ptr @imon_get_ffdc_type._entry.121, ptr @imon_get_ffdc_type._entry.124, ptr @imon_get_ffdc_type._entry.127, ptr @imon_get_ffdc_type._entry_ptr, ptr @imon_get_ffdc_type._entry_ptr.102, ptr @imon_get_ffdc_type._entry_ptr.105, ptr @imon_get_ffdc_type._entry_ptr.108, ptr @imon_get_ffdc_type._entry_ptr.111, ptr @imon_get_ffdc_type._entry_ptr.114, ptr @imon_get_ffdc_type._entry_ptr.117, ptr @imon_get_ffdc_type._entry_ptr.120, ptr @imon_get_ffdc_type._entry_ptr.123, ptr @imon_get_ffdc_type._entry_ptr.126, ptr @imon_get_ffdc_type._entry_ptr.129, ptr @imon_incoming_packet._entry, ptr @imon_incoming_packet._entry.55, ptr @imon_incoming_packet._entry.58, ptr @imon_incoming_packet._entry_ptr, ptr @imon_incoming_packet._entry_ptr.57, ptr @imon_incoming_packet._entry_ptr.60, ptr @imon_init_display._entry, ptr @imon_init_display._entry.157, ptr @imon_init_display._entry_ptr, ptr @imon_init_display._entry_ptr.159, ptr @imon_init_idev._entry, ptr @imon_init_idev._entry_ptr, ptr @imon_init_intf0._entry, ptr @imon_init_intf0._entry.29, ptr @imon_init_intf0._entry.32, ptr @imon_init_intf0._entry.35, ptr @imon_init_intf0._entry_ptr, ptr @imon_init_intf0._entry_ptr.31, ptr @imon_init_intf0._entry_ptr.34, ptr @imon_init_intf0._entry_ptr.37, ptr @imon_init_intf1._entry, ptr @imon_init_intf1._entry.136, ptr @imon_init_intf1._entry_ptr, ptr @imon_init_intf1._entry_ptr.138, ptr @imon_init_rdev._entry, ptr @imon_init_rdev._entry.72, ptr @imon_init_rdev._entry.77, ptr @imon_init_rdev._entry_ptr, ptr @imon_init_rdev._entry_ptr.74, ptr @imon_init_rdev._entry_ptr.79, ptr @imon_init_touch._entry, ptr @imon_init_touch._entry_ptr, ptr @imon_ir_change_protocol._entry, ptr @imon_ir_change_protocol._entry.85, ptr @imon_ir_change_protocol._entry_ptr, ptr @imon_ir_change_protocol._entry_ptr.87, ptr @imon_probe._entry, ptr @imon_probe._entry.10, ptr @imon_probe._entry.13, ptr @imon_probe._entry.18, ptr @imon_probe._entry.7, ptr @imon_probe._entry_ptr, ptr @imon_probe._entry_ptr.12, ptr @imon_probe._entry_ptr.17, ptr @imon_probe._entry_ptr.21, ptr @imon_probe._entry_ptr.9, ptr @imon_set_display_type._entry, ptr @imon_set_display_type._entry_ptr, ptr @lcd_write._entry, ptr @lcd_write._entry.172, ptr @lcd_write._entry.176, ptr @lcd_write._entry.180, ptr @lcd_write._entry_ptr, ptr @lcd_write._entry_ptr.174, ptr @lcd_write._entry_ptr.178, ptr @lcd_write._entry_ptr.182, ptr @send_associate_24g._entry, ptr @send_associate_24g._entry.151, ptr @send_associate_24g._entry_ptr, ptr @send_associate_24g._entry_ptr.153, ptr @send_packet._entry, ptr @send_packet._entry.91, ptr @send_packet._entry.95, ptr @send_packet._entry_ptr, ptr @send_packet._entry_ptr.93, ptr @send_packet._entry_ptr.97, ptr @send_set_imon_clock._entry, ptr @send_set_imon_clock._entry.167, ptr @send_set_imon_clock._entry_ptr, ptr @send_set_imon_clock._entry_ptr.169, ptr @usb_rx_callback_intf0._entry, ptr @usb_rx_callback_intf0._entry_ptr, ptr @usb_rx_callback_intf1._entry, ptr @usb_rx_callback_intf1._entry_ptr, ptr @vfd_write._entry, ptr @vfd_write._entry.207, ptr @vfd_write._entry.210, ptr @vfd_write._entry.214, ptr @vfd_write._entry.218, ptr @vfd_write._entry_ptr, ptr @vfd_write._entry_ptr.208, ptr @vfd_write._entry_ptr.212, ptr @vfd_write._entry_ptr.216, ptr @vfd_write._entry_ptr.219, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @display_type, ptr @pad_stabilize, ptr @nomouse, ptr @pad_thresh, ptr @imon_driver, ptr @imon_usb_id_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @driver_lock, ptr @.str.6, ptr @.str.8, ptr @imon_rf_attr_group, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @imon_init_intf0.__key, ptr @.str.24, ptr @imon_init_intf0.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @init_completion.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @imon_incoming_packet.prev_time, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @stabilize.prev_time, ptr @stabilize.hit_time, ptr @stabilize.x, ptr @stabilize.y, ptr @stabilize.prev_result, ptr @stabilize.hits, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @send_packet._rs, ptr @.str.88, ptr @.str.89, ptr @send_packet._rs.90, ptr @.str.92, ptr @send_packet._rs.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @ultrabay_table, ptr @.str.131, ptr @.str.132, ptr @imon_init_intf1.__key, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @imon_rf_sysfs_entries, ptr @dev_attr_associate_remote, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @imon_display_attr_group, ptr @.str.156, ptr @imon_lcd_class, ptr @imon_vfd_class, ptr @.str.158, ptr @imon_display_sysfs_entries, ptr @dev_attr_imon_clock, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @lcd_fops, ptr @lcd_write._rs, ptr @lcd_write._rs.171, ptr @.str.173, ptr @lcd_write._rs.175, ptr @.str.177, ptr @lcd_write._rs.179, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.203, ptr @.str.205, ptr @vfd_fops, ptr @vfd_write.vfd_packet6, ptr @vfd_write._rs, ptr @vfd_write._rs.206, ptr @vfd_write._rs.209, ptr @.str.211, ptr @vfd_write._rs.213, ptr @.str.215, ptr @vfd_write._rs.217, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @imon_default_table, ptr @imon_DH102, ptr @imon_OEM_VFD], section "llvm.metadata"
@0 = internal global [241 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pad_stabilize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomouse to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pad_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_usb_id_table to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_rf_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf0.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf0.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf0._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf0._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf0._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_find_endpoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_rx_callback_intf0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_incoming_packet.prev_time to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_incoming_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_incoming_packet._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_incoming_packet._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stabilize.prev_time to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stabilize.hit_time to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stabilize.x to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stabilize.y to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stabilize.prev_result to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stabilize.hits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_idev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_rdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_rdev._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_rdev._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_ir_change_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_ir_change_protocol._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_packet._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_packet._rs.90 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_packet._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_packet._rs.94 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_packet._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_get_ffdc_type._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ultrabay_table to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_set_display_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_intf1._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_touch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_rx_callback_intf1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_rf_sysfs_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_associate_remote to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @associate_remote_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_associate_24g._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_associate_24g._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_display_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_lcd_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_vfd_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_init_display._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_display_sysfs_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_imon_clock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_set_imon_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_set_imon_clock._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_write._rs.171 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_write._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_write._rs.175 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_write._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_write._rs.179 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_write._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_open._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_open._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_open._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_close._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_close._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write.vfd_packet6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._rs.206 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._rs.209 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._rs.213 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._rs.217 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfd_write._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_default_table to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_DH102 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_OEM_VFD to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @imon_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imon_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @imon_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_probe(ptr noundef %interface, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call2 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #11
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %5 to i32
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 16, i32 7
  %6 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idVendor, align 8
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 16, i32 8
  %9 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idProduct, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_probe.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_probe, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !518

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = zext i16 %8 to i32
  %conv8 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_probe.__UNIQUE_ID_ddebug270, ptr noundef %dev1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @driver_lock, i32 noundef 0) #11
  %call9 = tail call ptr @usb_ifnum_to_if(ptr noundef %call2, i32 noundef 0) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end.fail_crit_edge, label %if.end12

do.end.fail_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end12:                                         ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call9, i32 0, i32 7, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1040) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then15.do.end21_crit_edge, label %if.end.i

if.then15.do.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.end.i:                                         ; preds = %if.then15
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.rx_urb_alloc_failed.i_crit_edge, label %if.end5.i

if.end.i.rx_urb_alloc_failed.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rx_urb_alloc_failed.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.tx_urb_alloc_failed.i_crit_edge, label %do.body.i

if.end5.i.tx_urb_alloc_failed.i_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_urb_alloc_failed.i

do.body.i:                                        ; preds = %if.end5.i
  %lock.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @imon_init_intf0.__key) #11
  %kc_lock.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %kc_lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @imon_init_intf0.__key.25, i16 noundef signext 3) #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %call7.i.i.i, align 8
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -128
  %call17.i = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i.i) #11
  %usbdev_intf0.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %usbdev_intf0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17.i, ptr %usbdev_intf0.i, align 4
  %rx_urb_intf0.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %rx_urb_intf0.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2.i, ptr %rx_urb_intf0.i, align 8
  %tx_urb18.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tx_urb18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6.i, ptr %tx_urb18.i, align 8
  %rf_device.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %rf_device.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %rf_device.i, align 2
  %finished.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %22 = ptrtoint ptr %finished.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %finished.i, align 8
  %wait.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 21, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #11
  %23 = ptrtoint ptr %usbdev_intf0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usbdev_intf0.i, align 4
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 16, i32 7
  %25 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idVendor.i, align 8
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #11
  %vendor.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 22
  %28 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vendor.i, align 8
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 16, i32 8
  %29 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idProduct.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #11
  %product.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 23
  %32 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %product.i, align 2
  %driver_info.i = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %33 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %driver_info.i, align 4
  %35 = inttoptr i32 %34 to ptr
  %dev_descr.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 45
  %36 = ptrtoint ptr %dev_descr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %dev_descr.i, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %35, align 8
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool23.not.i = icmp eq i16 %39, 0
  %cond.i = select i1 %tobool23.not.i, i32 5, i32 20
  %send_packet_delay.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 20
  %40 = ptrtoint ptr %send_packet_delay.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond.i, ptr %send_packet_delay.i, align 8
  %41 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur_altsetting, align 4
  %call24.i = tail call fastcc zeroext i1 @imon_find_endpoints(ptr noundef nonnull %call7.i.i.i, ptr noundef %42) #11
  br i1 %call24.i, label %if.end26.i, label %do.body.i.find_endpoint_failed.i_crit_edge

do.body.i.find_endpoint_failed.i_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_endpoint_failed.i

if.end26.i:                                       ; preds = %do.body.i
  %43 = ptrtoint ptr %rx_urb_intf0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_urb_intf0.i, align 8
  %45 = ptrtoint ptr %usbdev_intf0.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usbdev_intf0.i, align 4
  %rx_endpoint_intf0.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 11
  %47 = ptrtoint ptr %rx_endpoint_intf0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_endpoint_intf0.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bEndpointAddress.i, align 1
  %conv30.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %46, align 8
  %shl.i.i = shl i32 %52, 8
  %shl1.i.i = shl nuw nsw i32 %conv30.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or32.i = or i32 %or.i.i, 1073741952
  %usb_rx_buf.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 18
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %48, i32 0, i32 5
  %53 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bInterval.i, align 1
  %conv34.i = zext i8 %54 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 8
  %55 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %46, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 10
  %56 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or32.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 14
  %57 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %usb_rx_buf.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 19
  %58 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 28
  %59 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @usb_rx_callback_intf0, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 27
  %60 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 4
  %61 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp.i.i = icmp eq i32 %62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %cmp6.i.i = icmp ugt i32 %62, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end26.i.usb_fill_int_urb.exit.i_crit_edge

if.end26.i.usb_fill_int_urb.exit.i_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit.i

if.then.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = tail call i32 @llvm.smax.i32(i32 %conv34.i, i32 1) #11
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 16) #11
  %sub.i.i = add nsw i32 %64, -1
  %shl.i123.i = shl nuw nsw i32 1, %sub.i.i
  br label %usb_fill_int_urb.exit.i

usb_fill_int_urb.exit.i:                          ; preds = %if.then.i.i, %if.end26.i.usb_fill_int_urb.exit.i_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i123.i, %if.then.i.i ], [ %conv34.i, %if.end26.i.usb_fill_int_urb.exit.i_crit_edge ]
  %65 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 25
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %interval.sink.i.i, ptr %65, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 23
  %67 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %start_frame.i.i, align 4
  %68 = ptrtoint ptr %rx_urb_intf0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_urb_intf0.i, align 8
  %call36.i = tail call i32 @usb_submit_urb(ptr noundef %69, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call36.i) #15
  br label %find_endpoint_failed.i

if.end43.i:                                       ; preds = %usb_fill_int_urb.exit.i
  %70 = ptrtoint ptr %dev_descr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_descr.i, align 4
  %key_table1.i.i = getelementptr inbounds %struct.imon_usb_dev_descr, ptr %71, i32 0, i32 1
  %call.i.i = tail call ptr @input_allocate_device() #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end43.i.imon_init_idev.exit.thread.i_crit_edge, label %if.end.i.i

if.end43.i.imon_init_idev.exit.thread.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_init_idev.exit.thread.i

if.end.i.i:                                       ; preds = %if.end43.i
  %name_idev.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 38
  %72 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vendor.i, align 8
  %conv.i.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %product.i, align 2
  %conv3.i.i = zext i16 %75 to i32
  %call4.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name_idev.i.i, i32 noundef 128, ptr noundef nonnull @.str.63, i32 noundef %conv.i.i, i32 noundef %conv3.i.i) #11
  %76 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %name_idev.i.i, ptr %call.i.i, align 8
  %77 = ptrtoint ptr %usbdev_intf0.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usbdev_intf0.i, align 4
  %phys_idev.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 39
  %bus.i.i.i = getelementptr inbounds %struct.usb_device, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i.i.i, align 8
  %bus_name.i.i.i = getelementptr inbounds %struct.usb_bus, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %bus_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus_name.i.i.i, align 4
  %devpath.i.i.i = getelementptr inbounds %struct.usb_device, ptr %78, i32 0, i32 1
  %call.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys_idev.i.i, i32 noundef 64, ptr noundef nonnull @.str.67, ptr noundef %82, ptr noundef %devpath.i.i.i) #11
  %call11.i.i = tail call i32 @strlcat(ptr noundef %phys_idev.i.i, ptr noundef nonnull @.str.64, i32 noundef 64) #11
  %phys.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %phys_idev.i.i, ptr %phys.i.i, align 4
  %evbit.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %evbit.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1048582, ptr %evbit.i.i, align 8
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 6
  %arrayidx14.i.i = getelementptr %struct.input_dev, ptr %call.i.i, i32 0, i32 6, i32 8
  %85 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196608, ptr %arrayidx14.i.i, align 4
  %relbit.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 7
  %86 = ptrtoint ptr %relbit.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 259, ptr %relbit.i.i, align 4
  %87 = ptrtoint ptr %key_table1.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %key_table1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %cmp.not59.i.i = icmp eq i64 %88, 0
  br i1 %cmp.not59.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.060.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %keycode.i.i = getelementptr %struct.imon_panel_key_table, ptr %key_table1.i.i, i32 %i.060.i.i, i32 1
  %89 = ptrtoint ptr %keycode.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %keycode.i.i, align 8
  %rem.i.i.i = and i32 %90, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %90, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i
  %91 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %92
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %inc.i.i = add i32 %i.060.i.i, 1
  %arrayidx16.i.i = getelementptr %struct.imon_panel_key_table, ptr %key_table1.i.i, i32 %inc.i.i
  %93 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx16.i.i, align 8
  %cmp.not.i.i = icmp eq i64 %94, 0
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %95 = ptrtoint ptr %usbdev_intf0.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usbdev_intf0.i, align 4
  %id.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 3, ptr %id.i.i, align 2
  %idVendor.i.i.i = getelementptr inbounds %struct.usb_device, ptr %96, i32 0, i32 16, i32 7
  %98 = ptrtoint ptr %idVendor.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %idVendor.i.i.i, align 8
  %100 = tail call i16 @llvm.bswap.i16(i16 %99) #11
  %vendor.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %vendor.i.i.i, align 2
  %idProduct.i.i.i = getelementptr inbounds %struct.usb_device, ptr %96, i32 0, i32 16, i32 8
  %102 = ptrtoint ptr %idProduct.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %idProduct.i.i.i, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #11
  %product.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 2
  %105 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %product.i.i.i, align 2
  %bcdDevice.i.i.i = getelementptr inbounds %struct.usb_device, ptr %96, i32 0, i32 16, i32 9
  %106 = ptrtoint ptr %bcdDevice.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %bcdDevice.i.i.i, align 4
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #11
  %version.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 3
  %109 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %version.i.i.i, align 2
  %110 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call7.i.i.i, align 8
  %parent.i124.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 40, i32 1
  %112 = ptrtoint ptr %parent.i124.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %parent.i124.i, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 40, i32 8
  %113 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i.i, align 4
  %call23.i.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp24.i.i = icmp slt i32 %call23.i.i, 0
  br i1 %cmp24.i.i, label %do.end.i.i, label %imon_init_idev.exit.i

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.65) #15
  br label %imon_init_idev.exit.thread.i

imon_init_idev.exit.thread.i:                     ; preds = %do.end.i.i, %if.end43.i.imon_init_idev.exit.thread.i_crit_edge
  tail call void @input_free_device(ptr noundef %call.i.i) #11
  %idev147.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 25
  %116 = ptrtoint ptr %idev147.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %idev147.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #15
  br label %idev_setup_failed.i

imon_init_idev.exit.i:                            ; preds = %for.end.i.i
  %idev.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 25
  %117 = ptrtoint ptr %idev.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i.i, ptr %idev.i, align 8
  %call.i125.i = tail call ptr @rc_allocate_device(i32 noundef 0) #11
  %tobool.not.i126.i = icmp eq ptr %call.i125.i, null
  br i1 %tobool.not.i126.i, label %imon_init_idev.exit.i.do.end58.i_crit_edge, label %if.end.i142.i

imon_init_idev.exit.i.do.end58.i_crit_edge:       ; preds = %imon_init_idev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58.i

if.end.i142.i:                                    ; preds = %imon_init_idev.exit.i
  %name_rdev.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 36
  %118 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %vendor.i, align 8
  %conv.i128.i = zext i16 %119 to i32
  %120 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %product.i, align 2
  %conv1.i.i = zext i16 %121 to i32
  %call2.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name_rdev.i.i, i32 noundef 128, ptr noundef nonnull @.str.70, i32 noundef %conv.i128.i, i32 noundef %conv1.i.i) #11
  %122 = ptrtoint ptr %usbdev_intf0.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usbdev_intf0.i, align 4
  %phys_rdev.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 37
  %bus.i.i131.i = getelementptr inbounds %struct.usb_device, ptr %123, i32 0, i32 12
  %124 = ptrtoint ptr %bus.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bus.i.i131.i, align 8
  %bus_name.i.i132.i = getelementptr inbounds %struct.usb_bus, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %bus_name.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bus_name.i.i132.i, align 4
  %devpath.i.i133.i = getelementptr inbounds %struct.usb_device, ptr %123, i32 0, i32 1
  %call.i.i134.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys_rdev.i.i, i32 noundef 64, ptr noundef nonnull @.str.67, ptr noundef %127, ptr noundef %devpath.i.i133.i) #11
  %call7.i.i = tail call i32 @strlcat(ptr noundef %phys_rdev.i.i, ptr noundef nonnull @.str.71, i32 noundef 64) #11
  %device_name.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 3
  %128 = ptrtoint ptr %device_name.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %name_rdev.i.i, ptr %device_name.i.i, align 8
  %input_phys.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 4
  %129 = ptrtoint ptr %input_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %phys_rdev.i.i, ptr %input_phys.i.i, align 4
  %130 = ptrtoint ptr %usbdev_intf0.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %usbdev_intf0.i, align 4
  %input_id.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 5
  %132 = ptrtoint ptr %input_id.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 3, ptr %input_id.i.i, align 2
  %idVendor.i.i135.i = getelementptr inbounds %struct.usb_device, ptr %131, i32 0, i32 16, i32 7
  %133 = ptrtoint ptr %idVendor.i.i135.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %idVendor.i.i135.i, align 8
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #11
  %vendor.i.i136.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 5, i32 1
  %136 = ptrtoint ptr %vendor.i.i136.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %vendor.i.i136.i, align 2
  %idProduct.i.i137.i = getelementptr inbounds %struct.usb_device, ptr %131, i32 0, i32 16, i32 8
  %137 = ptrtoint ptr %idProduct.i.i137.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %idProduct.i.i137.i, align 2
  %139 = tail call i16 @llvm.bswap.i16(i16 %138) #11
  %product.i.i138.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 5, i32 2
  %140 = ptrtoint ptr %product.i.i138.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %product.i.i138.i, align 2
  %bcdDevice.i.i139.i = getelementptr inbounds %struct.usb_device, ptr %131, i32 0, i32 16, i32 9
  %141 = ptrtoint ptr %bcdDevice.i.i139.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %bcdDevice.i.i139.i, align 4
  %143 = tail call i16 @llvm.bswap.i16(i16 %142) #11
  %version.i.i140.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 5, i32 3
  %144 = ptrtoint ptr %version.i.i140.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %version.i.i140.i, align 2
  %145 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %call7.i.i.i, align 8
  %parent.i141.i = getelementptr inbounds %struct.device, ptr %call.i125.i, i32 0, i32 1
  %147 = ptrtoint ptr %parent.i141.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %parent.i141.i, align 8
  %priv.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 24
  %148 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call7.i.i.i, ptr %priv.i.i, align 4
  %allowed_protocols.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 16
  %149 = ptrtoint ptr %allowed_protocols.i.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 8912896, ptr %allowed_protocols.i.i, align 8
  %change_protocol.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 47
  %150 = ptrtoint ptr %change_protocol.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @imon_ir_change_protocol, ptr %change_protocol.i.i, align 4
  %driver_name.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 6
  %151 = ptrtoint ptr %driver_name.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @.str.1, ptr %driver_name.i.i, align 8
  %usb_tx_buf.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 19
  %152 = ptrtoint ptr %usb_tx_buf.i.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 4611686018427388040, ptr %usb_tx_buf.i.i, align 1
  %call16.i.i = tail call fastcc i32 @send_packet(ptr noundef %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end.i142.i.if.end23.i.i_crit_edge, label %do.end21.i.i

if.end.i142.i.if.end23.i.i_crit_edge:             ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

do.end21.i.i:                                     ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %154, ptr noundef nonnull @.str.73) #15
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %do.end21.i.i, %if.end.i142.i.if.end23.i.i_crit_edge
  %155 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %product.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -36, i16 %156)
  %cmp.i143.i = icmp eq i16 %156, -36
  br i1 %cmp.i143.i, label %if.then27.i.i, label %if.end23.i.i.if.end29.i.i_crit_edge

if.end23.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i.i

if.then27.i.i:                                    ; preds = %if.end23.i.i
  %arrayidx.i.i.i = getelementptr %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 18, i32 6
  %157 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i.i.i, align 1
  %159 = zext i8 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values)
  switch i8 %158, label %do.end45.i.i.i [
    i8 33, label %do.end.i.i.i
    i8 78, label %do.end4.i.i.i
    i8 53, label %do.end10.i.i.i
    i8 36, label %if.then27.i.i.do.end15.i.i.i_crit_edge
    i8 48, label %if.then27.i.i.do.end15.i.i.i_crit_edge178
    i8 -123, label %if.then27.i.i.do.end15.i.i.i_crit_edge179
    i8 70, label %if.then27.i.i.do.end20.i.i.i_crit_edge
    i8 -98, label %if.then27.i.i.do.end20.i.i.i_crit_edge180
    i8 126, label %do.end25.i.i.i
    i8 -97, label %do.end30.i.i.i
    i8 38, label %do.end35.i.i.i
    i8 -104, label %do.end41.i.i.i
  ]

if.then27.i.i.do.end20.i.i.i_crit_edge180:        ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i.i.i

if.then27.i.i.do.end20.i.i.i_crit_edge:           ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i.i.i

if.then27.i.i.do.end15.i.i.i_crit_edge179:        ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15.i.i.i

if.then27.i.i.do.end15.i.i.i_crit_edge178:        ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15.i.i.i

if.then27.i.i.do.end15.i.i.i_crit_edge:           ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15.i.i.i

do.end.i.i.i:                                     ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %161, ptr noundef nonnull @.str.98) #15
  %display_supported.i.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 3
  %162 = ptrtoint ptr %display_supported.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %display_supported.i.i.i, align 4
  br label %imon_get_ffdc_type.exit.i.i

do.end4.i.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %163 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %164, ptr noundef nonnull @.str.101) #15
  %display_supported6.i.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 3
  %165 = ptrtoint ptr %display_supported6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %display_supported6.i.i.i, align 4
  %166 = ptrtoint ptr %rf_device.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %rf_device.i, align 2
  br label %imon_get_ffdc_type.exit.i.i

do.end10.i.i.i:                                   ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %168, ptr noundef nonnull @.str.104) #15
  br label %imon_get_ffdc_type.exit.i.i

do.end15.i.i.i:                                   ; preds = %if.then27.i.i.do.end15.i.i.i_crit_edge, %if.then27.i.i.do.end15.i.i.i_crit_edge178, %if.then27.i.i.do.end15.i.i.i_crit_edge179
  %169 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %170, ptr noundef nonnull @.str.107) #15
  br label %imon_get_ffdc_type.exit.i.i

do.end20.i.i.i:                                   ; preds = %if.then27.i.i.do.end20.i.i.i_crit_edge, %if.then27.i.i.do.end20.i.i.i_crit_edge180
  %171 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %172, ptr noundef nonnull @.str.110) #15
  br label %imon_get_ffdc_type.exit.i.i

do.end25.i.i.i:                                   ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %174, ptr noundef nonnull @.str.113) #15
  br label %imon_get_ffdc_type.exit.i.i

do.end30.i.i.i:                                   ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %176, ptr noundef nonnull @.str.116) #15
  br label %imon_get_ffdc_type.exit.i.i

do.end35.i.i.i:                                   ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %177 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %178, ptr noundef nonnull @.str.119) #15
  %display_supported37.i.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 3
  %179 = ptrtoint ptr %display_supported37.i.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %display_supported37.i.i.i, align 4
  br label %imon_get_ffdc_type.exit.i.i

do.end41.i.i.i:                                   ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %180 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %181, ptr noundef nonnull @.str.122) #15
  %182 = ptrtoint ptr %dev_descr.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @ultrabay_table, ptr %dev_descr.i, align 4
  br label %imon_get_ffdc_type.exit.i.i

do.end45.i.i.i:                                   ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %184, ptr noundef nonnull @.str.125) #15
  br label %imon_get_ffdc_type.exit.i.i

imon_get_ffdc_type.exit.i.i:                      ; preds = %do.end45.i.i.i, %do.end41.i.i.i, %do.end35.i.i.i, %do.end30.i.i.i, %do.end25.i.i.i, %do.end20.i.i.i, %do.end15.i.i.i, %do.end10.i.i.i, %do.end4.i.i.i, %do.end.i.i.i
  %detected_display_type.0.i.i.i = phi i8 [ 1, %do.end45.i.i.i ], [ 2, %do.end41.i.i.i ], [ 4, %do.end35.i.i.i ], [ 2, %do.end30.i.i.i ], [ 1, %do.end25.i.i.i ], [ 1, %do.end20.i.i.i ], [ 1, %do.end15.i.i.i ], [ 1, %do.end10.i.i.i ], [ 4, %do.end4.i.i.i ], [ 4, %do.end.i.i.i ]
  %allowed_protos.0.i.i.i = phi i64 [ 8912896, %do.end45.i.i.i ], [ 8912896, %do.end41.i.i.i ], [ 8388608, %do.end35.i.i.i ], [ 524288, %do.end30.i.i.i ], [ 8912896, %do.end25.i.i.i ], [ 524288, %do.end20.i.i.i ], [ 8388608, %do.end15.i.i.i ], [ 8388608, %do.end10.i.i.i ], [ 8388608, %do.end4.i.i.i ], [ 8388608, %do.end.i.i.i ]
  %conv.i.i.i = zext i8 %158 to i32
  %call.i81.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %conv.i.i.i) #15
  %display_type.i.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 34
  %185 = ptrtoint ptr %display_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %detected_display_type.0.i.i.i, ptr %display_type.i.i.i, align 1
  %rc_proto.i.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 32
  %186 = ptrtoint ptr %rc_proto.i.i.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %allowed_protos.0.i.i.i, ptr %rc_proto.i.i.i, align 8
  %187 = ptrtoint ptr %allowed_protocols.i.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %allowed_protos.0.i.i.i, ptr %allowed_protocols.i.i, align 8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %imon_get_ffdc_type.exit.i.i, %if.end23.i.i.if.end29.i.i_crit_edge
  %188 = load i32, ptr @display_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp.i.i.i = icmp eq i32 %188, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end29.i.i
  %189 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %product.i, align 2
  %191 = zext i16 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.227)
  switch i16 %190, label %sw.default.i.i.i [
    i16 -36, label %sw.bb.i.i.i
    i16 52, label %if.then.i.i.i.imon_set_display_type.exit.i.i_crit_edge
    i16 53, label %if.then.i.i.i.imon_set_display_type.exit.i.i_crit_edge181
    i16 56, label %if.then.i.i.i.sw.bb2.i.i.i_crit_edge
    i16 57, label %if.then.i.i.i.sw.bb2.i.i.i_crit_edge182
    i16 69, label %if.then.i.i.i.sw.bb2.i.i.i_crit_edge183
    i16 60, label %if.then.i.i.i.sw.bb3.i.i.i_crit_edge
    i16 65, label %if.then.i.i.i.sw.bb3.i.i.i_crit_edge184
    i16 66, label %if.then.i.i.i.sw.bb3.i.i.i_crit_edge185
    i16 67, label %if.then.i.i.i.sw.bb3.i.i.i_crit_edge186
  ]

if.then.i.i.i.sw.bb3.i.i.i_crit_edge186:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i.i

if.then.i.i.i.sw.bb3.i.i.i_crit_edge185:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i.i

if.then.i.i.i.sw.bb3.i.i.i_crit_edge184:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i.i

if.then.i.i.i.sw.bb3.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i.i

if.then.i.i.i.sw.bb2.i.i.i_crit_edge183:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i.i.i

if.then.i.i.i.sw.bb2.i.i.i_crit_edge182:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i.i.i

if.then.i.i.i.sw.bb2.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i.i.i

if.then.i.i.i.imon_set_display_type.exit.i.i_crit_edge181: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_set_display_type.exit.i.i

if.then.i.i.i.imon_set_display_type.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_set_display_type.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %display_type.i83.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 34
  %192 = ptrtoint ptr %display_type.i83.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %display_type.i83.i.i, align 1
  br label %imon_set_display_type.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i.i.sw.bb2.i.i.i_crit_edge, %if.then.i.i.i.sw.bb2.i.i.i_crit_edge182, %if.then.i.i.i.sw.bb2.i.i.i_crit_edge183
  br label %imon_set_display_type.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i.i.sw.bb3.i.i.i_crit_edge, %if.then.i.i.i.sw.bb3.i.i.i_crit_edge184, %if.then.i.i.i.sw.bb3.i.i.i_crit_edge185, %if.then.i.i.i.sw.bb3.i.i.i_crit_edge186
  %display_supported.i84.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 3
  %194 = ptrtoint ptr %display_supported.i84.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %display_supported.i84.i.i, align 4
  br label %imon_set_display_type.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_set_display_type.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i.i = trunc i32 %188 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %188)
  %cmp6.i.i.i = icmp ne i32 %188, 4
  %spec.select.i.i.i = zext i1 %cmp6.i.i.i to i8
  %195 = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 3
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %spec.select.i.i.i, ptr %195, align 4
  %197 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %198, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef %188) #15
  br label %imon_set_display_type.exit.i.i

imon_set_display_type.exit.i.i:                   ; preds = %if.else.i.i.i, %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb.i.i.i, %if.then.i.i.i.imon_set_display_type.exit.i.i_crit_edge, %if.then.i.i.i.imon_set_display_type.exit.i.i_crit_edge181
  %configured_display_type.0.i.i.i = phi i8 [ 1, %sw.default.i.i.i ], [ 4, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ %193, %sw.bb.i.i.i ], [ %conv5.i.i.i, %if.else.i.i.i ], [ 3, %if.then.i.i.i.imon_set_display_type.exit.i.i_crit_edge ], [ 3, %if.then.i.i.i.imon_set_display_type.exit.i.i_crit_edge181 ]
  %display_type13.i.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 34
  %199 = ptrtoint ptr %display_type13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %configured_display_type.0.i.i.i, ptr %display_type13.i.i.i, align 1
  %rc_proto30.i.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 32
  %200 = ptrtoint ptr %rc_proto30.i.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %rc_proto30.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 524288, i64 %201)
  %cmp31.i.i = icmp eq i64 %201, 524288
  %spec.select.i.i = select i1 %cmp31.i.i, ptr @.str.75, ptr @.str.76
  %202 = getelementptr inbounds %struct.rc_dev, ptr %call.i125.i, i32 0, i32 7
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %spec.select.i.i, ptr %202, align 4
  %call36.i.i = tail call i32 @rc_register_device(ptr noundef nonnull %call.i125.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp37.i.i = icmp slt i32 %call36.i.i, 0
  br i1 %cmp37.i.i, label %imon_set_display_type.exit.i.i.do.end58.i_crit_edge, label %if.then40

imon_set_display_type.exit.i.i.do.end58.i_crit_edge: ; preds = %imon_set_display_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58.i

do.end58.i:                                       ; preds = %imon_set_display_type.exit.i.i.do.end58.i_crit_edge, %imon_init_idev.exit.i.do.end58.i_crit_edge
  %.str.78.sink.i.i = phi ptr [ @.str.68, %imon_init_idev.exit.i.do.end58.i_crit_edge ], [ @.str.78, %imon_set_display_type.exit.i.i.do.end58.i_crit_edge ]
  %204 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull %.str.78.sink.i.i) #15
  tail call void @rc_free_device(ptr noundef %call.i125.i) #11
  %rdev150.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 24
  %206 = ptrtoint ptr %rdev150.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %rdev150.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28) #15
  %207 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %idev.i, align 8
  tail call void @input_unregister_device(ptr noundef %208) #11
  br label %idev_setup_failed.i

idev_setup_failed.i:                              ; preds = %do.end58.i, %imon_init_idev.exit.thread.i
  %209 = ptrtoint ptr %rx_urb_intf0.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rx_urb_intf0.i, align 8
  tail call void @usb_kill_urb(ptr noundef %210) #11
  br label %find_endpoint_failed.i

find_endpoint_failed.i:                           ; preds = %idev_setup_failed.i, %do.end41.i, %do.body.i.find_endpoint_failed.i_crit_edge
  %ret.0.i = phi i32 [ %call36.i, %do.end41.i ], [ 0, %idev_setup_failed.i ], [ -19, %do.body.i.find_endpoint_failed.i_crit_edge ]
  %211 = ptrtoint ptr %usbdev_intf0.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %usbdev_intf0.i, align 4
  tail call void @usb_put_dev(ptr noundef %212) #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call6.i) #11
  br label %tx_urb_alloc_failed.i

tx_urb_alloc_failed.i:                            ; preds = %find_endpoint_failed.i, %if.end5.i.tx_urb_alloc_failed.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %find_endpoint_failed.i ], [ -12, %if.end5.i.tx_urb_alloc_failed.i_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call2.i) #11
  br label %rx_urb_alloc_failed.i

rx_urb_alloc_failed.i:                            ; preds = %tx_urb_alloc_failed.i, %if.end.i.rx_urb_alloc_failed.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %tx_urb_alloc_failed.i ], [ -12, %if.end.i.rx_urb_alloc_failed.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %do.end21

do.end21:                                         ; preds = %rx_urb_alloc_failed.i, %if.then15.do.end21_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %rx_urb_alloc_failed.i ], [ -12, %if.then15.do.end21_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %ret.3.i) #15
  br label %fail.sink.split

if.else:                                          ; preds = %if.end12
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.else.fail_crit_edge, label %if.end27

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end27:                                         ; preds = %if.else
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool.not.i114 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i114, label %if.end27.do.end33_crit_edge, label %if.end.i116

if.end27.do.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

if.end.i116:                                      ; preds = %if.end27
  %lock.i115 = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock.i115, i32 noundef 0) #11
  %display_type.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 34
  %213 = ptrtoint ptr %display_type.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %display_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %214)
  %cmp.i = icmp eq i8 %214, 3
  br i1 %cmp.i, label %do.body.i117, label %if.end.i116.if.end3.i_crit_edge

if.end.i116.if.end3.i_crit_edge:                  ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

do.body.i117:                                     ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #13
  %ttimer.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 42
  tail call void @init_timer_key(ptr noundef %ttimer.i, ptr noundef nonnull @imon_touch_display_timeout, i32 noundef 0, ptr noundef nonnull @.str.133, ptr noundef nonnull @imon_init_intf1.__key) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.body.i117, %if.end.i116.if.end3.i_crit_edge
  %215 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i119 = getelementptr i8, ptr %216, i32 -128
  %call5.i = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i.i119) #11
  %usbdev_intf1.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 2
  %217 = ptrtoint ptr %usbdev_intf1.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call5.i, ptr %usbdev_intf1.i, align 8
  %rx_urb_intf1.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 15
  %218 = ptrtoint ptr %rx_urb_intf1.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call.i, ptr %rx_urb_intf1.i, align 4
  %219 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cur_altsetting, align 4
  %call6.i121 = tail call fastcc zeroext i1 @imon_find_endpoints(ptr noundef nonnull %13, ptr noundef %220) #11
  br i1 %call6.i121, label %if.end8.i, label %if.end3.i.find_endpoint_failed.i166_crit_edge

if.end3.i.find_endpoint_failed.i166_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_endpoint_failed.i166

if.end8.i:                                        ; preds = %if.end3.i
  %221 = ptrtoint ptr %display_type.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %display_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %222)
  %cmp11.i = icmp eq i8 %222, 3
  br i1 %cmp11.i, label %if.then13.i, label %if.end8.i.if.end20.i_crit_edge

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then13.i:                                      ; preds = %if.end8.i
  %call.i.i122 = tail call ptr @input_allocate_device() #11
  %tobool.not.i.i123 = icmp eq ptr %call.i.i122, null
  br i1 %tobool.not.i.i123, label %if.then13.i.imon_init_touch.exit.thread.i_crit_edge, label %if.end.i.i142

if.then13.i.imon_init_touch.exit.thread.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_init_touch.exit.thread.i

if.end.i.i142:                                    ; preds = %if.then13.i
  %name_touch.i.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 40
  %vendor.i.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 22
  %223 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %vendor.i.i, align 8
  %conv.i.i124 = zext i16 %224 to i32
  %product.i.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 23
  %225 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %product.i.i, align 2
  %conv1.i.i125 = zext i16 %226 to i32
  %call2.i.i126 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name_touch.i.i, i32 noundef 128, ptr noundef nonnull @.str.139, i32 noundef %conv.i.i124, i32 noundef %conv1.i.i125) #11
  %227 = ptrtoint ptr %call.i.i122 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %name_touch.i.i, ptr %call.i.i122, align 8
  %228 = ptrtoint ptr %usbdev_intf1.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %usbdev_intf1.i, align 8
  %phys_touch.i.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 41
  %bus.i.i.i127 = getelementptr inbounds %struct.usb_device, ptr %229, i32 0, i32 12
  %230 = ptrtoint ptr %bus.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bus.i.i.i127, align 8
  %bus_name.i.i.i128 = getelementptr inbounds %struct.usb_bus, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %bus_name.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %bus_name.i.i.i128, align 4
  %devpath.i.i.i129 = getelementptr inbounds %struct.usb_device, ptr %229, i32 0, i32 1
  %call.i.i.i130 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys_touch.i.i, i32 noundef 64, ptr noundef nonnull @.str.67, ptr noundef %233, ptr noundef %devpath.i.i.i129) #11
  %call9.i.i = tail call i32 @strlcat(ptr noundef %phys_touch.i.i, ptr noundef nonnull @.str.140, i32 noundef 64) #11
  %phys.i.i131 = getelementptr inbounds %struct.input_dev, ptr %call.i.i122, i32 0, i32 1
  %234 = ptrtoint ptr %phys.i.i131 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %phys_touch.i.i, ptr %phys.i.i131, align 4
  %evbit.i.i132 = getelementptr inbounds %struct.input_dev, ptr %call.i.i122, i32 0, i32 5
  %235 = ptrtoint ptr %evbit.i.i132 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 10, ptr %evbit.i.i132, align 8
  %arrayidx12.i.i = getelementptr %struct.input_dev, ptr %call.i.i122, i32 0, i32 6, i32 10
  %236 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 1024, ptr %arrayidx12.i.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i122, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i122, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #11
  %driver_data.i.i.i.i133 = getelementptr inbounds %struct.input_dev, ptr %call.i.i122, i32 0, i32 40, i32 8
  %237 = ptrtoint ptr %driver_data.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %13, ptr %driver_data.i.i.i.i133, align 4
  %238 = ptrtoint ptr %usbdev_intf1.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %usbdev_intf1.i, align 8
  %id.i.i134 = getelementptr inbounds %struct.input_dev, ptr %call.i.i122, i32 0, i32 3
  %240 = ptrtoint ptr %id.i.i134 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 3, ptr %id.i.i134, align 2
  %idVendor.i.i.i135 = getelementptr inbounds %struct.usb_device, ptr %239, i32 0, i32 16, i32 7
  %241 = ptrtoint ptr %idVendor.i.i.i135 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %idVendor.i.i.i135, align 8
  %243 = tail call i16 @llvm.bswap.i16(i16 %242) #11
  %vendor.i.i.i136 = getelementptr inbounds %struct.input_dev, ptr %call.i.i122, i32 0, i32 3, i32 1
  %244 = ptrtoint ptr %vendor.i.i.i136 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %243, ptr %vendor.i.i.i136, align 2
  %idProduct.i.i.i137 = getelementptr inbounds %struct.usb_device, ptr %239, i32 0, i32 16, i32 8
  %245 = ptrtoint ptr %idProduct.i.i.i137 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %idProduct.i.i.i137, align 2
  %247 = tail call i16 @llvm.bswap.i16(i16 %246) #11
  %product.i.i.i138 = getelementptr inbounds %struct.input_dev, ptr %call.i.i122, i32 0, i32 3, i32 2
  %248 = ptrtoint ptr %product.i.i.i138 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %247, ptr %product.i.i.i138, align 2
  %bcdDevice.i.i.i139 = getelementptr inbounds %struct.usb_device, ptr %239, i32 0, i32 16, i32 9
  %249 = ptrtoint ptr %bcdDevice.i.i.i139 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %bcdDevice.i.i.i139, align 4
  %251 = tail call i16 @llvm.bswap.i16(i16 %250) #11
  %version.i.i.i140 = getelementptr inbounds %struct.input_dev, ptr %call.i.i122, i32 0, i32 3, i32 3
  %252 = ptrtoint ptr %version.i.i.i140 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %251, ptr %version.i.i.i140, align 2
  %253 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %13, align 8
  %parent.i86.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i122, i32 0, i32 40, i32 1
  %255 = ptrtoint ptr %parent.i86.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %254, ptr %parent.i86.i, align 8
  %call15.i.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i.i122) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp.i.i141 = icmp slt i32 %call15.i.i, 0
  br i1 %cmp.i.i141, label %do.end.i.i143, label %if.end.i.i142.if.end20.i_crit_edge

if.end.i.i142.if.end20.i_crit_edge:               ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

do.end.i.i143:                                    ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #13
  %256 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %257, ptr noundef nonnull @.str.141) #15
  tail call void @input_free_device(ptr noundef nonnull %call.i.i122) #11
  br label %imon_init_touch.exit.thread.i

imon_init_touch.exit.thread.i:                    ; preds = %do.end.i.i143, %if.then13.i.imon_init_touch.exit.thread.i_crit_edge
  %touch91.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 26
  %258 = ptrtoint ptr %touch91.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %touch91.i, align 4
  br label %find_endpoint_failed.i166

if.end20.i:                                       ; preds = %if.end.i.i142.if.end20.i_crit_edge, %if.end8.i.if.end20.i_crit_edge
  %call.i.sink.i = phi ptr [ %call.i.i122, %if.end.i.i142.if.end20.i_crit_edge ], [ null, %if.end8.i.if.end20.i_crit_edge ]
  %touch.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 26
  %259 = ptrtoint ptr %touch.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call.i.sink.i, ptr %touch.i, align 4
  %260 = ptrtoint ptr %rx_urb_intf1.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %rx_urb_intf1.i, align 4
  %262 = ptrtoint ptr %usbdev_intf1.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %usbdev_intf1.i, align 8
  %rx_endpoint_intf1.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 12
  %264 = ptrtoint ptr %rx_endpoint_intf1.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %rx_endpoint_intf1.i, align 8
  %bEndpointAddress.i144 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %265, i32 0, i32 2
  %266 = ptrtoint ptr %bEndpointAddress.i144 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %bEndpointAddress.i144, align 1
  %conv24.i = zext i8 %267 to i32
  %268 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %263, align 8
  %shl.i.i145 = shl i32 %269, 8
  %shl1.i.i146 = shl nuw nsw i32 %conv24.i, 15
  %or.i.i147 = or i32 %shl.i.i145, %shl1.i.i146
  %or26.i = or i32 %or.i.i147, 1073741952
  %usb_rx_buf.i148 = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 18
  %bInterval.i149 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %265, i32 0, i32 5
  %270 = ptrtoint ptr %bInterval.i149 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %bInterval.i149, align 1
  %conv28.i = zext i8 %271 to i32
  %dev1.i.i150 = getelementptr inbounds %struct.urb, ptr %261, i32 0, i32 8
  %272 = ptrtoint ptr %dev1.i.i150 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %263, ptr %dev1.i.i150, align 4
  %pipe2.i.i151 = getelementptr inbounds %struct.urb, ptr %261, i32 0, i32 10
  %273 = ptrtoint ptr %pipe2.i.i151 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %or26.i, ptr %pipe2.i.i151, align 4
  %transfer_buffer3.i.i152 = getelementptr inbounds %struct.urb, ptr %261, i32 0, i32 14
  %274 = ptrtoint ptr %transfer_buffer3.i.i152 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %usb_rx_buf.i148, ptr %transfer_buffer3.i.i152, align 4
  %transfer_buffer_length.i.i153 = getelementptr inbounds %struct.urb, ptr %261, i32 0, i32 19
  %275 = ptrtoint ptr %transfer_buffer_length.i.i153 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 8, ptr %transfer_buffer_length.i.i153, align 4
  %complete.i.i154 = getelementptr inbounds %struct.urb, ptr %261, i32 0, i32 28
  %276 = ptrtoint ptr %complete.i.i154 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr @usb_rx_callback_intf1, ptr %complete.i.i154, align 4
  %context4.i.i155 = getelementptr inbounds %struct.urb, ptr %261, i32 0, i32 27
  %277 = ptrtoint ptr %context4.i.i155 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %13, ptr %context4.i.i155, align 4
  %speed.i.i156 = getelementptr inbounds %struct.usb_device, ptr %263, i32 0, i32 4
  %278 = ptrtoint ptr %speed.i.i156 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %speed.i.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %279)
  %cmp.i87.i = icmp eq i32 %279, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %279)
  %cmp6.i.i157 = icmp ugt i32 %279, 4
  %or.cond.i.i158 = or i1 %cmp.i87.i, %cmp6.i.i157
  br i1 %or.cond.i.i158, label %if.then.i.i160, label %if.end20.i.usb_fill_int_urb.exit.i163_crit_edge

if.end20.i.usb_fill_int_urb.exit.i163_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit.i163

if.then.i.i160:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %280 = tail call i32 @llvm.smax.i32(i32 %conv28.i, i32 1) #11
  %281 = tail call i32 @llvm.umin.i32(i32 %280, i32 16) #11
  %sub.i.i159 = add nsw i32 %281, -1
  %shl.i88.i = shl nuw nsw i32 1, %sub.i.i159
  br label %usb_fill_int_urb.exit.i163

usb_fill_int_urb.exit.i163:                       ; preds = %if.then.i.i160, %if.end20.i.usb_fill_int_urb.exit.i163_crit_edge
  %interval.sink.i.i161 = phi i32 [ %shl.i88.i, %if.then.i.i160 ], [ %conv28.i, %if.end20.i.usb_fill_int_urb.exit.i163_crit_edge ]
  %282 = getelementptr inbounds %struct.urb, ptr %261, i32 0, i32 25
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %interval.sink.i.i161, ptr %282, align 4
  %start_frame.i.i162 = getelementptr inbounds %struct.urb, ptr %261, i32 0, i32 23
  %284 = ptrtoint ptr %start_frame.i.i162 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 -1, ptr %start_frame.i.i162, align 4
  %285 = ptrtoint ptr %rx_urb_intf1.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rx_urb_intf1.i, align 4
  %call30.i = tail call i32 @usb_submit_urb(ptr noundef %286, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end37.thread, label %do.end35.i

do.end35.i:                                       ; preds = %usb_fill_int_urb.exit.i163
  %call36.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef %call30.i) #15
  %287 = ptrtoint ptr %touch.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %touch.i, align 4
  %tobool40.not.i = icmp eq ptr %288, null
  br i1 %tobool40.not.i, label %do.end35.i.find_endpoint_failed.i166_crit_edge, label %if.then41.i

do.end35.i.find_endpoint_failed.i166_crit_edge:   ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_endpoint_failed.i166

if.then41.i:                                      ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_unregister_device(ptr noundef nonnull %288) #11
  br label %find_endpoint_failed.i166

find_endpoint_failed.i166:                        ; preds = %if.then41.i, %do.end35.i.find_endpoint_failed.i166_crit_edge, %imon_init_touch.exit.thread.i, %if.end3.i.find_endpoint_failed.i166_crit_edge
  %ret.0.i165 = phi i32 [ %call30.i, %if.then41.i ], [ %call30.i, %do.end35.i.find_endpoint_failed.i166_crit_edge ], [ -19, %if.end3.i.find_endpoint_failed.i166_crit_edge ], [ -19, %imon_init_touch.exit.thread.i ]
  %289 = ptrtoint ptr %usbdev_intf1.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %usbdev_intf1.i, align 8
  tail call void @usb_put_dev(ptr noundef %290) #11
  %291 = ptrtoint ptr %usbdev_intf1.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr null, ptr %usbdev_intf1.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i115) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #11
  %292 = ptrtoint ptr %rx_urb_intf1.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr null, ptr %rx_urb_intf1.i, align 4
  br label %do.end33

if.end37.thread:                                  ; preds = %usb_fill_int_urb.exit.i163
  call void @__sanitizer_cov_trace_pc() #13
  %dev_present_intf1.i = getelementptr inbounds %struct.imon_context, ptr %13, i32 0, i32 8
  %293 = ptrtoint ptr %dev_present_intf1.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 1, ptr %dev_present_intf1.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i115) #11
  %driver_data.i.i169176 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %294 = ptrtoint ptr %driver_data.i.i169176 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %13, ptr %driver_data.i.i169176, align 4
  br label %do.end65

do.end33:                                         ; preds = %find_endpoint_failed.i166, %if.end27.do.end33_crit_edge
  %ret.1.i167 = phi i32 [ %ret.0.i165, %find_endpoint_failed.i166 ], [ -12, %if.end27.do.end33_crit_edge ]
  %295 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %296, ptr noundef nonnull @.str.137, i32 noundef %ret.1.i167) #15
  br label %fail.sink.split

if.then40:                                        ; preds = %imon_set_display_type.exit.i.i
  %rdev.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 24
  %297 = ptrtoint ptr %rdev.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call.i125.i, ptr %rdev.i, align 4
  %dev_present_intf0.i = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 7
  %298 = ptrtoint ptr %dev_present_intf0.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 1, ptr %dev_present_intf0.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %driver_data.i.i169 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %299 = ptrtoint ptr %driver_data.i.i169 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call7.i.i.i, ptr %driver_data.i.i169, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8961, i16 %10)
  %cmp42 = icmp eq i16 %10, -8961
  br i1 %cmp42, label %land.lhs.true, label %if.then40.if.end57_crit_edge

if.then40.if.end57_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then40
  %300 = ptrtoint ptr %rf_device.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %rf_device.i, align 2, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %tobool44.not = icmp eq i8 %301, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end57_crit_edge, label %if.then46

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then46:                                        ; preds = %land.lhs.true
  %call48 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @imon_rf_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then46.if.end57_crit_edge, label %do.end53

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

do.end53:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef %call48) #15
  br label %if.end57

if.end57:                                         ; preds = %do.end53, %if.then46.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.then40.if.end57_crit_edge
  %display_supported = getelementptr inbounds %struct.imon_context, ptr %call7.i.i.i, i32 0, i32 3
  %302 = ptrtoint ptr %display_supported to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %display_supported, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %303)
  %tobool58.not = icmp eq i8 %303, 0
  br i1 %tobool58.not, label %if.end57.if.end60_crit_edge, label %if.then59

if.end57.if.end60_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @imon_init_display(ptr noundef nonnull %call7.i.i.i, ptr noundef %interface)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end57.if.end60_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %do.end65

do.end65:                                         ; preds = %if.end60, %if.end37.thread
  %conv66 = zext i16 %8 to i32
  %conv67 = zext i16 %11 to i32
  %bus = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 12
  %304 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %busnum, align 4
  %308 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %call2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %conv66, i32 noundef %conv67, i32 noundef %conv, i32 noundef %307, i32 noundef %309) #15
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #11
  tail call void @usb_put_dev(ptr noundef %call2) #11
  br label %cleanup

fail.sink.split:                                  ; preds = %do.end33, %do.end21
  %.str.8.sink = phi ptr [ @.str.8, %do.end33 ], [ @.str.6, %do.end21 ]
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink, ptr noundef nonnull @.str.3) #15
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.else.fail_crit_edge, %do.end.fail_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #11
  tail call void @usb_put_dev(ptr noundef %call2) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef -19) #15
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end65
  %retval.0 = phi i32 [ 0, %do.end65 ], [ -19, %fail ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imon_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @driver_lock, i32 noundef 0) #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %7 to i32
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void @sysfs_remove_group(ptr noundef %dev2, ptr noundef nonnull @imon_display_attr_group) #11
  tail call void @sysfs_remove_group(ptr noundef %dev2, ptr noundef nonnull @imon_rf_attr_group) #11
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i.i, align 4
  %busy = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 21, i32 2
  %9 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %busy, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_urb = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %12) #11
  %finished = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 21, i32 1
  tail call void @complete(ptr noundef %finished) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then7, label %if.else22

if.then7:                                         ; preds = %if.end
  %dev_present_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %dev_present_intf0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dev_present_intf0, align 8
  %rx_urb_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %rx_urb_intf0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_urb_intf0, align 8
  tail call void @usb_kill_urb(ptr noundef %15) #11
  %usbdev_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %usbdev_intf0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usbdev_intf0, align 4
  tail call void @usb_put_dev(ptr noundef %17) #11
  %idev = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 25
  %18 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %idev, align 8
  tail call void @input_unregister_device(ptr noundef %19) #11
  %rdev = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rdev, align 4
  tail call void @rc_unregister_device(ptr noundef %21) #11
  %display_supported = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %display_supported to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %display_supported, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not = icmp eq i8 %23, 0
  br i1 %tobool8.not, label %if.then7.if.end30_crit_edge, label %if.then9

if.then7.if.end30_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then9:                                         ; preds = %if.then7
  %display_type = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 34
  %24 = ptrtoint ptr %display_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %display_type, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.228)
  switch i8 %25, label %if.then9.if.end30_crit_edge [
    i8 2, label %if.then13
    i8 1, label %if.then18
  ]

if.then9.if.end30_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister_dev(ptr noundef %interface, ptr noundef nonnull @imon_lcd_class) #11
  br label %if.end30

if.then18:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister_dev(ptr noundef %interface, ptr noundef nonnull @imon_vfd_class) #11
  br label %if.end30

if.else22:                                        ; preds = %if.end
  %dev_present_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %dev_present_intf1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dev_present_intf1, align 1
  %rx_urb_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %rx_urb_intf1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_urb_intf1, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #11
  %usbdev_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %usbdev_intf1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usbdev_intf1, align 8
  tail call void @usb_put_dev(ptr noundef %31) #11
  %display_type23 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 34
  %32 = ptrtoint ptr %display_type23 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %display_type23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp25 = icmp eq i8 %33, 3
  br i1 %cmp25, label %if.then27, label %if.else22.if.end30_crit_edge

if.else22.if.end30_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  %touch = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 26
  %34 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %touch, align 4
  tail call void @input_unregister_device(ptr noundef %35) #11
  %ttimer = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 42
  %call28 = tail call i32 @del_timer_sync(ptr noundef %ttimer) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.else22.if.end30_crit_edge, %if.then18, %if.then13, %if.then9.if.end30_crit_edge, %if.then7.if.end30_crit_edge
  %dev_present_intf031 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %dev_present_intf031 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dev_present_intf031, align 8, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool32.not = icmp eq i8 %37, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end30
  %dev_present_intf133 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %dev_present_intf133 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dev_present_intf133, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool34.not = icmp eq i8 %39, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %tx_urb.i = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 16
  %42 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_urb.i, align 8
  tail call void @usb_free_urb(ptr noundef %43) #11
  %rx_urb_intf0.i = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 14
  %44 = ptrtoint ptr %rx_urb_intf0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_urb_intf0.i, align 8
  tail call void @usb_free_urb(ptr noundef %45) #11
  %rx_urb_intf1.i = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %rx_urb_intf1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_urb_intf1.i, align 4
  tail call void @usb_free_urb(ptr noundef %47) #11
  tail call void @kfree(ptr noundef %1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_imon_context.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_disconnect, %if.then.i)) #11
          to label %if.end36 [label %if.then.i], !srcloc !518

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_imon_context.__UNIQUE_ID_ddebug252, ptr noundef %41, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.222) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then.i, %if.then35, %land.lhs.true.if.end36_crit_edge, %if.end30.if.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_disconnect.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_disconnect, %if.then41)) #11
          to label %do.end [label %if.then41], !srcloc !518

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_disconnect.__UNIQUE_ID_ddebug271, ptr noundef %3, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.220, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then41, %if.end36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  %rx_urb_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 15
  %rx_urb_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 14
  %.sink.in = select i1 %cmp, ptr %rx_urb_intf0, ptr %rx_urb_intf1
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.sink = load ptr, ptr %.sink.in, align 4
  tail call void @usb_kill_urb(ptr noundef %.sink) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rx_urb_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %rx_urb_intf0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_urb_intf0, align 8
  %usbdev_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %usbdev_intf0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usbdev_intf0, align 4
  %rx_endpoint_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %rx_endpoint_intf0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_endpoint_intf0, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress, align 1
  %conv3 = zext i8 %13 to i32
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 8
  %shl.i = shl i32 %15, 8
  %shl1.i = shl nuw nsw i32 %conv3, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or5 = or i32 %or.i, 1073741952
  %usb_rx_buf = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 18
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bInterval, align 1
  %conv7 = zext i8 %17 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 10
  %19 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or5, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %usb_rx_buf, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 28
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @usb_rx_callback_intf0, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 27
  %23 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 4
  %24 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.i = icmp eq i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp6.i = icmp ugt i32 %25, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i32 @llvm.smax.i32(i32 %conv7, i32 1) #11
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 16) #11
  %sub.i = add nsw i32 %27, -1
  %shl.i39 = shl nuw nsw i32 1, %sub.i
  br label %if.end

if.else:                                          ; preds = %entry
  %rx_urb_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %rx_urb_intf1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_urb_intf1, align 4
  %usbdev_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %usbdev_intf1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usbdev_intf1, align 8
  %rx_endpoint_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %rx_endpoint_intf1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_endpoint_intf1, align 8
  %bEndpointAddress11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %bEndpointAddress11 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bEndpointAddress11, align 1
  %conv12 = zext i8 %35 to i32
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %31, align 8
  %shl.i40 = shl i32 %37, 8
  %shl1.i41 = shl nuw nsw i32 %conv12, 15
  %or.i42 = or i32 %shl1.i41, %shl.i40
  %or15 = or i32 %or.i42, 1073741952
  %usb_rx_buf16 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 18
  %bInterval19 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %33, i32 0, i32 5
  %38 = ptrtoint ptr %bInterval19 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bInterval19, align 1
  %conv20 = zext i8 %39 to i32
  %dev1.i43 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %40 = ptrtoint ptr %dev1.i43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %31, ptr %dev1.i43, align 4
  %pipe2.i44 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %41 = ptrtoint ptr %pipe2.i44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or15, ptr %pipe2.i44, align 4
  %transfer_buffer3.i45 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer3.i45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %usb_rx_buf16, ptr %transfer_buffer3.i45, align 4
  %transfer_buffer_length.i46 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %43 = ptrtoint ptr %transfer_buffer_length.i46 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %transfer_buffer_length.i46, align 4
  %complete.i47 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %44 = ptrtoint ptr %complete.i47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @usb_rx_callback_intf1, ptr %complete.i47, align 4
  %context4.i48 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %45 = ptrtoint ptr %context4.i48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %1, ptr %context4.i48, align 4
  %speed.i49 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 4
  %46 = ptrtoint ptr %speed.i49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %speed.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp.i50 = icmp eq i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp6.i51 = icmp ugt i32 %47, 4
  %or.cond.i52 = or i1 %cmp.i50, %cmp6.i51
  br i1 %or.cond.i52, label %if.then.i55, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i55:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %48 = tail call i32 @llvm.smax.i32(i32 %conv20, i32 1) #11
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 16) #11
  %sub.i53 = add nsw i32 %49, -1
  %shl.i54 = shl nuw nsw i32 1, %sub.i53
  br label %if.end

if.end:                                           ; preds = %if.then.i55, %if.else.if.end_crit_edge, %if.then.i, %if.then.if.end_crit_edge
  %.sink61 = phi ptr [ %7, %if.then.if.end_crit_edge ], [ %7, %if.then.i ], [ %29, %if.else.if.end_crit_edge ], [ %29, %if.then.i55 ]
  %interval.sink.i56.sink = phi i32 [ %conv7, %if.then.if.end_crit_edge ], [ %shl.i39, %if.then.i ], [ %conv20, %if.else.if.end_crit_edge ], [ %shl.i54, %if.then.i55 ]
  %.sink.in = phi ptr [ %rx_urb_intf0, %if.then.if.end_crit_edge ], [ %rx_urb_intf0, %if.then.i ], [ %rx_urb_intf1, %if.else.if.end_crit_edge ], [ %rx_urb_intf1, %if.then.i55 ]
  %50 = getelementptr inbounds %struct.urb, ptr %.sink61, i32 0, i32 25
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %interval.sink.i56.sink, ptr %50, align 4
  %start_frame.i57 = getelementptr inbounds %struct.urb, ptr %.sink61, i32 0, i32 23
  %52 = ptrtoint ptr %start_frame.i57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %start_frame.i57, align 4
  %53 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %53)
  %.sink = load ptr, ptr %.sink.in, align 4
  %call22 = tail call i32 @usb_submit_urb(ptr noundef %.sink, i32 noundef 2592) #11
  ret i32 %call22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imon_init_display(ptr nocapture noundef readonly %ictx, ptr noundef %intf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_init_display.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_init_display, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !518

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_init_display.__UNIQUE_ID_ddebug269, ptr noundef %1, ptr noundef nonnull @.str.155) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call4 = tail call i32 @sysfs_create_group(ptr noundef %dev3, ptr noundef nonnull @imon_display_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.if.end11_crit_edge, label %do.end9

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.156, i32 noundef %call4) #15
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %do.end.if.end11_crit_edge
  %display_type = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 34
  %4 = ptrtoint ptr %display_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %display_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  %imon_lcd_class.imon_vfd_class = select i1 %cmp, ptr @imon_lcd_class, ptr @imon_vfd_class
  %call15 = tail call i32 @usb_register_dev(ptr noundef %intf, ptr noundef nonnull %imon_lcd_class.imon_vfd_class) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end11.if.end23_crit_edge, label %do.end21

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.158) #15
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.end11.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @imon_find_endpoints(ptr nocapture noundef %ictx, ptr nocapture noundef readonly %iface_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %iface_desc, i32 0, i32 2
  %0 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bInterfaceNumber, align 2
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %iface_desc, i32 0, i32 4
  %2 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNumEndpoints, align 4
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp197 = icmp eq i8 %3, 0
  br i1 %cmp197, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %iface_desc, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rx_endpoint.0202 = phi ptr [ null, %for.body.lr.ph ], [ %rx_endpoint.1, %for.inc.for.body_crit_edge ]
  %tx_endpoint.0201 = phi ptr [ null, %for.body.lr.ph ], [ %tx_endpoint.1, %for.inc.for.body_crit_edge ]
  %i.0200 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ir_ep_found.0.off0199 = phi i1 [ false, %for.body.lr.ph ], [ %ir_ep_found.1.off0, %for.inc.for.body_crit_edge ]
  %display_ep_found.0.off0198 = phi i1 [ false, %for.body.lr.ph ], [ %display_ep_found.1.off0, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %5, i32 %i.0200
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i, align 1
  %10 = and i8 %9, 3
  %ir_ep_found.0.off0.not = xor i1 %ir_ep_found.0.off0199, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp12 = icmp slt i8 %7, 0
  %or.cond = select i1 %ir_ep_found.0.off0.not, i1 %cmp12, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp15 = icmp eq i8 %10, 3
  %or.cond176 = select i1 %or.cond, i1 %cmp15, i1 false
  br i1 %or.cond176, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_find_endpoints.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_find_endpoints, %if.then22)) #11
          to label %for.inc [label %if.then22], !srcloc !518

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_find_endpoints.__UNIQUE_ID_ddebug264, ptr noundef %12, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  %display_ep_found.0.off0.not = xor i1 %display_ep_found.0.off0198, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp25 = icmp sgt i8 %7, -1
  %or.cond177 = select i1 %display_ep_found.0.off0.not, i1 %cmp25, i1 false
  %or.cond178 = select i1 %or.cond177, i1 %cmp15, i1 false
  br i1 %or.cond178, label %if.then30, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_find_endpoints.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_find_endpoints, %if.then43)) #11
          to label %for.inc [label %if.then43], !srcloc !518

if.then43:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_find_endpoints.__UNIQUE_ID_ddebug265, ptr noundef %14, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %if.then30, %if.else.for.inc_crit_edge, %if.then22, %if.then
  %display_ep_found.1.off0 = phi i1 [ %display_ep_found.0.off0198, %if.else.for.inc_crit_edge ], [ true, %if.then43 ], [ %display_ep_found.0.off0198, %if.then22 ], [ %display_ep_found.0.off0198, %if.then ], [ true, %if.then30 ]
  %ir_ep_found.1.off0 = phi i1 [ %ir_ep_found.0.off0199, %if.else.for.inc_crit_edge ], [ %ir_ep_found.0.off0199, %if.then43 ], [ true, %if.then22 ], [ true, %if.then ], [ %ir_ep_found.0.off0199, %if.then30 ]
  %tx_endpoint.1 = phi ptr [ %tx_endpoint.0201, %if.else.for.inc_crit_edge ], [ %arrayidx, %if.then43 ], [ %tx_endpoint.0201, %if.then22 ], [ %tx_endpoint.0201, %if.then ], [ %arrayidx, %if.then30 ]
  %rx_endpoint.1 = phi ptr [ %rx_endpoint.0202, %if.else.for.inc_crit_edge ], [ %rx_endpoint.0202, %if.then43 ], [ %arrayidx, %if.then22 ], [ %arrayidx, %if.then ], [ %rx_endpoint.0202, %if.then30 ]
  %inc = add nuw nsw i32 %i.0200, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv2)
  %cmp = icmp uge i32 %inc, %conv2
  %spec.select = select i1 %ir_ep_found.1.off0, i1 %display_ep_found.1.off0, i1 false
  %or.cond179 = select i1 %cmp, i1 true, i1 %spec.select
  br i1 %or.cond179, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %display_ep_found.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %display_ep_found.1.off0, %for.inc.for.end_crit_edge ]
  %ir_ep_found.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %ir_ep_found.1.off0, %for.inc.for.end_crit_edge ]
  %tx_endpoint.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %tx_endpoint.1, %for.inc.for.end_crit_edge ]
  %rx_endpoint.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %rx_endpoint.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp50 = icmp eq i8 %1, 0
  br i1 %cmp50, label %if.then52, label %if.else54

if.then52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %rx_endpoint_intf0 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 11
  %15 = ptrtoint ptr %rx_endpoint_intf0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rx_endpoint.0.lcssa, ptr %rx_endpoint_intf0, align 4
  %tx_endpoint53 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 13
  %16 = ptrtoint ptr %tx_endpoint53 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx_endpoint.0.lcssa, ptr %tx_endpoint53, align 4
  br label %if.end55

if.else54:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %rx_endpoint_intf1 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 12
  %17 = ptrtoint ptr %rx_endpoint_intf1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx_endpoint.0.lcssa, ptr %rx_endpoint_intf1, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then52
  br i1 %display_ep_found.0.off0.lcssa, label %if.end55.if.end75_crit_edge, label %if.then57

if.end55.if.end75_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_find_endpoints.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_find_endpoints, %if.then70)) #11
          to label %if.end75 [label %if.then70], !srcloc !518

if.then70:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_find_endpoints.__UNIQUE_ID_ddebug266, ptr noundef %19, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39) #11
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.then57, %if.end55.if.end75_crit_edge
  %20 = xor i1 %display_ep_found.0.off0.lcssa, true
  %display_type = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 34
  %21 = ptrtoint ptr %display_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %display_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp77 = icmp eq i8 %22, 4
  br i1 %cmp77, label %if.then79, label %if.end75.if.end97_crit_edge

if.end75.if.end97_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_find_endpoints.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_find_endpoints, %if.then92)) #11
          to label %if.end97 [label %if.then92], !srcloc !518

if.then92:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_find_endpoints.__UNIQUE_ID_ddebug267, ptr noundef %24, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39) #11
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %if.then79, %if.end75.if.end97_crit_edge
  %25 = xor i1 %cmp77, true
  %26 = ptrtoint ptr %display_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %display_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp100 = icmp eq i8 %27, 3
  br i1 %cmp100, label %if.then102, label %if.end97.if.end120_crit_edge

if.end97.if.end120_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_find_endpoints.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_find_endpoints, %if.then115)) #11
          to label %if.end120 [label %if.then115], !srcloc !518

if.then115:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_find_endpoints.__UNIQUE_ID_ddebug268, ptr noundef %29, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39) #11
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.then102, %if.end97.if.end120_crit_edge
  %display_ep_found.4.off0 = phi i1 [ false, %if.then115 ], [ %25, %if.end97.if.end120_crit_edge ], [ false, %if.then102 ]
  br i1 %ir_ep_found.0.off0.lcssa, label %if.end120.if.end128_crit_edge, label %do.end125

if.end120.if.end128_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

do.end125:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.39) #15
  br label %if.end128

if.end128:                                        ; preds = %do.end125, %if.end120.if.end128_crit_edge
  %tx_control130 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 17
  %frombool131 = zext i1 %20 to i8
  %30 = ptrtoint ptr %tx_control130 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool131, ptr %tx_control130, align 4
  br i1 %display_ep_found.4.off0, label %if.then133, label %if.end128.if.end134_crit_edge

if.end128.if.end134_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then133:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %display_supported = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 3
  %31 = ptrtoint ptr %display_supported to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %display_supported, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end128.if.end134_crit_edge
  ret i1 %ir_ep_found.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_rx_callback_intf0(ptr noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev_present_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev_present_intf0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_present_intf0, align 8, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end3.out_crit_edge, label %if.end6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6:                                          ; preds = %if.end3
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %5, label %do.end [
    i32 -2, label %if.end6.cleanup_crit_edge
    i32 -108, label %if.end6.out_crit_edge
    i32 0, label %sw.bb7
  ]

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @imon_incoming_packet(ptr noundef nonnull %1, ptr noundef nonnull %urb, i32 noundef 0)
  br label %out

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %5) #15
  br label %out

out:                                              ; preds = %do.end, %sw.bb7, %if.end6.out_crit_edge, %if.end3.out_crit_edge
  %rx_urb_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %rx_urb_intf0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_urb_intf0, align 8
  %call = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 2592) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imon_incoming_packet(ptr noundef %ictx, ptr nocapture noundef readonly %urb, i32 noundef %intf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %4 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ictx, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp = icmp eq i8 %7, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp5 = icmp eq i8 %9, -1
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr i8, ptr %3, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp10 = icmp eq i8 %11, -1
  br i1 %cmp10, label %land.lhs.true7.cleanup312_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup312_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp12 = icmp eq i32 %1, 8
  br i1 %cmp12, label %land.lhs.true14, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true14:                                  ; preds = %if.end
  %arrayidx15 = getelementptr i8, ptr %3, i32 7
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %13)
  %cmp17 = icmp eq i8 %13, -18
  br i1 %cmp17, label %if.then19, label %land.lhs.true14.if.else_crit_edge

land.lhs.true14.if.else_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true14
  %dev_descr.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 45
  %14 = ptrtoint ptr %dev_descr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_descr.i, align 4
  %key_table1.i = getelementptr inbounds %struct.imon_usb_dev_descr, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %key_table1.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %key_table1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp.not14.i = icmp eq i64 %17, 0
  br i1 %cmp.not14.i, label %if.then19.imon_panel_key_lookup.exit_crit_edge, label %for.body.lr.ph.i

if.then19.imon_panel_key_lookup.exit_crit_edge:   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_panel_key_lookup.exit

for.body.lr.ph.i:                                 ; preds = %if.then19
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %3, align 8
  %or.i = or i64 %19, 65518
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %20 = phi i64 [ %17, %for.body.lr.ph.i ], [ %24, %for.inc.i.for.body.i_crit_edge ]
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %or.i)
  %cmp4.i = icmp eq i64 %20, %or.i
  br i1 %cmp4.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %keycode6.i = getelementptr %struct.imon_panel_key_table, ptr %key_table1.i, i32 %i.015.i, i32 1
  %21 = ptrtoint ptr %keycode6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %keycode6.i, align 8
  br label %imon_panel_key_lookup.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.015.i, 1
  %arrayidx.i = getelementptr %struct.imon_panel_key_table, ptr %key_table1.i, i32 %inc.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i, align 8
  %cmp.not.i = icmp eq i64 %24, 0
  br i1 %cmp.not.i, label %for.inc.i.imon_panel_key_lookup.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.imon_panel_key_lookup.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_panel_key_lookup.exit

imon_panel_key_lookup.exit:                       ; preds = %for.inc.i.imon_panel_key_lookup.exit_crit_edge, %if.then.i, %if.then19.imon_panel_key_lookup.exit_crit_edge
  %keycode.0.i = phi i32 [ %22, %if.then.i ], [ 0, %if.then19.imon_panel_key_lookup.exit_crit_edge ], [ 0, %for.inc.i.imon_panel_key_lookup.exit_crit_edge ]
  %release_code.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 33
  %25 = ptrtoint ptr %release_code.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %release_code.i, align 8
  br label %do.body37

if.else:                                          ; preds = %land.lhs.true14.if.else_crit_edge, %if.end.if.else_crit_edge
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %rc_proto = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 32
  %28 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rc_proto, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 524288, i64 %29)
  %cmp21 = icmp eq i64 %29, 524288
  br i1 %cmp21, label %if.then23, label %if.else32

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %31)
  %cmp26 = icmp eq i8 %31, -128
  %spec.store.select = zext i1 %cmp26 to i8
  %or1.i = or i32 %27, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not7.i = icmp slt i32 %27, 0
  %spec.select.i = select i1 %tobool.not7.i, i32 %or1.i, i32 %27
  %rc_scancode.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 30
  %32 = ptrtoint ptr %rc_scancode.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select.i, ptr %rc_scancode.i, align 4
  %rdev.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 24
  %33 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev.i, align 4
  %conv.i = zext i32 %spec.select.i to i64
  %call.i = tail call i32 @rc_g_keycode_from_table(ptr noundef %34, i64 noundef %conv.i) #11
  %release_code.i431 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 33
  %35 = ptrtoint ptr %release_code.i431 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %release_code.i431, align 8
  br label %do.body37

if.else32:                                        ; preds = %if.else
  %rdev.i432 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 24
  %36 = ptrtoint ptr %rdev.i432 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rdev.i432, align 4
  %conv.i433 = zext i32 %27 to i64
  %call.i434 = tail call i32 @rc_g_keycode_from_table(ptr noundef %37, i64 noundef %conv.i433) #11
  %rc_toggle.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 31
  %38 = ptrtoint ptr %rc_toggle.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %rc_toggle.i, align 8
  %rc_scancode.i435 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 30
  %39 = ptrtoint ptr %rc_scancode.i435 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %27, ptr %rc_scancode.i435, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i434)
  %cmp.i = icmp eq i32 %call.i434, 0
  br i1 %cmp.i, label %if.then.i436, label %if.else32.imon_remote_key_lookup.exit_crit_edge

if.else32.imon_remote_key_lookup.exit_crit_edge:  ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_remote_key_lookup.exit

if.then.i436:                                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %27, -16385
  %40 = ptrtoint ptr %rdev.i432 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdev.i432, align 4
  %conv3.i = zext i32 %and.i to i64
  %call4.i = tail call i32 @rc_g_keycode_from_table(ptr noundef %41, i64 noundef %conv3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp ne i32 %call4.i, 0
  br label %imon_remote_key_lookup.exit

imon_remote_key_lookup.exit:                      ; preds = %if.then.i436, %if.else32.imon_remote_key_lookup.exit_crit_edge
  %keycode.0.i437 = phi i32 [ %call.i434, %if.else32.imon_remote_key_lookup.exit_crit_edge ], [ %call4.i, %if.then.i436 ]
  %is_release_code.0.off0.i = phi i1 [ false, %if.else32.imon_remote_key_lookup.exit_crit_edge ], [ %cmp5.not.i, %if.then.i436 ]
  %release_code.i438 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 33
  %frombool.i = zext i1 %is_release_code.0.off0.i to i8
  %42 = ptrtoint ptr %release_code.i438 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool.i, ptr %release_code.i438, align 8
  br label %do.body37

do.body37:                                        ; preds = %imon_remote_key_lookup.exit, %if.then23, %imon_panel_key_lookup.exit
  %ktype.0 = phi i8 [ 2, %imon_panel_key_lookup.exit ], [ %spec.store.select, %if.then23 ], [ 0, %imon_remote_key_lookup.exit ]
  %kc.0 = phi i32 [ %keycode.0.i, %imon_panel_key_lookup.exit ], [ %call.i, %if.then23 ], [ %keycode.0.i437, %imon_remote_key_lookup.exit ]
  %kc_lock = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 27
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 374, i32 %kc.0)
  %cmp44 = icmp eq i32 %kc.0, 374
  br i1 %cmp44, label %land.lhs.true46, label %do.body37.if.end88_crit_edge

do.body37.if.end88_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.lhs.true46:                                  ; preds = %do.body37
  %release_code47 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 33
  %43 = ptrtoint ptr %release_code47 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %release_code47, align 8, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not = icmp eq i8 %44, 0
  br i1 %tobool.not, label %if.then48, label %land.lhs.true46.if.end88_crit_edge

land.lhs.true46.if.end88_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then48:                                        ; preds = %land.lhs.true46
  %last_keycode = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 29
  %45 = ptrtoint ptr %last_keycode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 374, ptr %last_keycode, align 8
  %46 = load i8, ptr @nomouse, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool49.not = icmp eq i8 %46, 0
  %pad_mouse = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 35
  br i1 %tobool49.not, label %if.then50, label %if.else69

if.then50:                                        ; preds = %if.then48
  %47 = ptrtoint ptr %pad_mouse to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pad_mouse, align 2, !range !519
  %49 = xor i8 %48, 1
  store i8 %49, ptr %pad_mouse, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_incoming_packet.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_incoming_packet, %if.then61)) #11
          to label %do.end67 [label %if.then61], !srcloc !518

if.then61:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %pad_mouse to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pad_mouse, align 2, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool63.not = icmp eq i8 %51, 0
  %cond = select i1 %tobool63.not, ptr @.str.52, ptr @.str.51
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_incoming_packet.__UNIQUE_ID_ddebug262, ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %if.then50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call41) #11
  br label %cleanup312

if.else69:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %pad_mouse to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %pad_mouse, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_incoming_packet.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_incoming_packet, %if.then83)) #11
          to label %if.end88 [label %if.then83], !srcloc !518

if.then83:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_incoming_packet.__UNIQUE_ID_ddebug263, ptr noundef %5, ptr noundef nonnull @.str.53) #11
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.else69, %land.lhs.true46.if.end88_crit_edge, %do.body37.if.end88_crit_edge
  %kc89 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 28
  %53 = ptrtoint ptr %kc89 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %kc.0, ptr %kc89, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call41) #11
  %touch = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 26
  %54 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %touch, align 4
  %tobool91.not = icmp eq ptr %55, null
  %cmp12.not = xor i1 %cmp12, true
  %brmerge = select i1 %tobool91.not, i1 true, i1 %cmp12.not
  br i1 %brmerge, label %if.end88.if.else101_crit_edge, label %land.lhs.true95

if.end88.if.else101_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else101

land.lhs.true95:                                  ; preds = %if.end88
  %arrayidx96 = getelementptr i8, ptr %3, i32 7
  %56 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %57)
  %cmp98 = icmp eq i8 %57, -122
  br i1 %cmp98, label %if.then100, label %land.lhs.true95.if.else101_crit_edge

land.lhs.true95.if.else101_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else101

if.then100:                                       ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  %ttimer.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %58, 3
  %call.i439 = tail call i32 @mod_timer(ptr noundef %ttimer.i, i32 noundef %add.i) #11
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %3, align 1
  %conv.i440 = zext i8 %60 to i32
  %shl.i = shl nuw nsw i32 %conv.i440, 4
  %arrayidx1.i = getelementptr i8, ptr %3, i32 1
  %61 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx1.i, align 1
  %63 = lshr i8 %62, 4
  %64 = zext i8 %63 to i32
  %or.i441 = or i32 %shl.i, %64
  %touch_x.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 43
  %65 = ptrtoint ptr %touch_x.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i441, ptr %touch_x.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %3, i32 2
  %66 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %67 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 4
  %68 = load i8, ptr %arrayidx1.i, align 1
  %69 = and i8 %68, 15
  %and.i442 = zext i8 %69 to i32
  %or8.i = or i32 %shl5.i, %and.i442
  %sub.i = xor i32 %or8.i, 4095
  %touch_y.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 44
  %70 = ptrtoint ptr %touch_y.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub.i, ptr %touch_y.i, align 8
  %71 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %touch, align 4
  tail call void @input_event(ptr noundef %72, i32 noundef 3, i32 noundef 0, i32 noundef %or.i441) #11
  %73 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %touch, align 4
  %75 = ptrtoint ptr %touch_y.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %touch_y.i, align 8
  tail call void @input_event(ptr noundef %74, i32 noundef 3, i32 noundef 1, i32 noundef %76) #11
  %77 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %touch, align 4
  tail call void @input_event(ptr noundef %78, i32 noundef 1, i32 noundef 330, i32 noundef 1) #11
  %79 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %touch, align 4
  tail call void @input_event(ptr noundef %80, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup312

if.else101:                                       ; preds = %land.lhs.true95.if.else101_crit_edge, %if.end88.if.else101_crit_edge
  %pad_mouse102 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 35
  %81 = ptrtoint ptr %pad_mouse102 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pad_mouse102, align 2, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool103.not = icmp eq i8 %82, 0
  br i1 %tobool103.not, label %if.else101.if.end109_crit_edge, label %if.then104

if.else101.if.end109_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then104:                                       ; preds = %if.else101
  %call105 = tail call fastcc zeroext i1 @imon_mouse_event(ptr noundef %ictx, ptr noundef %3, i32 noundef %1)
  br i1 %call105, label %if.then104.cleanup312_crit_edge, label %if.then104.if.end109_crit_edge

if.then104.if.end109_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then104.cleanup312_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

if.end109:                                        ; preds = %if.then104.if.end109_crit_edge, %if.else101.if.end109_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp110 = icmp eq i32 %1, 5
  br i1 %cmp110, label %land.lhs.true112, label %if.end109.lor.lhs.false_crit_edge

if.end109.lor.lhs.false_crit_edge:                ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true112:                                 ; preds = %if.end109
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp115 = icmp eq i8 %84, 1
  br i1 %cmp115, label %land.lhs.true117, label %land.lhs.true112.lor.lhs.false_crit_edge

land.lhs.true112.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true117:                                 ; preds = %land.lhs.true112
  %arrayidx118 = getelementptr i8, ptr %3, i32 4
  %85 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp120 = icmp eq i8 %86, 0
  br i1 %cmp120, label %land.lhs.true117.if.then138_crit_edge, label %land.lhs.true117.lor.lhs.false_crit_edge

land.lhs.true117.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true117.if.then138_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then138

lor.lhs.false:                                    ; preds = %land.lhs.true117.lor.lhs.false_crit_edge, %land.lhs.true112.lor.lhs.false_crit_edge, %if.end109.lor.lhs.false_crit_edge
  br i1 %cmp12, label %land.lhs.true124, label %lor.lhs.false.if.end139_crit_edge

lor.lhs.false.if.end139_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

land.lhs.true124:                                 ; preds = %lor.lhs.false
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %3, align 1
  %89 = and i8 %88, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool127.not = icmp eq i8 %89, 0
  br i1 %tobool127.not, label %land.lhs.true124.if.end139_crit_edge, label %land.lhs.true128

land.lhs.true124.if.end139_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

land.lhs.true128:                                 ; preds = %land.lhs.true124
  %arrayidx129 = getelementptr i8, ptr %3, i32 1
  %90 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx129, align 1
  %92 = and i8 %91, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %land.lhs.true128.if.then138_crit_edge, label %land.lhs.true128.if.end139_crit_edge

land.lhs.true128.if.end139_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

land.lhs.true128.if.then138_crit_edge:            ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then138

if.then138:                                       ; preds = %land.lhs.true128.if.then138_crit_edge, %land.lhs.true117.if.then138_crit_edge
  %product.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 23
  %94 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %product.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -36, i16 %95)
  %cmp.not.i443 = icmp eq i16 %95, -36
  br i1 %cmp.not.i443, label %if.else95.i, label %if.then.i447

if.then.i447:                                     ; preds = %if.then138
  %arrayidx.i444 = getelementptr i8, ptr %3, i32 7
  %96 = ptrtoint ptr %arrayidx.i444 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx.i444, align 1
  %arrayidx2.i = getelementptr i8, ptr %3, i32 6
  %97 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx3.i445 = getelementptr i8, ptr %3, i32 5
  %98 = ptrtoint ptr %arrayidx3.i445 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayidx3.i445, align 1
  %99 = load i32, ptr @pad_thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i = icmp eq i32 %99, 0
  %phi.cast366.i = trunc i32 %99 to i16
  %spec.select.i446 = select i1 %tobool.not.i, i16 28, i16 %phi.cast366.i
  %arrayidx5.i = getelementptr i8, ptr %3, i32 2
  %100 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %3, i32 3
  %102 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx6.i, align 1
  %rc_proto.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 32
  %104 = ptrtoint ptr %rc_proto.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %rc_proto.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %105)
  %cmp7.i = icmp eq i64 %105, 8388608
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then.i447.if.else.i_crit_edge

if.then.i447.if.else.i_crit_edge:                 ; preds = %if.then.i447
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i447
  %106 = load i32, ptr @pad_stabilize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool9.not.i = icmp eq i32 %106, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %arrayidx11.i = getelementptr i8, ptr %3, i32 1
  %107 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp13.i = icmp eq i8 %108, 0
  br i1 %cmp13.i, label %land.lhs.true15.i, label %if.then10.i.if.end139_crit_edge

if.then10.i.if.end139_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

land.lhs.true15.i:                                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp17.not.i = icmp eq i8 %101, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp20.not.i = icmp eq i8 %103, 0
  %or.cond.i = select i1 %cmp17.not.i, i1 %cmp20.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true15.i.if.end139_crit_edge, label %if.then22.i

land.lhs.true15.i.if.end139_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then22.i:                                      ; preds = %land.lhs.true15.i
  %conv16.i = sext i8 %101 to i32
  %conv24.i = sext i8 %103 to i32
  %call.i448 = tail call fastcc i32 @stabilize(i32 noundef %conv16.i, i32 noundef %conv24.i, i16 noundef zeroext 500, i16 noundef zeroext %spec.select.i446) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i448)
  %tobool25.not.i = icmp eq i32 %call.i448, 0
  br i1 %tobool25.not.i, label %do.body27.i, label %if.end.i

do.body27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  br label %if.end139.sink.split

if.end.i:                                         ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv35.i = trunc i32 %call.i448 to i8
  %109 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv35.i, ptr %arrayidx5.i, align 1
  %110 = lshr i32 %call.i448, 8
  %conv38.i = trunc i32 %110 to i8
  %111 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv38.i, ptr %arrayidx6.i, align 1
  br label %if.end255.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i447.if.else.i_crit_edge
  %112 = tail call i8 @llvm.abs.i8(i8 %103, i1 false) #11
  %113 = tail call i8 @llvm.abs.i8(i8 %101, i1 false) #11
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %113)
  %cmp63.i = icmp ugt i8 %112, %113
  br i1 %cmp63.i, label %if.then65.i, label %if.else79.i

if.then65.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp67.i = icmp sgt i8 %103, 0
  %conv70.i = select i1 %cmp67.i, i8 127, i8 -128
  %114 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv70.i, ptr %arrayidx5.i, align 1
  %115 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx6.i, align 1
  %..i = select i1 %cmp67.i, i32 16809728, i32 16809984
  br label %do.body259.i

if.else79.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp82.i = icmp sgt i8 %101, 0
  %conv85.i = select i1 %cmp82.i, i8 127, i8 -128
  %117 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv85.i, ptr %arrayidx6.i, align 1
  %.367.i = select i1 %cmp82.i, i32 16777343, i32 16777344
  br label %do.body259.i

if.else95.i:                                      ; preds = %if.then138
  %118 = load i32, ptr @pad_thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool96.not.i = icmp eq i32 %118, 0
  %phi.cast.i = trunc i32 %118 to i16
  %spec.select368.i = select i1 %tobool96.not.i, i16 15, i16 %phi.cast.i
  %arrayidx102.i = getelementptr i8, ptr %3, i32 1
  %119 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx102.i, align 1
  %and104.i = and i8 %120, 8
  %and107.i = lshr i8 %120, 2
  %121 = and i8 %and107.i, 4
  %or.i449 = or i8 %121, %and104.i
  %and111.i = lshr i8 %120, 4
  %122 = and i8 %and111.i, 2
  %or113.i = or i8 %or.i449, %122
  %and116.i = lshr i8 %120, 6
  %123 = and i8 %and116.i, 1
  %or118.i = or i8 %or113.i, %123
  %124 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %3, align 1
  %126 = and i8 %125, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool123.not.i = icmp eq i8 %126, 0
  %or126.i = or i8 %or118.i, -16
  %rel_x.0.i = select i1 %tobool123.not.i, i8 %or118.i, i8 %or126.i
  %arrayidx129.i = getelementptr i8, ptr %3, i32 2
  %127 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx129.i, align 1
  %and131.i = and i8 %128, 8
  %and134.i = lshr i8 %128, 2
  %129 = and i8 %and134.i, 4
  %or136.i = or i8 %129, %and131.i
  %and139.i = lshr i8 %128, 4
  %130 = and i8 %and139.i, 2
  %or141.i = or i8 %or136.i, %130
  %and144.i = lshr i8 %128, 6
  %131 = and i8 %and144.i, 1
  %or146.i = or i8 %or141.i, %131
  %132 = and i8 %125, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool151.not.i = icmp eq i8 %132, 0
  %or154.i = or i8 %or146.i, -16
  %rel_y.0.i = select i1 %tobool151.not.i, i8 %or146.i, i8 %or154.i
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %3, align 1
  %arrayidx161.i = getelementptr i8, ptr %3, i32 4
  %134 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %arrayidx102.i, align 1
  %rc_proto163.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 32
  %135 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 0, ptr %arrayidx161.i, align 1
  %136 = ptrtoint ptr %rc_proto163.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %rc_proto163.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %137)
  %cmp164.i = icmp eq i64 %137, 8388608
  br i1 %cmp164.i, label %land.lhs.true166.i, label %if.else95.i.if.else198.i_crit_edge

if.else95.i.if.else198.i_crit_edge:               ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else198.i

land.lhs.true166.i:                               ; preds = %if.else95.i
  %138 = load i32, ptr @pad_stabilize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool167.not.i = icmp eq i32 %138, 0
  br i1 %tobool167.not.i, label %land.lhs.true166.i.if.else198.i_crit_edge, label %if.then168.i

land.lhs.true166.i.if.else198.i_crit_edge:        ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else198.i

if.then168.i:                                     ; preds = %land.lhs.true166.i
  %conv169.i = sext i8 %rel_x.0.i to i32
  %conv170.i = sext i8 %rel_y.0.i to i32
  %call171.i = tail call fastcc i32 @stabilize(i32 noundef %conv169.i, i32 noundef %conv170.i, i16 noundef zeroext 10, i16 noundef zeroext %spec.select368.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %tobool172.not.i = icmp eq i32 %call171.i, 0
  br i1 %tobool172.not.i, label %do.body175.i, label %if.end190.i

do.body175.i:                                     ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #13
  %call183.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  br label %if.end139.sink.split

if.end190.i:                                      ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv192.i = trunc i32 %call171.i to i8
  %139 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv192.i, ptr %arrayidx129.i, align 1
  %140 = lshr i32 %call171.i, 8
  %conv196.i = trunc i32 %140 to i8
  %arrayidx197.i = getelementptr i8, ptr %3, i32 3
  %141 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv196.i, ptr %arrayidx197.i, align 1
  br label %if.end255.i

if.else198.i:                                     ; preds = %land.lhs.true166.i.if.else198.i_crit_edge, %if.else95.i.if.else198.i_crit_edge
  %142 = tail call i8 @llvm.abs.i8(i8 %rel_y.0.i, i1 false) #11
  %143 = tail call i8 @llvm.abs.i8(i8 %rel_x.0.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %143)
  %cmp223.i = icmp ugt i8 %142, %143
  br i1 %cmp223.i, label %if.then225.i, label %if.else239.i

if.then225.i:                                     ; preds = %if.else198.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rel_y.0.i)
  %cmp227.i = icmp sgt i8 %rel_y.0.i, 0
  %conv230.i = select i1 %cmp227.i, i8 127, i8 -128
  %144 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv230.i, ptr %arrayidx129.i, align 1
  %arrayidx232.i = getelementptr i8, ptr %3, i32 3
  %145 = ptrtoint ptr %arrayidx232.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %arrayidx232.i, align 1
  %.369.i = select i1 %cmp227.i, i32 16809728, i32 16809984
  br label %do.body259.i

if.else239.i:                                     ; preds = %if.else198.i
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx129.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rel_x.0.i)
  %cmp242.i = icmp sgt i8 %rel_x.0.i, 0
  %conv245.i = select i1 %cmp242.i, i8 127, i8 -128
  %arrayidx246.i = getelementptr i8, ptr %3, i32 3
  %147 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv245.i, ptr %arrayidx246.i, align 1
  %.370.i = select i1 %cmp242.i, i32 16777343, i32 16777344
  br label %do.body259.i

if.end255.i:                                      ; preds = %if.end190.i, %if.end.i
  %148 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %148)
  %scancode.0.i = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scancode.0.i)
  %tobool256.not.i = icmp eq i32 %scancode.0.i, 0
  br i1 %tobool256.not.i, label %if.end255.i.if.end139_crit_edge, label %if.end255.i.do.body259.i_crit_edge

if.end255.i.do.body259.i_crit_edge:               ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body259.i

if.end255.i.if.end139_crit_edge:                  ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

do.body259.i:                                     ; preds = %if.end255.i.do.body259.i_crit_edge, %if.else239.i, %if.then225.i, %if.else79.i, %if.then65.i
  %scancode.0373.i = phi i32 [ %scancode.0.i, %if.end255.i.do.body259.i_crit_edge ], [ %.370.i, %if.else239.i ], [ %.369.i, %if.then225.i ], [ %.367.i, %if.else79.i ], [ %..i, %if.then65.i ]
  %call267.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  %rdev.i.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 24
  %149 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rdev.i.i, align 4
  %conv.i.i = zext i32 %scancode.0373.i to i64
  %call.i.i = tail call i32 @rc_g_keycode_from_table(ptr noundef %150, i64 noundef %conv.i.i) #11
  %rc_toggle.i.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 31
  %151 = ptrtoint ptr %rc_toggle.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %rc_toggle.i.i, align 8
  %rc_scancode.i.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 30
  %152 = ptrtoint ptr %rc_scancode.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %scancode.0373.i, ptr %rc_scancode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body259.i.imon_remote_key_lookup.exit.i_crit_edge

do.body259.i.imon_remote_key_lookup.exit.i_crit_edge: ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %imon_remote_key_lookup.exit.i

if.then.i.i:                                      ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i = and i32 %scancode.0373.i, -16385
  %153 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rdev.i.i, align 4
  %conv3.i.i = zext i32 %and.i.i to i64
  %call4.i.i = tail call i32 @rc_g_keycode_from_table(ptr noundef %154, i64 noundef %conv3.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.not.i.i = icmp ne i32 %call4.i.i, 0
  br label %imon_remote_key_lookup.exit.i

imon_remote_key_lookup.exit.i:                    ; preds = %if.then.i.i, %do.body259.i.imon_remote_key_lookup.exit.i_crit_edge
  %keycode.0.i.i = phi i32 [ %call.i.i, %do.body259.i.imon_remote_key_lookup.exit.i_crit_edge ], [ %call4.i.i, %if.then.i.i ]
  %is_release_code.0.off0.i.i = phi i1 [ false, %do.body259.i.imon_remote_key_lookup.exit.i_crit_edge ], [ %cmp5.not.i.i, %if.then.i.i ]
  %release_code.i.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 33
  %frombool.i.i = zext i1 %is_release_code.0.off0.i.i to i8
  %155 = ptrtoint ptr %release_code.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %frombool.i.i, ptr %release_code.i.i, align 8
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %imon_remote_key_lookup.exit.i, %do.body175.i, %do.body27.i
  %keycode.0.i.i.sink = phi i32 [ %keycode.0.i.i, %imon_remote_key_lookup.exit.i ], [ 240, %do.body175.i ], [ 240, %do.body27.i ]
  %call267.i.sink = phi i32 [ %call267.i, %imon_remote_key_lookup.exit.i ], [ %call183.i, %do.body175.i ], [ %call31.i, %do.body27.i ]
  %156 = ptrtoint ptr %kc89 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %keycode.0.i.i.sink, ptr %kc89, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call267.i.sink) #11
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %if.end255.i.if.end139_crit_edge, %land.lhs.true15.i.if.end139_crit_edge, %if.then10.i.if.end139_crit_edge, %land.lhs.true128.if.end139_crit_edge, %land.lhs.true124.if.end139_crit_edge, %lor.lhs.false.if.end139_crit_edge
  %len.0 = phi i32 [ 8, %land.lhs.true128.if.end139_crit_edge ], [ 8, %land.lhs.true124.if.end139_crit_edge ], [ %1, %lor.lhs.false.if.end139_crit_edge ], [ 8, %if.then10.i.if.end139_crit_edge ], [ 8, %land.lhs.true15.i.if.end139_crit_edge ], [ 8, %if.end255.i.if.end139_crit_edge ], [ 8, %if.end139.sink.split ]
  %157 = load i8, ptr @debug, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool140.not = icmp eq i8 %157, 0
  br i1 %tobool140.not, label %if.end139.if.end147_crit_edge, label %do.end144

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

do.end144:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %intf, i32 noundef %len.0, ptr noundef %3) #15
  br label %if.end147

if.end147:                                        ; preds = %do.end144, %if.end139.if.end147_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  %158 = ptrtoint ptr %kc89 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %kc89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp5.i = icmp eq i32 %159, 0
  br i1 %cmp5.i, label %land.lhs.true.i452, label %if.else69.thread.i

land.lhs.true.i452:                               ; preds = %if.end147
  %160 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %3, align 1
  %162 = zext i8 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.230)
  switch i8 %161, label %land.lhs.true.i452.if.else69.i_crit_edge [
    i8 2, label %land.lhs.true10.i
    i8 104, label %land.lhs.true24.i
    i8 1, label %land.lhs.true51.i
  ]

land.lhs.true.i452.if.else69.i_crit_edge:         ; preds = %land.lhs.true.i452
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else69.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i452
  %arrayidx11.i453 = getelementptr i8, ptr %3, i32 3
  %163 = ptrtoint ptr %arrayidx11.i453 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx11.i453, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %cmp13.i454 = icmp eq i8 %164, 0
  br i1 %cmp13.i454, label %if.then.i455, label %land.lhs.true10.i.if.else69.i_crit_edge

land.lhs.true10.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else69.i

if.then.i455:                                     ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  %last_keycode.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 29
  %165 = ptrtoint ptr %last_keycode.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %last_keycode.i, align 8
  %167 = ptrtoint ptr %kc89 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %kc89, align 4
  br label %if.end152

land.lhs.true24.i:                                ; preds = %land.lhs.true.i452
  %arrayidx25.i = getelementptr i8, ptr %3, i32 1
  %168 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %169)
  %cmp27.i = icmp eq i8 %169, -126
  br i1 %cmp27.i, label %land.lhs.true29.i, label %land.lhs.true24.i.if.else69.i_crit_edge

land.lhs.true24.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else69.i

land.lhs.true29.i:                                ; preds = %land.lhs.true24.i
  %arrayidx30.i = getelementptr i8, ptr %3, i32 2
  %170 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %171)
  %cmp32.i = icmp eq i8 %171, -127
  br i1 %cmp32.i, label %land.lhs.true34.i, label %land.lhs.true29.i.if.else69.i_crit_edge

land.lhs.true29.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else69.i

land.lhs.true34.i:                                ; preds = %land.lhs.true29.i
  %arrayidx35.i = getelementptr i8, ptr %3, i32 3
  %172 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -73, i8 %173)
  %cmp37.i = icmp eq i8 %173, -73
  br i1 %cmp37.i, label %if.then39.i, label %land.lhs.true34.i.if.else69.i_crit_edge

land.lhs.true34.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else69.i

if.then39.i:                                      ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  %last_keycode40.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 29
  %174 = ptrtoint ptr %last_keycode40.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %last_keycode40.i, align 8
  %176 = ptrtoint ptr %kc89 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %kc89, align 4
  br label %if.end152

land.lhs.true51.i:                                ; preds = %land.lhs.true.i452
  %arrayidx52.i = getelementptr i8, ptr %3, i32 1
  %177 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx52.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %cmp54.i = icmp eq i8 %178, 0
  br i1 %cmp54.i, label %land.lhs.true56.i, label %land.lhs.true51.i.if.else69.i_crit_edge

land.lhs.true51.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else69.i

land.lhs.true56.i:                                ; preds = %land.lhs.true51.i
  %arrayidx57.i = getelementptr i8, ptr %3, i32 2
  %179 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %180)
  %cmp59.i = icmp eq i8 %180, -127
  br i1 %cmp59.i, label %land.lhs.true61.i, label %land.lhs.true56.i.if.else69.i_crit_edge

land.lhs.true56.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else69.i

land.lhs.true61.i:                                ; preds = %land.lhs.true56.i
  %arrayidx62.i = getelementptr i8, ptr %3, i32 3
  %181 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -73, i8 %182)
  %cmp64.i = icmp eq i8 %182, -73
  br i1 %cmp64.i, label %if.then66.i, label %land.lhs.true61.i.if.else69.i_crit_edge

land.lhs.true61.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else69.i

if.then66.i:                                      ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #13
  %last_keycode67.i = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 29
  %183 = ptrtoint ptr %last_keycode67.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %last_keycode67.i, align 8
  %185 = ptrtoint ptr %kc89 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %kc89, align 4
  br label %if.end152

if.else69.i:                                      ; preds = %land.lhs.true61.i.if.else69.i_crit_edge, %land.lhs.true56.i.if.else69.i_crit_edge, %land.lhs.true51.i.if.else69.i_crit_edge, %land.lhs.true34.i.if.else69.i_crit_edge, %land.lhs.true29.i.if.else69.i_crit_edge, %land.lhs.true24.i.if.else69.i_crit_edge, %land.lhs.true10.i.if.else69.i_crit_edge, %land.lhs.true.i452.if.else69.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ktype.0)
  %cmp71.i = icmp eq i8 %ktype.0, 1
  br i1 %cmp71.i, label %if.else69.i.if.then156.thread_crit_edge, label %not_input_data

if.else69.i.if.then156.thread_crit_edge:          ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then156.thread

if.else69.thread.i:                               ; preds = %if.end147
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ktype.0)
  %cmp71112.i = icmp eq i8 %ktype.0, 1
  br i1 %cmp71112.i, label %if.else69.thread.i.if.then156.thread_crit_edge, label %if.else80.i

if.else69.thread.i.if.then156.thread_crit_edge:   ; preds = %if.else69.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then156.thread

if.then156.thread:                                ; preds = %if.else69.thread.i.if.then156.thread_crit_edge, %if.else69.i.if.then156.thread_crit_edge
  %arrayidx74.i = getelementptr i8, ptr %3, i32 2
  %186 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx74.i, align 1
  %rc_toggle.i456 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 31
  %188 = ptrtoint ptr %rc_toggle.i456 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %rc_toggle.i456, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call2.i) #11
  br label %if.else160

if.else80.i:                                      ; preds = %if.else69.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %release_code.i457 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 33
  %189 = ptrtoint ptr %release_code.i457 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %release_code.i457, align 8, !range !519
  %191 = xor i8 %190, 1
  %192 = zext i8 %191 to i32
  br label %if.end152

if.end152:                                        ; preds = %if.else80.i, %if.then66.i, %if.then39.i, %if.then.i455
  %press_type.0.i.ph = phi i32 [ %192, %if.else80.i ], [ 0, %if.then66.i ], [ 0, %if.then39.i ], [ 0, %if.then.i455 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ktype.0)
  %cmp154.not = icmp eq i8 %ktype.0, 2
  br i1 %cmp154.not, label %do.body195, label %if.then156

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %press_type.0.i.ph)
  %cmp157 = icmp eq i32 %press_type.0.i.ph, 0
  br i1 %cmp157, label %if.then159, label %if.then156.if.else160_crit_edge

if.then156.if.else160_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else160

if.then159:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  %rdev = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 24
  %193 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rdev, align 4
  tail call void @rc_keyup(ptr noundef %194) #11
  br label %cleanup312

if.else160:                                       ; preds = %if.then156.if.else160_crit_edge, %if.then156.thread
  %rc_proto161 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 32
  %195 = ptrtoint ptr %rc_proto161 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %rc_proto161, align 8
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.231)
  switch i64 %196, label %if.else160.cleanup312_crit_edge [
    i64 524288, label %if.else160.if.end172_crit_edge
    i64 8388608, label %if.then169
  ]

if.else160.if.end172_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.else160.cleanup312_crit_edge:                  ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

if.then169:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.else160.if.end172_crit_edge
  %proto.0 = phi i32 [ 23, %if.then169 ], [ 19, %if.else160.if.end172_crit_edge ]
  %rdev173 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 24
  %197 = ptrtoint ptr %rdev173 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rdev173, align 4
  %rc_scancode = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 30
  %199 = ptrtoint ptr %rc_scancode to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %rc_scancode, align 4
  %conv174 = zext i32 %200 to i64
  %rc_toggle = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 31
  %201 = ptrtoint ptr %rc_toggle to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %rc_toggle, align 8
  tail call void @rc_keydown(ptr noundef %198, i32 noundef %proto.0, i64 noundef %conv174, i8 noundef zeroext %202) #11
  %call184 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  %203 = ptrtoint ptr %kc89 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %kc89, align 4
  %last_keycode190 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 29
  %205 = ptrtoint ptr %last_keycode190 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %last_keycode190, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call184) #11
  br label %cleanup312

do.body195:                                       ; preds = %if.end152
  %call203 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  %call208 = tail call i64 @ktime_get() #11
  %206 = ptrtoint ptr %kc89 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %kc89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %207)
  %cmp210 = icmp eq i32 %207, 113
  br i1 %cmp210, label %do.body195.if.then217_crit_edge, label %lor.lhs.false212

do.body195.if.then217_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then217

lor.lhs.false212:                                 ; preds = %do.body195
  %dev_descr = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 45
  %208 = ptrtoint ptr %dev_descr to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev_descr, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %209, align 8
  %212 = and i16 %211, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool216.not = icmp eq i16 %212, 0
  br i1 %tobool216.not, label %lor.lhs.false212.if.end231_crit_edge, label %lor.lhs.false212.if.then217_crit_edge

lor.lhs.false212.if.then217_crit_edge:            ; preds = %lor.lhs.false212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then217

lor.lhs.false212.if.end231_crit_edge:             ; preds = %lor.lhs.false212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then217:                                       ; preds = %lor.lhs.false212.if.then217_crit_edge, %do.body195.if.then217_crit_edge
  %last_keycode219 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 29
  %213 = ptrtoint ptr %last_keycode219 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %last_keycode219, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %214)
  %cmp220 = icmp eq i32 %207, %214
  br i1 %cmp220, label %land.lhs.true222, label %if.then217.if.end231_crit_edge

if.then217.if.end231_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

land.lhs.true222:                                 ; preds = %if.then217
  %215 = load i64, ptr @imon_incoming_packet.prev_time, align 8
  %sub.i458 = sub i64 %call208, %215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i458)
  %cmp8.i.i.i = icmp slt i64 %sub.i458, 0
  %216 = tail call i64 @llvm.abs.i64(i64 %sub.i458, i1 false) #11
  %217 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %216) #16, !srcloc !520
  %218 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %216, i64 %217, i32 0) #16, !srcloc !521
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %218, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %idev = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 25
  %219 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %idev, align 8
  %rep = getelementptr inbounds %struct.input_dev, ptr %220, i32 0, i32 24
  %221 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %rep, align 4
  %conv225 = sext i32 %222 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i, i64 %conv225)
  %cmp226 = icmp slt i64 %cond213.i.i.i, %conv225
  br i1 %cmp226, label %if.then228, label %land.lhs.true222.if.end231_crit_edge

land.lhs.true222.if.end231_crit_edge:             ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then228:                                       ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call203) #11
  br label %cleanup312

if.end231:                                        ; preds = %land.lhs.true222.if.end231_crit_edge, %if.then217.if.end231_crit_edge, %lor.lhs.false212.if.end231_crit_edge
  store i64 %call208, ptr @imon_incoming_packet.prev_time, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call203) #11
  %idev234 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 25
  %223 = ptrtoint ptr %idev234 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %idev234, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %press_type.0.i.ph)
  %tobool.i = icmp ne i32 %press_type.0.i.ph, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %224, i32 noundef 1, i32 noundef %207, i32 noundef %lnot.ext.i) #11
  %225 = ptrtoint ptr %idev234 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %idev234, align 8
  tail call void @input_event(ptr noundef %226, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %227 = ptrtoint ptr %idev234 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %idev234, align 8
  tail call void @input_event(ptr noundef %228, i32 noundef 1, i32 noundef %207, i32 noundef 0) #11
  %229 = ptrtoint ptr %idev234 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %idev234, align 8
  tail call void @input_event(ptr noundef %230, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %call247 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  %last_keycode252 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 29
  %231 = ptrtoint ptr %last_keycode252 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %207, ptr %last_keycode252, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call247) #11
  br label %cleanup312

not_input_data:                                   ; preds = %if.else69.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.0)
  %cmp254.not = icmp eq i32 %len.0, 8
  br i1 %cmp254.not, label %if.end260, label %do.end259

do.end259:                                        ; preds = %not_input_data
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.49, i32 noundef %len.0, i32 noundef %intf) #15
  br label %cleanup312

if.end260:                                        ; preds = %not_input_data
  %232 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %cmp263 = icmp eq i8 %233, 0
  br i1 %cmp263, label %land.lhs.true265, label %if.end260.cleanup312_crit_edge

if.end260.cleanup312_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

land.lhs.true265:                                 ; preds = %if.end260
  %arrayidx266 = getelementptr i8, ptr %3, i32 2
  %234 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx266, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %235)
  %cmp268 = icmp eq i8 %235, -1
  br i1 %cmp268, label %land.lhs.true270, label %land.lhs.true265.cleanup312_crit_edge

land.lhs.true265.cleanup312_crit_edge:            ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

land.lhs.true270:                                 ; preds = %land.lhs.true265
  %arrayidx271 = getelementptr i8, ptr %3, i32 3
  %236 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx271, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %237)
  %cmp273 = icmp eq i8 %237, -1
  br i1 %cmp273, label %land.lhs.true275, label %land.lhs.true270.cleanup312_crit_edge

land.lhs.true270.cleanup312_crit_edge:            ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

land.lhs.true275:                                 ; preds = %land.lhs.true270
  %arrayidx276 = getelementptr i8, ptr %3, i32 4
  %238 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx276, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %239)
  %cmp278 = icmp eq i8 %239, -1
  br i1 %cmp278, label %land.lhs.true280, label %land.lhs.true275.cleanup312_crit_edge

land.lhs.true275.cleanup312_crit_edge:            ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

land.lhs.true280:                                 ; preds = %land.lhs.true275
  %arrayidx281 = getelementptr i8, ptr %3, i32 5
  %240 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx281, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %241)
  %cmp283 = icmp eq i8 %241, -1
  br i1 %cmp283, label %land.lhs.true285, label %land.lhs.true280.cleanup312_crit_edge

land.lhs.true280.cleanup312_crit_edge:            ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

land.lhs.true285:                                 ; preds = %land.lhs.true280
  %arrayidx286 = getelementptr i8, ptr %3, i32 6
  %242 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx286, align 1
  %244 = zext i8 %243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %244, ptr @__sancov_gen_cov_switch_values.232)
  switch i8 %243, label %land.lhs.true285.cleanup312_crit_edge [
    i8 78, label %land.lhs.true290
    i8 94, label %land.lhs.true300
  ]

land.lhs.true285.cleanup312_crit_edge:            ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

land.lhs.true290:                                 ; preds = %land.lhs.true285
  %arrayidx291 = getelementptr i8, ptr %3, i32 7
  %245 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx291, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %246)
  %cmp293 = icmp eq i8 %246, -33
  br i1 %cmp293, label %land.lhs.true290.do.end308_crit_edge, label %land.lhs.true290.cleanup312_crit_edge

land.lhs.true290.cleanup312_crit_edge:            ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

land.lhs.true290.do.end308_crit_edge:             ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end308

land.lhs.true300:                                 ; preds = %land.lhs.true285
  %arrayidx301 = getelementptr i8, ptr %3, i32 7
  %247 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx301, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %248)
  %cmp303 = icmp eq i8 %248, -33
  br i1 %cmp303, label %land.lhs.true300.do.end308_crit_edge, label %land.lhs.true300.cleanup312_crit_edge

land.lhs.true300.cleanup312_crit_edge:            ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup312

land.lhs.true300.do.end308_crit_edge:             ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end308

do.end308:                                        ; preds = %land.lhs.true300.do.end308_crit_edge, %land.lhs.true290.do.end308_crit_edge
  %arrayidx309 = getelementptr i8, ptr %3, i32 1
  %249 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx309, align 1
  %conv310 = zext i8 %250 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.49, i32 noundef %conv310) #15
  %rf_isassociating = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 6
  %251 = ptrtoint ptr %rf_isassociating to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 0, ptr %rf_isassociating, align 1
  br label %cleanup312

cleanup312:                                       ; preds = %do.end308, %land.lhs.true300.cleanup312_crit_edge, %land.lhs.true290.cleanup312_crit_edge, %land.lhs.true285.cleanup312_crit_edge, %land.lhs.true280.cleanup312_crit_edge, %land.lhs.true275.cleanup312_crit_edge, %land.lhs.true270.cleanup312_crit_edge, %land.lhs.true265.cleanup312_crit_edge, %if.end260.cleanup312_crit_edge, %do.end259, %if.end231, %if.then228, %if.end172, %if.else160.cleanup312_crit_edge, %if.then159, %if.then104.cleanup312_crit_edge, %if.then100, %do.end67, %land.lhs.true7.cleanup312_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @imon_mouse_event(ptr noundef %ictx, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kc_lock = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  %product = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 23
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %product, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -36, i16 %1)
  %cmp6.not = icmp eq i16 %1, -36
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  br i1 %cmp6.not, label %land.lhs.true18, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp10 = icmp eq i32 %len, 5
  %or.cond = and i1 %cmp10, %tobool.not
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else106_crit_edge

land.lhs.true.if.else106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else106

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12 = getelementptr i8, ptr %buf, i32 2
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %buf, i32 3
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13, align 1
  br label %do.body136

land.lhs.true18:                                  ; preds = %entry
  %conv20 = zext i8 %3 to i32
  %and21 = and i32 %conv20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true18.land.lhs.true100_crit_edge, label %land.lhs.true23

land.lhs.true18.land.lhs.true100_crit_edge:       ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true100

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %arrayidx24 = getelementptr i8, ptr %buf, i32 1
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  %11 = and i8 %10, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %if.then32, label %land.lhs.true100thread-pre-split

if.then32:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %and35 = and i8 %10, 8
  %and38 = lshr i8 %10, 2
  %13 = and i8 %and38, 4
  %or = or i8 %13, %and35
  %and42 = lshr i8 %10, 4
  %14 = and i8 %and42, 2
  %or44 = or i8 %or, %14
  %and47 = lshr i8 %10, 6
  %15 = and i8 %and47, 1
  %or49 = or i8 %or44, %15
  %and53 = and i32 %conv20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %or57 = or i8 %or49, -16
  %spec.select = select i1 %tobool54.not, i8 %or49, i8 %or57
  %16 = sdiv i8 %spec.select, 2
  %conv61 = add nsw i8 %16, %spec.select
  %arrayidx62 = getelementptr i8, ptr %buf, i32 2
  %17 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx62, align 1
  %and64 = and i8 %18, 8
  %and67 = lshr i8 %18, 2
  %19 = and i8 %and67, 4
  %or69 = or i8 %19, %and64
  %and72 = lshr i8 %18, 4
  %20 = and i8 %and72, 2
  %or74 = or i8 %or69, %20
  %and77 = lshr i8 %18, 6
  %21 = and i8 %and77, 1
  %or79 = or i8 %or74, %21
  %22 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool84.not = icmp eq i8 %22, 0
  %or87 = or i8 %or79, -16
  %rel_y.0 = select i1 %tobool84.not, i8 %or79, i8 %or87
  %23 = sdiv i8 %rel_y.0, 2
  %conv94 = add nsw i8 %23, %rel_y.0
  br label %do.body136

land.lhs.true100thread-pre-split:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr = load i8, ptr %buf, align 1
  br label %land.lhs.true100

land.lhs.true100:                                 ; preds = %land.lhs.true100thread-pre-split, %land.lhs.true18.land.lhs.true100_crit_edge
  %25 = phi i8 [ %.pr, %land.lhs.true100thread-pre-split ], [ %3, %land.lhs.true18.land.lhs.true100_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %25)
  %cmp103 = icmp eq i8 %25, 104
  br i1 %cmp103, label %land.lhs.true100.do.body136_crit_edge, label %land.lhs.true100.if.else106_crit_edge

land.lhs.true100.if.else106_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else106

land.lhs.true100.do.body136_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

if.else106:                                       ; preds = %land.lhs.true100.if.else106_crit_edge, %land.lhs.true.if.else106_crit_edge
  %kc = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 28
  %26 = ptrtoint ptr %kc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %kc, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %27, label %if.else106.if.end189_crit_edge [
    i32 402, label %land.lhs.true109
    i32 403, label %land.lhs.true120
  ]

if.else106.if.end189_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

land.lhs.true109:                                 ; preds = %if.else106
  %arrayidx110 = getelementptr i8, ptr %buf, i32 2
  %29 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx110, align 1
  %31 = and i8 %30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp113.not.not = icmp eq i8 %31, 0
  br i1 %cmp113.not.not, label %land.lhs.true109.do.body136_crit_edge, label %land.lhs.true109.if.end189_crit_edge

land.lhs.true109.if.end189_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

land.lhs.true109.do.body136_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

land.lhs.true120:                                 ; preds = %if.else106
  %arrayidx121 = getelementptr i8, ptr %buf, i32 2
  %32 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx121, align 1
  %34 = and i8 %33, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp124.not.not = icmp eq i8 %34, 0
  br i1 %cmp124.not.not, label %land.lhs.true120.do.body136_crit_edge, label %land.lhs.true120.if.end189_crit_edge

land.lhs.true120.if.end189_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

land.lhs.true120.do.body136_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

do.body136:                                       ; preds = %land.lhs.true120.do.body136_crit_edge, %land.lhs.true109.do.body136_crit_edge, %land.lhs.true100.do.body136_crit_edge, %if.then32, %if.then
  %tobool146.not.ph = phi i1 [ false, %land.lhs.true120.do.body136_crit_edge ], [ false, %land.lhs.true109.do.body136_crit_edge ], [ true, %land.lhs.true100.do.body136_crit_edge ], [ true, %if.then ], [ true, %if.then32 ]
  %dir.0.ph = phi i32 [ -1, %land.lhs.true120.do.body136_crit_edge ], [ 1, %land.lhs.true109.do.body136_crit_edge ], [ 0, %land.lhs.true100.do.body136_crit_edge ], [ 0, %if.then ], [ 0, %if.then32 ]
  %right_shift.0.ph = phi i32 [ 1, %land.lhs.true120.do.body136_crit_edge ], [ 1, %land.lhs.true109.do.body136_crit_edge ], [ 2, %land.lhs.true100.do.body136_crit_edge ], [ 1, %if.then ], [ 2, %if.then32 ]
  %rel_y.1.ph = phi i8 [ 0, %land.lhs.true120.do.body136_crit_edge ], [ 0, %land.lhs.true109.do.body136_crit_edge ], [ 0, %land.lhs.true100.do.body136_crit_edge ], [ %8, %if.then ], [ %conv94, %if.then32 ]
  %rel_x.1.ph = phi i8 [ 0, %land.lhs.true120.do.body136_crit_edge ], [ 0, %land.lhs.true109.do.body136_crit_edge ], [ 0, %land.lhs.true100.do.body136_crit_edge ], [ %6, %if.then ], [ %conv61, %if.then32 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call2) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_mouse_event.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_mouse_event, %if.then142)) #11
          to label %do.end145 [label %if.then142], !srcloc !518

if.then142:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %ictx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ictx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_mouse_event.__UNIQUE_ID_ddebug261, ptr noundef %36, ptr noundef nonnull @.str.62) #11
  br label %do.end145

do.end145:                                        ; preds = %if.then142, %do.body136
  br i1 %tobool146.not.ph, label %if.else148, label %if.then147

if.then147:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #13
  %idev = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 25
  %37 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %idev, align 8
  tail call void @input_event(ptr noundef %38, i32 noundef 2, i32 noundef 8, i32 noundef %dir.0.ph) #11
  br label %if.end171

if.else148:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rel_x.1.ph)
  %tobool150.not = icmp eq i8 %rel_x.1.ph, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rel_y.1.ph)
  %tobool153.not = icmp eq i8 %rel_y.1.ph, 0
  %or.cond240 = select i1 %tobool150.not, i1 %tobool153.not, i1 false
  br i1 %or.cond240, label %if.else159, label %if.then154

if.then154:                                       ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #13
  %conv149 = sext i8 %rel_x.1.ph to i32
  %idev155 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 25
  %39 = ptrtoint ptr %idev155 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %idev155, align 8
  tail call void @input_event(ptr noundef %40, i32 noundef 2, i32 noundef 0, i32 noundef %conv149) #11
  %41 = ptrtoint ptr %idev155 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %idev155, align 8
  %conv158 = sext i8 %rel_y.1.ph to i32
  tail call void @input_event(ptr noundef %42, i32 noundef 2, i32 noundef 1, i32 noundef %conv158) #11
  br label %if.end171

if.else159:                                       ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #13
  %idev160 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 25
  %43 = ptrtoint ptr %idev160 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %idev160, align 8
  %arrayidx161 = getelementptr i8, ptr %buf, i32 1
  %45 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx161, align 1
  %47 = and i8 %46, 1
  %48 = zext i8 %47 to i32
  tail call void @input_event(ptr noundef %44, i32 noundef 1, i32 noundef 272, i32 noundef %48) #11
  %49 = ptrtoint ptr %idev160 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %idev160, align 8
  %51 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx161, align 1
  %conv166 = zext i8 %52 to i32
  %53 = lshr i32 %conv166, %right_shift.0.ph
  %54 = and i32 %53, 1
  tail call void @input_event(ptr noundef %50, i32 noundef 1, i32 noundef 273, i32 noundef %54) #11
  br label %if.end171

if.end171:                                        ; preds = %if.else159, %if.then154, %if.then147
  %idev172 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 25
  %55 = ptrtoint ptr %idev172 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %idev172, align 8
  tail call void @input_event(ptr noundef %56, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %call182 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kc_lock) #11
  %kc187 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 28
  %57 = ptrtoint ptr %kc187 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %kc187, align 4
  %last_keycode = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 29
  %59 = ptrtoint ptr %last_keycode to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %last_keycode, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.end171, %land.lhs.true120.if.end189_crit_edge, %land.lhs.true109.if.end189_crit_edge, %if.else106.if.end189_crit_edge
  %call2.sink = phi i32 [ %call182, %if.end171 ], [ %call2, %if.else106.if.end189_crit_edge ], [ %call2, %land.lhs.true109.if.end189_crit_edge ], [ %call2, %land.lhs.true120.if.end189_crit_edge ]
  %mouse_input.0.off0252 = phi i1 [ true, %if.end171 ], [ false, %if.else106.if.end189_crit_edge ], [ false, %land.lhs.true109.if.end189_crit_edge ], [ false, %land.lhs.true120.if.end189_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kc_lock, i32 noundef %call2.sink) #11
  ret i1 %mouse_input.0.off0252
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_g_keycode_from_table(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stabilize(i32 noundef %a, i32 noundef %b, i16 noundef zeroext %timeout, i16 noundef zeroext %threshold) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #11
  %0 = load i64, ptr @stabilize.prev_time, align 8
  %sub.i = sub i64 %call, %0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %1 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #11
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %1) #16, !srcloc !520
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %1, i64 %2, i32 0) #16, !srcloc !521
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %3, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv = trunc i64 %cond213.i.i.i to i32
  %4 = load i64, ptr @stabilize.hit_time, align 8
  %sub.i109 = sub i64 %call, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i109)
  %cmp8.i.i.i110 = icmp slt i64 %sub.i109, 0
  %5 = tail call i64 @llvm.abs.i64(i64 %sub.i109, i1 false) #11
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #16, !srcloc !520
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %6, i32 0) #16, !srcloc !521
  %asmresult10.i.i.i.i111 = extractvalue { i64, i32 } %7, 0
  %div1811.i.i.i112 = lshr i64 %asmresult10.i.i.i.i111, 18
  %sub210.i.i.i113 = sub nsw i64 0, %div1811.i.i.i112
  %cond213.i.i.i114 = select i1 %cmp8.i.i.i110, i64 %sub210.i.i.i113, i64 %div1811.i.i.i112
  %conv3 = trunc i64 %cond213.i.i.i114 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %conv)
  %cmp = icmp sgt i32 %conv, 100
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @stabilize.x, align 4
  store i32 0, ptr @stabilize.y, align 4
  store i32 0, ptr @stabilize.hits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = load i32, ptr @stabilize.x, align 4
  %add = add i32 %8, %a
  store i32 %add, ptr @stabilize.x, align 4
  %9 = load i32, ptr @stabilize.y, align 4
  %add5 = add i32 %9, %b
  store i32 %add5, ptr @stabilize.y, align 4
  store i64 %call, ptr @stabilize.prev_time, align 8
  %10 = tail call i32 @llvm.abs.i32(i32 %add, i1 false)
  %conv8 = zext i16 %threshold to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv8)
  %cmp9 = icmp sgt i32 %10, %conv8
  %11 = tail call i32 @llvm.abs.i32(i32 %add5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv8)
  %cmp21 = icmp sgt i32 %11, %conv8
  %or.cond119 = select i1 %cmp9, i1 true, i1 %cmp21
  br i1 %or.cond119, label %if.then23, label %if.end.if.end83_crit_edge

if.end.if.end83_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp42 = icmp sgt i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5)
  %cmp45 = icmp sgt i32 %add5, 0
  %cond47 = select i1 %cmp45, i32 127, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp48 = icmp sgt i32 %add, 0
  %cond50 = select i1 %cmp48, i32 32512, i32 32768
  %result.0 = select i1 %cmp42, i32 %cond47, i32 %cond50
  store i32 0, ptr @stabilize.x, align 4
  store i32 0, ptr @stabilize.y, align 4
  %12 = load i32, ptr @stabilize.prev_result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %result.0, i32 %12)
  %cmp52 = icmp eq i32 %result.0, %12
  br i1 %cmp52, label %if.then54, label %if.else81

if.then54:                                        ; preds = %if.then23
  %13 = load i32, ptr @stabilize.hits, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr @stabilize.hits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp55 = icmp sgt i32 %inc, 3
  br i1 %cmp55, label %if.then57, label %if.end73

if.then57:                                        ; preds = %if.then54
  %trunc = trunc i32 %result.0 to i16
  %14 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.234)
  switch i16 %trunc, label %if.then57.if.end83_crit_edge [
    i16 127, label %sw.bb
    i16 128, label %sw.bb59
    i16 32512, label %sw.bb64
    i16 -32768, label %sw.bb68
  ]

if.then57.if.end83_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

sw.bb:                                            ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul nuw nsw i32 %conv8, 17
  %div = udiv i32 %mul, 30
  store i32 %div, ptr @stabilize.y, align 4
  br label %if.end83

sw.bb59:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %mul61 = mul nuw nsw i32 %conv8, 17
  %div62 = udiv i32 %mul61, 30
  %sub63 = sub nsw i32 0, %div62
  store i32 %sub63, ptr @stabilize.y, align 4
  br label %if.end83

sw.bb64:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %mul66 = mul nuw nsw i32 %conv8, 17
  %div67 = udiv i32 %mul66, 30
  store i32 %div67, ptr @stabilize.x, align 4
  br label %if.end83

sw.bb68:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %mul70 = mul nuw nsw i32 %conv8, 17
  %div71 = udiv i32 %mul70, 30
  %sub72 = sub nsw i32 0, %div71
  store i32 %sub72, ptr @stabilize.x, align 4
  br label %if.end83

if.end73:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp74 = icmp eq i32 %inc, 2
  %conv76 = zext i16 %timeout to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv76)
  %cmp77 = icmp slt i32 %conv3, %conv76
  %or.cond = select i1 %cmp74, i1 %cmp77, i1 false
  br i1 %or.cond, label %if.then79, label %if.end73.if.end83_crit_edge

if.end73.if.end83_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr @stabilize.hits, align 4
  br label %if.end83

if.else81:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %result.0, ptr @stabilize.prev_result, align 4
  store i32 1, ptr @stabilize.hits, align 4
  store i64 %call, ptr @stabilize.hit_time, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then79, %if.end73.if.end83_crit_edge, %sw.bb68, %sw.bb64, %sw.bb59, %sw.bb, %if.then57.if.end83_crit_edge, %if.end.if.end83_crit_edge
  %result.1 = phi i32 [ 0, %if.then79 ], [ %result.0, %if.end73.if.end83_crit_edge ], [ %result.0, %if.else81 ], [ %result.0, %sw.bb ], [ %result.0, %sw.bb59 ], [ %result.0, %sw.bb64 ], [ %result.0, %sw.bb68 ], [ %result.0, %if.then57.if.end83_crit_edge ], [ 0, %if.end.if.end83_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_ir_change_protocol(ptr nocapture noundef readonly %rc, ptr nocapture noundef %rc_proto) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rc_proto, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 16
  %6 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %allowed_protocols, align 8
  %and = and i64 %7, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.80) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rc_proto, align 8
  %and4 = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.else, label %do.body7

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_ir_change_protocol.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_ir_change_protocol, %if.then11)) #11
          to label %if.end77 [label %if.then11], !srcloc !518

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_ir_change_protocol.__UNIQUE_ID_ddebug257, ptr noundef %3, ptr noundef nonnull @.str.82) #11
  br label %if.end77

if.else:                                          ; preds = %if.end
  %and15 = and i64 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %do.end56, label %do.body18

do.body18:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_ir_change_protocol.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_ir_change_protocol, %if.then30)) #11
          to label %do.end33 [label %if.then30], !srcloc !518

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_ir_change_protocol.__UNIQUE_ID_ddebug258, ptr noundef %3, ptr noundef nonnull @.str.83) #11
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body18
  %10 = load i32, ptr @pad_stabilize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not = icmp eq i32 %10, 0
  br i1 %tobool34.not, label %do.body36, label %do.end33.if.end77_crit_edge

do.end33.if.end77_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.body36:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_ir_change_protocol.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_ir_change_protocol, %if.then48)) #11
          to label %if.end77 [label %if.then48], !srcloc !518

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_ir_change_protocol.__UNIQUE_ID_ddebug259, ptr noundef %3, ptr noundef nonnull @.str.84) #11
  br label %if.end77

do.end56:                                         ; preds = %if.else
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.86) #15
  %11 = load i32, ptr @pad_stabilize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool57.not = icmp eq i32 %11, 0
  br i1 %tobool57.not, label %do.body59, label %do.end56.if.end77_crit_edge

do.end56.if.end77_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.body59:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_ir_change_protocol.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_ir_change_protocol, %if.then71)) #11
          to label %if.end77 [label %if.then71], !srcloc !518

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_ir_change_protocol.__UNIQUE_ID_ddebug260, ptr noundef %3, ptr noundef nonnull @.str.84) #11
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %do.body59, %do.end56.if.end77_crit_edge, %if.then48, %do.body36, %do.end33.if.end77_crit_edge, %if.then11, %do.body7
  %.sink = phi i64 [ 524288, %do.body7 ], [ 524288, %if.then11 ], [ 8388608, %do.body36 ], [ 8388608, %if.then48 ], [ 8388608, %do.end33.if.end77_crit_edge ], [ 8388608, %do.body59 ], [ 8388608, %if.then71 ], [ 8388608, %do.end56.if.end77_crit_edge ]
  %ir_proto_packet.sroa.0.0 = phi i8 [ 1, %do.body7 ], [ 1, %if.then11 ], [ 0, %do.body36 ], [ 0, %if.then48 ], [ 0, %do.end33.if.end77_crit_edge ], [ 0, %do.body59 ], [ 0, %if.then71 ], [ 0, %do.end56.if.end77_crit_edge ]
  %12 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %.sink, ptr %rc_proto, align 8
  %usb_tx_buf = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %ir_proto_packet.sroa.0.0, ptr %usb_tx_buf, align 1
  %ir_proto_packet.sroa.5.0.arraydecay.sroa_idx = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 19, i32 1
  %14 = call ptr @memcpy(ptr %ir_proto_packet.sroa.5.0.arraydecay.sroa_idx, ptr getelementptr inbounds ([8 x i8], ptr @__const.imon_ir_change_protocol.ir_proto_packet, i32 0, i32 1), i32 7)
  %lock = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 9
  %call78 = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #11
  br i1 %call78, label %if.end77.if.end81_crit_edge, label %if.then79

if.end77.if.end81_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end77.if.end81_crit_edge
  %call82 = tail call fastcc i32 @send_packet(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.out_crit_edge

if.end81.out_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end85:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rc_proto, align 8
  %rc_proto86 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %rc_proto86 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %rc_proto86, align 8
  %pad_mouse = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 35
  %18 = ptrtoint ptr %pad_mouse to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %pad_mouse, align 2
  br label %out

out:                                              ; preds = %if.end85, %if.end81.out_crit_edge
  br i1 %call78, label %out.if.end90_crit_edge, label %if.then88

out.if.end90_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then88:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %out.if.end90_crit_edge
  ret i32 %call82
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_packet(ptr noundef %ictx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_control = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 17
  %0 = ptrtoint ptr %tx_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_control, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %usbdev_intf0 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 1
  %2 = ptrtoint ptr %usbdev_intf0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev_intf0, align 4
  %tx_endpoint = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 13
  %4 = ptrtoint ptr %tx_endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, 1073741824
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterval, align 1
  %conv3 = zext i8 %11 to i32
  %tx_urb = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 16
  %12 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_urb, align 8
  %usb_tx_buf = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 19
  %dev1.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %usb_tx_buf, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 28
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @usb_tx_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 27
  %19 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ictx, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i188 = icmp eq i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp6.i = icmp ugt i32 %21, 4
  %or.cond.i = or i1 %cmp.i188, %cmp6.i
  br i1 %or.cond.i, label %if.then.i190, label %if.then.usb_fill_int_urb.exit_crit_edge

if.then.usb_fill_int_urb.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i190:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call i32 @llvm.smax.i32(i32 %conv3, i32 1) #11
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 16) #11
  %sub.i = add nsw i32 %23, -1
  %shl.i189 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i190, %if.then.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i189, %if.then.i190 ], [ %conv3, %if.then.usb_fill_int_urb.exit_crit_edge ]
  %24 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 25
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %interval.sink.i, ptr %24, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 23
  %26 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 8) #14
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 33, ptr %call7.i, align 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 1
  %29 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 9, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 2
  %30 = ptrtoint ptr %wValue to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %wValue, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 3
  %31 = ptrtoint ptr %wIndex to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 256, ptr %wIndex, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 4
  %32 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2048, ptr %wLength, align 2
  %usbdev_intf09 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 1
  %33 = ptrtoint ptr %usbdev_intf09 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usbdev_intf09, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i192 = shl i32 %36, 8
  %or11 = or i32 %shl.i192, -2147483648
  %tx_urb12 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 16
  %37 = ptrtoint ptr %tx_urb12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_urb12, align 8
  %usb_tx_buf14 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 19
  %dev1.i193 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %dev1.i193 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %34, ptr %dev1.i193, align 4
  %pipe2.i194 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 10
  %40 = ptrtoint ptr %pipe2.i194 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or11, ptr %pipe2.i194, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 21
  %41 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %usb_tx_buf14, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i195 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 19
  %43 = ptrtoint ptr %transfer_buffer_length.i195 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %transfer_buffer_length.i195, align 4
  %complete.i196 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 28
  %44 = ptrtoint ptr %complete.i196 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @usb_tx_callback, ptr %complete.i196, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 27
  %45 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ictx, ptr %context5.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %usb_fill_int_urb.exit
  %tx_urb12.sink = phi ptr [ %tx_urb12, %if.end ], [ %tx_urb, %usb_fill_int_urb.exit ]
  %control_req.0 = phi ptr [ %call7.i, %if.end ], [ null, %usb_fill_int_urb.exit ]
  %46 = ptrtoint ptr %tx_urb12.sink to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_urb12.sink, align 8
  %actual_length17 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %actual_length17 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %actual_length17, align 4
  %finished = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 21, i32 1
  %49 = ptrtoint ptr %finished to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %finished, align 4
  %busy = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 21, i32 2
  %50 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %busy, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !522
  %tx_urb23 = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 16
  %51 = ptrtoint ptr %tx_urb23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_urb23, align 8
  %call24 = tail call i32 @usb_submit_urb(ptr noundef %52, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else43, label %if.then26

if.then26:                                        ; preds = %if.end18
  %53 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %busy, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !523
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @send_packet._rs, ptr noundef nonnull @__func__.send_packet) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then26.if.end74_crit_edge, label %do.end40

if.then26.if.end74_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

do.end40:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.send_packet, i32 noundef %call24) #15
  br label %if.end74

if.else43:                                        ; preds = %if.end18
  %lock = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %call46 = tail call i32 @wait_for_completion_interruptible(ptr noundef %finished) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else43.if.end59_crit_edge, label %if.then48

if.else43.if.end59_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then48:                                        ; preds = %if.else43
  %54 = ptrtoint ptr %tx_urb23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_urb23, align 8
  tail call void @usb_kill_urb(ptr noundef %55) #11
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @send_packet._rs.90, ptr noundef nonnull @__func__.send_packet) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then48.if.end59_crit_edge, label %do.end55

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.send_packet) #15
  br label %if.end59

if.end59:                                         ; preds = %do.end55, %if.then48.if.end59_crit_edge, %if.else43.if.end59_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %status = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 21, i32 3
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool62.not = icmp eq i32 %57, 0
  br i1 %tobool62.not, label %if.end59.if.end74_crit_edge, label %if.then63

if.end59.if.end74_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then63:                                        ; preds = %if.end59
  %call64 = tail call i32 @___ratelimit(ptr noundef nonnull @send_packet._rs.94, ptr noundef nonnull @__func__.send_packet) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.if.end74_crit_edge, label %do.end69

if.then63.if.end74_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

do.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.send_packet, i32 noundef %57) #15
  br label %if.end74

if.end74:                                         ; preds = %do.end69, %if.then63.if.end74_crit_edge, %if.end59.if.end74_crit_edge, %do.end40, %if.then26.if.end74_crit_edge
  %retval1.0 = phi i32 [ %call24, %do.end40 ], [ %call24, %if.then26.if.end74_crit_edge ], [ %57, %do.end69 ], [ %57, %if.then63.if.end74_crit_edge ], [ 0, %if.end59.if.end74_crit_edge ]
  tail call void @kfree(ptr noundef %control_req.0) #11
  %send_packet_delay = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 20
  %58 = ptrtoint ptr %send_packet_delay to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %send_packet_delay, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %59) #11
  br label %__here

__here:                                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %60 = tail call i32 @llvm.read_register.i32(metadata !508) #11
  %and.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 212
  %64 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 ptrtoint (ptr blockaddress(@send_packet, %__here) to i32), ptr %task_state_change, align 4
  %65 = load ptr, ptr %task, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 1, ptr %65, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !524
  %call144 = tail call i32 @schedule_timeout(i32 noundef %call2.i) #11
  br label %cleanup

cleanup:                                          ; preds = %__here, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %__here ], [ -12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_tx_callback(ptr noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %status4 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %status4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status4, align 4
  %busy = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 21, i32 2
  %5 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %busy, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !525
  %finished = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 21, i32 1
  tail call void @complete(ptr noundef %finished) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imon_touch_display_timeout(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %display_type = getelementptr i8, ptr %t, i32 -579
  %0 = ptrtoint ptr %display_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %display_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %touch = getelementptr i8, ptr %t, i32 -656
  %2 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touch, align 4
  %touch_x = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %touch_x to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %touch_x, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %5) #11
  %6 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touch, align 4
  %touch_y = getelementptr i8, ptr %t, i32 52
  %8 = ptrtoint ptr %touch_y to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %touch_y, align 8
  tail call void @input_event(ptr noundef %7, i32 noundef 3, i32 noundef 1, i32 noundef %9) #11
  %10 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %touch, align 4
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 330, i32 noundef 0) #11
  %12 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %touch, align 4
  tail call void @input_event(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_rx_callback_intf1(ptr noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev_present_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev_present_intf1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_present_intf1, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end3.out_crit_edge, label %if.end6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6:                                          ; preds = %if.end3
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %5, label %do.end [
    i32 -2, label %if.end6.cleanup_crit_edge
    i32 -108, label %if.end6.out_crit_edge
    i32 0, label %sw.bb7
  ]

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @imon_incoming_packet(ptr noundef nonnull %1, ptr noundef nonnull %urb, i32 noundef 1)
  br label %out

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.143, i32 noundef %5) #15
  br label %out

out:                                              ; preds = %do.end, %sw.bb7, %if.end6.out_crit_edge, %if.end3.out_crit_edge
  %rx_urb_intf1 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %rx_urb_intf1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_urb_intf1, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 2592) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @associate_remote_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %rf_isassociating = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rf_isassociating to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_isassociating, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %.str.146..str.145 = select i1 %tobool1.not, ptr @.str.146, ptr @.str.145
  %call3 = tail call i32 @strscpy(ptr noundef %buf, ptr noundef nonnull %.str.146..str.145, i32 noundef 4096) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %d, ptr noundef nonnull @.str.147) #15
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %call7 = tail call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @associate_remote_store(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %rf_isassociating = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rf_isassociating to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %rf_isassociating, align 1
  %dev_present_intf0.i = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %dev_present_intf0.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dev_present_intf0.i, align 8, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.150) #15
  br label %send_associate_24g.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %usb_tx_buf.i = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %usb_tx_buf.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 72057594037927968, ptr %usb_tx_buf.i, align 1
  %call11.i = tail call fastcc i32 @send_packet(ptr noundef nonnull %1) #11
  br label %send_associate_24g.exit

send_associate_24g.exit:                          ; preds = %if.end9.i, %do.end6.i
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %send_associate_24g.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %send_associate_24g.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_clock_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %display_supported = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %display_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %display_supported, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.161, i32 15)
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %display_isopen = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %display_isopen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %display_isopen, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool4.not, ptr @.str.164, ptr @.str.163
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.162, ptr noundef nonnull %cond)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %len.0 = phi i32 [ %call5, %if.else ], [ 14, %if.then2 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_clock_store(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %year = alloca i32, align 4
  %month = alloca i32, align 4
  %day = alloca i32, align 4
  %dow = alloca i32, align 4
  %hour = alloca i32, align 4
  %minute = alloca i32, align 4
  %second = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #11
  %2 = ptrtoint ptr %year to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %year, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month) #11
  %3 = ptrtoint ptr %month to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %month, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %day) #11
  %4 = ptrtoint ptr %day to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %day, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dow) #11
  %5 = ptrtoint ptr %dow to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dow, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hour) #11
  %6 = ptrtoint ptr %hour to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %hour, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minute) #11
  %7 = ptrtoint ptr %minute to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %minute, align 4, !annotation !526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %second) #11
  %8 = ptrtoint ptr %second to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %second, align 4, !annotation !526
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %display_supported = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %display_supported to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %display_supported, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.end.exit_crit_edge, label %if.else

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.else:                                          ; preds = %if.end
  %display_isopen = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %display_isopen to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %display_isopen, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %if.end7, label %if.else.exit_crit_edge

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end7:                                          ; preds = %if.else
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.165, ptr noundef nonnull %year, ptr noundef nonnull %month, ptr noundef nonnull %day, ptr noundef nonnull %dow, ptr noundef nonnull %hour, ptr noundef nonnull %minute, ptr noundef nonnull %second)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 7
  br i1 %cmp.not, label %if.end10, label %if.end7.exit_crit_edge

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end10:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %month to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %month, align 4
  %15 = add i32 %14, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %15)
  %16 = icmp ult i32 %15, -12
  br i1 %16, label %if.end10.exit_crit_edge, label %lor.lhs.false13

if.end10.exit_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

lor.lhs.false13:                                  ; preds = %if.end10
  %17 = ptrtoint ptr %day to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %day, align 4
  %19 = add i32 %18, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %19)
  %20 = icmp ult i32 %19, -31
  br i1 %20, label %lor.lhs.false13.exit_crit_edge, label %lor.lhs.false17

lor.lhs.false13.exit_crit_edge:                   ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %21 = ptrtoint ptr %dow to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp18 = icmp ugt i32 %22, 6
  br i1 %cmp18, label %lor.lhs.false17.exit_crit_edge, label %lor.lhs.false19

lor.lhs.false17.exit_crit_edge:                   ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %23 = ptrtoint ptr %hour to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %24)
  %cmp20 = icmp ugt i32 %24, 23
  br i1 %cmp20, label %lor.lhs.false19.exit_crit_edge, label %lor.lhs.false21

lor.lhs.false19.exit_crit_edge:                   ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %25 = ptrtoint ptr %minute to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %minute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %26)
  %cmp22 = icmp ugt i32 %26, 59
  br i1 %cmp22, label %lor.lhs.false21.exit_crit_edge, label %lor.lhs.false23

lor.lhs.false21.exit_crit_edge:                   ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %27 = ptrtoint ptr %second to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %second, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %28)
  %cmp24 = icmp ugt i32 %28, 59
  br i1 %cmp24, label %lor.lhs.false23.exit_crit_edge, label %if.end26

lor.lhs.false23.exit_crit_edge:                   ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end26:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %year to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %year, align 4
  %call27 = call fastcc i32 @send_set_imon_clock(ptr noundef nonnull %1, i32 noundef %30, i32 noundef %14, i32 noundef %18, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %spec.select = select i1 %tobool28.not, i32 %count, i32 %call27
  br label %exit

exit:                                             ; preds = %if.end26, %lor.lhs.false23.exit_crit_edge, %lor.lhs.false21.exit_crit_edge, %lor.lhs.false19.exit_crit_edge, %lor.lhs.false17.exit_crit_edge, %lor.lhs.false13.exit_crit_edge, %if.end10.exit_crit_edge, %if.end7.exit_crit_edge, %if.else.exit_crit_edge, %if.end.exit_crit_edge
  %retval1.0 = phi i32 [ -19, %if.end.exit_crit_edge ], [ -16, %if.else.exit_crit_edge ], [ -22, %if.end7.exit_crit_edge ], [ -22, %lor.lhs.false23.exit_crit_edge ], [ -22, %lor.lhs.false21.exit_crit_edge ], [ -22, %lor.lhs.false19.exit_crit_edge ], [ -22, %lor.lhs.false17.exit_crit_edge ], [ -22, %lor.lhs.false13.exit_crit_edge ], [ -22, %if.end10.exit_crit_edge ], [ %spec.select, %if.end26 ]
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %exit ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %second) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minute) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hour) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dow) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %day) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_set_imon_clock(ptr noundef %ictx, i32 noundef %year, i32 noundef %month, i32 noundef %day, i32 noundef %dow, i32 noundef %hour, i32 noundef %minute, i32 noundef %second) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ictx, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.166) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %display_type = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 34
  %0 = ptrtoint ptr %display_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %display_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.236)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb47
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = trunc i32 %year to i8
  %3 = trunc i32 %month to i8
  %conv6 = add i8 %3, -1
  %product = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 23
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -36, i16 %5)
  %cmp = icmp eq i16 %5, -36
  %spec.select = select i1 %cmp, i8 80, i8 -120
  %spec.select187 = select i1 %cmp, i64 -9223372036854775727, i64 -9223372036854775670
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv48 = trunc i32 %year to i8
  %6 = trunc i32 %month to i8
  %conv52 = add i8 %6, -1
  %conv55 = trunc i32 %day to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb
  %clock_enable_pkt.sroa.0.sroa.24.0 = phi i8 [ 64, %sw.bb47 ], [ %spec.select, %sw.bb ]
  %clock_enable_pkt.sroa.0.sroa.12.0.in = phi i32 [ %dow, %sw.bb47 ], [ %day, %sw.bb ]
  %clock_enable_pkt.sroa.0.sroa.9.0 = phi i8 [ %conv55, %sw.bb47 ], [ %conv6, %sw.bb ]
  %clock_enable_pkt.sroa.0.sroa.6.0 = phi i8 [ %conv52, %sw.bb47 ], [ %conv3, %sw.bb ]
  %clock_enable_pkt.sroa.0.sroa.0.0 = phi i8 [ %conv48, %sw.bb47 ], [ -128, %sw.bb ]
  %clock_enable_pkt.sroa.28.0 = phi i64 [ 1099511627842, %sw.bb47 ], [ %spec.select187, %sw.bb ]
  %usb_tx_buf = getelementptr inbounds %struct.imon_context, ptr %ictx, i32 0, i32 19
  %clock_enable_pkt.sroa.0.sroa.24.0.insert.ext = zext i8 %clock_enable_pkt.sroa.0.sroa.24.0 to i64
  %clock_enable_pkt.sroa.0.sroa.21.0.mask = shl i32 %second, 8
  %7 = and i32 %clock_enable_pkt.sroa.0.sroa.21.0.mask, 65280
  %clock_enable_pkt.sroa.0.sroa.21.0.insert.shift = zext i32 %7 to i64
  %clock_enable_pkt.sroa.0.sroa.21.0.insert.insert = or i64 %clock_enable_pkt.sroa.0.sroa.24.0.insert.ext, %clock_enable_pkt.sroa.0.sroa.21.0.insert.shift
  %clock_enable_pkt.sroa.0.sroa.18.0.mask = shl i32 %minute, 16
  %8 = shl i32 %hour, 24
  %clock_enable_pkt.sroa.0.sroa.15.0.insert.shift = zext i32 %8 to i64
  %9 = and i32 %clock_enable_pkt.sroa.0.sroa.18.0.mask, 16711680
  %clock_enable_pkt.sroa.0.sroa.18.0.insert.shift.masked = zext i32 %9 to i64
  %clock_enable_pkt.sroa.0.sroa.15.0.insert.mask = or i64 %clock_enable_pkt.sroa.0.sroa.21.0.insert.insert, %clock_enable_pkt.sroa.0.sroa.18.0.insert.shift.masked
  %clock_enable_pkt.sroa.0.sroa.15.0.insert.insert = or i64 %clock_enable_pkt.sroa.0.sroa.15.0.insert.mask, %clock_enable_pkt.sroa.0.sroa.15.0.insert.shift
  %clock_enable_pkt.sroa.0.sroa.12.0.mask = and i32 %clock_enable_pkt.sroa.0.sroa.12.0.in, 255
  %clock_enable_pkt.sroa.0.sroa.12.0.insert.ext = zext i32 %clock_enable_pkt.sroa.0.sroa.12.0.mask to i64
  %clock_enable_pkt.sroa.0.sroa.12.0.insert.shift = shl nuw nsw i64 %clock_enable_pkt.sroa.0.sroa.12.0.insert.ext, 32
  %clock_enable_pkt.sroa.0.sroa.12.0.insert.insert = or i64 %clock_enable_pkt.sroa.0.sroa.15.0.insert.insert, %clock_enable_pkt.sroa.0.sroa.12.0.insert.shift
  %clock_enable_pkt.sroa.0.sroa.9.0.insert.ext = zext i8 %clock_enable_pkt.sroa.0.sroa.9.0 to i64
  %clock_enable_pkt.sroa.0.sroa.9.0.insert.shift = shl nuw nsw i64 %clock_enable_pkt.sroa.0.sroa.9.0.insert.ext, 40
  %clock_enable_pkt.sroa.0.sroa.6.0.insert.ext = zext i8 %clock_enable_pkt.sroa.0.sroa.6.0 to i64
  %clock_enable_pkt.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i64 %clock_enable_pkt.sroa.0.sroa.6.0.insert.ext, 48
  %clock_enable_pkt.sroa.0.sroa.6.0.insert.mask = or i64 %clock_enable_pkt.sroa.0.sroa.12.0.insert.insert, %clock_enable_pkt.sroa.0.sroa.9.0.insert.shift
  %clock_enable_pkt.sroa.0.sroa.0.0.insert.ext = zext i8 %clock_enable_pkt.sroa.0.sroa.0.0 to i64
  %clock_enable_pkt.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %clock_enable_pkt.sroa.0.sroa.0.0.insert.ext, 56
  %clock_enable_pkt.sroa.0.sroa.0.0.insert.mask = or i64 %clock_enable_pkt.sroa.0.sroa.6.0.insert.mask, %clock_enable_pkt.sroa.0.sroa.6.0.insert.shift
  %clock_enable_pkt.sroa.0.sroa.0.0.insert.insert = or i64 %clock_enable_pkt.sroa.0.sroa.0.0.insert.mask, %clock_enable_pkt.sroa.0.sroa.0.0.insert.shift
  %10 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %clock_enable_pkt.sroa.0.sroa.0.0.insert.insert, ptr %usb_tx_buf, align 1
  %call92 = tail call fastcc i32 @send_packet(ptr noundef nonnull %ictx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %for.inc, label %sw.epilog.do.end97_crit_edge

sw.epilog.do.end97_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end97

do.end97:                                         ; preds = %for.inc.do.end97_crit_edge, %sw.epilog.do.end97_crit_edge
  %i.0118.lcssa = phi i32 [ 0, %sw.epilog.do.end97_crit_edge ], [ 1, %for.inc.do.end97_crit_edge ]
  %call92.lcssa = phi i32 [ %call92, %sw.epilog.do.end97_crit_edge ], [ %call92.1, %for.inc.do.end97_crit_edge ]
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.166, i32 noundef %i.0118.lcssa) #15
  br label %cleanup

for.inc:                                          ; preds = %sw.epilog
  %11 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %clock_enable_pkt.sroa.28.0, ptr %usb_tx_buf, align 1
  %call92.1 = tail call fastcc i32 @send_packet(ptr noundef nonnull %ictx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.1)
  %tobool93.not.1 = icmp eq i32 %call92.1, 0
  br i1 %tobool93.not.1, label %for.inc.cleanup_crit_edge, label %for.inc.do.end97_crit_edge

for.inc.do.end97_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end97

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end97, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ %call92.lcssa, %do.end97 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %n_bytes, ptr nocapture noundef readnone %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @lcd_write._rs, ptr noundef nonnull @__func__.lcd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__.lcd_write) #15
  br label %cleanup

if.end5:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %display_supported = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %display_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %display_supported, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @lcd_write._rs.171, ptr noundef nonnull @__func__.lcd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.exit.thread_crit_edge, label %do.end13

if.then7.exit.thread_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @__func__.lcd_write) #15
  br label %exit.thread

if.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %n_bytes)
  %cmp.not = icmp eq i32 %n_bytes, 8
  br i1 %cmp.not, label %if.end28, label %if.then18

if.then18:                                        ; preds = %if.end17
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @lcd_write._rs.175, ptr noundef nonnull @__func__.lcd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.exit.thread_crit_edge, label %do.end24

if.then18.exit.thread_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @__func__.lcd_write, i32 noundef %n_bytes) #15
  br label %exit.thread

if.end28:                                         ; preds = %if.end17
  %usb_tx_buf = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 19
  tail call void @__might_fault(ptr noundef nonnull @.str.186, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end28.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end28.if.then11.i.i_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end28
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 8, i32 -1226833920) #16, !srcloc !527
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !528

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usb_tx_buf, i32 noundef 8) #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !508) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !529
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !531
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %usb_tx_buf, ptr noundef %buf, i32 noundef 8) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end32, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !528

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end28.if.then11.i.i_crit_edge
  %res.0.i.i72 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end28.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i72
  %add.ptr.i.i = getelementptr i8, ptr %usb_tx_buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i72)
  br label %exit.thread

if.end32:                                         ; preds = %if.end.i.i
  %call33 = tail call fastcc i32 @send_packet(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body45, label %if.then35

if.then35:                                        ; preds = %if.end32
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @lcd_write._rs.179, ptr noundef nonnull @__func__.lcd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.exit.thread_crit_edge, label %do.end41

if.then35.exit.thread_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @__func__.lcd_write) #15
  br label %exit.thread

do.body45:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lcd_write.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lcd_write, %if.then51)) #11
          to label %11 [label %if.then51], !srcloc !518

if.then51:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lcd_write.__UNIQUE_ID_ddebug256, ptr noundef %10, ptr noundef nonnull @.str.183, ptr noundef nonnull @__func__.lcd_write, i32 noundef 8) #11
  br label %11

exit.thread:                                      ; preds = %do.end41, %if.then35.exit.thread_crit_edge, %if.then11.i.i, %do.end24, %if.then18.exit.thread_crit_edge, %do.end13, %if.then7.exit.thread_crit_edge
  %retval1.0.ph = phi i32 [ -22, %if.then18.exit.thread_crit_edge ], [ -22, %do.end24 ], [ -19, %if.then7.exit.thread_crit_edge ], [ -19, %do.end13 ], [ %call33, %if.then35.exit.thread_crit_edge ], [ %call33, %do.end41 ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

11:                                               ; preds = %if.then51, %do.body45
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %11, %exit.thread, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %if.then.cleanup_crit_edge ], [ 8, %11 ], [ %retval1.0.ph, %exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @display_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @driver_lock, i32 noundef 0) #11
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call2 = tail call ptr @usb_find_interface(ptr noundef nonnull @imon_driver, i32 noundef %and.i) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.188, i32 noundef %and.i) #15
  br label %exit

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call2, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.188, i32 noundef %and.i) #15
  br label %exit

if.end12:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.imon_context, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %display_supported = getelementptr inbounds %struct.imon_context, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %display_supported to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %display_supported, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool13.not = icmp eq i8 %5, 0
  br i1 %tobool13.not, label %do.end17, label %if.else

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.188) #15
  br label %if.end40

if.else:                                          ; preds = %if.end12
  %display_isopen = getelementptr inbounds %struct.imon_context, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %display_isopen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %display_isopen, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool20.not = icmp eq i8 %7, 0
  br i1 %tobool20.not, label %if.else27, label %do.end24

do.end24:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.188) #15
  br label %if.end40

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %display_isopen to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %display_isopen, align 1
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @display_open.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@display_open, %if.then35)) #11
          to label %if.end40 [label %if.then35], !srcloc !518

if.then35:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @display_open.__UNIQUE_ID_ddebug253, ptr noundef %11, ptr noundef nonnull @.str.198) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.else27, %do.end24, %do.end17
  %retval1.0 = phi i32 [ -16, %do.end24 ], [ 0, %if.then35 ], [ -19, %do.end17 ], [ 0, %if.else27 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %exit

exit:                                             ; preds = %if.end40, %do.end9, %do.end
  %retval1.1 = phi i32 [ %retval1.0, %if.end40 ], [ -19, %do.end9 ], [ -19, %do.end ]
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #11
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @display_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.199) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %display_supported = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %display_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %display_supported, align 4, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %do.end6, label %if.else

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.199) #15
  br label %if.end29

if.else:                                          ; preds = %if.end
  %display_isopen = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %display_isopen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %display_isopen, align 1, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %do.end13, label %if.else16

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.199) #15
  br label %if.end29

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %display_isopen to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %display_isopen, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @display_close.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@display_close, %if.then24)) #11
          to label %if.end29 [label %if.then24], !srcloc !518

if.then24:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @display_close.__UNIQUE_ID_ddebug254, ptr noundef %8, ptr noundef nonnull @.str.205) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.else16, %do.end13, %do.end6
  %retval1.0 = phi i32 [ 0, %if.then24 ], [ -5, %do.end13 ], [ -19, %do.end6 ], [ 0, %if.else16 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end
  %retval.0 = phi i32 [ %retval1.0, %if.end29 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfd_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %n_bytes, ptr nocapture noundef readnone %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vfd_write._rs, ptr noundef nonnull @__func__.vfd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__.vfd_write) #15
  br label %cleanup

if.end5:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %dev_present_intf0 = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev_present_intf0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_present_intf0, align 8, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @vfd_write._rs.206, ptr noundef nonnull @__func__.vfd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.exit.thread_crit_edge, label %do.end13

if.then7.exit.thread_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.vfd_write) #15
  br label %exit.thread

if.end17:                                         ; preds = %if.end5
  %4 = add i32 %n_bytes, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %4)
  %5 = icmp ult i32 %4, -32
  br i1 %5, label %if.then19, label %if.end29

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @vfd_write._rs.209, ptr noundef nonnull @__func__.vfd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.exit.thread_crit_edge, label %do.end25

if.then19.exit.thread_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef nonnull @__func__.vfd_write) #15
  br label %exit.thread

if.end29:                                         ; preds = %if.end17
  %tx = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 21
  tail call void @__check_object_size(ptr noundef %tx, i32 noundef %n_bytes, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.186, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end29.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end29.if.then11.i.i_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end29
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %n_bytes, i32 -1226833920) #16, !srcloc !527
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !528

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx, i32 noundef %n_bytes) #11
  %7 = tail call i32 @llvm.read_register.i32(metadata !508) #11
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !529
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !531
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %tx, ptr noundef %buf, i32 noundef %n_bytes) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #11, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %for.cond.preheader, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !528

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

for.cond.preheader:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %n_bytes)
  %cmp34138 = icmp ult i32 %n_bytes, 32
  br i1 %cmp34138, label %for.body.preheader, label %for.cond.preheader.for.cond37.preheader_crit_edge

for.cond.preheader.for.cond37.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %10 = add nuw nsw i32 %n_bytes, 212
  %uglygep = getelementptr i8, ptr %1, i32 %10
  %11 = sub nuw nsw i32 32, %n_bytes
  %12 = call ptr @memset(ptr %uglygep, i32 32, i32 %11)
  br label %for.cond37.preheader

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end29.if.then11.i.i_crit_edge
  %res.0.i.i129 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %n_bytes, %if.end29.if.then11.i.i_crit_edge ], [ %n_bytes, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %n_bytes, %res.0.i.i129
  %add.ptr.i.i = getelementptr i8, ptr %tx, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i129)
  br label %exit.thread

for.cond37.preheader:                             ; preds = %for.body.preheader, %for.cond.preheader.for.cond37.preheader_crit_edge
  %uglygep143 = getelementptr i8, ptr %1, i32 244
  %14 = call ptr @memset(ptr %uglygep143, i32 255, i32 3)
  %usb_tx_buf = getelementptr inbounds %struct.imon_context, ptr %1, i32 0, i32 19
  %arrayidx52 = getelementptr %struct.imon_context, ptr %1, i32 0, i32 19, i32 7
  %15 = call ptr @memcpy(ptr %usb_tx_buf, ptr %tx, i32 7)
  %16 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx52, align 1
  %call53 = tail call fastcc i32 @send_packet(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else, label %for.cond37.preheader.if.then55_crit_edge

for.cond37.preheader.if.then55_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.then55:                                        ; preds = %if.else.3.if.then55_crit_edge, %if.else.2.if.then55_crit_edge, %if.else.1.if.then55_crit_edge, %if.else.if.then55_crit_edge, %for.cond37.preheader.if.then55_crit_edge
  %seq.0.lcssa = phi i32 [ 0, %for.cond37.preheader.if.then55_crit_edge ], [ 1, %if.else.if.then55_crit_edge ], [ 2, %if.else.1.if.then55_crit_edge ], [ 3, %if.else.2.if.then55_crit_edge ], [ 4, %if.else.3.if.then55_crit_edge ]
  %call53.lcssa = phi i32 [ %call53, %for.cond37.preheader.if.then55_crit_edge ], [ %call53.1, %if.else.if.then55_crit_edge ], [ %call53.2, %if.else.1.if.then55_crit_edge ], [ %call53.3, %if.else.2.if.then55_crit_edge ], [ %call53.4, %if.else.3.if.then55_crit_edge ]
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @vfd_write._rs.213, ptr noundef nonnull @__func__.vfd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.exit.thread_crit_edge, label %do.end61

if.then55.exit.thread_crit_edge:                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.vfd_write, i32 noundef %seq.0.lcssa) #15
  br label %exit.thread

if.else:                                          ; preds = %for.cond37.preheader
  %add.ptr.1 = getelementptr %struct.imon_context, ptr %1, i32 0, i32 21, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %usb_tx_buf, ptr %add.ptr.1, i32 7)
  %18 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %arrayidx52, align 1
  %call53.1 = tail call fastcc i32 @send_packet(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.1)
  %tobool54.not.1 = icmp eq i32 %call53.1, 0
  br i1 %tobool54.not.1, label %if.else.1, label %if.else.if.then55_crit_edge

if.else.if.then55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.else.1:                                        ; preds = %if.else
  %add.ptr.2 = getelementptr %struct.imon_context, ptr %1, i32 0, i32 21, i32 0, i32 14
  %19 = call ptr @memcpy(ptr %usb_tx_buf, ptr %add.ptr.2, i32 7)
  %20 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %arrayidx52, align 1
  %call53.2 = tail call fastcc i32 @send_packet(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.2)
  %tobool54.not.2 = icmp eq i32 %call53.2, 0
  br i1 %tobool54.not.2, label %if.else.2, label %if.else.1.if.then55_crit_edge

if.else.1.if.then55_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.else.2:                                        ; preds = %if.else.1
  %add.ptr.3 = getelementptr %struct.imon_context, ptr %1, i32 0, i32 21, i32 0, i32 21
  %21 = call ptr @memcpy(ptr %usb_tx_buf, ptr %add.ptr.3, i32 7)
  %22 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 6, ptr %arrayidx52, align 1
  %call53.3 = tail call fastcc i32 @send_packet(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.3)
  %tobool54.not.3 = icmp eq i32 %call53.3, 0
  br i1 %tobool54.not.3, label %if.else.3, label %if.else.2.if.then55_crit_edge

if.else.2.if.then55_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.else.3:                                        ; preds = %if.else.2
  %add.ptr.4 = getelementptr %struct.imon_context, ptr %1, i32 0, i32 21, i32 0, i32 28
  %23 = call ptr @memcpy(ptr %usb_tx_buf, ptr %add.ptr.4, i32 7)
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 8, ptr %arrayidx52, align 1
  %call53.4 = tail call fastcc i32 @send_packet(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.4)
  %tobool54.not.4 = icmp eq i32 %call53.4, 0
  br i1 %tobool54.not.4, label %if.else.4, label %if.else.3.if.then55_crit_edge

if.else.3.if.then55_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.else.4:                                        ; preds = %if.else.3
  %25 = call ptr @memcpy(ptr %usb_tx_buf, ptr @vfd_write.vfd_packet6, i32 7)
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %arrayidx52, align 1
  %call76 = tail call fastcc i32 @send_packet(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %27, label %if.then78

if.then78:                                        ; preds = %if.else.4
  %call79 = tail call i32 @___ratelimit(ptr noundef nonnull @vfd_write._rs.217, ptr noundef nonnull @__func__.vfd_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then78.exit.thread_crit_edge, label %do.end84

if.then78.exit.thread_crit_edge:                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.thread

do.end84:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.vfd_write, i32 noundef 5) #15
  br label %exit.thread

exit.thread:                                      ; preds = %do.end84, %if.then78.exit.thread_crit_edge, %do.end61, %if.then55.exit.thread_crit_edge, %if.then11.i.i, %do.end25, %if.then19.exit.thread_crit_edge, %do.end13, %if.then7.exit.thread_crit_edge
  %retval1.0.ph = phi i32 [ -22, %if.then19.exit.thread_crit_edge ], [ -22, %do.end25 ], [ -19, %if.then7.exit.thread_crit_edge ], [ -19, %do.end13 ], [ %call76, %if.then78.exit.thread_crit_edge ], [ %call76, %do.end84 ], [ %call53.lcssa, %if.then55.exit.thread_crit_edge ], [ %call53.lcssa, %do.end61 ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

27:                                               ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %27, %exit.thread, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %if.then.cleanup_crit_edge ], [ %n_bytes, %27 ], [ %retval1.0.ph, %exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.abs.i8(i8, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 241)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 241)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !141, !142, !144, !146, !147, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !192, !194, !196, !197, !198, !199, !201, !203, !205, !206, !207, !209, !211, !213, !214, !215, !217, !218, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !233, !235, !237, !238, !239, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !252, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !303, !304, !305, !306, !308, !309, !311, !312, !313, !314, !316, !317, !318, !320, !322, !324, !325, !326, !327, !329, !330, !331, !333, !335, !337, !338, !340, !342, !344, !345, !346, !347, !349, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !372, !374, !375, !377, !379, !381, !383, !385, !387, !388, !389, !391, !392, !393, !395, !397, !399, !401, !402, !403, !404, !406, !407, !408, !409, !411, !412, !413, !414, !416, !417, !418, !419, !421, !422, !424, !425, !427, !429, !431, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !451, !452, !453, !455, !456, !458, !459, !460, !462, !463, !465, !467, !469, !471, !472, !473, !474, !476, !477, !478, !480, !481, !482, !483, !485, !486, !487, !488, !490, !491, !492, !494, !495, !496, !498, !499, !500, !502, !504, !506}
!llvm.named.register.sp = !{!508}
!llvm.module.flags = !{!509, !510, !511, !512, !513, !514, !515, !516}
!llvm.ident = !{!517}

!0 = !{ptr @__UNIQUE_ID_author237, !1, !"__UNIQUE_ID_author237", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/imon.c", i32 446, i32 1}
!2 = !{ptr @__UNIQUE_ID_description238, !3, !"__UNIQUE_ID_description238", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/imon.c", i32 447, i32 1}
!4 = !{ptr @__UNIQUE_ID_version239, !5, !"__UNIQUE_ID_version239", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/imon.c", i32 448, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file240, !11, !"__UNIQUE_ID_file240", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/imon.c", i32 449, i32 1}
!12 = !{ptr @__UNIQUE_ID_license241, !11, !"__UNIQUE_ID_license241", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/imon.c", i32 453, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype242, !14, !"__UNIQUE_ID_debugtype242", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug243, !17, !"__UNIQUE_ID_debug243", i1 false, i1 false}
!17 = !{!"../drivers/media/rc/imon.c", i32 454, i32 1}
!18 = !{ptr @__param_display_type, !19, !"__param_display_type", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/imon.c", i32 458, i32 1}
!20 = !{ptr @__UNIQUE_ID_display_typetype244, !19, !"__UNIQUE_ID_display_typetype244", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_display_type245, !22, !"__UNIQUE_ID_display_type245", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/imon.c", i32 459, i32 1}
!23 = !{ptr @__param_pad_stabilize, !24, !"__param_pad_stabilize", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/imon.c", i32 462, i32 1}
!25 = !{ptr @__UNIQUE_ID_pad_stabilizetype246, !24, !"__UNIQUE_ID_pad_stabilizetype246", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_pad_stabilize247, !27, !"__UNIQUE_ID_pad_stabilize247", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/imon.c", i32 463, i32 1}
!28 = !{ptr @__param_nomouse, !29, !"__param_nomouse", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/imon.c", i32 470, i32 1}
!30 = !{ptr @__UNIQUE_ID_nomousetype248, !29, !"__UNIQUE_ID_nomousetype248", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_nomouse249, !32, !"__UNIQUE_ID_nomouse249", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/imon.c", i32 471, i32 1}
!33 = !{ptr @__param_pad_thresh, !34, !"__param_pad_thresh", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/imon.c", i32 475, i32 1}
!35 = !{ptr @__UNIQUE_ID_pad_threshtype250, !34, !"__UNIQUE_ID_pad_threshtype250", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_pad_thresh251, !37, !"__UNIQUE_ID_pad_thresh251", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/imon.c", i32 476, i32 1}
!38 = !{ptr @__initcall__kmod_imon__272_2597_imon_driver_init6, !39, !"__initcall__kmod_imon__272_2597_imon_driver_init6", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/imon.c", i32 2597, i32 1}
!40 = !{ptr @__exitcall_imon_driver_exit, !39, !"__exitcall_imon_driver_exit", i1 false, i1 false}
!41 = !{ptr @debug, !42, !"debug", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/imon.c", i32 452, i32 13}
!43 = !{ptr @display_type, !44, !"display_type", i1 false, i1 false}
!44 = !{!"../drivers/media/rc/imon.c", i32 457, i32 12}
!45 = !{ptr @nomouse, !46, !"nomouse", i1 false, i1 false}
!46 = !{!"../drivers/media/rc/imon.c", i32 469, i32 13}
!47 = !{ptr @pad_thresh, !48, !"pad_thresh", i1 false, i1 false}
!48 = !{!"../drivers/media/rc/imon.c", i32 474, i32 12}
!49 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!50 = !{ptr @__param_str_display_type, !19, !"__param_str_display_type", i1 false, i1 false}
!51 = !{ptr @__param_str_pad_stabilize, !24, !"__param_str_pad_stabilize", i1 false, i1 false}
!52 = !{ptr @pad_stabilize, !53, !"pad_stabilize", i1 false, i1 false}
!53 = !{!"../drivers/media/rc/imon.c", i32 461, i32 12}
!54 = !{ptr @__param_str_nomouse, !29, !"__param_str_nomouse", i1 false, i1 false}
!55 = !{ptr @__param_str_pad_thresh, !34, !"__param_str_pad_thresh", i1 false, i1 false}
!56 = !{ptr @imon_driver, !57, !"imon_driver", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/imon.c", i32 433, i32 26}
!58 = !{ptr @.str.3, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/rc/imon.c", i32 2416, i32 2}
!60 = !{ptr @.str.4, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @imon_probe.__UNIQUE_ID_ddebug270, !59, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!63 = !{ptr @.str.6, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/rc/imon.c", i32 2433, i32 4}
!65 = !{ptr @imon_probe._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @imon_probe._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.8, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/rc/imon.c", i32 2449, i32 4}
!69 = !{ptr @imon_probe._entry.7, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @imon_probe._entry_ptr.9, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.11, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/rc/imon.c", i32 2465, i32 5}
!73 = !{ptr @imon_probe._entry.10, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @imon_probe._entry_ptr.12, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/rc/imon.c", i32 2475, i32 2}
!77 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.16, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @imon_probe._entry.13, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @imon_probe._entry_ptr.17, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/rc/imon.c", i32 2487, i32 2}
!83 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @imon_probe._entry.18, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @imon_probe._entry_ptr.21, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/rc/imon.c", i32 443, i32 8}
!88 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @driver_lock, !87, !"driver_lock", i1 false, i1 false}
!90 = !{ptr @imon_init_intf0.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/media/rc/imon.c", i32 2227, i32 2}
!92 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @imon_init_intf0.__key.25, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/media/rc/imon.c", i32 2228, i32 2}
!95 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/rc/imon.c", i32 2264, i32 3}
!98 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @imon_init_intf0._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @imon_init_intf0._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/rc/imon.c", i32 2270, i32 3}
!103 = !{ptr @imon_init_intf0._entry.29, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @imon_init_intf0._entry_ptr.31, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/rc/imon.c", i32 2276, i32 3}
!107 = !{ptr @imon_init_intf0._entry.32, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @imon_init_intf0._entry_ptr.34, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/rc/imon.c", i32 2299, i32 2}
!111 = !{ptr @imon_init_intf0._entry.35, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @imon_init_intf0._entry_ptr.37, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @init_completion.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../include/linux/completion.h", i32 87, i32 2}
!115 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/rc/imon.c", i32 2142, i32 4}
!118 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @imon_find_endpoints.__UNIQUE_ID_ddebug264, !117, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/rc/imon.c", i32 2148, i32 4}
!122 = !{ptr @imon_find_endpoints.__UNIQUE_ID_ddebug265, !121, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/rc/imon.c", i32 2170, i32 3}
!125 = !{ptr @imon_find_endpoints.__UNIQUE_ID_ddebug266, !124, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!126 = !{ptr @.str.43, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/rc/imon.c", i32 2181, i32 3}
!128 = !{ptr @imon_find_endpoints.__UNIQUE_ID_ddebug267, !127, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/rc/imon.c", i32 2190, i32 3}
!131 = !{ptr @imon_find_endpoints.__UNIQUE_ID_ddebug268, !130, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/rc/imon.c", i32 2195, i32 3}
!134 = !{ptr @imon_find_endpoints._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @imon_find_endpoints._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/rc/imon.c", i32 1765, i32 3}
!138 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @usb_rx_callback_intf0._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @usb_rx_callback_intf0._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @imon_incoming_packet.prev_time, !143, !"prev_time", i1 false, i1 false}
!143 = !{!"../drivers/media/rc/imon.c", i32 1581, i32 17}
!144 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/rc/imon.c", i32 1613, i32 4}
!146 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @imon_incoming_packet.__UNIQUE_ID_ddebug262, !145, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!148 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/rc/imon.c", i32 1619, i32 4}
!152 = !{ptr @imon_incoming_packet.__UNIQUE_ID_ddebug263, !151, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/rc/imon.c", i32 1646, i32 3}
!155 = !{ptr @imon_incoming_packet._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @imon_incoming_packet._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/rc/imon.c", i32 1711, i32 3}
!159 = !{ptr @imon_incoming_packet._entry.55, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @imon_incoming_packet._entry_ptr.57, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/rc/imon.c", i32 1724, i32 3}
!163 = !{ptr @imon_incoming_packet._entry.58, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @imon_incoming_packet._entry_ptr.60, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/rc/imon.c", i32 1352, i32 3}
!167 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @imon_mouse_event.__UNIQUE_ID_ddebug261, !166, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!169 = !{ptr @stabilize.prev_time, !170, !"prev_time", i1 false, i1 false}
!170 = !{!"../drivers/media/rc/imon.c", i32 1175, i32 17}
!171 = !{ptr @stabilize.hit_time, !172, !"hit_time", i1 false, i1 false}
!172 = !{!"../drivers/media/rc/imon.c", i32 1176, i32 17}
!173 = !{ptr @stabilize.x, !174, !"x", i1 false, i1 false}
!174 = !{!"../drivers/media/rc/imon.c", i32 1177, i32 13}
!175 = !{ptr @stabilize.y, !176, !"y", i1 false, i1 false}
!176 = !{!"../drivers/media/rc/imon.c", i32 1177, i32 16}
!177 = !{ptr @stabilize.prev_result, !178, !"prev_result", i1 false, i1 false}
!178 = !{!"../drivers/media/rc/imon.c", i32 1177, i32 19}
!179 = !{ptr @stabilize.hits, !180, !"hits", i1 false, i1 false}
!180 = !{!"../drivers/media/rc/imon.c", i32 1177, i32 32}
!181 = !{ptr @.str.63, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/rc/imon.c", i32 2028, i32 4}
!183 = !{ptr @.str.64, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/rc/imon.c", i32 2034, i32 27}
!185 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/rc/imon.c", i32 2056, i32 3}
!187 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @imon_init_idev._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @imon_init_idev._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../include/linux/usb.h", i32 912, i32 31}
!192 = distinct !{null, !193, !"fp_packet", i1 false, i1 false}
!193 = !{!"../drivers/media/rc/imon.c", i32 1957, i32 29}
!194 = !{ptr @.str.68, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/rc/imon.c", i32 1962, i32 3}
!196 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @imon_init_rdev._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @imon_init_rdev._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.70, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/rc/imon.c", i32 1967, i32 4}
!201 = !{ptr @.str.71, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/rc/imon.c", i32 1970, i32 27}
!203 = !{ptr @.str.73, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/rc/imon.c", i32 1988, i32 3}
!205 = !{ptr @imon_init_rdev._entry.72, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @imon_init_rdev._entry_ptr.74, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.75, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/rc/imon.c", i32 1998, i32 20}
!209 = !{ptr @.str.76, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/rc/imon.c", i32 2000, i32 20}
!211 = !{ptr @.str.78, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/rc/imon.c", i32 2004, i32 3}
!213 = !{ptr @imon_init_rdev._entry.77, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @imon_init_rdev._entry_ptr.79, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.80, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/rc/imon.c", i32 1123, i32 3}
!217 = !{ptr @.str.81, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @imon_ir_change_protocol._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @imon_ir_change_protocol._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.82, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/rc/imon.c", i32 1126, i32 3}
!222 = !{ptr @imon_ir_change_protocol.__UNIQUE_ID_ddebug257, !221, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/rc/imon.c", i32 1130, i32 3}
!225 = !{ptr @imon_ir_change_protocol.__UNIQUE_ID_ddebug258, !224, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!226 = !{ptr @.str.84, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/rc/imon.c", i32 1132, i32 4}
!228 = !{ptr @imon_ir_change_protocol.__UNIQUE_ID_ddebug259, !227, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!229 = !{ptr @.str.86, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/rc/imon.c", i32 1136, i32 3}
!231 = !{ptr @imon_ir_change_protocol._entry.85, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @imon_ir_change_protocol._entry_ptr.87, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @imon_ir_change_protocol.__UNIQUE_ID_ddebug260, !234, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!234 = !{!"../drivers/media/rc/imon.c", i32 1138, i32 4}
!235 = !{ptr @.str.88, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/rc/imon.c", i32 632, i32 3}
!237 = !{ptr @send_packet._rs, !236, !"_rs", i1 false, i1 false}
!238 = !{ptr @__func__.send_packet, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.89, !236, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @send_packet._entry, !236, !"_entry", i1 false, i1 false}
!241 = !{ptr @send_packet._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @send_packet._rs.90, !243, !"_rs", i1 false, i1 false}
!243 = !{!"../drivers/media/rc/imon.c", i32 640, i32 4}
!244 = !{ptr @.str.92, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @send_packet._entry.91, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @send_packet._entry_ptr.93, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @send_packet._rs.94, !248, !"_rs", i1 false, i1 false}
!248 = !{!"../drivers/media/rc/imon.c", i32 646, i32 4}
!249 = !{ptr @.str.96, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @send_packet._entry.95, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @send_packet._entry_ptr.97, !248, !"_entry_ptr", i1 false, i1 false}
!252 = distinct !{null, !253, !"__already_done", i1 false, i1 false}
!253 = !{!"../drivers/media/rc/imon.c", i32 657, i32 2}
!254 = !{ptr @.str.98, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/rc/imon.c", i32 1833, i32 3}
!256 = !{ptr @.str.99, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @imon_get_ffdc_type._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @imon_get_ffdc_type._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.101, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/rc/imon.c", i32 1838, i32 3}
!261 = !{ptr @imon_get_ffdc_type._entry.100, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @imon_get_ffdc_type._entry_ptr.102, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.104, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/rc/imon.c", i32 1844, i32 3}
!265 = !{ptr @imon_get_ffdc_type._entry.103, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @imon_get_ffdc_type._entry_ptr.105, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.107, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/rc/imon.c", i32 1851, i32 3}
!269 = !{ptr @imon_get_ffdc_type._entry.106, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @imon_get_ffdc_type._entry_ptr.108, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.110, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/rc/imon.c", i32 1857, i32 3}
!273 = !{ptr @imon_get_ffdc_type._entry.109, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @imon_get_ffdc_type._entry_ptr.111, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.113, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/rc/imon.c", i32 1863, i32 3}
!277 = !{ptr @imon_get_ffdc_type._entry.112, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @imon_get_ffdc_type._entry_ptr.114, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.116, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/rc/imon.c", i32 1869, i32 3}
!281 = !{ptr @imon_get_ffdc_type._entry.115, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @imon_get_ffdc_type._entry_ptr.117, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.119, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/rc/imon.c", i32 1875, i32 3}
!285 = !{ptr @imon_get_ffdc_type._entry.118, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @imon_get_ffdc_type._entry_ptr.120, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.122, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/rc/imon.c", i32 1880, i32 3}
!289 = !{ptr @imon_get_ffdc_type._entry.121, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @imon_get_ffdc_type._entry_ptr.123, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.125, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/rc/imon.c", i32 1887, i32 3}
!293 = !{ptr @imon_get_ffdc_type._entry.124, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @imon_get_ffdc_type._entry_ptr.126, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.128, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/rc/imon.c", i32 1897, i32 2}
!297 = !{ptr @imon_get_ffdc_type._entry.127, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @imon_get_ffdc_type._entry_ptr.129, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @ultrabay_table, !300, !"ultrabay_table", i1 false, i1 false}
!300 = !{!"../drivers/media/rc/imon.c", i32 321, i32 40}
!301 = !{ptr @.str.131, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/rc/imon.c", i32 1946, i32 3}
!303 = !{ptr @.str.132, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @imon_set_display_type._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @imon_set_display_type._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @imon_init_intf1.__key, !307, !"__key", i1 false, i1 false}
!307 = !{!"../drivers/media/rc/imon.c", i32 2318, i32 3}
!308 = !{ptr @.str.133, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.134, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/rc/imon.c", i32 2346, i32 3}
!311 = !{ptr @.str.135, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @imon_init_intf1._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @imon_init_intf1._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.137, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/rc/imon.c", i32 2366, i32 2}
!316 = !{ptr @imon_init_intf1._entry.136, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @imon_init_intf1._entry_ptr.138, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.139, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/rc/imon.c", i32 2077, i32 4}
!320 = !{ptr @.str.140, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/rc/imon.c", i32 2083, i32 28}
!322 = !{ptr @.str.141, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/rc/imon.c", i32 2101, i32 3}
!324 = !{ptr @.str.142, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @imon_init_touch._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @imon_init_touch._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.143, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/rc/imon.c", i32 1806, i32 3}
!329 = !{ptr @usb_rx_callback_intf1._entry, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @usb_rx_callback_intf1._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @imon_rf_attr_group, !332, !"imon_rf_attr_group", i1 false, i1 false}
!332 = !{!"../drivers/media/rc/imon.c", i32 915, i32 37}
!333 = !{ptr @imon_rf_sysfs_entries, !334, !"imon_rf_sysfs_entries", i1 false, i1 false}
!334 = !{!"../drivers/media/rc/imon.c", i32 910, i32 26}
!335 = !{ptr @.str.144, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/rc/imon.c", i32 899, i32 8}
!337 = !{ptr @dev_attr_associate_remote, !336, !"dev_attr_associate_remote", i1 false, i1 false}
!338 = !{ptr @.str.145, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/rc/imon.c", i32 794, i32 16}
!340 = !{ptr @.str.146, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/rc/imon.c", i32 796, i32 16}
!342 = !{ptr @.str.147, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/rc/imon.c", i32 798, i32 2}
!344 = !{ptr @.str.148, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @associate_remote_show._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @associate_remote_show._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.149, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/rc/imon.c", i32 678, i32 3}
!349 = !{ptr @.str.150, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @send_associate_24g._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @send_associate_24g._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.152, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/rc/imon.c", i32 683, i32 3}
!354 = !{ptr @send_associate_24g._entry.151, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @send_associate_24g._entry_ptr.153, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.154, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/rc/imon.c", i32 2376, i32 2}
!358 = !{ptr @.str.155, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @imon_init_display.__UNIQUE_ID_ddebug269, !357, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!360 = !{ptr @.str.156, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/rc/imon.c", i32 2381, i32 3}
!362 = !{ptr @imon_init_display._entry, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @imon_init_display._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.158, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/rc/imon.c", i32 2390, i32 3}
!366 = !{ptr @imon_init_display._entry.157, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @imon_init_display._entry_ptr.159, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @imon_display_attr_group, !369, !"imon_display_attr_group", i1 false, i1 false}
!369 = !{!"../drivers/media/rc/imon.c", i32 906, i32 37}
!370 = !{ptr @imon_display_sysfs_entries, !371, !"imon_display_sysfs_entries", i1 false, i1 false}
!371 = !{!"../drivers/media/rc/imon.c", i32 901, i32 26}
!372 = !{ptr @.str.160, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/rc/imon.c", i32 898, i32 8}
!374 = !{ptr @dev_attr_imon_clock, !373, !"dev_attr_imon_clock", i1 false, i1 false}
!375 = !{ptr @.str.161, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/media/rc/imon.c", i32 837, i32 34}
!377 = !{ptr @.str.162, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/rc/imon.c", i32 840, i32 4}
!379 = !{ptr @.str.163, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/media/rc/imon.c", i32 843, i32 4}
!381 = !{ptr @.str.164, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/rc/imon.c", i32 843, i32 45}
!383 = !{ptr @.str.165, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/media/rc/imon.c", i32 872, i32 18}
!385 = !{ptr @.str.166, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/rc/imon.c", i32 711, i32 3}
!387 = !{ptr @send_set_imon_clock._entry, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @send_set_imon_clock._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.168, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/rc/imon.c", i32 772, i32 4}
!391 = !{ptr @send_set_imon_clock._entry.167, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @send_set_imon_clock._entry_ptr.169, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.170, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/rc/imon.c", i32 199, i32 11}
!395 = !{ptr @imon_lcd_class, !396, !"imon_lcd_class", i1 false, i1 false}
!396 = !{!"../drivers/media/rc/imon.c", i32 198, i32 32}
!397 = !{ptr @lcd_fops, !398, !"lcd_fops", i1 false, i1 false}
!398 = !{!"../drivers/media/rc/imon.c", i32 170, i32 37}
!399 = !{ptr @lcd_write._rs, !400, !"_rs", i1 false, i1 false}
!400 = !{!"../drivers/media/rc/imon.c", i32 1025, i32 3}
!401 = !{ptr @__func__.lcd_write, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @lcd_write._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @lcd_write._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @lcd_write._rs.171, !405, !"_rs", i1 false, i1 false}
!405 = !{!"../drivers/media/rc/imon.c", i32 1032, i32 3}
!406 = !{ptr @.str.173, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @lcd_write._entry.172, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @lcd_write._entry_ptr.174, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @lcd_write._rs.175, !410, !"_rs", i1 false, i1 false}
!410 = !{!"../drivers/media/rc/imon.c", i32 1038, i32 3}
!411 = !{ptr @.str.177, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @lcd_write._entry.176, !410, !"_entry", i1 false, i1 false}
!413 = !{ptr @lcd_write._entry_ptr.178, !410, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @lcd_write._rs.179, !415, !"_rs", i1 false, i1 false}
!415 = !{!"../drivers/media/rc/imon.c", i32 1051, i32 3}
!416 = !{ptr @.str.181, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @lcd_write._entry.180, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @lcd_write._entry_ptr.182, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.183, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/rc/imon.c", i32 1054, i32 3}
!421 = !{ptr @lcd_write.__UNIQUE_ID_ddebug256, !420, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!422 = distinct !{null, !423, !"__already_done", i1 false, i1 false}
!423 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!424 = !{ptr @.str.184, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.185, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!427 = !{ptr @.str.186, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!429 = !{ptr @.str.187, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/rc/imon.c", i32 508, i32 3}
!431 = !{ptr @.str.188, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @display_open._entry, !430, !"_entry", i1 false, i1 false}
!433 = !{ptr @display_open._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.190, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/rc/imon.c", i32 515, i32 3}
!436 = !{ptr @display_open._entry.189, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @display_open._entry_ptr.191, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.193, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/rc/imon.c", i32 523, i32 3}
!440 = !{ptr @display_open._entry.192, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @display_open._entry_ptr.194, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.196, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/rc/imon.c", i32 526, i32 3}
!444 = !{ptr @display_open._entry.195, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @display_open._entry_ptr.197, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.198, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/rc/imon.c", i32 531, i32 3}
!448 = !{ptr @display_open.__UNIQUE_ID_ddebug253, !447, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!449 = !{ptr @.str.199, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/rc/imon.c", i32 553, i32 3}
!451 = !{ptr @display_close._entry, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @display_close._entry_ptr, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @display_close._entry.200, !454, !"_entry", i1 false, i1 false}
!454 = !{!"../drivers/media/rc/imon.c", i32 560, i32 3}
!455 = !{ptr @display_close._entry_ptr.201, !454, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.203, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/media/rc/imon.c", i32 563, i32 3}
!458 = !{ptr @display_close._entry.202, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @display_close._entry_ptr.204, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.205, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/media/rc/imon.c", i32 567, i32 3}
!462 = !{ptr @display_close.__UNIQUE_ID_ddebug254, !461, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!463 = !{ptr @imon_vfd_class, !464, !"imon_vfd_class", i1 false, i1 false}
!464 = !{!"../drivers/media/rc/imon.c", i32 192, i32 32}
!465 = !{ptr @vfd_fops, !466, !"vfd_fops", i1 false, i1 false}
!466 = !{!"../drivers/media/rc/imon.c", i32 161, i32 37}
!467 = !{ptr @vfd_write.vfd_packet6, !468, !"vfd_packet6", i1 false, i1 false}
!468 = !{!"../drivers/media/rc/imon.c", i32 938, i32 29}
!469 = !{ptr @vfd_write._rs, !470, !"_rs", i1 false, i1 false}
!470 = !{!"../drivers/media/rc/imon.c", i32 943, i32 3}
!471 = !{ptr @__func__.vfd_write, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @vfd_write._entry, !470, !"_entry", i1 false, i1 false}
!473 = !{ptr @vfd_write._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @vfd_write._rs.206, !475, !"_rs", i1 false, i1 false}
!475 = !{!"../drivers/media/rc/imon.c", i32 950, i32 3}
!476 = !{ptr @vfd_write._entry.207, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @vfd_write._entry_ptr.208, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @vfd_write._rs.209, !479, !"_rs", i1 false, i1 false}
!479 = !{!"../drivers/media/rc/imon.c", i32 956, i32 3}
!480 = !{ptr @.str.211, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @vfd_write._entry.210, !479, !"_entry", i1 false, i1 false}
!482 = !{ptr @vfd_write._entry_ptr.212, !479, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @vfd_write._rs.213, !484, !"_rs", i1 false, i1 false}
!484 = !{!"../drivers/media/rc/imon.c", i32 982, i32 4}
!485 = !{ptr @.str.215, !484, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @vfd_write._entry.214, !484, !"_entry", i1 false, i1 false}
!487 = !{ptr @vfd_write._entry_ptr.216, !484, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @vfd_write._rs.217, !489, !"_rs", i1 false, i1 false}
!489 = !{!"../drivers/media/rc/imon.c", i32 996, i32 3}
!490 = !{ptr @vfd_write._entry.218, !489, !"_entry", i1 false, i1 false}
!491 = !{ptr @vfd_write._entry_ptr.219, !489, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.220, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/media/rc/imon.c", i32 2550, i32 2}
!494 = !{ptr @.str.221, !493, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @imon_disconnect.__UNIQUE_ID_ddebug271, !493, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!496 = !{ptr @.str.222, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/media/rc/imon.c", i32 488, i32 2}
!498 = !{ptr @.str.223, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @free_imon_context.__UNIQUE_ID_ddebug252, !497, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!500 = !{ptr @imon_usb_id_table, !501, !"imon_usb_id_table", i1 false, i1 false}
!501 = !{!"../drivers/media/rc/imon.c", i32 357, i32 35}
!502 = !{ptr @imon_default_table, !503, !"imon_default_table", i1 false, i1 false}
!503 = !{!"../drivers/media/rc/imon.c", i32 205, i32 40}
!504 = !{ptr @imon_DH102, !505, !"imon_DH102", i1 false, i1 false}
!505 = !{!"../drivers/media/rc/imon.c", i32 300, i32 40}
!506 = !{ptr @imon_OEM_VFD, !507, !"imon_OEM_VFD", i1 false, i1 false}
!507 = !{!"../drivers/media/rc/imon.c", i32 254, i32 40}
!508 = !{!"sp"}
!509 = !{i32 1, !"wchar_size", i32 2}
!510 = !{i32 1, !"min_enum_size", i32 4}
!511 = !{i32 8, !"branch-target-enforcement", i32 0}
!512 = !{i32 8, !"sign-return-address", i32 0}
!513 = !{i32 8, !"sign-return-address-all", i32 0}
!514 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!515 = !{i32 7, !"uwtable", i32 1}
!516 = !{i32 7, !"frame-pointer", i32 2}
!517 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!518 = !{i64 2148762807, i64 2148762812, i64 2148762825, i64 2148762869, i64 2148762903, i64 2148762924}
!519 = !{i8 0, i8 2}
!520 = !{i64 1198179, i64 1198206}
!521 = !{i64 1198874, i64 1198901, i64 1198934, i64 1198955, i64 1198982, i64 1199008}
!522 = !{i64 2154527024}
!523 = !{i64 2154527370}
!524 = !{i64 2154540184}
!525 = !{i64 2154579615}
!526 = !{!"auto-init"}
!527 = !{i64 2152532409, i64 2152532434}
!528 = !{!"branch_weights", i32 2000, i32 1}
!529 = !{i64 5027964}
!530 = !{i64 5028161}
!531 = !{i64 2152513394}
