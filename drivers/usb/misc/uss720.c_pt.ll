; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/uss720.c_pt.bc'
source_filename = "../drivers/usb/misc/uss720.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.parport_uss720_private = type { ptr, ptr, %struct.kref, [7 x i8], %struct.list_head, %struct.spinlock }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.uss720_async_request = type { ptr, %struct.kref, %struct.list_head, %struct.completion, ptr, ptr, [7 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.pc_parport_state = type { i32, i32 }
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
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_author242 = internal constant [56 x i8] c"uss720.author=Thomas M. Sailer, t.sailer@alumni.ethz.ch\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [97 x i8] c"uss720.description=USB Parport Cable driver for Cables using the Lucent Technologies USS720 Chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [36 x i8] c"uss720.file=drivers/usb/misc/uss720\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [19 x i8] c"uss720.license=GPL\00", section ".modinfo", align 1
@uss720_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @uss720_probe, ptr @uss720_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uss720_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_uss720__246_822_uss720_init6 = internal global ptr @uss720_init, section ".initcall6.init", align 4
@__exitcall_uss720_cleanup = internal global ptr @uss720_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uss720\00", [25 x i8] zeroinitializer }, align 32
@uss720_table = internal constant { [11 x %struct.usb_device_id], [88 x i8] } { [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1150, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1208, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1208, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 4610, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1367, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1451, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1734, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1833, i16 4740, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4755, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@uss720_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uss720_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/misc/uss720.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"probe: vendor id 0x%x, device id 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@uss720_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set interface result %d\0A\00", [39 x i8] zeroinitializer }, align 32
@uss720_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->asynclock\00", [47 x i8] zeroinitializer }, align 32
@parport_uss720_ops = internal global { %struct.parport_operations, [32 x i8] } { %struct.parport_operations { ptr @parport_uss720_write_data, ptr @parport_uss720_read_data, ptr @parport_uss720_write_control, ptr @parport_uss720_read_control, ptr @parport_uss720_frob_control, ptr @parport_uss720_read_status, ptr @parport_uss720_enable_irq, ptr @parport_uss720_disable_irq, ptr @parport_uss720_data_forward, ptr @parport_uss720_data_reverse, ptr @parport_uss720_init_state, ptr @parport_uss720_save_state, ptr @parport_uss720_restore_state, ptr @parport_uss720_epp_write_data, ptr @parport_uss720_epp_read_data, ptr @parport_uss720_epp_write_addr, ptr @parport_uss720_epp_read_addr, ptr @parport_uss720_ecp_write_data, ptr @parport_uss720_ecp_read_data, ptr @parport_uss720_ecp_write_addr, ptr @parport_uss720_write_compat, ptr @parport_ieee1284_read_nibble, ptr @parport_ieee1284_read_byte, ptr null }, [32 x i8] zeroinitializer }, align 32
@uss720_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014uss720: could not register parport\0A\00", [58 x i8] zeroinitializer }, align 32
@uss720_probe._entry_ptr = internal global ptr @uss720_probe._entry, section ".printk_index", align 4
@uss720_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg: %7ph\0A\00", [21 x i8] zeroinitializer }, align 32
@uss720_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"epaddr %d interval %d\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parport_uss720_epp_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013uss720: sendbulk ep 1 buf %p len %zu rlen %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"parport_uss720_epp_write_data\00", [34 x i8] zeroinitializer }, align 32
@parport_uss720_epp_write_data._entry_ptr = internal global ptr @parport_uss720_epp_write_data._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@parport_uss720_ecp_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.11, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"parport_uss720_ecp_write_data\00", [34 x i8] zeroinitializer }, align 32
@parport_uss720_ecp_write_data._entry_ptr = internal global ptr @parport_uss720_ecp_write_data._entry, section ".printk_index", align 4
@parport_uss720_ecp_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013uss720: recvbulk ep 2 buf %p len %zu rlen %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"parport_uss720_ecp_read_data\00", [35 x i8] zeroinitializer }, align 32
@parport_uss720_ecp_read_data._entry_ptr = internal global ptr @parport_uss720_ecp_read_data._entry, section ".printk_index", align 4
@parport_uss720_write_compat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parport_uss720_write_compat\00", [36 x i8] zeroinitializer }, align 32
@parport_uss720_write_compat._entry_ptr = internal global ptr @parport_uss720_write_compat._entry, section ".printk_index", align 4
@set_1284_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 239, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set_1284_register(%u,%u) failed\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_1284_register\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@set_1284_register._entry_ptr = internal global ptr @set_1284_register._entry, section ".printk_index", align 4
@submit_async_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 171, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"submit_async_request submit_urb failed with %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"submit_async_request\00", [43 x i8] zeroinitializer }, align 32
@submit_async_request._entry_ptr = internal global ptr @submit_async_request._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@async_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 107, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"async_complete: urb error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"async_complete\00", [17 x i8] zeroinitializer }, align 32
@async_complete._entry_ptr = internal global ptr @async_complete._entry, section ".printk_index", align 4
@get_1284_register.regindex = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\04\00\01\05\05\00\02\03\06", [23 x i8] zeroinitializer }, align 32
@get_1284_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 207, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get_1284_register(%u) failed\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_1284_register\00", [46 x i8] zeroinitializer }, align 32
@get_1284_register._entry_ptr = internal global ptr @get_1284_register._entry, section ".printk_index", align 4
@get_1284_register._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014get_1284_register: usb error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@get_1284_register._entry_ptr.28 = internal global ptr @get_1284_register._entry.26, section ".printk_index", align 4
@get_1284_register._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014get_1284_register timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@get_1284_register._entry_ptr.31 = internal global ptr @get_1284_register._entry.29, section ".printk_index", align 4
@destroy_priv.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"destroy_priv\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"destroying priv datastructure\0A\00", [33 x i8] zeroinitializer }, align 32
@uss720_disconnect.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uss720_disconnect\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disconnect\0A\00", [20 x i8] zeroinitializer }, align 32
@uss720_disconnect.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"parport_remove_port\0A\00", [43 x i8] zeroinitializer }, align 32
@uss720_disconnect.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disconnect done\0A\00", [47 x i8] zeroinitializer }, align 32
@uss720_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016uss720: USB Parport Cable driver for Cables using the Lucent Technologies USS720 Chip\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uss720_init\00", [20 x i8] zeroinitializer }, align 32
@uss720_init._entry_ptr = internal global ptr @uss720_init._entry, section ".printk_index", align 4
@uss720_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016uss720: NOTE: this is a special purpose driver to allow nonstandard\0A\00", [57 x i8] zeroinitializer }, align 32
@uss720_init._entry_ptr.42 = internal global ptr @uss720_init._entry.40, section ".printk_index", align 4
@uss720_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016uss720: protocols (eg. bitbang) over USS720 usb to parallel cables\0A\00", [58 x i8] zeroinitializer }, align 32
@uss720_init._entry_ptr.45 = internal global ptr @uss720_init._entry.43, section ".printk_index", align 4
@uss720_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016uss720: If you just want to connect to a printer, use usblp instead\0A\00", [57 x i8] zeroinitializer }, align 32
@uss720_init._entry_ptr.48 = internal global ptr @uss720_init._entry.46, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"uss720_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 786, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 787, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"uss720_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 769, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 681, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 691, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 711, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"parport_uss720_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 632, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 715, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 729, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 733, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 513, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 574, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 592, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 625, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 238, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 171, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 87, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 106, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [9 x i8] c"regindex\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 196, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 206, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 218, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 223, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 72, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 753, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 759, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 765, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 806, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 807, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 809, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [29 x i8] c"../drivers/usb/misc/uss720.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 811, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_uss720_cleanup, ptr @__initcall__kmod_uss720__246_822_uss720_init6, ptr @async_complete._entry, ptr @async_complete._entry_ptr, ptr @get_1284_register._entry, ptr @get_1284_register._entry.26, ptr @get_1284_register._entry.29, ptr @get_1284_register._entry_ptr, ptr @get_1284_register._entry_ptr.28, ptr @get_1284_register._entry_ptr.31, ptr @parport_uss720_ecp_read_data._entry, ptr @parport_uss720_ecp_read_data._entry_ptr, ptr @parport_uss720_ecp_write_data._entry, ptr @parport_uss720_ecp_write_data._entry_ptr, ptr @parport_uss720_epp_write_data._entry, ptr @parport_uss720_epp_write_data._entry_ptr, ptr @parport_uss720_write_compat._entry, ptr @parport_uss720_write_compat._entry_ptr, ptr @set_1284_register._entry, ptr @set_1284_register._entry_ptr, ptr @submit_async_request._entry, ptr @submit_async_request._entry_ptr, ptr @uss720_cleanup, ptr @uss720_init._entry, ptr @uss720_init._entry.40, ptr @uss720_init._entry.43, ptr @uss720_init._entry.46, ptr @uss720_init._entry_ptr, ptr @uss720_init._entry_ptr.42, ptr @uss720_init._entry_ptr.45, ptr @uss720_init._entry_ptr.48, ptr @uss720_probe._entry, ptr @uss720_probe._entry_ptr, ptr @uss720_driver, ptr @.str, ptr @uss720_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @uss720_probe.__key, ptr @.str.5, ptr @parport_uss720_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @init_completion.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @get_1284_register.regindex, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uss720_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uss720_table to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uss720_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_uss720_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uss720_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_uss720_epp_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_uss720_ecp_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_uss720_ecp_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_uss720_write_compat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_1284_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_async_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_1284_register.regindex to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_1284_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_1284_register._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_1284_register._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uss720_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uss720_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uss720_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uss720_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uss720_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_deregister(ptr noundef nonnull @uss720_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uss720_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @uss720_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #16
  br label %out

out:                                              ; preds = %do.end, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uss720_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %epd = alloca ptr, align 4
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %epd) #13
  %2 = ptrtoint ptr %epd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %epd, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #13
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %reg, align 1, !annotation !134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uss720_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uss720_probe, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !135

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 16, i32 7
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor, align 8
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 16, i32 8
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv6 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uss720_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv6) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %10 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.not = icmp eq i32 %11, 3
  br i1 %cmp.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_put_dev(ptr noundef %call1) #13
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber, align 2
  %conv10 = zext i8 %15 to i32
  %call11 = tail call i32 @usb_set_interface(ptr noundef %call1, i32 noundef %conv10, i32 noundef 2) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uss720_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uss720_probe, %if.then24)) #13
          to label %do.end28 [label %if.then24], !srcloc !135

if.then24:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uss720_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev25, ptr noundef nonnull @.str.4, i32 noundef %call11) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %if.end9
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %16 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp31 = icmp ult i8 %19, 3
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_put_dev(ptr noundef %call1) #13
  br label %cleanup

if.end34:                                         ; preds = %do.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 72) #17
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_put_dev(ptr noundef %call1) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %pp39 = getelementptr inbounds %struct.parport_uss720_private, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %pp39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pp39, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1, ptr %call7.i.i, align 8
  %ref_count = getelementptr inbounds %struct.parport_uss720_private, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  %23 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %ref_count, align 8
  %asynclock = getelementptr inbounds %struct.parport_uss720_private, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %asynclock, ptr noundef nonnull @.str.5, ptr noundef nonnull @uss720_probe.__key, i16 noundef signext 3) #13
  %asynclist = getelementptr inbounds %struct.parport_uss720_private, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %asynclist to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %asynclist, ptr %asynclist, align 4
  %prev.i = getelementptr inbounds %struct.parport_uss720_private, ptr %call7.i.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %asynclist, ptr %prev.i, align 8
  %call45 = tail call ptr @parport_register_port(i32 noundef 0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull @parport_uss720_ops) #13
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  tail call fastcc void @kill_all_async_requests_priv(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @kref_put(ptr noundef %ref_count, ptr noundef nonnull @destroy_priv)
  br label %cleanup

if.end53:                                         ; preds = %if.end38
  %26 = ptrtoint ptr %pp39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call45, ptr %pp39, align 4
  %private_data = getelementptr inbounds %struct.parport, ptr %call45, i32 0, i32 25
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %private_data, align 8
  %modes = getelementptr inbounds %struct.parport, ptr %call45, i32 0, i32 4
  %28 = ptrtoint ptr %modes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 31, ptr %modes, align 8
  %call55 = tail call fastcc i32 @set_1284_register(ptr noundef nonnull %call45, i8 noundef zeroext 7, i8 noundef zeroext 0, i32 noundef 3264)
  %call56 = tail call fastcc i32 @set_1284_register(ptr noundef nonnull %call45, i8 noundef zeroext 6, i8 noundef zeroext 48, i32 noundef 3264)
  %call57 = tail call fastcc i32 @set_1284_register(ptr noundef nonnull %call45, i8 noundef zeroext 2, i8 noundef zeroext 12, i32 noundef 3264)
  %call58 = call fastcc i32 @get_1284_register(ptr noundef nonnull %call45, i8 noundef zeroext 0, ptr noundef nonnull %reg, i32 noundef 3264)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uss720_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uss720_probe, %if.then71)) #13
          to label %do.end76 [label %if.then71], !srcloc !135

if.then71:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %dev72 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %reg73 = getelementptr inbounds %struct.parport_uss720_private, ptr %call7.i.i, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uss720_probe.__UNIQUE_ID_ddebug237, ptr noundef %dev72, ptr noundef nonnull @.str.7, ptr noundef %reg73) #13
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %if.end53
  %call.i = call i32 @usb_find_common_endpoints_reverse(ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef nonnull %epd, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool78.not = icmp eq i32 %call.i, 0
  br i1 %tobool78.not, label %do.body80, label %do.end76.if.end99_crit_edge

do.end76.if.end99_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

do.body80:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uss720_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uss720_probe, %if.then92)) #13
          to label %if.end99 [label %if.then92], !srcloc !135

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #15
  %dev93 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %29 = ptrtoint ptr %epd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %epd, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bEndpointAddress, align 1
  %conv94 = zext i8 %32 to i32
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bInterval, align 1
  %conv95 = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uss720_probe.__UNIQUE_ID_ddebug238, ptr noundef %dev93, ptr noundef nonnull @.str.8, i32 noundef %conv94, i32 noundef %conv95) #13
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %do.body80, %do.end76.if.end99_crit_edge
  call void @parport_announce_port(ptr noundef nonnull %call45) #13
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call45, ptr %driver_data.i.i, align 4
  call void @usb_put_dev(ptr noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end50, %if.then37, %if.then33, %if.then8
  %retval.0 = phi i32 [ -19, %if.then8 ], [ -19, %if.then33 ], [ 0, %if.end99 ], [ -19, %do.end50 ], [ -12, %if.then37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uss720_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uss720_disconnect.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uss720_disconnect, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !135

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uss720_disconnect.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.35) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.do.body27_crit_edge, label %if.then5

do.end.do.body27_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27

if.then5:                                         ; preds = %do.end
  %private_data = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %4, align 4
  %pp6 = getelementptr inbounds %struct.parport_uss720_private, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pp6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pp6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uss720_disconnect.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uss720_disconnect, %if.then19)) #13
          to label %do.end23 [label %if.then19], !srcloc !135

if.then19:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uss720_disconnect.__UNIQUE_ID_ddebug240, ptr noundef %dev20, ptr noundef nonnull @.str.36) #13
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %if.then5
  tail call void @parport_remove_port(ptr noundef nonnull %1) #13
  tail call void @parport_put_port(ptr noundef nonnull %1) #13
  %asynclock.i = getelementptr inbounds %struct.parport_uss720_private, ptr %4, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asynclock.i) #13
  %asynclist.i = getelementptr inbounds %struct.parport_uss720_private, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %asynclist.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn1.i = load ptr, ptr %asynclist.i, align 4
  %cmp8.not2.i = icmp eq ptr %.pn1.i, %asynclist.i
  br i1 %cmp8.not2.i, label %do.end23.kill_all_async_requests_priv.exit_crit_edge, label %do.end23.for.body.i_crit_edge

do.end23.for.body.i_crit_edge:                    ; preds = %do.end23
  br label %for.body.i

do.end23.kill_all_async_requests_priv.exit_crit_edge: ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %kill_all_async_requests_priv.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end23.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn1.i, %do.end23.for.body.i_crit_edge ]
  %urb.i = getelementptr i8, ptr %.pn3.i, i32 64
  %8 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb.i, align 4
  %call10.i = tail call i32 @usb_unlink_urb(ptr noundef %9) #13
  %10 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn.i, %asynclist.i
  br i1 %cmp8.not.i, label %for.body.i.kill_all_async_requests_priv.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.kill_all_async_requests_priv.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kill_all_async_requests_priv.exit

kill_all_async_requests_priv.exit:                ; preds = %for.body.i.kill_all_async_requests_priv.exit_crit_edge, %do.end23.kill_all_async_requests_priv.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asynclock.i, i32 noundef %call2.i) #13
  %ref_count = getelementptr inbounds %struct.parport_uss720_private, ptr %4, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %kill_all_async_requests_priv.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.do.body27_crit_edge, label %if.then10.i.i.i.i, !prof !138

if.end5.i.i.i.i.do.body27_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #13
  br label %do.body27

if.then.i:                                        ; preds = %kill_all_async_requests_priv.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_priv.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uss720_disconnect, %if.then.i61)) #13
          to label %destroy_priv.exit [label %if.then.i61], !srcloc !135

if.then.i61:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @destroy_priv.__UNIQUE_ID_ddebug234, ptr noundef %dev.i, ptr noundef nonnull @.str.33) #13
  br label %destroy_priv.exit

destroy_priv.exit:                                ; preds = %if.then.i61, %if.then.i
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 4
  tail call void @usb_put_dev(ptr noundef %15) #13
  tail call void @kfree(ptr noundef %4) #13
  br label %do.body27

do.body27:                                        ; preds = %destroy_priv.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.do.body27_crit_edge, %do.end.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uss720_disconnect.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uss720_disconnect, %if.then39)) #13
          to label %do.end43 [label %if.then39], !srcloc !135

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uss720_disconnect.__UNIQUE_ID_ddebug241, ptr noundef %dev40, ptr noundef nonnull @.str.37) #13
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body27
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_port(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_1284_register(ptr noundef readonly %pp, i8 noundef zeroext %reg, i8 noundef zeroext %val, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %conv = zext i8 %reg to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv1 = zext i8 %val to i32
  %or = or i32 %shl, %conv1
  %conv2 = trunc i32 %or to i16
  %call = tail call fastcc ptr @submit_async_request(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %conv2, i32 noundef %mem_flags)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv1) #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ref_count = getelementptr inbounds %struct.uss720_async_request, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !138

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call fastcc void @destroy_async(ptr noundef %ref_count) #13, !callees !140
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_1284_register(ptr noundef readonly %pp, i8 noundef zeroext %reg, ptr noundef writeonly %val, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %conv = zext i8 %reg to i32
  %conv.tr = zext i8 %reg to i16
  %conv1 = shl nuw i16 %conv.tr, 8
  %call = tail call fastcc ptr @submit_async_request(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext -64, i16 noundef zeroext %conv1, i32 noundef %mem_flags)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %val, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %ref_count = getelementptr inbounds %struct.uss720_async_request, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !138

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call fastcc void @destroy_async(ptr noundef %ref_count) #13, !callees !140
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %compl = getelementptr inbounds %struct.uss720_async_request, ptr %call, i32 0, i32 3
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef %compl, i32 noundef 100) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end30, label %if.then12

if.then12:                                        ; preds = %if.end9
  %urb = getelementptr inbounds %struct.uss720_async_request, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %arrayidx = getelementptr [9 x i8], ptr @get_1284_register.regindex, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %10 to i32
  %arrayidx17 = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 %conv16
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx17, align 1
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18.not = icmp eq i32 %8, 0
  br i1 %tobool18.not, label %if.then12.if.end24_crit_edge, label %do.end22

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.end22:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %8) #16
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.then12.if.end24_crit_edge
  %ref_count25 = getelementptr inbounds %struct.uss720_async_request, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count25, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %ref_count25, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count25, ptr %ref_count25, i32 1, ptr elementtype(i32) %ref_count25) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i51)
  %cmp.i.i.i.i52 = icmp eq i32 %asmresult.i.i.i.i.i.i.i51, 1
  br i1 %cmp.i.i.i.i52, label %if.then.i56, label %if.end5.i.i.i.i54

if.end5.i.i.i.i54:                                ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i51)
  %.not.i.i.i.i53 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i51, 0
  br i1 %.not.i.i.i.i53, label %if.end5.i.i.i.i54.cleanup_crit_edge, label %if.then10.i.i.i.i55, !prof !138

if.end5.i.i.i.i54.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i55:                              ; preds = %if.end5.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count25, i32 noundef 3) #13
  br label %cleanup

if.then.i56:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call fastcc void @destroy_async(ptr noundef %ref_count25) #13, !callees !140
  br label %cleanup

do.end30:                                         ; preds = %if.end9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  %asynclock.i = getelementptr inbounds %struct.parport_uss720_private, ptr %1, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asynclock.i) #13
  %asynclist.i = getelementptr inbounds %struct.parport_uss720_private, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %asynclist.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn1.i = load ptr, ptr %asynclist.i, align 4
  %cmp8.not2.i = icmp eq ptr %.pn1.i, %asynclist.i
  br i1 %cmp8.not2.i, label %do.end30.kill_all_async_requests_priv.exit_crit_edge, label %do.end30.for.body.i_crit_edge

do.end30.for.body.i_crit_edge:                    ; preds = %do.end30
  br label %for.body.i

do.end30.kill_all_async_requests_priv.exit_crit_edge: ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %kill_all_async_requests_priv.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end30.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn1.i, %do.end30.for.body.i_crit_edge ]
  %urb.i = getelementptr i8, ptr %.pn3.i, i32 64
  %16 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb.i, align 4
  %call10.i = tail call i32 @usb_unlink_urb(ptr noundef %17) #13
  %18 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn.i, %asynclist.i
  br i1 %cmp8.not.i, label %for.body.i.kill_all_async_requests_priv.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.kill_all_async_requests_priv.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kill_all_async_requests_priv.exit

kill_all_async_requests_priv.exit:                ; preds = %for.body.i.kill_all_async_requests_priv.exit_crit_edge, %do.end30.kill_all_async_requests_priv.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asynclock.i, i32 noundef %call2.i) #13
  br label %cleanup

cleanup:                                          ; preds = %kill_all_async_requests_priv.exit, %if.then.i56, %if.then10.i.i.i.i55, %if.end5.i.i.i.i54.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %kill_all_async_requests_priv.exit ], [ -5, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ], [ %8, %if.end5.i.i.i.i54.cleanup_crit_edge ], [ %8, %if.then10.i.i.i.i55 ], [ %8, %if.then.i56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_announce_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kill_all_async_requests_priv(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %asynclock = getelementptr inbounds %struct.parport_uss720_private, ptr %priv, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asynclock) #13
  %asynclist = getelementptr inbounds %struct.parport_uss720_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %asynclist to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn1 = load ptr, ptr %asynclist, align 4
  %cmp8.not2 = icmp eq ptr %.pn1, %asynclist
  br i1 %cmp8.not2, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn3 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn1, %entry.for.body_crit_edge ]
  %urb = getelementptr i8, ptr %.pn3, i32 64
  %1 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %urb, align 4
  %call10 = tail call i32 @usb_unlink_urb(ptr noundef %2) #13
  %3 = ptrtoint ptr %.pn3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn3, align 4
  %cmp8.not = icmp eq ptr %.pn, %asynclist
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asynclock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref, ptr nocapture noundef readonly %release) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !138

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call void %release(ptr noundef %kref) #13, !callees !140
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_priv(ptr noundef %kref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_priv.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@destroy_priv, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !135

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @destroy_priv.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_uss720_write_data(ptr noundef %pp, i8 noundef zeroext %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 0, i8 noundef zeroext %d, i32 noundef 3264)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_uss720_read_data(ptr noundef %pp) #2 align 64 {
entry:
  %ret = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret) #13
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ret, align 1, !annotation !134
  %call = call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 0, ptr noundef nonnull %ret, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret) #13
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_uss720_write_control(ptr noundef %pp, i8 noundef zeroext %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = and i8 %d, 15
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, -16
  %or10 = or i8 %5, %2
  %call = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 2, i8 noundef zeroext %or10, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or10, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @parport_uss720_read_control(ptr nocapture noundef readonly %pp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 15
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_uss720_frob_control(ptr noundef %pp, i8 noundef zeroext %mask, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = and i8 %mask, 15
  %3 = and i8 %val, 15
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %neg = xor i8 %2, -1
  %and7 = and i8 %5, %neg
  %xor = xor i8 %and7, %3
  %call = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 2, i8 noundef zeroext %xor, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %xor, ptr %arrayidx, align 1
  %7 = and i8 %xor, 15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_uss720_read_status(ptr noundef %pp) #2 align 64 {
entry:
  %ret = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret) #13
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ret, align 1, !annotation !134
  %call = call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 1, ptr noundef nonnull %ret, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret, align 1
  %3 = and i8 %2, -8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret) #13
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_uss720_enable_irq(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 16
  %call = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 2, i8 noundef zeroext %4, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_uss720_disable_irq(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, -17
  %call = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 2, i8 noundef zeroext %4, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_uss720_data_forward(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, -33
  %call = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 2, i8 noundef zeroext %4, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_uss720_data_reverse(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 32
  %call = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 2, i8 noundef zeroext %4, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @parport_uss720_init_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %s) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_func = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %irq_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_func, align 8
  %tobool.not = icmp eq ptr %1, null
  %or = select i1 %tobool.not, i32 12, i32 28
  %2 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %s, align 4
  %ecr = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %ecr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 36, ptr %ecr, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @parport_uss720_save_state(ptr nocapture noundef readonly %pp, ptr nocapture noundef writeonly %s) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %s, align 4
  %arrayidx2 = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 2
  %conv3 = zext i8 %6 to i32
  %ecr = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %ecr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv3, ptr %ecr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_uss720_restore_state(ptr noundef %pp, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  %conv = trunc i32 %3 to i8
  %call = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 2, i8 noundef zeroext %conv, i32 noundef 2592)
  %ecr = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecr, align 4
  %conv2 = trunc i32 %5 to i8
  %call3 = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 6, i8 noundef zeroext %conv2, i32 noundef 2592)
  %call4 = tail call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 2, ptr noundef null, i32 noundef 2592)
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s, align 4
  %conv7 = trunc i32 %7 to i8
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecr, align 4
  %conv10 = trunc i32 %10 to i8
  %arrayidx12 = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %arrayidx12, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_uss720_epp_write_data(ptr noundef %pp, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #2 align 64 {
entry:
  %rlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #13
  %4 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rlen, align 4, !annotation !134
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -1073709056
  %call6 = call i32 @usb_bulk_msg(ptr noundef nonnull %3, i32 noundef %or, ptr noundef %buf, i32 noundef %length, ptr noundef nonnull %rlen, i32 noundef 20000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %do.end

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rlen, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %buf, i32 noundef %length, i32 noundef %8) #16
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end4.if.end10_crit_edge
  %call11 = call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  %9 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_uss720_epp_read_data(ptr noundef %pp, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #2 align 64 {
entry:
  %stat.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp20.not = icmp eq i32 %length, 0
  br i1 %cmp20.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reg = getelementptr inbounds %struct.parport_uss720_private, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %got.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.021 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 4, ptr noundef %buf.addr.021, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4:                                          ; preds = %for.body
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat.i) #13
  %5 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %stat.i, align 1, !annotation !134
  %call.i = call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 1, ptr noundef nonnull %stat.i, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #13
  br label %for.end

for.inc:                                          ; preds = %if.end4
  %incdec.ptr = getelementptr i8, ptr %buf.addr.021, i32 1
  %inc = add nuw i32 %got.022, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %got.019 = phi i32 [ %got.022, %if.then6 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %length, %for.inc.for.end_crit_edge ], [ %got.022, %for.body.for.end_crit_edge ]
  %call9 = call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %got.019, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_uss720_epp_write_addr(ptr noundef %pp, ptr nocapture noundef readonly %buf, i32 noundef %length, i32 noundef %flags) #2 align 64 {
entry:
  %stat.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp25.not = icmp eq i32 %length, 0
  br i1 %cmp25.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reg = getelementptr inbounds %struct.parport_uss720_private, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %written.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.026 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %buf.addr.026 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf.addr.026, align 1
  %call1 = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 3, i8 noundef zeroext %3, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %buf.addr.026, i32 1
  %call5 = tail call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 1, ptr noundef null, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %for.inc, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat.i) #13
  %7 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %stat.i, align 1, !annotation !134
  %call.i = call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 1, ptr noundef nonnull %stat.i, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #13
  br label %for.end

for.inc:                                          ; preds = %if.end8
  %inc = add nuw i32 %written.027, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then10, %if.end4.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %written.024 = phi i32 [ %written.027, %if.then10 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %length, %for.inc.for.end_crit_edge ], [ %written.027, %for.body.for.end_crit_edge ], [ %written.027, %if.end4.for.end_crit_edge ]
  %call13 = call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %written.024, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_uss720_epp_read_addr(ptr noundef %pp, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #2 align 64 {
entry:
  %stat.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp20.not = icmp eq i32 %length, 0
  br i1 %cmp20.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reg = getelementptr inbounds %struct.parport_uss720_private, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %got.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.021 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 3, ptr noundef %buf.addr.021, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4:                                          ; preds = %for.body
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat.i) #13
  %5 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %stat.i, align 1, !annotation !134
  %call.i = call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 1, ptr noundef nonnull %stat.i, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #13
  br label %for.end

for.inc:                                          ; preds = %if.end4
  %incdec.ptr = getelementptr i8, ptr %buf.addr.021, i32 1
  %inc = add nuw i32 %got.022, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %got.019 = phi i32 [ %got.022, %if.then6 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %length, %for.inc.for.end_crit_edge ], [ %got.022, %for.body.for.end_crit_edge ]
  %call9 = call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %got.019, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_uss720_ecp_write_data(ptr noundef %pp, ptr noundef %buffer, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %rlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #13
  %4 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rlen, align 4, !annotation !134
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -1073709056
  %call6 = call i32 @usb_bulk_msg(ptr noundef nonnull %3, i32 noundef %or, ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull %rlen, i32 noundef 20000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %do.end

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rlen, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %buffer, i32 noundef %len, i32 noundef %8) #16
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end4.if.end10_crit_edge
  %call11 = call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  %9 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_uss720_ecp_read_data(ptr noundef %pp, ptr noundef %buffer, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %rlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #13
  %4 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rlen, align 4, !annotation !134
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i = shl i32 %6, 8
  %or6 = or i32 %shl.i, -1073676160
  %call7 = call i32 @usb_bulk_msg(ptr noundef nonnull %3, i32 noundef %or6, ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull %rlen, i32 noundef 20000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end4.if.end11_crit_edge, label %do.end

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rlen, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %buffer, i32 noundef %len, i32 noundef %8) #16
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end4.if.end11_crit_edge
  %call12 = call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  %9 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_uss720_ecp_write_addr(ptr noundef %pp, ptr nocapture noundef readonly %buffer, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp11.not = icmp eq i32 %len, 0
  br i1 %cmp11.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %written.013 = phi i32 [ %inc, %if.end4.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %buffer.addr.012 = phi ptr [ %incdec.ptr, %if.end4.for.body_crit_edge ], [ %buffer, %for.cond.preheader.for.body_crit_edge ]
  %0 = ptrtoint ptr %buffer.addr.012 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer.addr.012, align 1
  %call1 = tail call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 5, i8 noundef zeroext %1, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %buffer.addr.012, i32 1
  %inc = add nuw i32 %written.013, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %written.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %written.013, %for.body.for.end_crit_edge ], [ %len, %if.end4.for.end_crit_edge ]
  %call5 = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %written.0.lcssa, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_uss720_write_compat(ptr noundef %pp, ptr noundef %buffer, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %rlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #13
  %4 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rlen, align 4, !annotation !134
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -1073709056
  %call6 = call i32 @usb_bulk_msg(ptr noundef nonnull %3, i32 noundef %or, ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull %rlen, i32 noundef 20000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %do.end

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rlen, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %buffer, i32 noundef %len, i32 noundef %8) #16
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end4.if.end10_crit_edge
  %call11 = call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  %9 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_read_nibble(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_read_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @change_mode(ptr noundef %pp, i32 noundef %m) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #13
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg, align 1, !annotation !134
  %call = call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 6, ptr noundef nonnull %reg, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup55_crit_edge

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 2
  %5 = lshr i8 %4, 5
  %6 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %m)
  %cmp = icmp eq i32 %6, %m
  br i1 %cmp, label %if.end.cleanup55_crit_edge, label %if.end4

if.end.cleanup55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %4)
  %cmp5 = icmp ugt i8 %4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %m)
  %cmp7 = icmp sgt i32 %m, 1
  %or.cond = and i1 %cmp7, %cmp5
  br i1 %or.cond, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end4
  %call10 = call fastcc i32 @change_mode(ptr noundef %pp, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end45_crit_edge, label %if.then9.cleanup55_crit_edge

if.then9.cleanup55_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.then9.if.end45_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %m)
  %cmp15 = icmp slt i32 %m, 2
  br i1 %cmp15, label %land.lhs.true17, label %if.end14.if.end45_crit_edge

if.end14.if.end45_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

land.lhs.true17:                                  ; preds = %if.end14
  %arrayidx19 = getelementptr %struct.parport_uss720_private, ptr %1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx19, align 1
  %9 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool22.not = icmp eq i8 %9, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true17.if.end45_crit_edge

land.lhs.true17.if.end45_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then23:                                        ; preds = %land.lhs.true17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %physport = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 11
  %11 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %physport, align 8
  %cad = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cad, align 8
  %timeout = getelementptr inbounds %struct.pardevice, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %timeout, align 4
  %17 = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch = icmp eq i32 %17, 2
  br i1 %switch, label %for.cond.preheader, label %if.then23.if.end45_crit_edge

if.then23.if.end45_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

for.cond.preheader:                               ; preds = %if.then23
  %18 = add i32 %16, %10
  br label %for.cond

for.cond:                                         ; preds = %signal_pending.exit.for.cond_crit_edge, %for.cond.preheader
  %call24 = call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 6, ptr noundef nonnull %reg, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.cond.cleanup55_crit_edge

for.cond.cleanup55_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end27:                                         ; preds = %for.cond
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 2
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32.not = icmp eq i8 %21, 0
  br i1 %tobool32.not, label %if.end34, label %if.end27.if.end45_crit_edge

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.end34:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %22, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp35 = icmp sgt i32 %sub, -1
  br i1 %cmp35, label %if.end34.cleanup55_crit_edge, label %if.end38

if.end34.cleanup55_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end38:                                         ; preds = %if.end34
  %call39 = call i32 @msleep_interruptible(i32 noundef 10) #13
  %23 = call i32 @llvm.read_register.i32(metadata !124) #13
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
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
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end38.if.end45_crit_edge, !prof !138

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

signal_pending.exit:                              ; preds = %if.end38
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and1.i.i.i.i.i = and i32 %33, 1
  %tobool42.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool42.not, label %signal_pending.exit.for.cond_crit_edge, label %signal_pending.exit.if.end45_crit_edge

signal_pending.exit.if.end45_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

signal_pending.exit.for.cond_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end45:                                         ; preds = %signal_pending.exit.if.end45_crit_edge, %if.end38.if.end45_crit_edge, %if.end27.if.end45_crit_edge, %if.then23.if.end45_crit_edge, %land.lhs.true17.if.end45_crit_edge, %if.end14.if.end45_crit_edge, %if.then9.if.end45_crit_edge
  %m.tr = trunc i32 %m to i8
  %conv46 = shl i8 %m.tr, 5
  %call47 = call fastcc i32 @set_1284_register(ptr noundef %pp, i8 noundef zeroext 6, i8 noundef zeroext %conv46, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.cleanup55_crit_edge

if.end45.cleanup55_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %call51 = call fastcc i32 @get_1284_register(ptr noundef %pp, i8 noundef zeroext 6, ptr noundef nonnull %reg, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  %. = select i1 %tobool52.not, i32 0, i32 -5
  br label %cleanup55

cleanup55:                                        ; preds = %if.end50, %if.end45.cleanup55_crit_edge, %if.end34.cleanup55_crit_edge, %for.cond.cleanup55_crit_edge, %if.then9.cleanup55_crit_edge, %if.end.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.1 = phi i32 [ -5, %entry.cleanup55_crit_edge ], [ 0, %if.end.cleanup55_crit_edge ], [ -5, %if.then9.cleanup55_crit_edge ], [ -5, %if.end45.cleanup55_crit_edge ], [ %., %if.end50 ], [ -16, %if.end34.cleanup55_crit_edge ], [ -5, %for.cond.cleanup55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @submit_async_request(ptr noundef %priv, i8 noundef zeroext %request, i8 noundef zeroext %requesttype, i16 noundef zeroext %value, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %or.i = or i32 %mem_flags, 256
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end4.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !138

if.end4.kzalloc.exit_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end4
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end4.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end4.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %2 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i, i32 noundef 88) #17
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end7

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %kzalloc.exit
  %ref_count = getelementptr inbounds %struct.uss720_async_request, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  %4 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %ref_count, align 4
  %asynclist = getelementptr inbounds %struct.uss720_async_request, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %asynclist to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %asynclist, ptr %asynclist, align 8
  %prev.i = getelementptr inbounds %struct.uss720_async_request, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %asynclist, ptr %prev.i, align 4
  %compl = getelementptr inbounds %struct.uss720_async_request, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %compl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %compl, align 8
  %wait.i = getelementptr inbounds %struct.uss720_async_request, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #13
  %ref_count8 = getelementptr inbounds %struct.parport_uss720_private, ptr %priv, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count8, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref_count8, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count8, ptr %ref_count8, i32 1, ptr elementtype(i32) %ref_count8) #13, !srcloc !141
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !142

if.end7.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !138

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count8, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %priv, ptr %call7.i.i, align 8
  %call10 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %mem_flags) #13
  %urb = getelementptr inbounds %struct.uss720_async_request, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %urb, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %kref_get.exit
  %call.i.i.i.i.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i3 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i3, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !138

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call fastcc void @destroy_async(ptr noundef %ref_count) #13, !callees !140
  br label %cleanup

if.end16:                                         ; preds = %kref_get.exit
  br i1 %cmp.i.i.i, label %if.end16.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !138

if.end16.kmalloc.exit_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %if.end16
  %and2.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %if.end16.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end16.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 7
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef %mem_flags, i32 noundef 8) #17
  %dr = getelementptr inbounds %struct.uss720_async_request, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %dr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %dr, align 4
  %tobool19.not = icmp eq ptr %call7.i, null
  br i1 %tobool19.not, label %if.then20, label %if.end23

if.then20:                                        ; preds = %kmalloc.exit
  %call.i.i.i.i.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i5 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i5)
  %cmp.i.i.i.i6 = icmp eq i32 %asmresult.i.i.i.i.i.i.i5, 1
  br i1 %cmp.i.i.i.i6, label %if.then.i10, label %if.end5.i.i.i.i8

if.end5.i.i.i.i8:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i5)
  %.not.i.i.i.i7 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i5, 0
  br i1 %.not.i.i.i.i7, label %if.end5.i.i.i.i8.cleanup_crit_edge, label %if.then10.i.i.i.i9, !prof !138

if.end5.i.i.i.i8.cleanup_crit_edge:               ; preds = %if.end5.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i9:                               ; preds = %if.end5.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #13
  br label %cleanup

if.then.i10:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call fastcc void @destroy_async(ptr noundef %ref_count) #13, !callees !140
  br label %cleanup

if.end23:                                         ; preds = %kmalloc.exit
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %requesttype, ptr %call7.i, align 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %request, ptr %bRequest, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %value)
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 2
  %20 = ptrtoint ptr %wValue to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %wValue, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 3
  %21 = ptrtoint ptr %wIndex to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %wIndex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %request)
  %cmp = icmp eq i8 %request, 3
  %cond = select i1 %cmp, i32 7, i32 0
  %conv29 = trunc i32 %cond to i16
  %22 = shl nuw nsw i16 %conv29, 8
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 4
  %23 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %wLength, align 2
  %24 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %requesttype)
  %tobool33.not = icmp sgt i8 %requesttype, -1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 8
  %shl.i12 = shl i32 %27, 8
  %. = select i1 %tobool33.not, i32 -2147483648, i32 -2147483520
  %or37 = or i32 %shl.i12, %.
  %reg = getelementptr inbounds %struct.uss720_async_request, ptr %call7.i.i, i32 0, i32 6
  %spec.select = select i1 %cmp, ptr %reg, ptr null
  %dev1.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 10
  %29 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or37, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 21
  %30 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spec.select, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @async_complete, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 27
  %34 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %context5.i, align 4
  %asynclock = getelementptr inbounds %struct.parport_uss720_private, ptr %priv, i32 0, i32 5
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asynclock) #13
  %asynclist59 = getelementptr inbounds %struct.parport_uss720_private, ptr %priv, i32 0, i32 4
  %prev.i13 = getelementptr inbounds %struct.parport_uss720_private, ptr %priv, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i13, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %asynclist, ptr noundef %36, ptr noundef %asynclist59) #13
  br i1 %call.i.i, label %if.end.i.i14, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i14:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %asynclist, ptr %prev.i13, align 4
  %38 = ptrtoint ptr %asynclist to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %asynclist59, ptr %asynclist, align 8
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %asynclist, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i14, %if.end23.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asynclock, i32 noundef %call55) #13
  %call.i.i.i.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #13
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #13, !srcloc !141
  %asmresult.i.i.i.i.i.i16 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i16)
  %tobool1.not.i.i.i.i17 = icmp eq i32 %asmresult.i.i.i.i.i.i16, 0
  br i1 %tobool1.not.i.i.i.i17, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i22_crit_edge, label %if.else.i.i.i.i20, !prof !142

list_add_tail.exit.if.end15.sink.split.i.i.i.i22_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i22

if.else.i.i.i.i20:                                ; preds = %list_add_tail.exit
  %add.i.i.i.i18 = add i32 %asmresult.i.i.i.i.i.i16, 1
  %42 = or i32 %add.i.i.i.i18, %asmresult.i.i.i.i.i.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i19 = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i19, label %if.else.i.i.i.i20.kref_get.exit23_crit_edge, label %if.else.i.i.i.i20.if.end15.sink.split.i.i.i.i22_crit_edge, !prof !138

if.else.i.i.i.i20.if.end15.sink.split.i.i.i.i22_crit_edge: ; preds = %if.else.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i22

if.else.i.i.i.i20.kref_get.exit23_crit_edge:      ; preds = %if.else.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit23

if.end15.sink.split.i.i.i.i22:                    ; preds = %if.else.i.i.i.i20.if.end15.sink.split.i.i.i.i22_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i22_crit_edge
  %.sink.i.i.i.i21 = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i22_crit_edge ], [ 1, %if.else.i.i.i.i20.if.end15.sink.split.i.i.i.i22_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i.i21) #13
  br label %kref_get.exit23

kref_get.exit23:                                  ; preds = %if.end15.sink.split.i.i.i.i22, %if.else.i.i.i.i20.kref_get.exit23_crit_edge
  %43 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %urb, align 8
  %call63 = tail call i32 @usb_submit_urb(ptr noundef %44, i32 noundef %mem_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %kref_get.exit23.cleanup_crit_edge, label %if.end66

kref_get.exit23.cleanup_crit_edge:                ; preds = %kref_get.exit23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end66:                                         ; preds = %kref_get.exit23
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @destroy_async(ptr noundef %ref_count)
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call63) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %kref_get.exit23.cleanup_crit_edge, %if.then.i10, %if.then10.i.i.i.i9, %if.end5.i.i.i.i8.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end66 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ %call7.i.i, %kref_get.exit23.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i ], [ null, %if.end5.i.i.i.i8.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i9 ], [ null, %if.then.i10 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_async(ptr noundef %kref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %urb = getelementptr i8, ptr %kref, i32 68
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !142

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_free_urb(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dr = getelementptr i8, ptr %kref, i32 72
  %4 = ptrtoint ptr %dr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dr, align 4
  tail call void @kfree(ptr noundef %5) #13
  %asynclock = getelementptr inbounds %struct.parport_uss720_private, ptr %1, i32 0, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asynclock) #13
  %asynclist = getelementptr i8, ptr %kref, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asynclist) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %kref, i32 8
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %asynclist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asynclist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %asynclist to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %asynclist, ptr %asynclist, align 4
  %prev.i3.i = getelementptr i8, ptr %kref, i32 8
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %asynclist, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asynclock, i32 noundef %call7) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  %ref_count = getelementptr inbounds %struct.parport_uss720_private, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !138

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_priv.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@destroy_async, %if.then.i19)) #13
          to label %destroy_priv.exit [label %if.then.i19], !srcloc !135

if.then.i19:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @destroy_priv.__UNIQUE_ID_ddebug234, ptr noundef %dev.i, ptr noundef nonnull @.str.33) #13
  br label %destroy_priv.exit

destroy_priv.exit:                                ; preds = %if.then.i19, %if.then.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void @usb_put_dev(ptr noundef %18) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %destroy_priv.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pp3 = getelementptr inbounds %struct.parport_uss720_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pp3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.22, i32 noundef %1) #16
  br label %if.end19

if.else:                                          ; preds = %entry
  %dr = getelementptr inbounds %struct.uss720_async_request, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %dr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dr, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bRequest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp = icmp eq i8 %13, 3
  br i1 %cmp, label %if.then6, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then6:                                         ; preds = %if.else
  %reg = getelementptr inbounds %struct.parport_uss720_private, ptr %5, i32 0, i32 3
  %reg7 = getelementptr inbounds %struct.uss720_async_request, ptr %3, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %reg, ptr %reg7, i32 7)
  %arrayidx = getelementptr %struct.uss720_async_request, ptr %3, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 2
  %arrayidx12 = getelementptr %struct.uss720_async_request, ptr %3, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12, align 1
  %and32 = and i8 %16, 16
  %19 = and i8 %and32, %18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  %tobool16.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.then6.if.end19_crit_edge, label %if.then17

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then17:                                        ; preds = %if.then6
  tail call void @parport_ieee1284_interrupt(ptr noundef nonnull %7) #13
  %cad_lock.i = getelementptr inbounds %struct.parport, ptr %7, i32 0, i32 29
  tail call void @_raw_read_lock(ptr noundef %cad_lock.i) #13
  %cad.i = getelementptr inbounds %struct.parport, ptr %7, i32 0, i32 13
  %20 = ptrtoint ptr %cad.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cad.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then17.parport_generic_irq.exit_crit_edge, label %land.lhs.true.i

if.then17.parport_generic_irq.exit_crit_edge:     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %parport_generic_irq.exit

land.lhs.true.i:                                  ; preds = %if.then17
  %irq_func.i = getelementptr inbounds %struct.pardevice, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %irq_func.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_func.i, align 8
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.parport_generic_irq.exit_crit_edge, label %if.then.i

land.lhs.true.i.parport_generic_irq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parport_generic_irq.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %private.i = getelementptr inbounds %struct.pardevice, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  tail call void %23(ptr noundef %25) #13
  br label %parport_generic_irq.exit

parport_generic_irq.exit:                         ; preds = %if.then.i, %land.lhs.true.i.parport_generic_irq.exit_crit_edge, %if.then17.parport_generic_irq.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %cad_lock.i) #13
  br label %if.end19

if.end19:                                         ; preds = %parport_generic_irq.exit, %if.then6.if.end19_crit_edge, %if.else.if.end19_crit_edge, %do.end
  %compl = getelementptr inbounds %struct.uss720_async_request, ptr %3, i32 0, i32 3
  tail call void @complete(ptr noundef %compl) #13
  %ref_count = getelementptr inbounds %struct.uss720_async_request, ptr %3, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i33, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !138

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i33:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call fastcc void @destroy_async(ptr noundef %ref_count) #13, !callees !140
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i33, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_ieee1284_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints_reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_remove_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_put_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123}
!llvm.named.register.sp = !{!124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/uss720.c", i32 795, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/uss720.c", i32 796, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../drivers/usb/misc/uss720.c", i32 797, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_uss720__246_822_uss720_init6, !8, !"__initcall__kmod_uss720__246_822_uss720_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/uss720.c", i32 822, i32 1}
!9 = !{ptr @__exitcall_uss720_cleanup, !10, !"__exitcall_uss720_cleanup", i1 false, i1 false}
!10 = !{!"../drivers/usb/misc/uss720.c", i32 823, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/uss720.c", i32 787, i32 11}
!13 = !{ptr @uss720_driver, !14, !"uss720_driver", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/uss720.c", i32 786, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/misc/uss720.c", i32 681, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @uss720_probe.__UNIQUE_ID_ddebug235, !16, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/misc/uss720.c", i32 691, i32 2}
!22 = !{ptr @uss720_probe.__UNIQUE_ID_ddebug236, !21, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!23 = !{ptr @uss720_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/misc/uss720.c", i32 711, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/misc/uss720.c", i32 715, i32 3}
!28 = !{ptr @uss720_probe._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @uss720_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/misc/uss720.c", i32 729, i32 2}
!32 = !{ptr @uss720_probe.__UNIQUE_ID_ddebug237, !31, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/misc/uss720.c", i32 733, i32 3}
!35 = !{ptr @uss720_probe.__UNIQUE_ID_ddebug238, !34, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!36 = !{ptr @parport_uss720_ops, !37, !"parport_uss720_ops", i1 false, i1 false}
!37 = !{!"../drivers/usb/misc/uss720.c", i32 632, i32 34}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/misc/uss720.c", i32 513, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @parport_uss720_epp_write_data._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @parport_uss720_epp_write_data._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/misc/uss720.c", i32 574, i32 3}
!45 = !{ptr @parport_uss720_ecp_write_data._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @parport_uss720_ecp_write_data._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/misc/uss720.c", i32 592, i32 3}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @parport_uss720_ecp_read_data._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @parport_uss720_ecp_read_data._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/misc/uss720.c", i32 625, i32 3}
!54 = !{ptr @parport_uss720_write_compat._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @parport_uss720_write_compat._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/uss720.c", i32 238, i32 3}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @set_1284_register._entry, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @set_1284_register._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/misc/uss720.c", i32 171, i32 2}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @submit_async_request._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @submit_async_request._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @init_completion.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../include/linux/completion.h", i32 87, i32 2}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/misc/uss720.c", i32 106, i32 3}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @async_complete._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @async_complete._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @get_1284_register.regindex, !77, !"regindex", i1 false, i1 false}
!77 = !{!"../drivers/usb/misc/uss720.c", i32 196, i32 29}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/misc/uss720.c", i32 206, i32 3}
!80 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @get_1284_register._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @get_1284_register._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/misc/uss720.c", i32 218, i32 4}
!85 = !{ptr @get_1284_register._entry.26, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @get_1284_register._entry_ptr.28, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/misc/uss720.c", i32 223, i32 2}
!89 = !{ptr @get_1284_register._entry.29, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @get_1284_register._entry_ptr.31, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/misc/uss720.c", i32 72, i32 2}
!93 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @destroy_priv.__UNIQUE_ID_ddebug234, !92, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/misc/uss720.c", i32 753, i32 2}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @uss720_disconnect.__UNIQUE_ID_ddebug239, !96, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/misc/uss720.c", i32 759, i32 3}
!101 = !{ptr @uss720_disconnect.__UNIQUE_ID_ddebug240, !100, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/misc/uss720.c", i32 765, i32 2}
!104 = !{ptr @uss720_disconnect.__UNIQUE_ID_ddebug241, !103, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!105 = !{ptr @uss720_table, !106, !"uss720_table", i1 false, i1 false}
!106 = !{!"../drivers/usb/misc/uss720.c", i32 769, i32 35}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/misc/uss720.c", i32 806, i32 2}
!109 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @uss720_init._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @uss720_init._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/misc/uss720.c", i32 807, i32 2}
!114 = !{ptr @uss720_init._entry.40, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @uss720_init._entry_ptr.42, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/misc/uss720.c", i32 809, i32 2}
!118 = !{ptr @uss720_init._entry.43, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @uss720_init._entry_ptr.45, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/misc/uss720.c", i32 811, i32 2}
!122 = !{ptr @uss720_init._entry.46, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @uss720_init._entry_ptr.48, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{!"sp"}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
!135 = !{i64 2148973821, i64 2148973826, i64 2148973839, i64 2148973883, i64 2148973917, i64 2148973938}
!136 = !{i64 2148449999}
!137 = !{i64 2148364439, i64 2148364471, i64 2148364500, i64 2148364534, i64 2148364565, i64 2148364588}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2149326113}
!140 = !{ptr @destroy_async, ptr @destroy_priv}
!141 = !{i64 2148361974, i64 2148362006, i64 2148362035, i64 2148362069, i64 2148362100, i64 2148362123}
!142 = !{!"branch_weights", i32 1, i32 2000}
