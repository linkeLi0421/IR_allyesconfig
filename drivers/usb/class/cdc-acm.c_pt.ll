; ModuleID = '/llk/IR_all_yes/drivers/usb/class/cdc-acm.c_pt.bc'
source_filename = "../drivers/usb/class/cdc-acm.c"
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_cdc_call_mgmt_descriptor = type { i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.acm = type { ptr, ptr, ptr, i32, i32, %struct.tty_port, ptr, ptr, i32, ptr, i32, i32, [16 x %struct.acm_wb], i32, [16 x ptr], [16 x %struct.acm_rb], i32, %struct.spinlock, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, i8, i32, i32, %struct.usb_cdc_line_coding, %struct.delayed_work, i32, i32, %struct.async_icount, %struct.async_icount, %struct.wait_queue_head, i32, i32, i32, i32, i8, i32, i32, i8, i8, %struct.usb_anchor, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.acm_wb = type { ptr, i32, i32, ptr, ptr, i8 }
%struct.acm_rb = type { i32, ptr, i32, i32, ptr }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_cdc_acm_descriptor = type { i8, i8, i8, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_cdc_country_functional_desc = type { i8, i8, i8, i8, i16 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@acm_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @acm_probe, ptr @acm_disconnect, ptr null, ptr @acm_suspend, ptr @acm_resume, ptr @acm_reset_resume, ptr @acm_pre_reset, ptr null, ptr @acm_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@acm_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@acm_minors = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.74, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cdc_acm__259_2077_acm_init6 = internal global ptr @acm_init, section ".initcall6.init", align 4
@__exitcall_acm_exit = internal global ptr @acm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author260 = internal constant [105 x i8] c"cdc_acm.author=Armin Fuerst, Pavel Machek, Johannes Erdfelt, Vojtech Pavlik, David Kubicek, Johan Hovold\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [87 x i8] c"cdc_acm.description=USB Abstract Control Model driver for USB modems and ISDN adapters\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [39 x i8] c"cdc_acm.file=drivers/usb/class/cdc-acm\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [20 x i8] c"cdc_acm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias264 = internal constant [31 x i8] c"cdc_acm.alias=char-major-166-*\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cdc_acm\00", [24 x i8] zeroinitializer }, align 32
@acm_ids = internal constant { [135 x %struct.usb_device_id], [824 x i8] } { [135 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 10062, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1901, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 6127, i16 28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2160, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1115, i16 572, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1115, i16 584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1115, i16 589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3725, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3725, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3725, i16 13097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1154, i16 515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1947, i16 15, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2766, i16 5634, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2766, i16 5640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2766, i16 5649, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4554, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 6501, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8888, i16 28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2051, i16 12437, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1394, i16 4897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1394, i16 4900, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1394, i16 4904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1394, i16 4937, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8415, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 8580, i16 28, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8580, i16 54, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8888, i16 25637, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8888, i16 11665, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8888, i16 11666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8888, i16 11667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8888, i16 11669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8888, i16 11670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8888, i16 11671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8888, i16 11673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8888, i16 11674, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1394, i16 4905, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1394, i16 4928, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1529, i16 16386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 7099, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5494, i16 945, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -16, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2520, i16 800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3238, i16 -24496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 10514, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32 }, %struct.usb_device_id { i16 899, i16 1057, i16 1069, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1049, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1141, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1061, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1158, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1071, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1056, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1254, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1202, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 308, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 47, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 252, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 171, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 143, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 148, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 58, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 233, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 501, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 739, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 547, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 629, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 620, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 340, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 1230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 468, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 821, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1057, i16 973, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1255, i16 26193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1003, i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1240, i16 130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1240, i16 131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1240, i16 -760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1240, i16 -2677, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1250, i16 5156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1256, i16 26717, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1419, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 4236, i16 345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 4236, i16 360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 4236, i16 361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 7111, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 7111, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 10182, i16 21397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 12967, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 2, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 3, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 4, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 5, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 6, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5401, i16 1106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id zeroinitializer], [824 x i8] zeroinitializer }, align 32
@acm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Weird descriptor references\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acm_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/class/cdc-acm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acm_probe._entry_ptr = internal global ptr @acm_probe._entry, section ".printk_index", align 4
@acm_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Seeking extra descriptors on endpoint\0A\00", [57 x i8] zeroinitializer }, align 32
@acm_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Zero length descriptor references\0A\00", [61 x i8] zeroinitializer }, align 32
@acm_probe._entry_ptr.9 = internal global ptr @acm_probe._entry.7, section ".printk_index", align 4
@acm_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No union descriptor, assuming single interface\0A\00", [48 x i8] zeroinitializer }, align 32
@acm_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 1, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"No union descriptor, using call management descriptor\0A\00", [41 x i8] zeroinitializer }, align 32
@acm_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No union descriptor, giving up\0A\00", [32 x i8] zeroinitializer }, align 32
@acm_probe.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Broken union descriptor, assuming single interface\0A\00", [44 x i8] zeroinitializer }, align 32
@acm_probe.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no interfaces\0A\00", [17 x i8] zeroinitializer }, align 32
@acm_probe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 1, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Separate call control interface. That is not fully supported.\0A\00", [33 x i8] zeroinitializer }, align 32
@acm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1260, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Control and data interfaces are not separated!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@acm_probe._entry_ptr.19 = internal global ptr @acm_probe._entry.16, section ".printk_index", align 4
@acm_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"This needs exactly 3 endpoints\0A\00", [32 x i8] zeroinitializer }, align 32
@acm_probe._entry_ptr.22 = internal global ptr @acm_probe._entry.20, section ".printk_index", align 4
@acm_probe.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 1, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Your device has switched interfaces.\0A\00", [58 x i8] zeroinitializer }, align 32
@acm_probe.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.24, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"The data interface has switched endpoints\0A\00", [53 x i8] zeroinitializer }, align 32
@acm_probe.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.25, i8 1, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"interfaces are valid\0A\00", [42 x i8] zeroinitializer }, align 32
@acm_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr @acm_port_dtr_rts, ptr @acm_port_shutdown, ptr @acm_port_activate, ptr @acm_port_destruct }, [44 x i8] zeroinitializer }, align 32
@acm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&acm->dwork)->work)\00", [56 x i8] zeroinitializer }, align 32
@acm_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&acm->dwork)->timer\00", [42 x i8] zeroinitializer }, align 32
@acm_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&acm->wioctl\00", [19 x i8] zeroinitializer }, align 32
@acm_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&acm->write_lock\00", [47 x i8] zeroinitializer }, align 32
@acm_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&acm->read_lock\00", [16 x i8] zeroinitializer }, align 32
@acm_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&acm->mutex\00", [20 x i8] zeroinitializer }, align 32
@dev_attr_bmCapabilities = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bmCapabilities_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wCountryCodes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wCountryCodes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iCountryCodeRelDate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iCountryCodeRelDate_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@acm_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1495, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ttyACM%d: USB ACM device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@acm_probe._entry_ptr.40 = internal global ptr @acm_probe._entry.37, section ".printk_index", align 4
@acm_port_dtr_rts.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acm_port_dtr_rts\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to set dtr/rts\0A\00", [41 x i8] zeroinitializer }, align 32
@acm_port_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 695, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - usb_submit_urb(ctrl irq) failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"acm_port_activate\00", [46 x i8] zeroinitializer }, align 32
@acm_port_activate._entry_ptr = internal global ptr @acm_port_activate._entry, section ".printk_index", align 4
@acm_tty_set_termios.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acm_tty_set_termios\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - set line: %d %d %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@acm_submit_read_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"urb %d failed submission with %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acm_submit_read_urb\00", [44 x i8] zeroinitializer }, align 32
@acm_submit_read_urb._entry_ptr = internal global ptr @acm_submit_read_urb._entry, section ".printk_index", align 4
@acm_minors_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @acm_minors_lock, i64 52), ptr getelementptr (i8, ptr @acm_minors_lock, i64 52) }, ptr @acm_minors_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"acm_minors_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"acm_minors_lock\00", [16 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@acm_read_bulk_callback.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"acm_read_bulk_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@acm_read_bulk_callback.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.56, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - cooling babbling device\0A\00", [34 x i8] zeroinitializer }, align 32
@acm_read_bulk_callback.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.57, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bmCapabilities\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wCountryCodes\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iCountryCodeRelDate\00", [44 x i8] zeroinitializer }, align 32
@acm_ctrl_irq.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.3, ptr @.str.55, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acm_ctrl_irq\00", [19 x i8] zeroinitializer }, align 32
@acm_ctrl_irq.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.3, ptr @.str.57, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@acm_ctrl_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.62, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - usb_submit_urb failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@acm_ctrl_irq._entry_ptr = internal global ptr @acm_ctrl_irq._entry, section ".printk_index", align 4
@acm_process_notification.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"acm_process_notification\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - network connection: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@acm_process_notification.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.66, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - malformed serial state\0A\00", [35 x i8] zeroinitializer }, align 32
@acm_process_notification.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.67, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - serial state: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@acm_process_notification.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.68, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - calling hangup\0A\00", [43 x i8] zeroinitializer }, align 32
@acm_process_notification.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.69, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s - unknown notification %d received: index %d len %d\0A\00", [40 x i8] zeroinitializer }, align 32
@acm_ctrl_msg.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acm_ctrl_msg\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - rq 0x%02x, val %#x, len %#x, result %d\0A\00", [51 x i8] zeroinitializer }, align 32
@acm_start_wb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - usb_submit_urb(write bulk) failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acm_start_wb\00", [19 x i8] zeroinitializer }, align 32
@acm_start_wb._entry_ptr = internal global ptr @acm_start_wb._entry, section ".printk_index", align 4
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"acm_minors.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acm\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyACM\00", [25 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@acm_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @acm_tty_install, ptr null, ptr @acm_tty_open, ptr @acm_tty_close, ptr null, ptr @acm_tty_cleanup, ptr @acm_tty_write, ptr null, ptr null, ptr @acm_tty_write_room, ptr @acm_tty_chars_in_buffer, ptr @acm_tty_ioctl, ptr null, ptr @acm_tty_set_termios, ptr @acm_tty_throttle, ptr @acm_tty_unthrottle, ptr null, ptr null, ptr @acm_tty_hangup, ptr @acm_tty_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr @acm_tty_tiocmget, ptr @acm_tty_tiocmset, ptr null, ptr @acm_tty_get_icount, ptr @get_serial_info, ptr @set_serial_info, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@acm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 2064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acm_init\00", [23 x i8] zeroinitializer }, align 32
@acm_init._entry_ptr = internal global ptr @acm_init._entry, section ".printk_index", align 4
@acm_tty_break_ctl.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"acm_tty_break_ctl\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - send break failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.82 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967221, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"acm_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1987, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"acm_tty_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 48, i32 27 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"acm_minors\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1988, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [8 x i8] c"acm_ids\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1690, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1192, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1200, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1205, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1219, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1224, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1229, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1243, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1251, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1256, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1260, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1265, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1282, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1306, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1311, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"acm_port_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1090, i32 41 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1345, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1346, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1347, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1348, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1349, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"dev_attr_bmCapabilities\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [23 x i8] c"dev_attr_wCountryCodes\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [29 x i8] c"dev_attr_iCountryCodeRelDate\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1495, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 671, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 694, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1081, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 450, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant [16 x i8] c"acm_minors_lock\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 51, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1367, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1368, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 518, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 525, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 533, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 261, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 259, i32 22 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 273, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 284, i32 8 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 377, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 433, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 299, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 305, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 311, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 315, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 352, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 124, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 242, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 50, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2040, i32 32 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2041, i32 25 }
@___asan_gen_.356 = private unnamed_addr constant [8 x i8] c"acm_ops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2008, i32 36 }
@___asan_gen_.359 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2064, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.372 = private constant [31 x i8] c"../drivers/usb/class/cdc-acm.c\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 897, i32 3 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_alias264, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_acm_exit, ptr @__initcall__kmod_cdc_acm__259_2077_acm_init6, ptr @acm_ctrl_irq._entry, ptr @acm_ctrl_irq._entry_ptr, ptr @acm_exit, ptr @acm_init._entry, ptr @acm_init._entry_ptr, ptr @acm_port_activate._entry, ptr @acm_port_activate._entry_ptr, ptr @acm_probe._entry, ptr @acm_probe._entry.16, ptr @acm_probe._entry.20, ptr @acm_probe._entry.37, ptr @acm_probe._entry.7, ptr @acm_probe._entry_ptr, ptr @acm_probe._entry_ptr.19, ptr @acm_probe._entry_ptr.22, ptr @acm_probe._entry_ptr.40, ptr @acm_probe._entry_ptr.9, ptr @acm_start_wb._entry, ptr @acm_start_wb._entry_ptr, ptr @acm_submit_read_urb._entry, ptr @acm_submit_read_urb._entry_ptr, ptr @acm_driver, ptr @acm_tty_driver, ptr @acm_minors, ptr @.str, ptr @acm_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @acm_port_ops, ptr @acm_probe.__key, ptr @.str.26, ptr @acm_probe.__key.27, ptr @.str.28, ptr @acm_probe.__key.29, ptr @.str.30, ptr @acm_probe.__key.31, ptr @.str.32, ptr @acm_probe.__key.33, ptr @.str.34, ptr @acm_probe.__key.35, ptr @.str.36, ptr @dev_attr_bmCapabilities, ptr @dev_attr_wCountryCodes, ptr @dev_attr_iCountryCodeRelDate, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @acm_minors_lock, ptr @.str.49, ptr @.str.50, ptr @init_usb_anchor.__key, ptr @.str.51, ptr @init_usb_anchor.__key.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @acm_ops, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_minors to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ids to i32), i32 3240, i32 4064, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bmCapabilities to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wCountryCodes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iCountryCodeRelDate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_port_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_submit_read_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_minors_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ctrl_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_start_wb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @acm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @usb_deregister(ptr noundef nonnull @acm_driver) #17
  %0 = load ptr, ptr @acm_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #17
  %1 = load ptr, ptr @acm_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #17
  tail call void @idr_destroy(ptr noundef nonnull @acm_minors) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 256, ptr noundef null, i32 noundef 12) #17
  store ptr %call, ptr @acm_tty_driver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.75, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.76, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 166, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3261, ptr %c_cflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @acm_ops, ptr %ops.i, align 4
  %call5 = tail call i32 @tty_register_driver(ptr noundef %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = load ptr, ptr @acm_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %10) #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @usb_register_driver(ptr noundef nonnull @acm_driver, ptr noundef null, ptr noundef nonnull @.str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %11 = load ptr, ptr @acm_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %11) #17
  %12 = load ptr, ptr @acm_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %12) #17
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10, %if.then6, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %if.then6 ], [ %call8, %if.then10 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %epctrl = alloca ptr, align 4
  %epread = alloca ptr, align 4
  %epwrite = alloca ptr, align 4
  %h = alloca %struct.usb_cdc_parsed_header, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extralen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %epctrl) #17
  %6 = ptrtoint ptr %epctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %epctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %epread) #17
  %7 = ptrtoint ptr %epread to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %epread, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %epwrite) #17
  %8 = ptrtoint ptr %epwrite to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %epwrite, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %add.ptr.i972 = getelementptr i8, ptr %10, i32 -128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %h) #17
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %11 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp = icmp eq i32 %12, 8
  br i1 %cmp, label %entry.cleanup660_crit_edge, label %if.end

entry.cleanup660_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup660

if.end:                                           ; preds = %entry
  %13 = call ptr @memset(ptr %h, i32 0, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2 = icmp eq i32 %12, 2
  %cond = select i1 %cmp2, i32 1, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp3 = icmp eq i32 %12, 1
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i972, i32 noundef 1) #17
  %call6 = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i972, i32 noundef 0) #17
  %tobool.not = icmp eq ptr %call5, null
  %tobool7.not = icmp eq ptr %call6, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.then4.cleanup660_crit_edge, label %if.then4.skip_normal_probe_crit_edge

if.then4.skip_normal_probe_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_normal_probe

if.then4.cleanup660_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup660

if.end10:                                         ; preds = %if.end
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #20
  br label %cleanup660

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not = icmp eq i32 %5, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end48_crit_edge

if.end13.if.end48_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

if.then15:                                        ; preds = %if.end13
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %14 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_altsetting, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %endpoint, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.then15.do.end45_crit_edge, label %land.lhs.true

if.then15.do.end45_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end45

land.lhs.true:                                    ; preds = %if.then15
  %extralen19 = getelementptr inbounds %struct.usb_host_endpoint, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %extralen19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %extralen19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end45_crit_edge, label %land.lhs.true21

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end45

land.lhs.true21:                                  ; preds = %land.lhs.true
  %extra24 = getelementptr inbounds %struct.usb_host_endpoint, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %extra24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extra24, align 4
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %land.lhs.true21.do.end45_crit_edge, label %do.body27

land.lhs.true21.do.end45_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end45

do.body27:                                        ; preds = %land.lhs.true21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then32)) #17
          to label %do.end36 [label %if.then32], !srcloc !209

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #19
  %dev33 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug249, ptr noundef %dev33, ptr noundef nonnull @.str.6) #17
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body27
  %22 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_altsetting, align 4
  %endpoint38 = getelementptr inbounds %struct.usb_host_interface, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %endpoint38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %endpoint38, align 4
  %extralen39 = getelementptr inbounds %struct.usb_host_endpoint, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %extralen39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %extralen39, align 4
  %extra42 = getelementptr inbounds %struct.usb_host_endpoint, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %extra42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extra42, align 4
  br label %if.end48

do.end45:                                         ; preds = %land.lhs.true21.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %if.then15.do.end45_crit_edge
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.8) #20
  br label %cleanup660

if.end48:                                         ; preds = %do.end36, %if.end13.if.end48_crit_edge
  %buflen.0 = phi i32 [ %5, %if.end13.if.end48_crit_edge ], [ %27, %do.end36 ]
  %buffer.0 = phi ptr [ %3, %if.end13.if.end48_crit_edge ], [ %29, %do.end36 ]
  %call49 = call i32 @cdc_parse_cdc_header(ptr noundef nonnull %h, ptr noundef %intf, ptr noundef %buffer.0, i32 noundef %buflen.0) #17
  %30 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %h, align 4
  %usb_cdc_call_mgmt_descriptor = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %h, i32 0, i32 2
  %32 = ptrtoint ptr %usb_cdc_call_mgmt_descriptor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_cdc_call_mgmt_descriptor, align 4
  %tobool50.not = icmp eq ptr %33, null
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %bDataInterface = getelementptr inbounds %struct.usb_cdc_call_mgmt_descriptor, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %bDataInterface to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bDataInterface, align 1
  %conv = zext i8 %35 to i32
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48.if.end52_crit_edge
  %call_intf_num.0 = phi i32 [ %conv, %if.then51 ], [ -1, %if.end48.if.end52_crit_edge ]
  %tobool53.not = icmp eq ptr %31, null
  br i1 %tobool53.not, label %if.then54, label %if.else119

if.then54:                                        ; preds = %if.end52
  %cur_altsetting55 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %36 = ptrtoint ptr %cur_altsetting55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur_altsetting55, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp57 = icmp eq i8 %39, 3
  br i1 %cmp57, label %do.body60, label %if.else77

do.body60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then72)) #17
          to label %look_for_collapsed_interface [label %if.then72], !srcloc !209

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #19
  %dev73 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug250, ptr noundef %dev73, ptr noundef nonnull @.str.10) #17
  br label %look_for_collapsed_interface

if.else77:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call_intf_num.0)
  %cmp78 = icmp sgt i32 %call_intf_num.0, 0
  br i1 %cmp78, label %do.body81, label %do.body100

do.body81:                                        ; preds = %if.else77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then93)) #17
          to label %do.end97 [label %if.then93], !srcloc !209

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #19
  %dev94 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev94, ptr noundef nonnull @.str.11) #17
  br label %do.end97

do.end97:                                         ; preds = %if.then93, %do.body81
  %call98 = call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i972, i32 noundef %call_intf_num.0) #17
  br label %if.end154

do.body100:                                       ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then112)) #17
          to label %cleanup660 [label %if.then112], !srcloc !209

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #19
  %dev113 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug252, ptr noundef %dev113, ptr noundef nonnull @.str.12) #17
  br label %cleanup660

if.else119:                                       ; preds = %if.end52
  %bSlaveInterface0 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %31, i32 0, i32 4
  %40 = ptrtoint ptr %bSlaveInterface0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bSlaveInterface0, align 1
  %conv120 = zext i8 %41 to i32
  %bMasterInterface0 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %31, i32 0, i32 3
  %42 = ptrtoint ptr %bMasterInterface0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bMasterInterface0, align 1
  %conv121 = zext i8 %43 to i32
  %call122 = call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i972, i32 noundef %conv121) #17
  %call123 = call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i972, i32 noundef %conv120) #17
  %tobool124.not = icmp eq ptr %call122, null
  br i1 %tobool124.not, label %if.else119.do.body136_crit_edge, label %if.end129

if.else119.do.body136_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body136

if.end129:                                        ; preds = %if.else119
  %cur_altsetting126 = getelementptr inbounds %struct.usb_interface, ptr %call122, i32 0, i32 1
  %44 = ptrtoint ptr %cur_altsetting126 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_altsetting126, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bInterfaceClass, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %if.end129.do.body136_crit_edge [
    i8 2, label %if.end129.if.end154_crit_edge
    i8 10, label %if.end129.if.end154_crit_edge1092
  ]

if.end129.if.end154_crit_edge1092:                ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.end129.if.end154_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.end129.do.body136_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body136

do.body136:                                       ; preds = %if.end129.do.body136_crit_edge, %if.else119.do.body136_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then148)) #17
          to label %look_for_collapsed_interface [label %if.then148], !srcloc !209

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #19
  %dev149 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug253, ptr noundef %dev149, ptr noundef nonnull @.str.13) #17
  br label %look_for_collapsed_interface

if.end154:                                        ; preds = %if.end129.if.end154_crit_edge, %if.end129.if.end154_crit_edge1092, %do.end97
  %data_intf_num.0 = phi i32 [ %call_intf_num.0, %do.end97 ], [ %conv120, %if.end129.if.end154_crit_edge ], [ %conv120, %if.end129.if.end154_crit_edge1092 ]
  %data_interface.1 = phi ptr [ %call98, %do.end97 ], [ %call123, %if.end129.if.end154_crit_edge ], [ %call123, %if.end129.if.end154_crit_edge1092 ]
  %control_interface.1 = phi ptr [ %intf, %do.end97 ], [ %call122, %if.end129.if.end154_crit_edge ], [ %call122, %if.end129.if.end154_crit_edge1092 ]
  %tobool155.not = icmp eq ptr %control_interface.1, null
  %tobool157.not = icmp eq ptr %data_interface.1, null
  %or.cond943 = select i1 %tobool155.not, i1 true, i1 %tobool157.not
  br i1 %or.cond943, label %do.body159, label %if.end176

do.body159:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then171)) #17
          to label %cleanup660 [label %if.then171], !srcloc !209

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #19
  %dev172 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug254, ptr noundef %dev172, ptr noundef nonnull @.str.14) #17
  br label %cleanup660

if.end176:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_cmp4(i32 %data_intf_num.0, i32 %call_intf_num.0)
  %cmp177.not = icmp eq i32 %data_intf_num.0, %call_intf_num.0
  br i1 %cmp177.not, label %if.end176.if.end197_crit_edge, label %do.body180

if.end176.if.end197_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end197

do.body180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then192)) #17
          to label %if.end197 [label %if.then192], !srcloc !209

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #19
  %dev193 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug255, ptr noundef %dev193, ptr noundef nonnull @.str.15) #17
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %do.body180, %if.end176.if.end197_crit_edge
  %cmp198 = icmp eq ptr %control_interface.1, %data_interface.1
  br i1 %cmp198, label %do.end203, label %if.end197.skip_normal_probe_crit_edge

if.end197.skip_normal_probe_crit_edge:            ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_normal_probe

do.end203:                                        ; preds = %if.end197
  %dev204 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev204, ptr noundef nonnull @.str.17) #20
  %or = or i32 %12, 4
  %cur_altsetting205 = getelementptr inbounds %struct.usb_interface, ptr %data_interface.1, i32 0, i32 1
  %49 = ptrtoint ptr %cur_altsetting205 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cur_altsetting205, align 4
  %bNumEndpoints207 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %bNumEndpoints207 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bNumEndpoints207, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp209.not = icmp eq i8 %52, 3
  br i1 %cmp209.not, label %do.end203.look_for_collapsed_interface_crit_edge, label %do.end214

do.end203.look_for_collapsed_interface_crit_edge: ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #19
  br label %look_for_collapsed_interface

do.end214:                                        ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev204, ptr noundef nonnull @.str.21) #20
  br label %cleanup660

look_for_collapsed_interface:                     ; preds = %do.end203.look_for_collapsed_interface_crit_edge, %if.then148, %do.body136, %if.then72, %do.body60
  %quirks.0 = phi i32 [ %or, %do.end203.look_for_collapsed_interface_crit_edge ], [ %12, %if.then72 ], [ %12, %do.body60 ], [ %12, %do.body136 ], [ %12, %if.then148 ]
  %data_interface.2 = phi ptr [ %data_interface.1, %do.end203.look_for_collapsed_interface_crit_edge ], [ %intf, %if.then72 ], [ %intf, %do.body60 ], [ %intf, %do.body136 ], [ %intf, %if.then148 ]
  %cur_altsetting217 = getelementptr inbounds %struct.usb_interface, ptr %data_interface.2, i32 0, i32 1
  %53 = ptrtoint ptr %cur_altsetting217 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_altsetting217, align 4
  %call218 = call i32 @usb_find_common_endpoints(ptr noundef %54, ptr noundef nonnull %epread, ptr noundef nonnull %epwrite, ptr noundef nonnull %epctrl, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %look_for_collapsed_interface.do.body317_crit_edge, label %look_for_collapsed_interface.cleanup660_crit_edge

look_for_collapsed_interface.cleanup660_crit_edge: ; preds = %look_for_collapsed_interface
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup660

look_for_collapsed_interface.do.body317_crit_edge: ; preds = %look_for_collapsed_interface
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body317

skip_normal_probe:                                ; preds = %if.end197.skip_normal_probe_crit_edge, %if.then4.skip_normal_probe_crit_edge
  %data_interface.3 = phi ptr [ %data_interface.1, %if.end197.skip_normal_probe_crit_edge ], [ %call5, %if.then4.skip_normal_probe_crit_edge ]
  %control_interface.3 = phi ptr [ %control_interface.1, %if.end197.skip_normal_probe_crit_edge ], [ %call6, %if.then4.skip_normal_probe_crit_edge ]
  %cur_altsetting223 = getelementptr inbounds %struct.usb_interface, ptr %data_interface.3, i32 0, i32 1
  %55 = ptrtoint ptr %cur_altsetting223 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur_altsetting223, align 4
  %bInterfaceClass225 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %bInterfaceClass225 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bInterfaceClass225, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %58)
  %cmp227.not = icmp eq i8 %58, 10
  br i1 %cmp227.not, label %skip_normal_probe.if.end259_crit_edge, label %if.then229

skip_normal_probe.if.end259_crit_edge:            ; preds = %skip_normal_probe
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end259

if.then229:                                       ; preds = %skip_normal_probe
  %cur_altsetting230 = getelementptr inbounds %struct.usb_interface, ptr %control_interface.3, i32 0, i32 1
  %59 = ptrtoint ptr %cur_altsetting230 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur_altsetting230, align 4
  %bInterfaceClass232 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %bInterfaceClass232 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bInterfaceClass232, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %62)
  %cmp234 = icmp eq i8 %62, 10
  br i1 %cmp234, label %do.body237, label %if.then229.cleanup660_crit_edge

if.then229.cleanup660_crit_edge:                  ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup660

do.body237:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then249)) #17
          to label %if.end259 [label %if.then249], !srcloc !209

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #19
  %dev250 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug256, ptr noundef %dev250, ptr noundef nonnull @.str.23) #17
  br label %if.end259

if.end259:                                        ; preds = %if.then249, %do.body237, %skip_normal_probe.if.end259_crit_edge
  %data_interface.4 = phi ptr [ %data_interface.3, %skip_normal_probe.if.end259_crit_edge ], [ %control_interface.3, %if.then249 ], [ %control_interface.3, %do.body237 ]
  %control_interface.4 = phi ptr [ %control_interface.3, %skip_normal_probe.if.end259_crit_edge ], [ %data_interface.3, %if.then249 ], [ %data_interface.3, %do.body237 ]
  %cmp262.not = icmp eq ptr %control_interface.4, %intf
  br i1 %cmp262.not, label %if.end265, label %if.end259.cleanup660_crit_edge

if.end259.cleanup660_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup660

if.end265:                                        ; preds = %if.end259
  %cur_altsetting266 = getelementptr inbounds %struct.usb_interface, ptr %data_interface.4, i32 0, i32 1
  %63 = ptrtoint ptr %cur_altsetting266 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur_altsetting266, align 4
  %bNumEndpoints268 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %bNumEndpoints268 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bNumEndpoints268, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp270 = icmp ult i8 %66, 2
  br i1 %cmp270, label %if.end265.cleanup660_crit_edge, label %lor.lhs.false272

if.end265.cleanup660_crit_edge:                   ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup660

lor.lhs.false272:                                 ; preds = %if.end265
  %cur_altsetting273 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %67 = ptrtoint ptr %cur_altsetting273 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur_altsetting273, align 4
  %bNumEndpoints275 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %bNumEndpoints275 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bNumEndpoints275, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp277 = icmp eq i8 %70, 0
  br i1 %cmp277, label %lor.lhs.false272.cleanup660_crit_edge, label %if.end280

lor.lhs.false272.cleanup660_crit_edge:            ; preds = %lor.lhs.false272
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup660

if.end280:                                        ; preds = %lor.lhs.false272
  %endpoint282 = getelementptr inbounds %struct.usb_host_interface, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %endpoint282 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %endpoint282, align 4
  %73 = ptrtoint ptr %epctrl to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %epctrl, align 4
  %endpoint285 = getelementptr inbounds %struct.usb_host_interface, ptr %64, i32 0, i32 3
  %74 = ptrtoint ptr %endpoint285 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %endpoint285, align 4
  %76 = ptrtoint ptr %epread to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %epread, align 4
  %arrayidx290 = getelementptr %struct.usb_host_endpoint, ptr %75, i32 1
  %77 = ptrtoint ptr %epwrite to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx290, ptr %epwrite, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %tobool293.not = icmp sgt i8 %79, -1
  br i1 %tobool293.not, label %do.body295, label %if.end280.do.body317_crit_edge

if.end280.do.body317_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body317

do.body295:                                       ; preds = %if.end280
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then307)) #17
          to label %do.body312 [label %if.then307], !srcloc !209

if.then307:                                       ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #19
  %dev308 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug257, ptr noundef %dev308, ptr noundef nonnull @.str.24) #17
  br label %do.body312

do.body312:                                       ; preds = %if.then307, %do.body295
  %80 = ptrtoint ptr %epread to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %epread, align 4
  %82 = ptrtoint ptr %epwrite to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %epwrite, align 4
  store ptr %83, ptr %epread, align 4
  store ptr %81, ptr %epwrite, align 4
  br label %do.body317

do.body317:                                       ; preds = %do.body312, %if.end280.do.body317_crit_edge, %look_for_collapsed_interface.do.body317_crit_edge
  %combined_interfaces.4 = phi i8 [ 0, %if.end280.do.body317_crit_edge ], [ 0, %do.body312 ], [ -128, %look_for_collapsed_interface.do.body317_crit_edge ]
  %quirks.1 = phi i32 [ %12, %if.end280.do.body317_crit_edge ], [ %12, %do.body312 ], [ %quirks.0, %look_for_collapsed_interface.do.body317_crit_edge ]
  %data_interface.5 = phi ptr [ %data_interface.4, %if.end280.do.body317_crit_edge ], [ %data_interface.4, %do.body312 ], [ %data_interface.2, %look_for_collapsed_interface.do.body317_crit_edge ]
  %control_interface.5 = phi ptr [ %intf, %if.end280.do.body317_crit_edge ], [ %intf, %do.body312 ], [ %data_interface.2, %look_for_collapsed_interface.do.body317_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_probe.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_probe, %if.then329)) #17
          to label %do.end333 [label %if.then329], !srcloc !209

if.then329:                                       ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #19
  %dev330 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_probe.__UNIQUE_ID_ddebug258, ptr noundef %dev330, ptr noundef nonnull @.str.25) #17
  br label %do.end333

do.end333:                                        ; preds = %if.then329, %do.body317
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %84 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3520, i32 noundef 2008) #21
  %tobool335.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool335.not, label %do.end333.cleanup660_crit_edge, label %if.end337

do.end333.cleanup660_crit_edge:                   ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup660

if.end337:                                        ; preds = %do.end333
  %port = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 5
  call void @tty_port_init(ptr noundef %port) #17
  %ops = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 5, i32 3
  %85 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @acm_port_ops, ptr %ops, align 4
  %86 = ptrtoint ptr %epctrl to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %epctrl, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %wMaxPacketSize.i, align 1
  %90 = and i16 %89, -249
  %91 = call i16 @llvm.bswap.i16(i16 %90) #17
  %and.i = zext i16 %91 to i32
  %92 = ptrtoint ptr %epread to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %epread, align 4
  %wMaxPacketSize.i973 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %wMaxPacketSize.i973 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %wMaxPacketSize.i973, align 1
  %96 = and i16 %95, -249
  %97 = call i16 @llvm.bswap.i16(i16 %96) #17
  %and.i974 = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %quirks.1)
  %cmp341 = icmp eq i32 %quirks.1, 2
  %cond343 = select i1 %cmp341, i32 1, i32 2
  %mul = mul nuw nsw i32 %cond343, %and.i974
  %combined_interfaces344 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 41
  %98 = ptrtoint ptr %combined_interfaces344 to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load = load i8, ptr %combined_interfaces344, align 8
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %combined_interfaces.4
  store i8 %bf.set, ptr %combined_interfaces344, align 8
  %99 = ptrtoint ptr %epwrite to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %epwrite, align 4
  %wMaxPacketSize.i975 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %wMaxPacketSize.i975 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %wMaxPacketSize.i975, align 1
  %103 = and i16 %102, -249
  %104 = call i16 @llvm.bswap.i16(i16 %103) #17
  %narrow = mul nuw i16 %104, 20
  %mul346 = zext i16 %narrow to i32
  %writesize = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 34
  %105 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul346, ptr %writesize, align 4
  %control = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %control_interface.5, ptr %control, align 4
  %data = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %data_interface.5, ptr %data, align 8
  %call348 = call ptr @usb_get_intf(ptr noundef %control_interface.5) #17
  call void @mutex_lock_nested(ptr noundef nonnull @acm_minors_lock, i32 noundef 0) #17
  %call.i = call i32 @idr_alloc(ptr noundef nonnull @acm_minors, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 256, i32 noundef 3264) #17
  call void @mutex_unlock(ptr noundef nonnull @acm_minors_lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp350 = icmp slt i32 %call.i, 0
  %minor353 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 37
  br i1 %cmp350, label %if.then352, label %if.end354

if.then352:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #19
  %108 = ptrtoint ptr %minor353 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 256, ptr %minor353, align 8
  br label %err_put_port

if.end354:                                        ; preds = %if.end337
  %109 = ptrtoint ptr %minor353 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call.i, ptr %minor353, align 8
  %110 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr.i972, ptr %call7.i.i, align 8
  %usb_cdc_acm_descriptor = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %h, i32 0, i32 3
  %111 = ptrtoint ptr %usb_cdc_acm_descriptor to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %usb_cdc_acm_descriptor, align 4
  %tobool357.not = icmp eq ptr %112, null
  br i1 %tobool357.not, label %if.end354.if.end361_crit_edge, label %if.then358

if.end354.if.end361_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end361

if.then358:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #19
  %bmCapabilities = getelementptr inbounds %struct.usb_cdc_acm_descriptor, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %bmCapabilities to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bmCapabilities, align 1
  %conv360 = zext i8 %114 to i32
  %ctrl_caps = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 39
  %115 = ptrtoint ptr %ctrl_caps to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv360, ptr %ctrl_caps, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.then358, %if.end354.if.end361_crit_edge
  %and = and i32 %quirks.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool362.not = icmp eq i32 %and, 0
  br i1 %tobool362.not, label %if.end361.if.end366_crit_edge, label %if.then363

if.end361.if.end366_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end366

if.then363:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #19
  %ctrl_caps364 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 39
  %116 = ptrtoint ptr %ctrl_caps364 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ctrl_caps364, align 8
  %and365 = and i32 %117, -3
  store i32 %and365, ptr %ctrl_caps364, align 8
  br label %if.end366

if.end366:                                        ; preds = %if.then363, %if.end361.if.end366_crit_edge
  %ctrlsize367 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 36
  %118 = ptrtoint ptr %ctrlsize367 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %and.i, ptr %ctrlsize367, align 4
  %readsize368 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 35
  %119 = ptrtoint ptr %readsize368 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %mul, ptr %readsize368, align 8
  %rx_buflimit = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 16
  %120 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %cond, ptr %rx_buflimit, align 8
  %dwork = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 28
  call void @__init_work(ptr noundef %dwork, i32 noundef 0) #17
  %121 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -64, ptr %dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 28, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @acm_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry378 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 28, i32 0, i32 1
  %122 = ptrtoint ptr %entry378 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %entry378, ptr %entry378, align 8
  %prev.i = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 28, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %entry378, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 28, i32 0, i32 2
  %124 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @acm_softint, ptr %func, align 8
  %timer = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 28, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @acm_probe.__key.27) #17
  %wioctl = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 33
  call void @__init_waitqueue_head(ptr noundef %wioctl, ptr noundef nonnull @.str.30, ptr noundef nonnull @acm_probe.__key.29) #17
  %write_lock = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 22
  call void @__raw_spin_lock_init(ptr noundef %write_lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @acm_probe.__key.31, i16 noundef signext 3) #17
  %read_lock = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 17
  call void @__raw_spin_lock_init(ptr noundef %read_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @acm_probe.__key.33, i16 noundef signext 3) #17
  %mutex = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 23
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.36, ptr noundef nonnull @acm_probe.__key.35) #17
  %125 = ptrtoint ptr %epread to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %epread, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bmAttributes.i, align 1
  %129 = and i8 %128, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %129)
  %cmp.i977.not = icmp eq i8 %129, 3
  br i1 %cmp.i977.not, label %if.then405, label %if.end366.if.end418_crit_edge

if.end366.if.end418_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end418

if.then405:                                       ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #19
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %126, i32 0, i32 5
  %130 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bInterval, align 1
  %bInterval406 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 42
  %132 = ptrtoint ptr %bInterval406 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %bInterval406, align 1
  br label %if.end418

if.end418:                                        ; preds = %if.then405, %if.end366.if.end418_crit_edge
  %.sink = phi i32 [ 1073741952, %if.then405 ], [ -1073741696, %if.end366.if.end418_crit_edge ]
  %bEndpointAddress412 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %126, i32 0, i32 2
  %133 = ptrtoint ptr %bEndpointAddress412 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bEndpointAddress412, align 1
  %conv413 = zext i8 %134 to i32
  %135 = ptrtoint ptr %add.ptr.i972 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i972, align 8
  %shl.i980 = shl i32 %136, 8
  %shl1.i981 = shl nuw nsw i32 %conv413, 15
  %or.i982 = or i32 %shl1.i981, %shl.i980
  %or416 = or i32 %or.i982, %.sink
  %137 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 3
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or416, ptr %137, align 4
  %139 = ptrtoint ptr %epwrite to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %epwrite, align 4
  %bmAttributes.i983 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %bmAttributes.i983 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %bmAttributes.i983, align 1
  %143 = and i8 %142, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %143)
  %cmp.i984.not = icmp eq i8 %143, 3
  %. = select i1 %cmp.i984.not, i32 1073741824, i32 -1073741824
  %bEndpointAddress427 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %140, i32 0, i32 2
  %144 = ptrtoint ptr %bEndpointAddress427 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bEndpointAddress427, align 1
  %conv428 = zext i8 %145 to i32
  %146 = ptrtoint ptr %add.ptr.i972 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr.i972, align 8
  %shl.i989 = shl i32 %147, 8
  %shl1.i990 = shl nuw nsw i32 %conv428, 15
  %or.i991 = or i32 %shl1.i990, %shl.i989
  %or430 = or i32 %or.i991, %.
  %148 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or430, ptr %148, align 8
  %delayed = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 43
  %150 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 43, i32 1
  %151 = call ptr @memset(ptr %150, i32 0, i32 104)
  %152 = ptrtoint ptr %delayed to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %delayed, ptr %delayed, align 4
  %prev.i.i = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 43, i32 0, i32 1
  %153 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %delayed, ptr %prev.i.i, align 8
  call void @__init_waitqueue_head(ptr noundef %150, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_usb_anchor.__key) #17
  %lock.i = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 43, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_usb_anchor.__key.52, i16 noundef signext 3) #17
  %quirks433 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 44
  %154 = ptrtoint ptr %quirks433 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %quirks.1, ptr %quirks433, align 4
  %ctrl_dma = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 8
  %call434 = call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i972, i32 noundef %and.i, i32 noundef 3264, ptr noundef %ctrl_dma) #17
  %tobool435.not = icmp eq ptr %call434, null
  br i1 %tobool435.not, label %if.end418.err_put_port_crit_edge, label %if.end437

if.end418.err_put_port_crit_edge:                 ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_put_port

if.end437:                                        ; preds = %if.end418
  %ctrl_buffer = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 7
  %155 = ptrtoint ptr %ctrl_buffer to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call434, ptr %ctrl_buffer, align 8
  %call438 = call fastcc i32 @acm_write_buffers_alloc(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call438)
  %cmp439 = icmp slt i32 %call438, 0
  br i1 %cmp439, label %if.end437.err_free_ctrl_buffer_crit_edge, label %if.end442

if.end437.err_free_ctrl_buffer_crit_edge:         ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_ctrl_buffer

if.end442:                                        ; preds = %if.end437
  %call443 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #17
  %ctrlurb = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 6
  %156 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call443, ptr %ctrlurb, align 4
  %tobool445.not = icmp eq ptr %call443, null
  br i1 %tobool445.not, label %if.end442.err_free_write_buffers_crit_edge, label %for.cond.preheader

if.end442.err_free_write_buffers_crit_edge:       ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_write_buffers

for.cond.preheader:                               ; preds = %if.end442
  %bInterval470 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 42
  %read_urbs_free = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 13
  br label %for.body

for.cond483.preheader:                            ; preds = %for.inc
  %speed.i1014 = getelementptr i8, ptr %10, i32 -100
  %and510 = and i32 %quirks.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and510)
  %tobool511.not = icmp eq i32 %and510, 0
  br label %for.body486

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.01078 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx450 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 15, i32 %i.01078
  %157 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call7.i.i, align 8
  %dma = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 15, i32 %i.01078, i32 2
  %call452 = call ptr @usb_alloc_coherent(ptr noundef %158, i32 noundef %mul, i32 noundef 3264, ptr noundef %dma) #17
  %base = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 15, i32 %i.01078, i32 1
  %159 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call452, ptr %base, align 4
  %tobool454.not = icmp eq ptr %call452, null
  br i1 %tobool454.not, label %for.body.err_free_read_urbs_crit_edge, label %if.end456

for.body.err_free_read_urbs_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_read_urbs

if.end456:                                        ; preds = %for.body
  %index = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 15, i32 %i.01078, i32 3
  %160 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %i.01078, ptr %index, align 4
  %instance = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 15, i32 %i.01078, i32 4
  %161 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call7.i.i, ptr %instance, align 4
  %call457 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #17
  %tobool458.not = icmp eq ptr %call457, null
  br i1 %tobool458.not, label %if.end456.err_free_read_urbs_crit_edge, label %if.end460

if.end456.err_free_read_urbs_crit_edge:           ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_read_urbs

if.end460:                                        ; preds = %if.end456
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 13
  %162 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %transfer_flags, align 4
  %or461 = or i32 %163, 4
  store i32 %or461, ptr %transfer_flags, align 4
  %164 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dma, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 15
  %166 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %transfer_dma, align 4
  %167 = ptrtoint ptr %epread to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %epread, align 4
  %bmAttributes.i992 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %bmAttributes.i992 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bmAttributes.i992, align 1
  %171 = and i8 %170, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %171)
  %cmp.i993.not = icmp eq i8 %171, 3
  %172 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %call7.i.i, align 8
  %174 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %137, align 4
  %176 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base, align 4
  %178 = ptrtoint ptr %readsize368 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %readsize368, align 8
  br i1 %cmp.i993.not, label %if.then465, label %if.else472

if.then465:                                       ; preds = %if.end460
  %180 = ptrtoint ptr %bInterval470 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %bInterval470, align 1
  %conv471 = zext i8 %181 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 8
  %182 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %173, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 10
  %183 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %175, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 14
  %184 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %177, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 19
  %185 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %179, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 28
  %186 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @acm_read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 27
  %187 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %arrayidx450, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %173, i32 0, i32 4
  %188 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %189)
  %cmp.i995 = icmp eq i32 %189, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %189)
  %cmp6.i = icmp ugt i32 %189, 4
  %or.cond.i = or i1 %cmp.i995, %cmp6.i
  br i1 %or.cond.i, label %if.then.i997, label %if.then465.usb_fill_int_urb.exit_crit_edge

if.then465.usb_fill_int_urb.exit_crit_edge:       ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #19
  br label %usb_fill_int_urb.exit

if.then.i997:                                     ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #19
  %190 = call i32 @llvm.smax.i32(i32 %conv471, i32 1) #17
  %191 = call i32 @llvm.umin.i32(i32 %190, i32 16) #17
  %sub.i = add nsw i32 %191, -1
  %shl.i996 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i997, %if.then465.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i996, %if.then.i997 ], [ %conv471, %if.then465.usb_fill_int_urb.exit_crit_edge ]
  %192 = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 25
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %interval.sink.i, ptr %192, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 23
  %194 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 -1, ptr %start_frame.i, align 4
  br label %for.inc

if.else472:                                       ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i999 = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 8
  %195 = ptrtoint ptr %dev1.i999 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %173, ptr %dev1.i999, align 4
  %pipe2.i1000 = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 10
  %196 = ptrtoint ptr %pipe2.i1000 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %175, ptr %pipe2.i1000, align 4
  %transfer_buffer3.i1001 = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 14
  %197 = ptrtoint ptr %transfer_buffer3.i1001 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %177, ptr %transfer_buffer3.i1001, align 4
  %transfer_buffer_length.i1002 = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 19
  %198 = ptrtoint ptr %transfer_buffer_length.i1002 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %179, ptr %transfer_buffer_length.i1002, align 4
  %complete.i1003 = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 28
  %199 = ptrtoint ptr %complete.i1003 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @acm_read_bulk_callback, ptr %complete.i1003, align 4
  %context4.i1004 = getelementptr inbounds %struct.urb, ptr %call457, i32 0, i32 27
  %200 = ptrtoint ptr %context4.i1004 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %arrayidx450, ptr %context4.i1004, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else472, %usb_fill_int_urb.exit
  %arrayidx478 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 14, i32 %i.01078
  %201 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call457, ptr %arrayidx478, align 4
  %shl.i = shl nuw i32 1, %i.01078
  %div2.i = lshr i32 %i.01078, 5
  %add.ptr.i = getelementptr i32, ptr %read_urbs_free, i32 %div2.i
  %202 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %203, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %i.01078, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.cond483.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body486:                                      ; preds = %for.inc521.for.body486_crit_edge, %for.cond483.preheader
  %i.11079 = phi i32 [ 0, %for.cond483.preheader ], [ %inc522, %for.inc521.for.body486_crit_edge ]
  %arrayidx487 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 %i.11079
  %call488 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #17
  %urb489 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 %i.11079, i32 3
  %204 = ptrtoint ptr %urb489 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call488, ptr %urb489, align 8
  %tobool491.not = icmp eq ptr %call488, null
  br i1 %tobool491.not, label %for.body486.err_free_write_urbs_crit_edge, label %if.end493

for.body486.err_free_write_urbs_crit_edge:        ; preds = %for.body486
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_write_urbs

if.end493:                                        ; preds = %for.body486
  %205 = ptrtoint ptr %epwrite to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %epwrite, align 4
  %bmAttributes.i1005 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %bmAttributes.i1005 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %bmAttributes.i1005, align 1
  %209 = and i8 %208, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %209)
  %cmp.i1006.not = icmp eq i8 %209, 3
  %210 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %148, align 8
  %212 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %writesize, align 4
  br i1 %cmp.i1006.not, label %if.then496, label %if.else502

if.then496:                                       ; preds = %if.end493
  %bInterval500 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %206, i32 0, i32 5
  %214 = ptrtoint ptr %bInterval500 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %bInterval500, align 1
  %conv501 = zext i8 %215 to i32
  %dev1.i1008 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 8
  %216 = ptrtoint ptr %dev1.i1008 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %add.ptr.i972, ptr %dev1.i1008, align 4
  %pipe2.i1009 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 10
  %217 = ptrtoint ptr %pipe2.i1009 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %211, ptr %pipe2.i1009, align 4
  %transfer_buffer3.i1010 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 14
  %218 = ptrtoint ptr %transfer_buffer3.i1010 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %transfer_buffer3.i1010, align 4
  %transfer_buffer_length.i1011 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 19
  %219 = ptrtoint ptr %transfer_buffer_length.i1011 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %213, ptr %transfer_buffer_length.i1011, align 4
  %complete.i1012 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 28
  %220 = ptrtoint ptr %complete.i1012 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @acm_write_bulk, ptr %complete.i1012, align 4
  %context4.i1013 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 27
  %221 = ptrtoint ptr %context4.i1013 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %arrayidx487, ptr %context4.i1013, align 4
  %222 = ptrtoint ptr %speed.i1014 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %speed.i1014, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %223)
  %cmp.i1015 = icmp eq i32 %223, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %223)
  %cmp6.i1016 = icmp ugt i32 %223, 4
  %or.cond.i1017 = or i1 %cmp.i1015, %cmp6.i1016
  br i1 %or.cond.i1017, label %if.then.i1020, label %if.then496.usb_fill_int_urb.exit1024_crit_edge

if.then496.usb_fill_int_urb.exit1024_crit_edge:   ; preds = %if.then496
  call void @__sanitizer_cov_trace_pc() #19
  br label %usb_fill_int_urb.exit1024

if.then.i1020:                                    ; preds = %if.then496
  call void @__sanitizer_cov_trace_pc() #19
  %224 = call i32 @llvm.smax.i32(i32 %conv501, i32 1) #17
  %225 = call i32 @llvm.umin.i32(i32 %224, i32 16) #17
  %sub.i1018 = add nsw i32 %225, -1
  %shl.i1019 = shl nuw nsw i32 1, %sub.i1018
  br label %usb_fill_int_urb.exit1024

usb_fill_int_urb.exit1024:                        ; preds = %if.then.i1020, %if.then496.usb_fill_int_urb.exit1024_crit_edge
  %interval.sink.i1021 = phi i32 [ %shl.i1019, %if.then.i1020 ], [ %conv501, %if.then496.usb_fill_int_urb.exit1024_crit_edge ]
  %226 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 25
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %interval.sink.i1021, ptr %226, align 4
  %start_frame.i1022 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 23
  %228 = ptrtoint ptr %start_frame.i1022 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 -1, ptr %start_frame.i1022, align 4
  br label %if.end506

if.else502:                                       ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i1025 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 8
  %229 = ptrtoint ptr %dev1.i1025 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %add.ptr.i972, ptr %dev1.i1025, align 4
  %pipe2.i1026 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 10
  %230 = ptrtoint ptr %pipe2.i1026 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %211, ptr %pipe2.i1026, align 4
  %transfer_buffer3.i1027 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 14
  %231 = ptrtoint ptr %transfer_buffer3.i1027 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %transfer_buffer3.i1027, align 4
  %transfer_buffer_length.i1028 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 19
  %232 = ptrtoint ptr %transfer_buffer_length.i1028 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %213, ptr %transfer_buffer_length.i1028, align 4
  %complete.i1029 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 28
  %233 = ptrtoint ptr %complete.i1029 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @acm_write_bulk, ptr %complete.i1029, align 4
  %context4.i1030 = getelementptr inbounds %struct.urb, ptr %call488, i32 0, i32 27
  %234 = ptrtoint ptr %context4.i1030 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %arrayidx487, ptr %context4.i1030, align 4
  br label %if.end506

if.end506:                                        ; preds = %if.else502, %usb_fill_int_urb.exit1024
  %235 = ptrtoint ptr %urb489 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %urb489, align 8
  %transfer_flags508 = getelementptr inbounds %struct.urb, ptr %236, i32 0, i32 13
  %237 = ptrtoint ptr %transfer_flags508 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %transfer_flags508, align 4
  %or509 = or i32 %238, 4
  store i32 %or509, ptr %transfer_flags508, align 4
  br i1 %tobool511.not, label %if.end506.for.inc521_crit_edge, label %if.then512

if.end506.for.inc521_crit_edge:                   ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc521

if.then512:                                       ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #19
  %239 = ptrtoint ptr %urb489 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %urb489, align 8
  %transfer_flags514 = getelementptr inbounds %struct.urb, ptr %240, i32 0, i32 13
  %241 = ptrtoint ptr %transfer_flags514 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %transfer_flags514, align 4
  %or515 = or i32 %242, 64
  store i32 %or515, ptr %transfer_flags514, align 4
  br label %for.inc521

for.inc521:                                       ; preds = %if.then512, %if.end506.for.inc521_crit_edge
  %instance517 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 %i.11079, i32 4
  %243 = ptrtoint ptr %instance517 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call7.i.i, ptr %instance517, align 4
  %inc522 = add nuw nsw i32 %i.11079, 1
  %exitcond1083.not = icmp eq i32 %inc522, 16
  br i1 %exitcond1083.not, label %for.end523, label %for.inc521.for.body486_crit_edge

for.inc521.for.body486_crit_edge:                 ; preds = %for.inc521
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body486

for.end523:                                       ; preds = %for.inc521
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %244 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev524 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call525 = call i32 @device_create_file(ptr noundef %dev524, ptr noundef nonnull @dev_attr_bmCapabilities) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call525)
  %cmp526 = icmp slt i32 %call525, 0
  br i1 %cmp526, label %for.end523.err_free_write_urbs_crit_edge, label %if.end529

for.end523.err_free_write_urbs_crit_edge:         ; preds = %for.end523
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_write_urbs

if.end529:                                        ; preds = %for.end523
  %usb_cdc_country_functional_desc = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %h, i32 0, i32 4
  %245 = ptrtoint ptr %usb_cdc_country_functional_desc to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %usb_cdc_country_functional_desc, align 4
  %tobool530.not = icmp eq ptr %246, null
  br i1 %tobool530.not, label %if.end529.skip_countries_crit_edge, label %if.end8.i

if.end529.skip_countries_crit_edge:               ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_countries

if.end8.i:                                        ; preds = %if.end529
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %246, align 1
  %conv533 = zext i8 %248 to i32
  %sub = add nsw i32 %conv533, -4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3264) #22
  %country_codes = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 9
  %249 = ptrtoint ptr %country_codes to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call9.i, ptr %country_codes, align 8
  %tobool536.not = icmp eq ptr %call9.i, null
  br i1 %tobool536.not, label %if.end8.i.skip_countries_crit_edge, label %if.end538

if.end8.i.skip_countries_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_countries

if.end538:                                        ; preds = %if.end8.i
  %250 = ptrtoint ptr %246 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %246, align 1
  %conv540 = zext i8 %251 to i32
  %sub541 = add nsw i32 %conv540, -4
  %country_code_size = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 10
  %252 = ptrtoint ptr %country_code_size to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %sub541, ptr %country_code_size, align 4
  %wCountyCode0 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, ptr %246, i32 0, i32 4
  %253 = load i8, ptr %246, align 1
  %conv544 = zext i8 %253 to i32
  %sub545 = add nsw i32 %conv544, -4
  %254 = call ptr @memcpy(ptr %call9.i, ptr %wCountyCode0, i32 %sub545)
  %iCountryCodeRelDate = getelementptr inbounds %struct.usb_cdc_country_functional_desc, ptr %246, i32 0, i32 3
  %255 = ptrtoint ptr %iCountryCodeRelDate to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %iCountryCodeRelDate, align 1
  %conv546 = zext i8 %256 to i32
  %country_rel_date = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 11
  %257 = ptrtoint ptr %country_rel_date to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %conv546, ptr %country_rel_date, align 8
  %call548 = call i32 @device_create_file(ptr noundef %dev524, ptr noundef nonnull @dev_attr_wCountryCodes) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call548)
  %cmp549 = icmp slt i32 %call548, 0
  br i1 %cmp549, label %if.end538.skip_countries.sink.split_crit_edge, label %if.end555

if.end538.skip_countries.sink.split_crit_edge:    ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_countries.sink.split

if.end555:                                        ; preds = %if.end538
  %call557 = call i32 @device_create_file(ptr noundef %dev524, ptr noundef nonnull @dev_attr_iCountryCodeRelDate) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %cmp558 = icmp slt i32 %call557, 0
  br i1 %cmp558, label %if.then560, label %if.end555.skip_countries_crit_edge

if.end555.skip_countries_crit_edge:               ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_countries

if.then560:                                       ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #19
  call void @device_remove_file(ptr noundef %dev524, ptr noundef nonnull @dev_attr_wCountryCodes) #17
  br label %skip_countries.sink.split

skip_countries.sink.split:                        ; preds = %if.then560, %if.end538.skip_countries.sink.split_crit_edge
  %258 = ptrtoint ptr %country_codes to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %country_codes, align 8
  call void @kfree(ptr noundef %259) #17
  %260 = ptrtoint ptr %country_codes to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %country_codes, align 8
  %261 = ptrtoint ptr %country_code_size to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %country_code_size, align 4
  br label %skip_countries

skip_countries:                                   ; preds = %skip_countries.sink.split, %if.end555.skip_countries_crit_edge, %if.end8.i.skip_countries_crit_edge, %if.end529.skip_countries_crit_edge
  %262 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ctrlurb, align 4
  %264 = ptrtoint ptr %epctrl to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %epctrl, align 4
  %bEndpointAddress571 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %265, i32 0, i32 2
  %266 = ptrtoint ptr %bEndpointAddress571 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %bEndpointAddress571, align 1
  %conv572 = zext i8 %267 to i32
  %268 = ptrtoint ptr %add.ptr.i972 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %add.ptr.i972, align 8
  %shl.i1031 = shl i32 %269, 8
  %shl1.i1032 = shl nuw nsw i32 %conv572, 15
  %or.i1033 = or i32 %shl1.i1032, %shl.i1031
  %or575 = or i32 %or.i1033, 1073741952
  %270 = ptrtoint ptr %ctrl_buffer to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ctrl_buffer, align 8
  %bInterval577 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %265, i32 0, i32 5
  %272 = ptrtoint ptr %bInterval577 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %bInterval577, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool579.not = icmp eq i8 %273, 0
  %narrow1076 = select i1 %tobool579.not, i8 16, i8 %273
  %spec.select = zext i8 %narrow1076 to i32
  %dev1.i1034 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 8
  %274 = ptrtoint ptr %dev1.i1034 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %add.ptr.i972, ptr %dev1.i1034, align 4
  %pipe2.i1035 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 10
  %275 = ptrtoint ptr %pipe2.i1035 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %or575, ptr %pipe2.i1035, align 4
  %transfer_buffer3.i1036 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 14
  %276 = ptrtoint ptr %transfer_buffer3.i1036 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %271, ptr %transfer_buffer3.i1036, align 4
  %transfer_buffer_length.i1037 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 19
  %277 = ptrtoint ptr %transfer_buffer_length.i1037 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %and.i, ptr %transfer_buffer_length.i1037, align 4
  %complete.i1038 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 28
  %278 = ptrtoint ptr %complete.i1038 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr @acm_ctrl_irq, ptr %complete.i1038, align 4
  %context4.i1039 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 27
  %279 = ptrtoint ptr %context4.i1039 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call7.i.i, ptr %context4.i1039, align 4
  %280 = ptrtoint ptr %speed.i1014 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %speed.i1014, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %281)
  %cmp.i1041 = icmp eq i32 %281, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %281)
  %cmp6.i1042 = icmp ugt i32 %281, 4
  %or.cond.i1043 = or i1 %cmp.i1041, %cmp6.i1042
  %282 = call i32 @llvm.umin.i32(i32 %spec.select, i32 16) #17
  %sub.i1044 = add nsw i32 %282, -1
  %shl.i1045 = shl nuw nsw i32 1, %sub.i1044
  %interval.sink.i1047 = select i1 %or.cond.i1043, i32 %shl.i1045, i32 %spec.select
  %283 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 25
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %interval.sink.i1047, ptr %283, align 4
  %start_frame.i1048 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 23
  %285 = ptrtoint ptr %start_frame.i1048 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 -1, ptr %start_frame.i1048, align 4
  %286 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ctrlurb, align 4
  %transfer_flags584 = getelementptr inbounds %struct.urb, ptr %287, i32 0, i32 13
  %288 = ptrtoint ptr %transfer_flags584 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %transfer_flags584, align 4
  %or585 = or i32 %289, 4
  store i32 %or585, ptr %transfer_flags584, align 4
  %290 = ptrtoint ptr %ctrl_dma to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %ctrl_dma, align 4
  %292 = load ptr, ptr %ctrlurb, align 4
  %transfer_dma588 = getelementptr inbounds %struct.urb, ptr %292, i32 0, i32 15
  %293 = ptrtoint ptr %transfer_dma588 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %291, ptr %transfer_dma588, align 4
  %notification_buffer = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 18
  %294 = ptrtoint ptr %notification_buffer to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr null, ptr %notification_buffer, align 8
  %nb_index = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 19
  %295 = ptrtoint ptr %nb_index to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 0, ptr %nb_index, align 4
  %nb_size = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 20
  %296 = ptrtoint ptr %nb_size to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 0, ptr %nb_size, align 8
  %line = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 27
  %297 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 -2145058816, ptr %line, align 4
  %bDataBits = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 27, i32 3
  %298 = ptrtoint ptr %bDataBits to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 8, ptr %bDataBits, align 2
  %call591 = call fastcc i32 @acm_ctrl_msg(ptr noundef nonnull %call7.i.i, i32 noundef 32, i32 noundef 0, ptr noundef %line, i32 noundef 7)
  %299 = ptrtoint ptr %combined_interfaces344 to i32
  call void @__asan_load1_noabort(i32 %299)
  %bf.load593 = load i8, ptr %combined_interfaces344, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load593)
  %tobool594.not = icmp sgt i8 %bf.load593, -1
  br i1 %tobool594.not, label %if.then595, label %skip_countries.if.end600_crit_edge

skip_countries.if.end600_crit_edge:               ; preds = %skip_countries
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end600

if.then595:                                       ; preds = %skip_countries
  %call596 = call i32 @usb_driver_claim_interface(ptr noundef nonnull @acm_driver, ptr noundef %data_interface.5, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call596)
  %tobool597.not = icmp eq i32 %call596, 0
  br i1 %tobool597.not, label %if.then595.if.end600_crit_edge, label %if.then595.err_remove_files_crit_edge

if.then595.err_remove_files_crit_edge:            ; preds = %if.then595
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_remove_files

if.then595.if.end600_crit_edge:                   ; preds = %if.then595
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end600

if.end600:                                        ; preds = %if.then595.if.end600_crit_edge, %skip_countries.if.end600_crit_edge
  %300 = load ptr, ptr @acm_tty_driver, align 4
  %dev602 = getelementptr inbounds %struct.usb_interface, ptr %control_interface.5, i32 0, i32 7
  %call603 = call ptr @tty_port_register_device(ptr noundef %port, ptr noundef %300, i32 noundef %call.i, ptr noundef %dev602) #17
  %cmp.i1051 = icmp ugt ptr %call603, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1051, label %if.then605, label %if.end607

if.then605:                                       ; preds = %if.end600
  %301 = ptrtoint ptr %call603 to i32
  %302 = ptrtoint ptr %combined_interfaces344 to i32
  call void @__asan_load1_noabort(i32 %302)
  %bf.load621 = load i8, ptr %combined_interfaces344, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load621)
  %tobool624.not = icmp sgt i8 %bf.load621, -1
  br i1 %tobool624.not, label %if.then625, label %if.then605.err_remove_files_crit_edge

if.then605.err_remove_files_crit_edge:            ; preds = %if.then605
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_remove_files

if.end607:                                        ; preds = %if.end600
  %and608 = and i32 %quirks.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and608)
  %tobool609.not = icmp eq i32 %and608, 0
  br i1 %tobool609.not, label %if.end607.do.end618_crit_edge, label %if.then610

if.end607.do.end618_crit_edge:                    ; preds = %if.end607
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end618

if.then610:                                       ; preds = %if.end607
  call void @__sanitizer_cov_trace_pc() #19
  %303 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %137, align 4
  %call612 = call i32 @usb_clear_halt(ptr noundef %add.ptr.i972, i32 noundef %304) #17
  %305 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %148, align 8
  %call614 = call i32 @usb_clear_halt(ptr noundef %add.ptr.i972, i32 noundef %306) #17
  br label %do.end618

do.end618:                                        ; preds = %if.then610, %if.end607.do.end618_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev524, ptr noundef nonnull @.str.38, i32 noundef %call.i) #20
  br label %cleanup660

if.then625:                                       ; preds = %if.then605
  call void @__sanitizer_cov_trace_pc() #19
  %driver_data.i.i1052 = getelementptr inbounds %struct.usb_interface, ptr %data_interface.5, i32 0, i32 7, i32 8
  %307 = ptrtoint ptr %driver_data.i.i1052 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr null, ptr %driver_data.i.i1052, align 4
  call void @usb_driver_release_interface(ptr noundef nonnull @acm_driver, ptr noundef %data_interface.5) #17
  br label %err_remove_files

err_remove_files:                                 ; preds = %if.then625, %if.then605.err_remove_files_crit_edge, %if.then595.err_remove_files_crit_edge
  %rv.0 = phi i32 [ %301, %if.then605.err_remove_files_crit_edge ], [ %301, %if.then625 ], [ %call596, %if.then595.err_remove_files_crit_edge ]
  %country_codes627 = getelementptr inbounds %struct.acm, ptr %call7.i.i, i32 0, i32 9
  %308 = ptrtoint ptr %country_codes627 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %country_codes627, align 8
  %tobool628.not = icmp eq ptr %309, null
  br i1 %tobool628.not, label %err_remove_files.if.end634_crit_edge, label %if.then629

err_remove_files.if.end634_crit_edge:             ; preds = %err_remove_files
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end634

if.then629:                                       ; preds = %err_remove_files
  call void @__sanitizer_cov_trace_pc() #19
  %310 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %control, align 4
  %dev631 = getelementptr inbounds %struct.usb_interface, ptr %311, i32 0, i32 7
  call void @device_remove_file(ptr noundef %dev631, ptr noundef nonnull @dev_attr_wCountryCodes) #17
  %312 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %control, align 4
  %dev633 = getelementptr inbounds %struct.usb_interface, ptr %313, i32 0, i32 7
  call void @device_remove_file(ptr noundef %dev633, ptr noundef nonnull @dev_attr_iCountryCodeRelDate) #17
  br label %if.end634

if.end634:                                        ; preds = %if.then629, %err_remove_files.if.end634_crit_edge
  %314 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %control, align 4
  %dev636 = getelementptr inbounds %struct.usb_interface, ptr %315, i32 0, i32 7
  call void @device_remove_file(ptr noundef %dev636, ptr noundef nonnull @dev_attr_bmCapabilities) #17
  br label %err_free_write_urbs

err_free_write_urbs:                              ; preds = %if.end634, %for.end523.err_free_write_urbs_crit_edge, %for.body486.err_free_write_urbs_crit_edge
  %rv.1 = phi i32 [ -12, %for.end523.err_free_write_urbs_crit_edge ], [ %rv.0, %if.end634 ], [ -12, %for.body486.err_free_write_urbs_crit_edge ]
  %urb643 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 3
  %316 = ptrtoint ptr %urb643 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %urb643, align 8
  call void @usb_free_urb(ptr noundef %317) #17
  %urb643.1 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 3
  %318 = ptrtoint ptr %urb643.1 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %urb643.1, align 8
  call void @usb_free_urb(ptr noundef %319) #17
  %urb643.2 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 3
  %320 = ptrtoint ptr %urb643.2 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %urb643.2, align 8
  call void @usb_free_urb(ptr noundef %321) #17
  %urb643.3 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 3, i32 3
  %322 = ptrtoint ptr %urb643.3 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %urb643.3, align 8
  call void @usb_free_urb(ptr noundef %323) #17
  %urb643.4 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 4, i32 3
  %324 = ptrtoint ptr %urb643.4 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %urb643.4, align 8
  call void @usb_free_urb(ptr noundef %325) #17
  %urb643.5 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 5, i32 3
  %326 = ptrtoint ptr %urb643.5 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %urb643.5, align 8
  call void @usb_free_urb(ptr noundef %327) #17
  %urb643.6 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 6, i32 3
  %328 = ptrtoint ptr %urb643.6 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %urb643.6, align 8
  call void @usb_free_urb(ptr noundef %329) #17
  %urb643.7 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 7, i32 3
  %330 = ptrtoint ptr %urb643.7 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %urb643.7, align 8
  call void @usb_free_urb(ptr noundef %331) #17
  %urb643.8 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 8, i32 3
  %332 = ptrtoint ptr %urb643.8 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %urb643.8, align 8
  call void @usb_free_urb(ptr noundef %333) #17
  %urb643.9 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 9, i32 3
  %334 = ptrtoint ptr %urb643.9 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %urb643.9, align 8
  call void @usb_free_urb(ptr noundef %335) #17
  %urb643.10 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 10, i32 3
  %336 = ptrtoint ptr %urb643.10 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %urb643.10, align 8
  call void @usb_free_urb(ptr noundef %337) #17
  %urb643.11 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 11, i32 3
  %338 = ptrtoint ptr %urb643.11 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %urb643.11, align 8
  call void @usb_free_urb(ptr noundef %339) #17
  %urb643.12 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 12, i32 3
  %340 = ptrtoint ptr %urb643.12 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %urb643.12, align 8
  call void @usb_free_urb(ptr noundef %341) #17
  %urb643.13 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 13, i32 3
  %342 = ptrtoint ptr %urb643.13 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %urb643.13, align 8
  call void @usb_free_urb(ptr noundef %343) #17
  %urb643.14 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 14, i32 3
  %344 = ptrtoint ptr %urb643.14 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %urb643.14, align 8
  call void @usb_free_urb(ptr noundef %345) #17
  %urb643.15 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 12, i32 15, i32 3
  %346 = ptrtoint ptr %urb643.15 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %urb643.15, align 8
  call void @usb_free_urb(ptr noundef %347) #17
  br label %err_free_read_urbs

err_free_read_urbs:                               ; preds = %err_free_write_urbs, %if.end456.err_free_read_urbs_crit_edge, %for.body.err_free_read_urbs_crit_edge
  %rv.2 = phi i32 [ %rv.1, %err_free_write_urbs ], [ -12, %for.body.err_free_read_urbs_crit_edge ], [ -12, %if.end456.err_free_read_urbs_crit_edge ]
  br label %for.body650

for.body650:                                      ; preds = %for.body650.for.body650_crit_edge, %err_free_read_urbs
  %i.31081 = phi i32 [ 0, %err_free_read_urbs ], [ %inc654, %for.body650.for.body650_crit_edge ]
  %arrayidx652 = getelementptr %struct.acm, ptr %call7.i.i, i32 0, i32 14, i32 %i.31081
  %348 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx652, align 4
  call void @usb_free_urb(ptr noundef %349) #17
  %inc654 = add nuw nsw i32 %i.31081, 1
  %exitcond1085.not = icmp eq i32 %inc654, %cond
  br i1 %exitcond1085.not, label %for.end655, label %for.body650.for.body650_crit_edge

for.body650.for.body650_crit_edge:                ; preds = %for.body650
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body650

for.end655:                                       ; preds = %for.body650
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @acm_read_buffers_free(ptr noundef nonnull %call7.i.i)
  %350 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ctrlurb, align 4
  call void @usb_free_urb(ptr noundef %351) #17
  br label %err_free_write_buffers

err_free_write_buffers:                           ; preds = %for.end655, %if.end442.err_free_write_buffers_crit_edge
  %rv.3 = phi i32 [ %rv.2, %for.end655 ], [ -12, %if.end442.err_free_write_buffers_crit_edge ]
  call fastcc void @acm_write_buffers_free(ptr noundef nonnull %call7.i.i)
  br label %err_free_ctrl_buffer

err_free_ctrl_buffer:                             ; preds = %err_free_write_buffers, %if.end437.err_free_ctrl_buffer_crit_edge
  %rv.4 = phi i32 [ -12, %if.end437.err_free_ctrl_buffer_crit_edge ], [ %rv.3, %err_free_write_buffers ]
  %352 = ptrtoint ptr %ctrl_buffer to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %ctrl_buffer, align 8
  %354 = ptrtoint ptr %ctrl_dma to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %ctrl_dma, align 4
  call void @usb_free_coherent(ptr noundef %add.ptr.i972, i32 noundef %and.i, ptr noundef %353, i32 noundef %355) #17
  br label %err_put_port

err_put_port:                                     ; preds = %err_free_ctrl_buffer, %if.end418.err_put_port_crit_edge, %if.then352
  %rv.5 = phi i32 [ -12, %if.then352 ], [ %rv.4, %err_free_ctrl_buffer ], [ -12, %if.end418.err_put_port_crit_edge ]
  call void @tty_port_put(ptr noundef %port) #17
  br label %cleanup660

cleanup660:                                       ; preds = %err_put_port, %do.end618, %do.end333.cleanup660_crit_edge, %lor.lhs.false272.cleanup660_crit_edge, %if.end265.cleanup660_crit_edge, %if.end259.cleanup660_crit_edge, %if.then229.cleanup660_crit_edge, %look_for_collapsed_interface.cleanup660_crit_edge, %do.end214, %if.then171, %do.body159, %if.then112, %do.body100, %do.end45, %do.end, %if.then4.cleanup660_crit_edge, %entry.cleanup660_crit_edge
  %retval.0 = phi i32 [ %rv.5, %err_put_port ], [ 0, %do.end618 ], [ -22, %do.end214 ], [ -22, %do.end45 ], [ -22, %do.end ], [ -19, %entry.cleanup660_crit_edge ], [ -19, %if.then4.cleanup660_crit_edge ], [ -19, %if.then112 ], [ -19, %if.then171 ], [ %call218, %look_for_collapsed_interface.cleanup660_crit_edge ], [ -22, %if.then229.cleanup660_crit_edge ], [ -19, %if.end259.cleanup660_crit_edge ], [ -22, %lor.lhs.false272.cleanup660_crit_edge ], [ -22, %if.end265.cleanup660_crit_edge ], [ -12, %do.end333.cleanup660_crit_edge ], [ -19, %do.body100 ], [ -19, %do.body159 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %h) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epwrite) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epread) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epctrl) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_disconnect(ptr noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %disconnected = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %disconnected, align 4
  tail call fastcc void @acm_poison_urbs(ptr noundef nonnull %1)
  %mutex = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #17
  %country_codes = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %country_codes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %country_codes, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %control = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %control, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_wCountryCodes) #17
  %7 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev4, ptr noundef nonnull @dev_attr_iCountryCodeRelDate) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %wioctl = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 33
  tail call void @__wake_up(ptr noundef %wioctl, i32 noundef 3, i32 noundef 0, ptr noundef null) #17
  %control6 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %control6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control6, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev7, ptr noundef nonnull @dev_attr_bmCapabilities) #17
  %11 = ptrtoint ptr %control6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %control6, align 4
  %driver_data.i.i71 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7, i32 8
  %13 = ptrtoint ptr %driver_data.i.i71 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %driver_data.i.i71, align 4
  %data = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %driver_data.i.i72 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 8
  %16 = ptrtoint ptr %driver_data.i.i72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %driver_data.i.i72, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #17
  %port = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5
  %call10 = tail call ptr @tty_port_tty_get(ptr noundef %port) #17
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end5.if.end13_crit_edge, label %if.then12

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @tty_vhangup(ptr noundef nonnull %call10) #17
  tail call void @tty_kref_put(ptr noundef nonnull %call10) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end5.if.end13_crit_edge
  %dwork = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 28
  %call14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #17
  %17 = load ptr, ptr @acm_tty_driver, align 4
  %minor = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 37
  %18 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %minor, align 4
  tail call void @tty_unregister_device(ptr noundef %17, i32 noundef %19) #17
  %ctrlurb = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrlurb, align 4
  tail call void @usb_free_urb(ptr noundef %21) #17
  %urb = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 0, i32 3
  %22 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %23) #17
  %urb.1 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 1, i32 3
  %24 = ptrtoint ptr %urb.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb.1, align 4
  tail call void @usb_free_urb(ptr noundef %25) #17
  %urb.2 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 2, i32 3
  %26 = ptrtoint ptr %urb.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb.2, align 4
  tail call void @usb_free_urb(ptr noundef %27) #17
  %urb.3 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 3, i32 3
  %28 = ptrtoint ptr %urb.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb.3, align 4
  tail call void @usb_free_urb(ptr noundef %29) #17
  %urb.4 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 4, i32 3
  %30 = ptrtoint ptr %urb.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb.4, align 4
  tail call void @usb_free_urb(ptr noundef %31) #17
  %urb.5 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 5, i32 3
  %32 = ptrtoint ptr %urb.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb.5, align 4
  tail call void @usb_free_urb(ptr noundef %33) #17
  %urb.6 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 6, i32 3
  %34 = ptrtoint ptr %urb.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %urb.6, align 4
  tail call void @usb_free_urb(ptr noundef %35) #17
  %urb.7 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 7, i32 3
  %36 = ptrtoint ptr %urb.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %urb.7, align 4
  tail call void @usb_free_urb(ptr noundef %37) #17
  %urb.8 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 8, i32 3
  %38 = ptrtoint ptr %urb.8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %urb.8, align 4
  tail call void @usb_free_urb(ptr noundef %39) #17
  %urb.9 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 9, i32 3
  %40 = ptrtoint ptr %urb.9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %urb.9, align 4
  tail call void @usb_free_urb(ptr noundef %41) #17
  %urb.10 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 10, i32 3
  %42 = ptrtoint ptr %urb.10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %urb.10, align 4
  tail call void @usb_free_urb(ptr noundef %43) #17
  %urb.11 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 11, i32 3
  %44 = ptrtoint ptr %urb.11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %urb.11, align 4
  tail call void @usb_free_urb(ptr noundef %45) #17
  %urb.12 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 12, i32 3
  %46 = ptrtoint ptr %urb.12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %urb.12, align 4
  tail call void @usb_free_urb(ptr noundef %47) #17
  %urb.13 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 13, i32 3
  %48 = ptrtoint ptr %urb.13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %urb.13, align 4
  tail call void @usb_free_urb(ptr noundef %49) #17
  %urb.14 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 14, i32 3
  %50 = ptrtoint ptr %urb.14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %urb.14, align 4
  tail call void @usb_free_urb(ptr noundef %51) #17
  %urb.15 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 15, i32 3
  %52 = ptrtoint ptr %urb.15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %urb.15, align 4
  tail call void @usb_free_urb(ptr noundef %53) #17
  %rx_buflimit = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_buflimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1676 = icmp sgt i32 %55, 0
  br i1 %cmp1676, label %if.end13.for.body17_crit_edge, label %if.end13.for.end21_crit_edge

if.end13.for.end21_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end21

if.end13.for.body17_crit_edge:                    ; preds = %if.end13
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %if.end13.for.body17_crit_edge
  %i.177 = phi i32 [ %inc20, %for.body17.for.body17_crit_edge ], [ 0, %if.end13.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.acm, ptr %1, i32 0, i32 14, i32 %i.177
  %56 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx18, align 4
  tail call void @usb_free_urb(ptr noundef %57) #17
  %inc20 = add nuw nsw i32 %i.177, 1
  %58 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_buflimit, align 4
  %cmp16 = icmp slt i32 %inc20, %59
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.for.end21_crit_edge

for.body17.for.end21_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end21

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17

for.end21:                                        ; preds = %for.body17.for.end21_crit_edge, %if.end13.for.end21_crit_edge
  %wb1.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 12
  %writesize.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end21
  %wb.08.i = phi ptr [ %wb1.i, %for.end21 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ 0, %for.end21 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %62 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %writesize.i, align 4
  %64 = ptrtoint ptr %wb.08.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wb.08.i, align 4
  %dmah.i = getelementptr inbounds %struct.acm_wb, ptr %wb.08.i, i32 0, i32 1
  %66 = ptrtoint ptr %dmah.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dmah.i, align 4
  tail call void @usb_free_coherent(ptr noundef %61, i32 noundef %63, ptr noundef %65, i32 noundef %67) #17
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %incdec.ptr.i = getelementptr %struct.acm_wb, ptr %wb.08.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %acm_write_buffers_free.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

acm_write_buffers_free.exit:                      ; preds = %for.body.i
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %ctrlsize = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 36
  %70 = ptrtoint ptr %ctrlsize to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ctrlsize, align 4
  %ctrl_buffer = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 7
  %72 = ptrtoint ptr %ctrl_buffer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctrl_buffer, align 4
  %ctrl_dma = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 8
  %74 = ptrtoint ptr %ctrl_dma to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ctrl_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %69, i32 noundef %71, ptr noundef %73, i32 noundef %75) #17
  %76 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_buflimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp10.i = icmp sgt i32 %77, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %acm_write_buffers_free.exit.acm_read_buffers_free.exit_crit_edge

acm_write_buffers_free.exit.acm_read_buffers_free.exit_crit_edge: ; preds = %acm_write_buffers_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %acm_read_buffers_free.exit

for.body.lr.ph.i:                                 ; preds = %acm_write_buffers_free.exit
  %readsize.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 35
  br label %for.body.i74

for.body.i74:                                     ; preds = %for.body.i74.for.body.i74_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i73, %for.body.i74.for.body.i74_crit_edge ]
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %readsize.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %readsize.i, align 4
  %base.i = getelementptr %struct.acm, ptr %1, i32 0, i32 15, i32 %i.011.i, i32 1
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %dma.i = getelementptr %struct.acm, ptr %1, i32 0, i32 15, i32 %i.011.i, i32 2
  %84 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %85) #17
  %inc.i73 = add nuw nsw i32 %i.011.i, 1
  %86 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_buflimit, align 4
  %cmp.i = icmp slt i32 %inc.i73, %87
  br i1 %cmp.i, label %for.body.i74.for.body.i74_crit_edge, label %for.body.i74.acm_read_buffers_free.exit_crit_edge

for.body.i74.acm_read_buffers_free.exit_crit_edge: ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #19
  br label %acm_read_buffers_free.exit

for.body.i74.for.body.i74_crit_edge:              ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i74

acm_read_buffers_free.exit:                       ; preds = %for.body.i74.acm_read_buffers_free.exit_crit_edge, %acm_write_buffers_free.exit.acm_read_buffers_free.exit_crit_edge
  %notification_buffer = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 18
  %88 = ptrtoint ptr %notification_buffer to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %notification_buffer, align 4
  tail call void @kfree(ptr noundef %89) #17
  %combined_interfaces = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 41
  %90 = ptrtoint ptr %combined_interfaces to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load = load i8, ptr %combined_interfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool23.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool23.not, label %if.then24, label %acm_read_buffers_free.exit.if.end29_crit_edge

acm_read_buffers_free.exit.if.end29_crit_edge:    ; preds = %acm_read_buffers_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then24:                                        ; preds = %acm_read_buffers_free.exit
  %91 = ptrtoint ptr %control6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %control6, align 4
  %cmp26 = icmp eq ptr %92, %intf
  br i1 %cmp26, label %cond.true, label %if.then24.cond.end_crit_edge

if.then24.cond.end_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then24.cond.end_crit_edge
  %cond = phi ptr [ %94, %cond.true ], [ %92, %if.then24.cond.end_crit_edge ]
  tail call void @usb_driver_release_interface(ptr noundef nonnull @acm_driver, ptr noundef %cond) #17
  br label %if.end29

if.end29:                                         ; preds = %cond.end, %acm_read_buffers_free.exit.if.end29_crit_edge
  tail call void @tty_port_put(ptr noundef %port) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_lock = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %write_lock) #17
  %and = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then:                                          ; preds = %entry
  %transmitting = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %transmitting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transmitting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then1

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %write_lock) #17
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %susp_count = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %susp_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %susp_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %susp_count, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %write_lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @acm_poison_urbs(ptr noundef %1)
  %dwork = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 28
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #17
  %urbs_in_error_delay = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %urbs_in_error_delay to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %urbs_in_error_delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.then1
  %retval.0 = phi i32 [ -16, %if.then1 ], [ 0, %if.end7 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_lock = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %write_lock) #17
  %susp_count = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %susp_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %susp_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %susp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  tail call fastcc void @acm_unpoison_urbs(ptr noundef %1)
  %iflags.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5, i32 11
  %4 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.out_crit_edge, label %if.then2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then2:                                         ; preds = %if.end
  %ctrlurb = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrlurb, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 2592) #17
  %delayed = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 43
  %call424 = tail call ptr @usb_get_from_anchor(ptr noundef %delayed) #17
  %tobool5.not25 = icmp eq ptr %call424, null
  br i1 %tobool5.not25, label %if.then2.for.end_crit_edge, label %if.end7.lr.ph

if.then2.for.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end7.lr.ph:                                    ; preds = %if.then2
  %transmitting.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 21
  %data.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 2
  %control.i.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  br label %if.end7

if.end7:                                          ; preds = %acm_start_wb.exit.if.end7_crit_edge, %if.end7.lr.ph
  %call426 = phi ptr [ %call424, %if.end7.lr.ph ], [ %call4, %acm_start_wb.exit.if.end7_crit_edge ]
  %context = getelementptr inbounds %struct.urb, ptr %call426, i32 0, i32 27
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %10 = ptrtoint ptr %transmitting.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transmitting.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %transmitting.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %urb.i = getelementptr inbounds %struct.acm_wb, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %transfer_buffer.i, align 4
  %dmah.i = getelementptr inbounds %struct.acm_wb, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %dmah.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dmah.i, align 4
  %19 = load ptr, ptr %urb.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %transfer_dma.i, align 4
  %len.i = getelementptr inbounds %struct.acm_wb, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %23 = load ptr, ptr %urb.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %transfer_buffer_length.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = load ptr, ptr %urb.i, align 4
  %dev4.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %dev4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %dev4.i, align 4
  %29 = load ptr, ptr %urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %29, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end7.acm_start_wb.exit_crit_edge

if.end7.acm_start_wb.exit_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %acm_start_wb.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp6.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %call.i) #20
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %use.i.i = getelementptr inbounds %struct.acm_wb, ptr %9, i32 0, i32 5
  %32 = ptrtoint ptr %use.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %use.i.i, align 4
  %33 = ptrtoint ptr %transmitting.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %transmitting.i, align 4
  %dec.i.i = add i32 %34, -1
  store i32 %dec.i.i, ptr %transmitting.i, align 4
  %35 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %control.i.i, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %36) #17
  br label %acm_start_wb.exit

acm_start_wb.exit:                                ; preds = %if.end.i, %if.end7.acm_start_wb.exit_crit_edge
  %call4 = tail call ptr @usb_get_from_anchor(ptr noundef %delayed) #17
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %acm_start_wb.exit.for.end_crit_edge, label %acm_start_wb.exit.if.end7_crit_edge

acm_start_wb.exit.if.end7_crit_edge:              ; preds = %acm_start_wb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

acm_start_wb.exit.for.end_crit_edge:              ; preds = %acm_start_wb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %acm_start_wb.exit.for.end_crit_edge, %if.then2.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %for.end.out_crit_edge, label %if.end10

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %call11 = tail call fastcc i32 @acm_submit_read_urbs(ptr noundef %1, i32 noundef 2592)
  br label %out

out:                                              ; preds = %if.end10, %for.end.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rv.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call3, %for.end.out_crit_edge ], [ %call11, %if.end10 ], [ 0, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %write_lock) #17
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_reset_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iflags.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5, i32 11
  %2 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %port = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5
  tail call void @tty_port_tty_hangup(ptr noundef %port, i1 noundef zeroext false) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @acm_resume(ptr noundef %intf)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_pre_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 25
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  %nb_index = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %nb_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nb_index, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_parse_cdc_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_softint(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1612
  %flags = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !210
  %susp_count = getelementptr i8, ptr %work, i32 272
  %3 = ptrtoint ptr %susp_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %susp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

for.cond.preheader:                               ; preds = %do.end
  %rx_buflimit = getelementptr i8, ptr %work, i32 -220
  %5 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_buflimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp51 = icmp sgt i32 %6, 0
  br i1 %cmp51, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %read_urbs = getelementptr i8, ptr %work, i32 -604
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %read_urbs, i32 0, i32 %i.052
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #17
  %inc = add nuw nsw i32 %i.052, 1
  %9 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_buflimit, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %in = getelementptr i8, ptr %work, i32 -1600
  %13 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in, align 4
  %call6 = tail call i32 @usb_clear_halt(ptr noundef %12, i32 noundef %14) #17
  %call7 = tail call fastcc i32 @acm_submit_read_urbs(ptr noundef %add.ptr, i32 noundef 3264)
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %if.end9

if.end9:                                          ; preds = %for.end, %do.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call11 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.if.end26_crit_edge, label %for.cond14.preheader

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

for.cond14.preheader:                             ; preds = %if.end9
  %rx_buflimit15 = getelementptr i8, ptr %work, i32 -220
  %15 = ptrtoint ptr %rx_buflimit15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_buflimit15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1653 = icmp sgt i32 %16, 0
  br i1 %cmp1653, label %for.body17.lr.ph, label %for.cond14.preheader.if.end26_crit_edge

for.cond14.preheader.if.end26_crit_edge:          ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %urbs_in_error_delay = getelementptr i8, ptr %work, i32 -12
  %read_urbs_free.i = getelementptr i8, ptr %work, i32 -608
  %data.i = getelementptr i8, ptr %work, i32 -1604
  br label %for.body17

for.body17:                                       ; preds = %for.inc23.for.body17_crit_edge, %for.body17.lr.ph
  %i.154 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc24, %for.inc23.for.body17_crit_edge ]
  %call18 = tail call i32 @_test_and_clear_bit(i32 noundef %i.154, ptr noundef %urbs_in_error_delay) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.body17.for.inc23_crit_edge, label %if.then20

for.body17.for.inc23_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc23

if.then20:                                        ; preds = %for.body17
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %i.154, ptr noundef %read_urbs_free.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then20.for.inc23_crit_edge, label %if.end.i

if.then20.for.inc23_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc23

if.end.i:                                         ; preds = %if.then20
  %arrayidx.i = getelementptr %struct.acm, ptr %add.ptr, i32 0, i32 14, i32 %i.154
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = tail call i32 @usb_submit_urb(ptr noundef %18, i32 noundef 3264) #17
  %19 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call1.i, label %do.end.i [
    i32 0, label %if.end.i.for.inc23_crit_edge
    i32 -1, label %if.end.i.if.end6.i_crit_edge
    i32 -19, label %if.end.i.if.end6.i_crit_edge57
  ]

if.end.i.if.end6.i_crit_edge57:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end.i.for.inc23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc23

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %i.154, i32 noundef %call1.i) #20
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.end.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge57
  tail call void @_set_bit(i32 noundef %i.154, ptr noundef %read_urbs_free.i) #17
  br label %for.inc23

for.inc23:                                        ; preds = %if.end6.i, %if.end.i.for.inc23_crit_edge, %if.then20.for.inc23_crit_edge, %for.body17.for.inc23_crit_edge
  %inc24 = add nuw nsw i32 %i.154, 1
  %22 = ptrtoint ptr %rx_buflimit15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_buflimit15, align 4
  %cmp16 = icmp slt i32 %inc24, %23
  br i1 %cmp16, label %for.inc23.for.body17_crit_edge, label %for.inc23.if.end26_crit_edge

for.inc23.if.end26_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

for.inc23.for.body17_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17

if.end26:                                         ; preds = %for.inc23.if.end26_crit_edge, %for.cond14.preheader.if.end26_crit_edge, %if.end9.if.end26_crit_edge
  %call28 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %port = getelementptr i8, ptr %work, i32 -1592
  tail call void @tty_port_tty_wakeup(ptr noundef %port) #17
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acm_write_buffers_alloc(ptr noundef %acm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wb1 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 12
  %writesize = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %wb.027 = phi ptr [ %wb1, %entry ], [ %incdec.ptr8, %for.inc.for.body_crit_edge ]
  %i.026 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %acm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acm, align 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %dmah = getelementptr inbounds %struct.acm_wb, ptr %wb.027, i32 0, i32 1
  %call = tail call ptr @usb_alloc_coherent(ptr noundef %1, i32 noundef %3, i32 noundef 3264, ptr noundef %dmah) #17
  %4 = ptrtoint ptr %wb.027 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %wb.027, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.026)
  %cmp3.not28 = icmp eq i32 %i.026, 0
  br i1 %cmp3.not28, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %wb.130 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %wb.027, %while.cond.preheader.while.body_crit_edge ]
  %i.129 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.026, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %i.129, -1
  %incdec.ptr = getelementptr %struct.acm_wb, ptr %wb.130, i32 -1
  %5 = ptrtoint ptr %acm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acm, align 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %incdec.ptr, align 4
  %dmah7 = getelementptr %struct.acm_wb, ptr %wb.130, i32 -1, i32 1
  %11 = ptrtoint ptr %dmah7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dmah7, align 4
  tail call void @usb_free_coherent(ptr noundef %6, i32 noundef %8, ptr noundef %10, i32 noundef %12) #17
  %cmp3.not = icmp eq i32 %dec, 0
  br i1 %cmp3.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.026, 1
  %incdec.ptr8 = getelementptr %struct.acm_wb, ptr %wb.027, i32 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.cond.preheader.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_read_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %instance = getelementptr inbounds %struct.acm_rb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %5, label %do.body28 [
    i32 0, label %sw.bb
    i32 -32, label %sw.bb2
    i32 -2, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge125
    i32 -108, label %entry.do.body_crit_edge126
    i32 -75, label %entry.do.body8_crit_edge
    i32 -71, label %entry.do.body8_crit_edge127
  ]

entry.do.body8_crit_edge127:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body8

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body8

entry.do.body_crit_edge126:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #17
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %sw.bb.do.end49_crit_edge, label %do.body1.i

sw.bb.do.end49_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end49

do.body1.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %read_lock.i = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %read_lock.i) #17
  %port.i = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 5
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer.i, align 4
  %14 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length.i, align 4
  %call.i.i115 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port.i, ptr noundef %13, i8 noundef zeroext 0, i32 noundef %15) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %read_lock.i, i32 noundef %call2.i) #17
  tail call void @tty_flip_buffer_push(ptr noundef %port.i) #17
  br label %do.end49

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %do.end49

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge125, %entry.do.body_crit_edge126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_read_bulk_callback.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_read_bulk_callback, %if.then)) #17
          to label %do.end49 [label %if.then], !srcloc !209

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %data = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_read_bulk_callback.__UNIQUE_ID_ddebug242, ptr noundef %dev6, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %5) #17
  br label %do.end49

do.body8:                                         ; preds = %entry.do.body8_crit_edge, %entry.do.body8_crit_edge127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_read_bulk_callback.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_read_bulk_callback, %if.then20)) #17
          to label %do.end25 [label %if.then20], !srcloc !209

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #19
  %data21 = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data21, align 4
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_read_bulk_callback.__UNIQUE_ID_ddebug243, ptr noundef %dev22, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #17
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.body8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call.i.i116 = tail call i64 @ktime_get_mono_fast_ns() #17
  %last_busy.i.i117 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i117 to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i.i116, ptr %last_busy.i.i117, align 8
  %index = getelementptr inbounds %struct.acm_rb, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %urbs_in_error_delay = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 26
  tail call void @_set_bit(i32 noundef %24, ptr noundef %urbs_in_error_delay) #17
  %flags27 = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags27) #17
  br label %do.end49

do.body28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_read_bulk_callback.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_read_bulk_callback, %if.then40)) #17
          to label %do.end49 [label %if.then40], !srcloc !209

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #19
  %data41 = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data41, align 4
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_read_bulk_callback.__UNIQUE_ID_ddebug244, ptr noundef %dev42, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54, i32 noundef %5) #17
  br label %do.end49

do.end49:                                         ; preds = %if.then40, %do.body28, %do.end25, %if.then, %do.body, %sw.bb2, %do.body1.i, %sw.bb.do.end49_crit_edge
  %cooldown.0.off0 = phi i1 [ false, %if.then40 ], [ true, %do.end25 ], [ false, %sw.bb2 ], [ false, %if.then ], [ false, %sw.bb.do.end49_crit_edge ], [ false, %do.body1.i ], [ false, %do.body ], [ false, %do.body28 ]
  %stalled.0.off0 = phi i1 [ false, %if.then40 ], [ false, %do.end25 ], [ true, %sw.bb2 ], [ false, %if.then ], [ false, %sw.bb.do.end49_crit_edge ], [ false, %do.body1.i ], [ false, %do.body ], [ false, %do.body28 ]
  %stopped.0.off0 = phi i1 [ false, %if.then40 ], [ false, %do.end25 ], [ false, %sw.bb2 ], [ true, %if.then ], [ false, %sw.bb.do.end49_crit_edge ], [ false, %do.body1.i ], [ true, %do.body ], [ false, %do.body28 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !211
  %index52 = getelementptr inbounds %struct.acm_rb, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %index52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index52, align 4
  %read_urbs_free = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %28, ptr noundef %read_urbs_free) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !212
  %brmerge = or i1 %stalled.0.off0, %stopped.0.off0
  %brmerge108 = or i1 %cooldown.0.off0, %brmerge
  br i1 %brmerge108, label %if.then63, label %if.end73

if.then63:                                        ; preds = %do.end49
  br i1 %stalled.0.off0, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #19
  %dwork = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i118 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %dwork, i32 noundef 0) #17
  br label %cleanup

if.else:                                          ; preds = %if.then63
  br i1 %cooldown.0.off0, label %if.then68, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %dwork69 = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i119 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %dwork69, i32 noundef 50) #17
  br label %cleanup

if.end73:                                         ; preds = %do.end49
  %flags74 = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 25
  %31 = ptrtoint ptr %flags74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags74, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool76.not = icmp eq i32 %33, 0
  br i1 %tobool76.not, label %if.end78, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  %34 = ptrtoint ptr %index52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index52, align 4
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %35, ptr noundef %read_urbs_free) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i120 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i120, label %if.end78.cleanup_crit_edge, label %if.end.i

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end78
  %arrayidx.i = getelementptr %struct.acm, ptr %3, i32 0, i32 14, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = tail call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 2592) #17
  %38 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call1.i, label %do.end.i [
    i32 0, label %if.end.i.cleanup_crit_edge
    i32 -1, label %if.end.i.if.end6.i_crit_edge
    i32 -19, label %if.end.i.if.end6.i_crit_edge128
  ]

if.end.i.if.end6.i_crit_edge128:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %data.i = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %35, i32 noundef %call1.i) #20
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.end.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge128
  tail call void @_set_bit(i32 noundef %35, ptr noundef %read_urbs_free) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.end.i.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.then68, %if.else.cleanup_crit_edge, %if.then65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_write_bulk(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %instance = getelementptr inbounds %struct.acm_wb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 4
  %write_lock = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 22
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #17
  %use.i = getelementptr inbounds %struct.acm_wb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %use.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %use.i, align 4
  %transmitting.i = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 21
  %5 = ptrtoint ptr %transmitting.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %transmitting.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %transmitting.i, align 4
  %control.i = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control.i, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %8) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call4) #17
  %flags8 = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags8) #17
  %dwork = getelementptr inbounds %struct.acm, ptr %3, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %dwork, i32 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_ctrl_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %5, label %do.body4 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge163
    i32 -108, label %entry.do.body_crit_edge164
  ]

entry.do.body_crit_edge164:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge163:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge163, %entry.do.body_crit_edge164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_ctrl_irq.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_ctrl_irq, %if.then)) #17
          to label %cleanup100 [label %if.then], !srcloc !209

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %control = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_ctrl_irq.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.62, i32 noundef %5) #17
  br label %cleanup100

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_ctrl_irq.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_ctrl_irq, %if.then16)) #17
          to label %exit [label %if.then16], !srcloc !209

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  %control17 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %control17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control17, align 4
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_ctrl_irq.__UNIQUE_ID_ddebug239, ptr noundef %dev18, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.62, i32 noundef %5) #17
  br label %exit

sw.epilog:                                        ; preds = %entry
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #17
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %nb_index = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %nb_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nb_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %sw.epilog.if.end25_crit_edge, label %if.then24

sw.epilog.if.end25_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %notification_buffer = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %notification_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notification_buffer, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.epilog.if.end25_crit_edge
  %dr.0 = phi ptr [ %19, %if.then24 ], [ %12, %sw.epilog.if.end25_crit_edge ]
  %wLength = getelementptr inbounds %struct.usb_cdc_notification, ptr %dr.0, i32 0, i32 4
  %20 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wLength, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv = zext i16 %22 to i32
  %add = add nuw nsw i32 %conv, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp = icmp ult i32 %3, %add
  br i1 %cmp, label %if.then27, label %if.end25.if.end80_crit_edge

if.end25.if.end80_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

if.then27:                                        ; preds = %if.end25
  %nb_size = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %nb_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp28 = icmp ult i32 %24, %add
  br i1 %cmp28, label %if.then30, label %if.then27.if.end64_crit_edge

if.then27.if.end64_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then30:                                        ; preds = %if.then27
  %sub = add nuw nsw i32 %conv, 7
  %25 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #17, !range !213
  %sub.i.i.i.pn = sub nuw nsw i32 32, %25
  %cond54 = shl nuw i32 1, %sub.i.i.i.pn
  %notification_buffer55 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %notification_buffer55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %notification_buffer55, align 4
  %call56 = tail call noalias ptr @krealloc(ptr noundef %27, i32 noundef %cond54, i32 noundef 2592) #23
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %notification_buffer55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call56, ptr %notification_buffer55, align 4
  %29 = ptrtoint ptr %nb_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond54, ptr %nb_size, align 4
  br label %if.end64

cleanup:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %nb_index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %nb_index, align 4
  br label %exit

if.end64:                                         ; preds = %cleanup.thread, %if.then27.if.end64_crit_edge
  %dr.2 = phi ptr [ %dr.0, %if.then27.if.end64_crit_edge ], [ %call56, %cleanup.thread ]
  %31 = ptrtoint ptr %nb_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nb_index, align 4
  %sub66 = sub i32 %add, %32
  %33 = tail call i32 @llvm.umin.i32(i32 %3, i32 %sub66)
  %notification_buffer74 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 18
  %34 = ptrtoint ptr %notification_buffer74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %notification_buffer74, align 4
  %arrayidx = getelementptr i8, ptr %35, i32 %32
  %36 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %transfer_buffer, align 4
  %38 = call ptr @memcpy(ptr %arrayidx, ptr %37, i32 %33)
  %39 = ptrtoint ptr %nb_index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nb_index, align 4
  %add78 = add i32 %40, %33
  store i32 %add78, ptr %nb_index, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end64, %if.end25.if.end80_crit_edge
  %current_size.0 = phi i32 [ %add78, %if.end64 ], [ %3, %if.end25.if.end80_crit_edge ]
  %dr.3 = phi ptr [ %dr.2, %if.end64 ], [ %dr.0, %if.end25.if.end80_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %current_size.0, i32 %add)
  %cmp81.not = icmp ult i32 %current_size.0, %add
  br i1 %cmp81.not, label %if.end80.exit_crit_edge, label %if.then83

if.end80.exit_crit_edge:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @acm_process_notification(ptr noundef %1, ptr noundef %dr.3)
  %41 = ptrtoint ptr %nb_index to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %nb_index, align 4
  br label %exit

exit:                                             ; preds = %if.then83, %if.end80.exit_crit_edge, %cleanup, %if.then16, %do.body4
  %call86 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #17
  %42 = zext i32 %call86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call86, label %do.end96 [
    i32 0, label %exit.cleanup100_crit_edge
    i32 -1, label %exit.cleanup100_crit_edge165
    i32 -19, label %exit.cleanup100_crit_edge166
  ]

exit.cleanup100_crit_edge166:                     ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup100

exit.cleanup100_crit_edge165:                     ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup100

exit.cleanup100_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup100

do.end96:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #19
  %control97 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %control97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %control97, align 4
  %dev98 = getelementptr inbounds %struct.usb_interface, ptr %44, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef %call86) #20
  br label %cleanup100

cleanup100:                                       ; preds = %do.end96, %exit.cleanup100_crit_edge, %exit.cleanup100_crit_edge165, %exit.cleanup100_crit_edge166, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acm_ctrl_msg(ptr nocapture noundef readonly %acm, i32 noundef %request, i32 noundef %value, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 1
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %acm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acm, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %request to i8
  %conv4 = trunc i32 %value to i16
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceNumber, align 2
  %conv6 = zext i8 %11 to i16
  %conv7 = trunc i32 %len to i16
  %call8 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext %conv, i8 noundef zeroext 33, i16 noundef zeroext %conv4, i16 noundef zeroext %conv6, ptr noundef %buf, i16 noundef zeroext %conv7, i32 noundef 5000) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_ctrl_msg.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_ctrl_msg, %if.then13)) #17
          to label %do.end [label %if.then13], !srcloc !209

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control, align 4
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_ctrl_msg.__UNIQUE_ID_ddebug232, ptr noundef %dev15, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef %request, i32 noundef %value, i32 noundef %len, i32 noundef %call8) #17
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end
  %14 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %control, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %15) #17
  %16 = tail call i32 @llvm.smin.i32(i32 %call8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acm_read_buffers_free(ptr nocapture noundef readonly %acm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buflimit = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 16
  %0 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_buflimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %readsize = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %acm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acm, align 4
  %4 = ptrtoint ptr %readsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %readsize, align 4
  %base = getelementptr %struct.acm, ptr %acm, i32 0, i32 15, i32 %i.011, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %dma = getelementptr %struct.acm, ptr %acm, i32 0, i32 15, i32 %i.011, i32 2
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9) #17
  %inc = add nuw nsw i32 %i.011, 1
  %10 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buflimit, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acm_write_buffers_free(ptr nocapture noundef readonly %acm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wb1 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 12
  %writesize = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %wb.08 = phi ptr [ %wb1, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %acm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acm, align 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %4 = ptrtoint ptr %wb.08 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb.08, align 4
  %dmah = getelementptr inbounds %struct.acm_wb, ptr %wb.08, i32 0, i32 1
  %6 = ptrtoint ptr %dmah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmah, align 4
  tail call void @usb_free_coherent(ptr noundef %1, i32 noundef %3, ptr noundef %5, i32 noundef %7) #17
  %inc = add nuw nsw i32 %i.07, 1
  %incdec.ptr = getelementptr %struct.acm_wb, ptr %wb.08, i32 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_port_dtr_rts(ptr nocapture noundef %port, i32 noundef %raise) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raise)
  %tobool.not = icmp eq i32 %raise, 0
  %. = select i1 %tobool.not, i32 0, i32 3
  %ctrlout = getelementptr i8, ptr %port, i32 1696
  %0 = ptrtoint ptr %ctrlout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %., ptr %ctrlout, align 4
  %quirks.i = getelementptr i8, ptr %port, i32 1984
  %1 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %acm_set_control.exit, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

acm_set_control.exit:                             ; preds = %entry
  %add.ptr = getelementptr i8, ptr %port, i32 -20
  %call.i = tail call fastcc i32 @acm_ctrl_msg(ptr noundef %add.ptr, i32 noundef 34, i32 noundef %., ptr noundef null, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %acm_set_control.exit.if.end11_crit_edge, label %acm_set_control.exit.land.lhs.true_crit_edge

acm_set_control.exit.land.lhs.true_crit_edge:     ; preds = %acm_set_control.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

acm_set_control.exit.if.end11_crit_edge:          ; preds = %acm_set_control.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

land.lhs.true:                                    ; preds = %acm_set_control.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %ctrl_caps = getelementptr i8, ptr %port, i32 1860
  %3 = ptrtoint ptr %ctrl_caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctrl_caps, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end11_crit_edge, label %do.body

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_port_dtr_rts.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_port_dtr_rts, %if.then9)) #17
          to label %if.end11 [label %if.then9], !srcloc !209

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %control = getelementptr i8, ptr %port, i32 -16
  %5 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %control, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_port_dtr_rts.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.42) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %land.lhs.true.if.end11_crit_edge, %acm_set_control.exit.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_port_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -20
  tail call fastcc void @acm_poison_urbs(ptr noundef %add.ptr)
  %write_lock = getelementptr i8, ptr %port, i32 1436
  tail call void @_raw_spin_lock_irq(ptr noundef %write_lock) #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %write_lock) #17
  %control = getelementptr i8, ptr %port, i32 -16
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 4
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %1) #17
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %needs_remote_wakeup, align 8
  %5 = load ptr, ptr %control, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %5) #17
  %delayed = getelementptr i8, ptr %port, i32 1872
  %call14 = tail call ptr @usb_get_from_anchor(ptr noundef %delayed) #17
  %tobool.not15 = icmp eq ptr %call14, null
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call16 = phi ptr [ %call, %if.end.if.end_crit_edge ], [ %call14, %entry.if.end_crit_edge ]
  %context = getelementptr inbounds %struct.urb, ptr %call16, i32 0, i32 27
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %use = getelementptr inbounds %struct.acm_wb, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %use to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %use, align 4
  %9 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %10) #17
  %call = tail call ptr @usb_get_from_anchor(ptr noundef %delayed) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @acm_unpoison_urbs(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_port_activate(ptr noundef %port, ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -20
  %mutex = getelementptr i8, ptr %port, i32 1480
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #17
  %disconnected = getelementptr i8, ptr %port, i32 1572
  %0 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disconnected, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %disconnected23.thread

disconnected23.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %mutex) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %control = getelementptr i8, ptr %port, i32 -16
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.disconnected23_crit_edge

if.end.disconnected23_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %disconnected23

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #17
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %ctrlurb = getelementptr i8, ptr %port, i32 576
  %9 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrlurb, align 4
  %dev6 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %dev6, align 4
  %12 = load ptr, ptr %ctrlurb, align 4
  %call8 = tail call i32 @usb_submit_urb(ptr noundef %12, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %control, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #20
  br label %error_submit_urb

if.end13:                                         ; preds = %if.end4
  tail call void @acm_tty_set_termios(ptr noundef %tty, ptr noundef null)
  %flags14 = getelementptr i8, ptr %port, i32 1576
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags14) #17
  %call15 = tail call fastcc i32 @acm_submit_read_urbs(ptr noundef %add.ptr, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %rx_buflimit = getelementptr i8, ptr %port, i32 1372
  %15 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_buflimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp51 = icmp sgt i32 %16, 0
  br i1 %cmp51, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %read_urbs = getelementptr i8, ptr %port, i32 988
  br label %for.body

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %control, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %18) #17
  tail call void @mutex_unlock(ptr noundef %mutex) #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %read_urbs, i32 0, i32 %i.052
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %20) #17
  %inc = add nuw nsw i32 %i.052, 1
  %21 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_buflimit, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %23 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrlurb, align 4
  tail call void @usb_kill_urb(ptr noundef %24) #17
  br label %error_submit_urb

error_submit_urb:                                 ; preds = %for.end, %do.end
  %retval1.0 = phi i32 [ %call8, %do.end ], [ %call15, %for.end ]
  %25 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %26) #17
  br label %disconnected23

disconnected23:                                   ; preds = %error_submit_urb, %if.end.disconnected23_crit_edge
  %retval1.1 = phi i32 [ %call, %if.end.disconnected23_crit_edge ], [ %retval1.0, %error_submit_urb ]
  tail call void @mutex_unlock(ptr noundef %mutex) #17
  %27 = zext i32 %retval1.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %retval1.1, label %sw.default.i [
    i32 0, label %disconnected23.cleanup_crit_edge
    i32 -12, label %disconnected23.cleanup_crit_edge53
    i32 -19, label %disconnected23.cleanup_crit_edge54
    i32 -95, label %disconnected23.cleanup_crit_edge55
  ]

disconnected23.cleanup_crit_edge55:               ; preds = %disconnected23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

disconnected23.cleanup_crit_edge54:               ; preds = %disconnected23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

disconnected23.cleanup_crit_edge53:               ; preds = %disconnected23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

disconnected23.cleanup_crit_edge:                 ; preds = %disconnected23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.default.i:                                     ; preds = %disconnected23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %disconnected23.cleanup_crit_edge, %disconnected23.cleanup_crit_edge53, %disconnected23.cleanup_crit_edge54, %disconnected23.cleanup_crit_edge55, %if.end18, %disconnected23.thread
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -5, %sw.default.i ], [ %retval1.1, %disconnected23.cleanup_crit_edge ], [ %retval1.1, %disconnected23.cleanup_crit_edge53 ], [ %retval1.1, %disconnected23.cleanup_crit_edge54 ], [ %retval1.1, %disconnected23.cleanup_crit_edge55 ], [ -19, %disconnected23.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_port_destruct(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr i8, ptr %port, i32 1852
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp.not = icmp eq i32 %1, 256
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_lock_nested(ptr noundef nonnull @acm_minors_lock, i32 noundef 0) #17
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @acm_minors, i32 noundef %3) #17
  tail call void @mutex_unlock(ptr noundef nonnull @acm_minors_lock) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %port, i32 -20
  %control = getelementptr i8, ptr %port, i32 -16
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  tail call void @usb_put_intf(ptr noundef %5) #17
  %country_codes = getelementptr i8, ptr %port, i32 588
  %6 = ptrtoint ptr %country_codes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %country_codes, align 4
  tail call void @kfree(ptr noundef %7) #17
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acm_poison_urbs(ptr nocapture noundef readonly %acm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlurb = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 6
  %0 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrlurb, align 4
  tail call void @usb_poison_urb(ptr noundef %1) #17
  %urb = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 0, i32 3
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_poison_urb(ptr noundef %3) #17
  %urb.1 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 1, i32 3
  %4 = ptrtoint ptr %urb.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb.1, align 4
  tail call void @usb_poison_urb(ptr noundef %5) #17
  %urb.2 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 2, i32 3
  %6 = ptrtoint ptr %urb.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb.2, align 4
  tail call void @usb_poison_urb(ptr noundef %7) #17
  %urb.3 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 3, i32 3
  %8 = ptrtoint ptr %urb.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb.3, align 4
  tail call void @usb_poison_urb(ptr noundef %9) #17
  %urb.4 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 4, i32 3
  %10 = ptrtoint ptr %urb.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.4, align 4
  tail call void @usb_poison_urb(ptr noundef %11) #17
  %urb.5 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 5, i32 3
  %12 = ptrtoint ptr %urb.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb.5, align 4
  tail call void @usb_poison_urb(ptr noundef %13) #17
  %urb.6 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 6, i32 3
  %14 = ptrtoint ptr %urb.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb.6, align 4
  tail call void @usb_poison_urb(ptr noundef %15) #17
  %urb.7 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 7, i32 3
  %16 = ptrtoint ptr %urb.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb.7, align 4
  tail call void @usb_poison_urb(ptr noundef %17) #17
  %urb.8 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 8, i32 3
  %18 = ptrtoint ptr %urb.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb.8, align 4
  tail call void @usb_poison_urb(ptr noundef %19) #17
  %urb.9 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 9, i32 3
  %20 = ptrtoint ptr %urb.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urb.9, align 4
  tail call void @usb_poison_urb(ptr noundef %21) #17
  %urb.10 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 10, i32 3
  %22 = ptrtoint ptr %urb.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb.10, align 4
  tail call void @usb_poison_urb(ptr noundef %23) #17
  %urb.11 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 11, i32 3
  %24 = ptrtoint ptr %urb.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb.11, align 4
  tail call void @usb_poison_urb(ptr noundef %25) #17
  %urb.12 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 12, i32 3
  %26 = ptrtoint ptr %urb.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb.12, align 4
  tail call void @usb_poison_urb(ptr noundef %27) #17
  %urb.13 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 13, i32 3
  %28 = ptrtoint ptr %urb.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb.13, align 4
  tail call void @usb_poison_urb(ptr noundef %29) #17
  %urb.14 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 14, i32 3
  %30 = ptrtoint ptr %urb.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb.14, align 4
  tail call void @usb_poison_urb(ptr noundef %31) #17
  %urb.15 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 15, i32 3
  %32 = ptrtoint ptr %urb.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb.15, align 4
  tail call void @usb_poison_urb(ptr noundef %33) #17
  %rx_buflimit = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 16
  %34 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_buflimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp217 = icmp sgt i32 %35, 0
  br i1 %cmp217, label %entry.for.body3_crit_edge, label %entry.for.end7_crit_edge

entry.for.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end7

entry.for.body3_crit_edge:                        ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry.for.body3_crit_edge
  %i.118 = phi i32 [ %inc6, %for.body3.for.body3_crit_edge ], [ 0, %entry.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.acm, ptr %acm, i32 0, i32 14, i32 %i.118
  %36 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx4, align 4
  tail call void @usb_poison_urb(ptr noundef %37) #17
  %inc6 = add nuw nsw i32 %i.118, 1
  %38 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_buflimit, align 4
  %cmp2 = icmp slt i32 %inc6, %39
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.end7_crit_edge

for.body3.for.end7_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end7

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body3

for.end7:                                         ; preds = %for.body3.for.end7_crit_edge, %entry.for.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acm_unpoison_urbs(ptr nocapture noundef readonly %acm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buflimit = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 16
  %0 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_buflimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond1.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %urb = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 0, i32 3
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_unpoison_urb(ptr noundef %3) #17
  %urb.1 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 1, i32 3
  %4 = ptrtoint ptr %urb.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb.1, align 4
  tail call void @usb_unpoison_urb(ptr noundef %5) #17
  %urb.2 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 2, i32 3
  %6 = ptrtoint ptr %urb.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb.2, align 4
  tail call void @usb_unpoison_urb(ptr noundef %7) #17
  %urb.3 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 3, i32 3
  %8 = ptrtoint ptr %urb.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb.3, align 4
  tail call void @usb_unpoison_urb(ptr noundef %9) #17
  %urb.4 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 4, i32 3
  %10 = ptrtoint ptr %urb.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.4, align 4
  tail call void @usb_unpoison_urb(ptr noundef %11) #17
  %urb.5 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 5, i32 3
  %12 = ptrtoint ptr %urb.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb.5, align 4
  tail call void @usb_unpoison_urb(ptr noundef %13) #17
  %urb.6 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 6, i32 3
  %14 = ptrtoint ptr %urb.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb.6, align 4
  tail call void @usb_unpoison_urb(ptr noundef %15) #17
  %urb.7 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 7, i32 3
  %16 = ptrtoint ptr %urb.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb.7, align 4
  tail call void @usb_unpoison_urb(ptr noundef %17) #17
  %urb.8 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 8, i32 3
  %18 = ptrtoint ptr %urb.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb.8, align 4
  tail call void @usb_unpoison_urb(ptr noundef %19) #17
  %urb.9 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 9, i32 3
  %20 = ptrtoint ptr %urb.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urb.9, align 4
  tail call void @usb_unpoison_urb(ptr noundef %21) #17
  %urb.10 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 10, i32 3
  %22 = ptrtoint ptr %urb.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb.10, align 4
  tail call void @usb_unpoison_urb(ptr noundef %23) #17
  %urb.11 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 11, i32 3
  %24 = ptrtoint ptr %urb.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb.11, align 4
  tail call void @usb_unpoison_urb(ptr noundef %25) #17
  %urb.12 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 12, i32 3
  %26 = ptrtoint ptr %urb.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb.12, align 4
  tail call void @usb_unpoison_urb(ptr noundef %27) #17
  %urb.13 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 13, i32 3
  %28 = ptrtoint ptr %urb.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb.13, align 4
  tail call void @usb_unpoison_urb(ptr noundef %29) #17
  %urb.14 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 14, i32 3
  %30 = ptrtoint ptr %urb.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb.14, align 4
  tail call void @usb_unpoison_urb(ptr noundef %31) #17
  %urb.15 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 15, i32 3
  %32 = ptrtoint ptr %urb.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb.15, align 4
  tail call void @usb_unpoison_urb(ptr noundef %33) #17
  %ctrlurb = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 6
  %34 = ptrtoint ptr %ctrlurb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrlurb, align 4
  tail call void @usb_unpoison_urb(ptr noundef %35) #17
  ret void

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.acm, ptr %acm, i32 0, i32 14, i32 %i.017
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_unpoison_urb(ptr noundef %37) #17
  %inc = add nuw nsw i32 %i.017, 1
  %38 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_buflimit, align 4
  %cmp = icmp slt i32 %inc, %39
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unpoison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_tty_set_termios(ptr noundef %tty, ptr noundef readonly %termios_old) #2 align 64 {
entry:
  %newline = alloca %struct.usb_cdc_line_coding, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %newline) #17
  %2 = getelementptr inbounds %struct.usb_cdc_line_coding, ptr %newline, i32 0, i32 1
  %3 = getelementptr inbounds %struct.usb_cdc_line_coding, ptr %newline, i32 0, i32 2
  %4 = getelementptr inbounds %struct.usb_cdc_line_coding, ptr %newline, i32 0, i32 3
  %ctrlout = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrlout, align 4
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #17
  %7 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %8 = ptrtoint ptr %newline to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %newline, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %9 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_cflag, align 4
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 5
  %conv = and i8 %12, 2
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %2, align 4
  %and3 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and6 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, i8 2, i8 1
  %and10 = lshr i32 %10, 29
  %14 = trunc i32 %and10 to i8
  %15 = and i8 %14, 2
  %add = add nuw nsw i8 %cond8, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond13 = phi i8 [ %add, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %cond13, ptr %3, align 1
  %call16 = tail call zeroext i8 @tty_get_char_size(i32 noundef %10) #17
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call16, ptr %4, align 2
  %18 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_cflag, align 4
  %and18 = lshr i32 %19, 11
  %20 = trunc i32 %and18 to i8
  %21 = and i8 %20, 1
  %clocal = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 38
  %22 = ptrtoint ptr %clocal to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %clocal, align 4
  %23 = load i32, ptr %c_cflag, align 4
  %and23 = and i32 %23, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %line = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %line, align 4
  %26 = ptrtoint ptr %newline to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %newline, align 4
  %and28 = and i32 %6, -2
  br label %if.end35

if.else:                                          ; preds = %cond.end
  %tobool29.not = icmp eq ptr %termios_old, null
  br i1 %tobool29.not, label %if.else.if.end35_crit_edge, label %land.lhs.true

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %c_cflag30 = getelementptr inbounds %struct.ktermios, ptr %termios_old, i32 0, i32 2
  %27 = ptrtoint ptr %c_cflag30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c_cflag30, align 4
  %and31 = and i32 %28, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 0
  %or = zext i1 %cmp32 to i32
  %spec.select = or i32 %6, %or
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.else.if.end35_crit_edge, %if.then
  %newctrl.0 = phi i32 [ %and28, %if.then ], [ %6, %if.else.if.end35_crit_edge ], [ %spec.select, %land.lhs.true ]
  %29 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctrlout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %newctrl.0, i32 %30)
  %cmp37.not = icmp eq i32 %newctrl.0, %30
  br i1 %cmp37.not, label %if.end35.if.end42_crit_edge, label %if.then39

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then39:                                        ; preds = %if.end35
  %31 = ptrtoint ptr %ctrlout to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %newctrl.0, ptr %ctrlout, align 4
  %quirks.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 44
  %32 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then39.if.end42_crit_edge

if.then39.if.end42_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  %call.i86 = tail call fastcc i32 @acm_ctrl_msg(ptr noundef %1, i32 noundef 34, i32 noundef %newctrl.0, ptr noundef null, i32 noundef 0) #17
  br label %if.end42

if.end42:                                         ; preds = %if.end.i, %if.then39.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %line43 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 27
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(7) %line43, ptr noundef nonnull dereferenceable(7) %newline, i32 7) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool45.not = icmp eq i32 %bcmp, 0
  br i1 %tobool45.not, label %if.end42.if.end63_crit_edge, label %if.then46

if.end42.if.end63_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then46:                                        ; preds = %if.end42
  %34 = call ptr @memcpy(ptr %line43, ptr %newline, i32 7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_tty_set_termios.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_tty_set_termios, %if.then52)) #17
          to label %do.end [label %if.then52], !srcloc !209

if.then52:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #19
  %control = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %control, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %newline to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %newline, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %conv55 = zext i8 %conv to i32
  %conv57 = zext i8 %cond13 to i32
  %conv59 = zext i8 %call16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_tty_set_termios.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %39, i32 noundef %conv55, i32 noundef %conv57, i32 noundef %conv59) #17
  br label %do.end

do.end:                                           ; preds = %if.then52, %if.then46
  %call62 = tail call fastcc i32 @acm_ctrl_msg(ptr noundef %1, i32 noundef 32, i32 noundef 0, ptr noundef %line43, i32 noundef 7)
  br label %if.end63

if.end63:                                         ; preds = %do.end, %if.end42.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %newline) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acm_submit_read_urbs(ptr noundef %acm, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buflimit = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 16
  %0 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_buflimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %read_urbs_free.i = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %i.016, ptr noundef %read_urbs_free.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %arrayidx.i = getelementptr %struct.acm, ptr %acm, i32 0, i32 14, i32 %i.016
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef %mem_flags) #17
  %4 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call1.i, label %do.end.i [
    i32 0, label %if.end.i.for.inc_crit_edge
    i32 -1, label %if.end.i.acm_submit_read_urb.exit_crit_edge
    i32 -19, label %if.end.i.acm_submit_read_urb.exit_crit_edge43
  ]

if.end.i.acm_submit_read_urb.exit_crit_edge43:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %acm_submit_read_urb.exit

if.end.i.acm_submit_read_urb.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %acm_submit_read_urb.exit

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %data.i = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %i.016, i32 noundef %call1.i) #20
  br label %acm_submit_read_urb.exit

acm_submit_read_urb.exit:                         ; preds = %do.end.i, %if.end.i.acm_submit_read_urb.exit_crit_edge, %if.end.i.acm_submit_read_urb.exit_crit_edge43
  tail call void @_set_bit(i32 noundef %i.016, ptr noundef %read_urbs_free.i) #17
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %7 = ptrtoint ptr %rx_buflimit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_buflimit, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %acm_submit_read_urb.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %acm_submit_read_urb.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmCapabilities_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_caps = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %ctrl_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_caps, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wCountryCodes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %country_codes = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %country_codes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %country_codes, align 4
  %country_code_size = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %country_code_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %country_code_size, align 4
  %6 = call ptr @memcpy(ptr %buf, ptr %3, i32 %5)
  %7 = load i32, ptr %country_code_size, align 4
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iCountryCodeRelDate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %country_rel_date = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %country_rel_date to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %country_rel_date, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acm_process_notification(ptr noundef %acm, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bNotificationType, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %1, label %do.body135 [
    i8 0, label %do.body
    i8 32, label %sw.bb4
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_process_notification.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_process_notification, %if.then)) #17
          to label %sw.epilog [label %if.then], !srcloc !209

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %control = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 1
  %3 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %control, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  %wValue = getelementptr inbounds %struct.usb_cdc_notification, ptr %buf, i32 0, i32 2
  %5 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wValue, align 1
  %conv3 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_process_notification.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef %conv3) #17
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %wLength = getelementptr inbounds %struct.usb_cdc_notification, ptr %buf, i32 0, i32 4
  %7 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wLength, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp.not = icmp eq i16 %8, 512
  br i1 %cmp.not, label %if.end26, label %do.body8

do.body8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_process_notification.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_process_notification, %if.then20)) #17
          to label %sw.epilog [label %if.then20], !srcloc !209

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #19
  %control21 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 1
  %9 = ptrtoint ptr %control21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control21, align 4
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_process_notification.__UNIQUE_ID_ddebug234, ptr noundef %dev22, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64) #17
  br label %sw.epilog

if.end26:                                         ; preds = %sw.bb4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #17
  %conv28 = zext i16 %13 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_process_notification.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_process_notification, %if.then41)) #17
          to label %do.end46 [label %if.then41], !srcloc !209

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %control42 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 1
  %14 = ptrtoint ptr %control42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %control42, align 4
  %dev43 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_process_notification.__UNIQUE_ID_ddebug235, ptr noundef %dev43, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.64, i32 noundef %conv28) #17
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %if.end26
  %clocal = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 38
  %16 = ptrtoint ptr %clocal to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %clocal, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool47.not = icmp eq i8 %17, 0
  br i1 %tobool47.not, label %land.lhs.true, label %do.end46.if.end69_crit_edge

do.end46.if.end69_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

land.lhs.true:                                    ; preds = %do.end46
  %ctrlin = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 29
  %18 = ptrtoint ptr %ctrlin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrlin, align 4
  %neg = and i32 %conv28, 1
  %and = xor i32 %neg, 1
  %and48 = and i32 %and, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true.if.end69_crit_edge, label %do.body51

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

do.body51:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_process_notification.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_process_notification, %if.then63)) #17
          to label %do.end68 [label %if.then63], !srcloc !209

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #19
  %control64 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 1
  %20 = ptrtoint ptr %control64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %control64, align 4
  %dev65 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_process_notification.__UNIQUE_ID_ddebug236, ptr noundef %dev65, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.64) #17
  br label %do.end68

do.end68:                                         ; preds = %if.then63, %do.body51
  %port = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 5
  tail call void @tty_port_tty_hangup(ptr noundef %port, i1 noundef zeroext false) #17
  br label %if.end69

if.end69:                                         ; preds = %do.end68, %land.lhs.true.if.end69_crit_edge, %do.end46.if.end69_crit_edge
  %ctrlin70 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 29
  %22 = ptrtoint ptr %ctrlin70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrlin70, align 4
  %xor = xor i32 %23, %conv28
  %read_lock = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 17
  %call77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %read_lock) #17
  %24 = ptrtoint ptr %ctrlin70 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv28, ptr %ctrlin70, align 4
  %oldcount = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 32
  %iocount = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31
  %25 = call ptr @memcpy(ptr %oldcount, ptr %iocount, i32 44)
  %and83 = and i32 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end69.if.end87_crit_edge, label %if.then85

if.end69.if.end87_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.then85:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  %dsr = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 1
  %26 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dsr, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %dsr, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end69.if.end87_crit_edge
  %and88 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.if.end93_crit_edge, label %if.then90

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  %dcd = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 3
  %28 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dcd, align 4
  %inc92 = add i32 %29, 1
  store i32 %inc92, ptr %dcd, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end87.if.end93_crit_edge
  %and94 = and i32 %conv28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end101_crit_edge, label %if.then96

if.end93.if.end101_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then96:                                        ; preds = %if.end93
  %brk = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 9
  %30 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brk, align 4
  %inc98 = add i32 %31, 1
  store i32 %inc98, ptr %brk, align 4
  %port99 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 5
  %tail.i = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 5, i32 0, i32 8
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then96.if.end12.i_crit_edge

if.then96.if.end12.i_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then96
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %33, i32 0, i32 2
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp3.i = icmp slt i32 %37, %39
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %33, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %37
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %39
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %add.ptr.i.i, align 1
  %41 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %42
  %43 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end101

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then96.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port99, i8 noundef zeroext 0, i8 noundef zeroext 1) #17
  br label %if.end101

if.end101:                                        ; preds = %if.end12.i, %if.end.i, %if.end93.if.end101_crit_edge
  %and102 = and i32 %conv28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end107_crit_edge, label %if.then104

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end107

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  %rng = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 2
  %44 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rng, align 4
  %inc106 = add i32 %45, 1
  store i32 %inc106, ptr %rng, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end101.if.end107_crit_edge
  %and108 = and i32 %conv28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end113_crit_edge, label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #19
  %frame = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 6
  %46 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %frame, align 4
  %inc112 = add i32 %47, 1
  store i32 %inc112, ptr %frame, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %and114 = and i32 %conv28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end119_crit_edge, label %if.then116

if.end113.if.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  %parity = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 7
  %48 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %parity, align 4
  %inc118 = add i32 %49, 1
  store i32 %inc118, ptr %parity, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.end113.if.end119_crit_edge
  %and120 = and i32 %conv28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end119.if.end125_crit_edge, label %if.then122

if.end119.if.end125_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end125

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  %overrun = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 8
  %50 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %overrun, align 4
  %inc124 = add i32 %51, 1
  store i32 %inc124, ptr %overrun, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %if.end119.if.end125_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %read_lock, i32 noundef %call77) #17
  br i1 %tobool95.not, label %if.end125.if.end131_crit_edge, label %if.then129

if.end125.if.end131_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end131

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  %port130 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 5
  tail call void @tty_flip_buffer_push(ptr noundef %port130) #17
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end125.if.end131_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool132.not = icmp eq i32 %xor, 0
  br i1 %tobool132.not, label %if.end131.sw.epilog_crit_edge, label %if.then133

if.end131.sw.epilog_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then133:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #19
  %wioctl = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 33
  tail call void @__wake_up(ptr noundef %wioctl, i32 noundef 3, i32 noundef 0, ptr noundef null) #17
  br label %sw.epilog

do.body135:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_process_notification.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_process_notification, %if.then147)) #17
          to label %sw.epilog [label %if.then147], !srcloc !209

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #19
  %control148 = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 1
  %52 = ptrtoint ptr %control148 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %control148, align 4
  %dev149 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bNotificationType, align 1
  %conv151 = zext i8 %55 to i32
  %wIndex = getelementptr inbounds %struct.usb_cdc_notification, ptr %buf, i32 0, i32 3
  %56 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %wIndex, align 1
  %conv152 = zext i16 %57 to i32
  %wLength153 = getelementptr inbounds %struct.usb_cdc_notification, ptr %buf, i32 0, i32 4
  %58 = ptrtoint ptr %wLength153 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %wLength153, align 1
  %conv154 = zext i16 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_process_notification.__UNIQUE_ID_ddebug237, ptr noundef %dev149, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.64, i32 noundef %conv151, i32 noundef %conv152, i32 noundef %conv154) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then147, %do.body135, %if.then133, %if.end131.sw.epilog_crit_edge, %if.then20, %do.body8, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_tty_install(ptr noundef %driver, ptr noundef %tty) #2 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @acm_minors_lock, i32 noundef 0) #17
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @acm_minors, i32 noundef %1) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.acm_get_by_minor.exit.thread_crit_edge, label %if.then.i

entry.acm_get_by_minor.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %acm_get_by_minor.exit.thread

if.then.i:                                        ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.acm, ptr %call.i, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #17
  %disconnected.i = getelementptr inbounds %struct.acm, ptr %call.i, i32 0, i32 24
  %2 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disconnected.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %mutex.i) #17
  br label %acm_get_by_minor.exit.thread

if.else.i:                                        ; preds = %if.then.i
  %kref.i.i = getelementptr inbounds %struct.acm, ptr %call.i, i32 0, i32 5, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #17
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i.i, i32 noundef 4) #17
  %4 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.else.i
  %6 = phi i32 [ %5, %if.else.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #17
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #17
  %8 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 %9, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %kref.i.i) #17, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !216

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.acm_get_by_minor.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !216

if.end4.i.i.i.i.i.i.acm_get_by_minor.exit_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %acm_get_by_minor.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 0) #17
  br label %acm_get_by_minor.exit

acm_get_by_minor.exit.thread:                     ; preds = %if.then2.i, %entry.acm_get_by_minor.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @acm_minors_lock) #17
  br label %cleanup

acm_get_by_minor.exit:                            ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.acm_get_by_minor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #17
  call void @mutex_unlock(ptr noundef %mutex.i) #17
  call void @mutex_unlock(ptr noundef nonnull @acm_minors_lock) #17
  %call2 = call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %error_init_termios

if.end5:                                          ; preds = %acm_get_by_minor.exit
  %quirks = getelementptr inbounds %struct.acm, ptr %call.i, i32 0, i32 44
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %and = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %16 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_lflag, align 4
  %and8 = and i32 %17, -9
  store i32 %and8, ptr %c_lflag, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data, align 4
  br label %cleanup

error_init_termios:                               ; preds = %acm_get_by_minor.exit
  call void @__sanitizer_cov_trace_pc() #19
  %port = getelementptr inbounds %struct.acm, ptr %call.i, i32 0, i32 5
  call void @tty_port_put(ptr noundef %port) #17
  br label %cleanup

cleanup:                                          ; preds = %error_init_termios, %if.end9, %acm_get_by_minor.exit.thread
  %retval.0 = phi i32 [ %call2, %error_init_termios ], [ 0, %if.end9 ], [ -19, %acm_get_by_minor.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_tty_open(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5
  %call = tail call i32 @tty_port_open(ptr noundef %port, ptr noundef %tty, ptr noundef %filp) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_tty_close(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5
  tail call void @tty_port_close(ptr noundef %port, ptr noundef %tty, ptr noundef %filp) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_tty_cleanup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5
  tail call void @tty_port_put(ptr noundef %port) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_tty_write(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body1:                                         ; preds = %entry
  %write_lock = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #17
  %use.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 0, i32 5
  %2 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.body1.if.end10_crit_edge, label %if.end.i

do.body1.if.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.i:                                         ; preds = %do.body1
  %use.1.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 1, i32 5
  %4 = ptrtoint ptr %use.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use.1.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.1.i = icmp eq i8 %5, 0
  br i1 %tobool.not.1.i, label %if.end.i.if.end10_crit_edge, label %if.end.1.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.1.i:                                       ; preds = %if.end.i
  %use.2.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 2, i32 5
  %6 = ptrtoint ptr %use.2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use.2.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.2.i = icmp eq i8 %7, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end10_crit_edge, label %if.end.2.i

if.end.1.i.if.end10_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.2.i:                                       ; preds = %if.end.1.i
  %use.3.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 3, i32 5
  %8 = ptrtoint ptr %use.3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use.3.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.3.i = icmp eq i8 %9, 0
  br i1 %tobool.not.3.i, label %if.end.2.i.if.end10_crit_edge, label %if.end.3.i

if.end.2.i.if.end10_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.3.i:                                       ; preds = %if.end.2.i
  %use.4.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 4, i32 5
  %10 = ptrtoint ptr %use.4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use.4.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.4.i = icmp eq i8 %11, 0
  br i1 %tobool.not.4.i, label %if.end.3.i.if.end10_crit_edge, label %if.end.4.i

if.end.3.i.if.end10_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.4.i:                                       ; preds = %if.end.3.i
  %use.5.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 5, i32 5
  %12 = ptrtoint ptr %use.5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use.5.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.5.i = icmp eq i8 %13, 0
  br i1 %tobool.not.5.i, label %if.end.4.i.if.end10_crit_edge, label %if.end.5.i

if.end.4.i.if.end10_crit_edge:                    ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.5.i:                                       ; preds = %if.end.4.i
  %use.6.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 6, i32 5
  %14 = ptrtoint ptr %use.6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use.6.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.6.i = icmp eq i8 %15, 0
  br i1 %tobool.not.6.i, label %if.end.5.i.if.end10_crit_edge, label %if.end.6.i

if.end.5.i.if.end10_crit_edge:                    ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.6.i:                                       ; preds = %if.end.5.i
  %use.7.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 7, i32 5
  %16 = ptrtoint ptr %use.7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use.7.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.7.i = icmp eq i8 %17, 0
  br i1 %tobool.not.7.i, label %if.end.6.i.if.end10_crit_edge, label %if.end.7.i

if.end.6.i.if.end10_crit_edge:                    ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.7.i:                                       ; preds = %if.end.6.i
  %use.8.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 8, i32 5
  %18 = ptrtoint ptr %use.8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use.8.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.8.i = icmp eq i8 %19, 0
  br i1 %tobool.not.8.i, label %if.end.7.i.if.end10_crit_edge, label %if.end.8.i

if.end.7.i.if.end10_crit_edge:                    ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.8.i:                                       ; preds = %if.end.7.i
  %use.9.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 9, i32 5
  %20 = ptrtoint ptr %use.9.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use.9.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.9.i = icmp eq i8 %21, 0
  br i1 %tobool.not.9.i, label %if.end.8.i.if.end10_crit_edge, label %if.end.9.i

if.end.8.i.if.end10_crit_edge:                    ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.9.i:                                       ; preds = %if.end.8.i
  %use.10.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 10, i32 5
  %22 = ptrtoint ptr %use.10.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use.10.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.10.i = icmp eq i8 %23, 0
  br i1 %tobool.not.10.i, label %if.end.9.i.if.end10_crit_edge, label %if.end.10.i

if.end.9.i.if.end10_crit_edge:                    ; preds = %if.end.9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.10.i:                                      ; preds = %if.end.9.i
  %use.11.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 11, i32 5
  %24 = ptrtoint ptr %use.11.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use.11.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.11.i = icmp eq i8 %25, 0
  br i1 %tobool.not.11.i, label %if.end.10.i.if.end10_crit_edge, label %if.end.11.i

if.end.10.i.if.end10_crit_edge:                   ; preds = %if.end.10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.11.i:                                      ; preds = %if.end.10.i
  %use.12.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 12, i32 5
  %26 = ptrtoint ptr %use.12.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use.12.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.12.i = icmp eq i8 %27, 0
  br i1 %tobool.not.12.i, label %if.end.11.i.if.end10_crit_edge, label %if.end.12.i

if.end.11.i.if.end10_crit_edge:                   ; preds = %if.end.11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.12.i:                                      ; preds = %if.end.11.i
  %use.13.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 13, i32 5
  %28 = ptrtoint ptr %use.13.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use.13.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.13.i = icmp eq i8 %29, 0
  br i1 %tobool.not.13.i, label %if.end.12.i.if.end10_crit_edge, label %if.end.13.i

if.end.12.i.if.end10_crit_edge:                   ; preds = %if.end.12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.13.i:                                      ; preds = %if.end.12.i
  %use.14.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 14, i32 5
  %30 = ptrtoint ptr %use.14.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %use.14.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.14.i = icmp eq i8 %31, 0
  br i1 %tobool.not.14.i, label %if.end.13.i.if.end10_crit_edge, label %if.end.14.i

if.end.13.i.if.end10_crit_edge:                   ; preds = %if.end.13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end.14.i:                                      ; preds = %if.end.13.i
  %use.15.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 15, i32 5
  %32 = ptrtoint ptr %use.15.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %use.15.i, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.15.i = icmp eq i8 %33, 0
  br i1 %tobool.not.15.i, label %if.end.14.i.if.end10_crit_edge, label %if.end.14.i.cleanup.sink.split_crit_edge

if.end.14.i.cleanup.sink.split_crit_edge:         ; preds = %if.end.14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end.14.i.if.end10_crit_edge:                   ; preds = %if.end.14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end10:                                         ; preds = %if.end.14.i.if.end10_crit_edge, %if.end.13.i.if.end10_crit_edge, %if.end.12.i.if.end10_crit_edge, %if.end.11.i.if.end10_crit_edge, %if.end.10.i.if.end10_crit_edge, %if.end.9.i.if.end10_crit_edge, %if.end.8.i.if.end10_crit_edge, %if.end.7.i.if.end10_crit_edge, %if.end.6.i.if.end10_crit_edge, %if.end.5.i.if.end10_crit_edge, %if.end.4.i.if.end10_crit_edge, %if.end.3.i.if.end10_crit_edge, %if.end.2.i.if.end10_crit_edge, %if.end.1.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %do.body1.if.end10_crit_edge
  %wbn.0.lcssa.i = phi i32 [ 0, %do.body1.if.end10_crit_edge ], [ 1, %if.end.i.if.end10_crit_edge ], [ 2, %if.end.1.i.if.end10_crit_edge ], [ 3, %if.end.2.i.if.end10_crit_edge ], [ 4, %if.end.3.i.if.end10_crit_edge ], [ 5, %if.end.4.i.if.end10_crit_edge ], [ 6, %if.end.5.i.if.end10_crit_edge ], [ 7, %if.end.6.i.if.end10_crit_edge ], [ 8, %if.end.7.i.if.end10_crit_edge ], [ 9, %if.end.8.i.if.end10_crit_edge ], [ 10, %if.end.9.i.if.end10_crit_edge ], [ 11, %if.end.10.i.if.end10_crit_edge ], [ 12, %if.end.11.i.if.end10_crit_edge ], [ 13, %if.end.12.i.if.end10_crit_edge ], [ 14, %if.end.13.i.if.end10_crit_edge ], [ 15, %if.end.14.i.if.end10_crit_edge ]
  %use.lcssa.i = phi ptr [ %use.i, %do.body1.if.end10_crit_edge ], [ %use.1.i, %if.end.i.if.end10_crit_edge ], [ %use.2.i, %if.end.1.i.if.end10_crit_edge ], [ %use.3.i, %if.end.2.i.if.end10_crit_edge ], [ %use.4.i, %if.end.3.i.if.end10_crit_edge ], [ %use.5.i, %if.end.4.i.if.end10_crit_edge ], [ %use.6.i, %if.end.5.i.if.end10_crit_edge ], [ %use.7.i, %if.end.6.i.if.end10_crit_edge ], [ %use.8.i, %if.end.7.i.if.end10_crit_edge ], [ %use.9.i, %if.end.8.i.if.end10_crit_edge ], [ %use.10.i, %if.end.9.i.if.end10_crit_edge ], [ %use.11.i, %if.end.10.i.if.end10_crit_edge ], [ %use.12.i, %if.end.11.i.if.end10_crit_edge ], [ %use.13.i, %if.end.12.i.if.end10_crit_edge ], [ %use.14.i, %if.end.13.i.if.end10_crit_edge ], [ %use.15.i, %if.end.14.i.if.end10_crit_edge ]
  %34 = ptrtoint ptr %use.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %use.lcssa.i, align 4
  %len.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 %wbn.0.lcssa.i, i32 2
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %len.i, align 4
  %arrayidx = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 %wbn.0.lcssa.i
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %tobool12.not = icmp eq ptr %37, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %use = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 %wbn.0.lcssa.i, i32 5
  %38 = ptrtoint ptr %use to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %use, align 4
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end10
  %writesize = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 34
  %39 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %writesize, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 %count)
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %44 = call ptr @memcpy(ptr %43, ptr %buf, i32 %41)
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %41, ptr %len.i, align 4
  %control = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %control, align 4
  %call20 = tail call i32 @usb_autopm_get_interface_async(ptr noundef %47) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %use23 = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 %wbn.0.lcssa.i, i32 5
  %48 = ptrtoint ptr %use23 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %use23, align 4
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end15
  %susp_count = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 40
  %49 = ptrtoint ptr %susp_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %susp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool26.not = icmp eq i32 %50, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %urb = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 %wbn.0.lcssa.i, i32 3
  %51 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %urb, align 4
  %delayed = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 43
  tail call void @usb_anchor_urb(ptr noundef %52, ptr noundef %delayed) #17
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end25
  %transmitting.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 21
  %53 = ptrtoint ptr %transmitting.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transmitting.i, align 4
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %transmitting.i, align 4
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %urb.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 %wbn.0.lcssa.i, i32 3
  %57 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %transfer_buffer.i, align 4
  %dmah.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 %wbn.0.lcssa.i, i32 1
  %60 = ptrtoint ptr %dmah.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dmah.i, align 4
  %62 = load ptr, ptr %urb.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %transfer_dma.i, align 4
  %64 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i, align 4
  %66 = load ptr, ptr %urb.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %65, ptr %transfer_buffer_length.i, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %70 = load ptr, ptr %urb.i, align 4
  %dev4.i = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %dev4.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %dev4.i, align 4
  %72 = load ptr, ptr %urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %72, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i74, label %if.end29.cleanup.sink.split_crit_edge

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.then.i74:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp6.not.i, label %if.then.i74.if.end.i75_crit_edge, label %do.end.i

if.then.i74.if.end.i75_crit_edge:                 ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i75

do.end.i:                                         ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #19
  %data.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 2
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i, align 4
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %74, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %call.i) #20
  br label %if.end.i75

if.end.i75:                                       ; preds = %do.end.i, %if.then.i74.if.end.i75_crit_edge
  %use.i.i = getelementptr %struct.acm, ptr %1, i32 0, i32 12, i32 %wbn.0.lcssa.i, i32 5
  %75 = ptrtoint ptr %use.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %use.i.i, align 4
  %76 = ptrtoint ptr %transmitting.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %transmitting.i, align 4
  %dec.i.i = add i32 %77, -1
  store i32 %dec.i.i, ptr %transmitting.i, align 4
  %78 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %control, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %79) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i75, %if.end29.cleanup.sink.split_crit_edge, %if.then27, %if.then22, %if.then13, %if.end.14.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %if.then13 ], [ %41, %if.then27 ], [ %call20, %if.then22 ], [ 0, %if.end.14.i.cleanup.sink.split_crit_edge ], [ %41, %if.end29.cleanup.sink.split_crit_edge ], [ %call.i, %if.end.i75 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call2) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_tty_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call fastcc i32 @acm_wb_is_avail(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %writesize = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_tty_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %disconnected = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disconnected, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call fastcc i32 @acm_wb_is_avail(ptr noundef %1)
  %sub = sub i32 16, %call
  %writesize = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %mul = mul i32 %sub, %5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_tty_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21596, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21596
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %control = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call fastcc i32 @wait_serial_change(ptr noundef %1, i32 noundef %arg)
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %5) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rv.0 = phi i32 [ %call1, %if.end ], [ -515, %entry.sw.epilog_crit_edge ], [ -5, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_tty_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %flags = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_tty_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %flags = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 25
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !217
  %call = tail call fastcc i32 @acm_submit_read_urbs(ptr noundef %1, i32 noundef 3264)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_tty_hangup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5
  tail call void @tty_port_hangup(ptr noundef %port) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_tty_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %cond = select i1 %tobool.not, i32 0, i32 65535
  %call = tail call fastcc i32 @acm_ctrl_msg(ptr noundef %1, i32 noundef 35, i32 noundef %cond, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_tty_break_ctl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acm_tty_break_ctl, %if.then6)) #17
          to label %if.end7 [label %if.then6], !srcloc !209

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %control = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_tty_break_ctl.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @acm_tty_tiocmget(ptr nocapture noundef readonly %tty) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %ctrlout = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlout, align 4
  %and = shl i32 %3, 1
  %or = and i32 %and, 6
  %ctrlin = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %ctrlin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrlin, align 4
  %and5 = shl i32 %5, 7
  %6 = and i32 %and5, 256
  %and10 = shl i32 %5, 4
  %7 = and i32 %and10, 128
  %and15 = shl i32 %5, 6
  %8 = and i32 %and15, 64
  %or8 = or i32 %or, %6
  %or13 = or i32 %or8, %7
  %or18 = or i32 %or13, %8
  %or19 = or i32 %or18, 32
  ret i32 %or19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_tty_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %ctrlout = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlout, align 4
  %and = lshr i32 %set, 1
  %or = and i32 %and, 3
  %and4 = lshr i32 %clear, 1
  %or10 = and i32 %and4, 3
  %neg = xor i32 %or10, -1
  %and11 = and i32 %3, %neg
  %or12 = or i32 %and11, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or12)
  %cmp = icmp eq i32 %3, %or12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ctrlout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or12, ptr %ctrlout, align 4
  %quirks.i = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call fastcc i32 @acm_ctrl_msg(ptr noundef %1, i32 noundef 34, i32 noundef %or12, ptr noundef null, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.i ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @acm_tty_get_icount(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %icount) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %dsr = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 31, i32 1
  %2 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsr, align 4
  %dsr1 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 1
  %4 = ptrtoint ptr %dsr1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dsr1, align 4
  %rng = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 31, i32 2
  %5 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rng, align 4
  %rng3 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 2
  %7 = ptrtoint ptr %rng3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rng3, align 4
  %dcd = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 31, i32 3
  %8 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcd, align 4
  %dcd5 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 3
  %10 = ptrtoint ptr %dcd5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dcd5, align 4
  %frame = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 31, i32 6
  %11 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame, align 4
  %frame7 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 6
  %13 = ptrtoint ptr %frame7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %frame7, align 4
  %overrun = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 31, i32 8
  %14 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %overrun, align 4
  %overrun9 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 7
  %16 = ptrtoint ptr %overrun9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %overrun9, align 4
  %parity = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 31, i32 7
  %17 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parity, align 4
  %parity11 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 8
  %19 = ptrtoint ptr %parity11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %parity11, align 4
  %brk = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 31, i32 9
  %20 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brk, align 4
  %brk13 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 9
  %22 = ptrtoint ptr %brk13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %brk13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %minor = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %line = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 1
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %line, align 4
  %close_delay = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5, i32 16
  %5 = ptrtoint ptr %close_delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %close_delay, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %6) #17
  %div = udiv i32 %call, 10
  %conv = trunc i32 %div to i16
  %close_delay1 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %7 = ptrtoint ptr %close_delay1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %close_delay1, align 4
  %closing_wait = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5, i32 17
  %8 = ptrtoint ptr %closing_wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %closing_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %9)
  %cmp = icmp eq i32 %9, 65535
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = tail call i32 @jiffies_to_msecs(i32 noundef %9) #17
  %div7 = udiv i32 %call6, 10
  %phi.cast = trunc i32 %div7 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  %closing_wait9 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %10 = ptrtoint ptr %closing_wait9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %cond, ptr %closing_wait9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %close_delay2 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %2 = ptrtoint ptr %close_delay2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %close_delay2, align 4
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #17
  %closing_wait3 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %4 = ptrtoint ptr %closing_wait3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %closing_wait3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %if.else.i40

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.else.i40:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv4 = zext i16 %5 to i32
  %mul8 = mul nuw nsw i32 %conv4, 10
  %call2.i39 = tail call i32 @__msecs_to_jiffies(i32 noundef %mul8) #17
  br label %cond.end

cond.end:                                         ; preds = %if.else.i40, %entry.cond.end_crit_edge
  %cond = phi i32 [ 65535, %entry.cond.end_crit_edge ], [ %call2.i39, %if.else.i40 ]
  %mutex = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #17
  %call10 = tail call zeroext i1 @capable(i32 noundef 21) #17
  %close_delay21 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5, i32 16
  br i1 %call10, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %6 = ptrtoint ptr %close_delay21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %close_delay21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %7)
  %cmp13.not = icmp eq i32 %call2.i, %7
  br i1 %cmp13.not, label %lor.lhs.false, label %if.then.if.then19_crit_edge

if.then.if.then19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then
  %closing_wait16 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5, i32 17
  %8 = ptrtoint ptr %closing_wait16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %closing_wait16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %9)
  %cmp17.not = icmp eq i32 %cond, %9
  br i1 %cmp17.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then.if.then19_crit_edge
  br label %if.end24

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %close_delay21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2.i, ptr %close_delay21, align 4
  %closing_wait23 = getelementptr inbounds %struct.acm, ptr %1, i32 0, i32 5, i32 17
  %11 = ptrtoint ptr %closing_wait23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %closing_wait23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19, %lor.lhs.false.if.end24_crit_edge
  %retval1.0 = phi i32 [ 0, %if.else ], [ -1, %if.then19 ], [ 0, %lor.lhs.false.if.end24_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #17
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acm_wb_is_avail(ptr noundef %acm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %write_lock = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #17
  %use = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 0, i32 5
  %0 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use, align 4, !range !214
  %narrow = sub nuw nsw i8 16, %1
  %spec.select = zext i8 %narrow to i32
  %use.1 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 1, i32 5
  %2 = ptrtoint ptr %use.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use.1, align 4, !range !214
  %sext.1 = sub nsw i8 0, %3
  %dec.1 = sext i8 %sext.1 to i32
  %spec.select.1 = add nsw i32 %spec.select, %dec.1
  %use.2 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 2, i32 5
  %4 = ptrtoint ptr %use.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use.2, align 4, !range !214
  %sext.2 = sub nsw i8 0, %5
  %dec.2 = sext i8 %sext.2 to i32
  %spec.select.2 = add nsw i32 %spec.select.1, %dec.2
  %use.3 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 3, i32 5
  %6 = ptrtoint ptr %use.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use.3, align 4, !range !214
  %sext.3 = sub nsw i8 0, %7
  %dec.3 = sext i8 %sext.3 to i32
  %spec.select.3 = add nsw i32 %spec.select.2, %dec.3
  %use.4 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 4, i32 5
  %8 = ptrtoint ptr %use.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use.4, align 4, !range !214
  %sext.4 = sub nsw i8 0, %9
  %dec.4 = sext i8 %sext.4 to i32
  %spec.select.4 = add nsw i32 %spec.select.3, %dec.4
  %use.5 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 5, i32 5
  %10 = ptrtoint ptr %use.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use.5, align 4, !range !214
  %sext.5 = sub nsw i8 0, %11
  %dec.5 = sext i8 %sext.5 to i32
  %spec.select.5 = add nsw i32 %spec.select.4, %dec.5
  %use.6 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 6, i32 5
  %12 = ptrtoint ptr %use.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use.6, align 4, !range !214
  %sext.6 = sub nsw i8 0, %13
  %dec.6 = sext i8 %sext.6 to i32
  %spec.select.6 = add nsw i32 %spec.select.5, %dec.6
  %use.7 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 7, i32 5
  %14 = ptrtoint ptr %use.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use.7, align 4, !range !214
  %sext.7 = sub nsw i8 0, %15
  %dec.7 = sext i8 %sext.7 to i32
  %spec.select.7 = add nsw i32 %spec.select.6, %dec.7
  %use.8 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 8, i32 5
  %16 = ptrtoint ptr %use.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use.8, align 4, !range !214
  %sext.8 = sub nsw i8 0, %17
  %dec.8 = sext i8 %sext.8 to i32
  %spec.select.8 = add nsw i32 %spec.select.7, %dec.8
  %use.9 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 9, i32 5
  %18 = ptrtoint ptr %use.9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use.9, align 4, !range !214
  %sext.9 = sub nsw i8 0, %19
  %dec.9 = sext i8 %sext.9 to i32
  %spec.select.9 = add nsw i32 %spec.select.8, %dec.9
  %use.10 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 10, i32 5
  %20 = ptrtoint ptr %use.10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use.10, align 4, !range !214
  %sext.10 = sub nsw i8 0, %21
  %dec.10 = sext i8 %sext.10 to i32
  %spec.select.10 = add nsw i32 %spec.select.9, %dec.10
  %use.11 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 11, i32 5
  %22 = ptrtoint ptr %use.11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use.11, align 4, !range !214
  %sext.11 = sub nsw i8 0, %23
  %dec.11 = sext i8 %sext.11 to i32
  %spec.select.11 = add nsw i32 %spec.select.10, %dec.11
  %use.12 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 12, i32 5
  %24 = ptrtoint ptr %use.12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use.12, align 4, !range !214
  %sext.12 = sub nsw i8 0, %25
  %dec.12 = sext i8 %sext.12 to i32
  %spec.select.12 = add nsw i32 %spec.select.11, %dec.12
  %use.13 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 13, i32 5
  %26 = ptrtoint ptr %use.13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use.13, align 4, !range !214
  %sext.13 = sub nsw i8 0, %27
  %dec.13 = sext i8 %sext.13 to i32
  %spec.select.13 = add nsw i32 %spec.select.12, %dec.13
  %use.14 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 14, i32 5
  %28 = ptrtoint ptr %use.14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use.14, align 4, !range !214
  %sext.14 = sub nsw i8 0, %29
  %dec.14 = sext i8 %sext.14 to i32
  %spec.select.14 = add nsw i32 %spec.select.13, %dec.14
  %use.15 = getelementptr %struct.acm, ptr %acm, i32 0, i32 12, i32 15, i32 5
  %30 = ptrtoint ptr %use.15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %use.15, align 4, !range !214
  %sext.15 = sub nsw i8 0, %31
  %dec.15 = sext i8 %sext.15 to i32
  %spec.select.15 = add nsw i32 %spec.select.14, %dec.15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call2) #17
  ret i32 %spec.select.15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_serial_change(ptr noundef %acm, i32 noundef %arg) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #17
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !199) #17
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
  %read_lock = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 17
  %oldcount = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 32
  %old.sroa.4.0.oldcount.sroa_idx = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 32, i32 1
  %old.sroa.5.0.oldcount.sroa_idx = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 32, i32 2
  %old.sroa.6.0.oldcount.sroa_idx = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 32, i32 3
  %old.sroa.7.0.oldcount.sroa_idx = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 32, i32 4
  %iocount = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31
  %new.sroa.5.0.iocount.sroa_idx = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 1
  %new.sroa.6.0.iocount.sroa_idx = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 2
  %new.sroa.7.0.iocount.sroa_idx = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 3
  %new.sroa.8.0.iocount.sroa_idx = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 31, i32 4
  %and = and i32 %arg, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %arg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and12 = and i32 %arg, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %wioctl = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 33
  %disconnected = getelementptr inbounds %struct.acm, ptr %acm, i32 0, i32 24
  br label %do.body

do.body:                                          ; preds = %signal_pending.exit.do.body_crit_edge, %entry
  call void @_raw_spin_lock_irq(ptr noundef %read_lock) #17
  %13 = ptrtoint ptr %old.sroa.4.0.oldcount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %old.sroa.4.0.copyload = load i32, ptr %old.sroa.4.0.oldcount.sroa_idx, align 4
  %14 = ptrtoint ptr %old.sroa.5.0.oldcount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %old.sroa.5.0.copyload = load i32, ptr %old.sroa.5.0.oldcount.sroa_idx, align 4
  %15 = ptrtoint ptr %old.sroa.6.0.oldcount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %old.sroa.6.0.copyload = load i32, ptr %old.sroa.6.0.oldcount.sroa_idx, align 4
  %16 = ptrtoint ptr %iocount to i32
  call void @__asan_load4_noabort(i32 %16)
  %new.sroa.0.0.copyload = load i32, ptr %iocount, align 4
  %17 = ptrtoint ptr %new.sroa.5.0.iocount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %new.sroa.5.0.copyload = load i32, ptr %new.sroa.5.0.iocount.sroa_idx, align 4
  %18 = ptrtoint ptr %new.sroa.6.0.iocount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %new.sroa.6.0.copyload = load i32, ptr %new.sroa.6.0.iocount.sroa_idx, align 4
  %19 = ptrtoint ptr %new.sroa.7.0.iocount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %new.sroa.7.0.copyload = load i32, ptr %new.sroa.7.0.iocount.sroa_idx, align 4
  %20 = ptrtoint ptr %oldcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %new.sroa.0.0.copyload, ptr %oldcount, align 4
  store i32 %new.sroa.5.0.copyload, ptr %old.sroa.4.0.oldcount.sroa_idx, align 4
  store i32 %new.sroa.6.0.copyload, ptr %old.sroa.5.0.oldcount.sroa_idx, align 4
  store i32 %new.sroa.7.0.copyload, ptr %old.sroa.6.0.oldcount.sroa_idx, align 4
  %21 = call ptr @memcpy(ptr %old.sroa.7.0.oldcount.sroa_idx, ptr %new.sroa.8.0.iocount.sroa_idx, i32 28)
  call void @_raw_spin_unlock_irq(ptr noundef %read_lock) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %old.sroa.4.0.copyload, i32 %new.sroa.5.0.copyload)
  %cmp.not = icmp eq i32 %old.sroa.4.0.copyload, %new.sroa.5.0.copyload
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  call void @__sanitizer_cov_trace_cmp4(i32 %old.sroa.6.0.copyload, i32 %new.sroa.7.0.copyload)
  %cmp9.not = icmp eq i32 %old.sroa.6.0.copyload, %new.sroa.7.0.copyload
  %or.cond124 = select i1 %tobool6.not, i1 true, i1 %cmp9.not
  %or.cond131 = select i1 %or.cond, i1 %or.cond124, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %old.sroa.5.0.copyload, i32 %new.sroa.6.0.copyload)
  %cmp16.not = icmp eq i32 %old.sroa.5.0.copyload, %new.sroa.6.0.copyload
  %or.cond125 = select i1 %tobool13.not, i1 true, i1 %cmp16.not
  %or.cond132 = select i1 %or.cond131, i1 %or.cond125, i1 false
  br i1 %or.cond132, label %if.end18, label %do.body.do.end103_crit_edge

do.body.do.end103_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end103

if.end18:                                         ; preds = %do.body
  call void @add_wait_queue(ptr noundef %wioctl, ptr noundef nonnull %wait) #17
  br label %__here

__here:                                           ; preds = %if.end18
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@wait_serial_change, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %25, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !218
  call void @schedule() #17
  call void @remove_wait_queue(ptr noundef %wioctl, ptr noundef nonnull %wait) #17
  %27 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %disconnected, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool85.not = icmp eq i8 %28, 0
  br i1 %tobool85.not, label %if.else91, label %if.then86

if.then86:                                        ; preds = %__here
  br i1 %tobool6.not, label %if.then86.do.cond99.thread_crit_edge, label %if.then86.do.end103_crit_edge

if.then86.do.end103_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end103

if.then86.do.cond99.thread_crit_edge:             ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond99.thread

if.else91:                                        ; preds = %__here
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stack.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.else91.do.cond99.thread_crit_edge, !prof !216

if.else91.do.cond99.thread_crit_edge:             ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond99.thread

signal_pending.exit:                              ; preds = %if.else91
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %32, align 4
  %and1.i.i.i.i.i = and i32 %37, 1
  %tobool95.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool95.not, label %signal_pending.exit.do.body_crit_edge, label %signal_pending.exit.do.cond99.thread_crit_edge

signal_pending.exit.do.cond99.thread_crit_edge:   ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond99.thread

signal_pending.exit.do.body_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.cond99.thread:                                 ; preds = %signal_pending.exit.do.cond99.thread_crit_edge, %if.else91.do.cond99.thread_crit_edge, %if.then86.do.cond99.thread_crit_edge
  %rv.1.ph = phi i32 [ -19, %if.then86.do.cond99.thread_crit_edge ], [ -512, %if.else91.do.cond99.thread_crit_edge ], [ -512, %signal_pending.exit.do.cond99.thread_crit_edge ]
  br label %do.end103

do.end103:                                        ; preds = %do.cond99.thread, %if.then86.do.end103_crit_edge, %do.body.do.end103_crit_edge
  %rv.2 = phi i32 [ 0, %if.then86.do.end103_crit_edge ], [ %rv.1.ph, %do.cond99.thread ], [ 0, %do.body.do.end103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  ret i32 %rv.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind readonly }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !91, !92, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !139, !140, !142, !143, !145, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !181, !182, !184, !186, !188, !189, !190, !191, !193, !195, !197, !198}
!llvm.named.register.sp = !{!199}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_cdc_acm__259_2077_acm_init6, !1, !"__initcall__kmod_cdc_acm__259_2077_acm_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/class/cdc-acm.c", i32 2077, i32 1}
!2 = !{ptr @__exitcall_acm_exit, !3, !"__exitcall_acm_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/class/cdc-acm.c", i32 2078, i32 1}
!4 = !{ptr @__UNIQUE_ID_author260, !5, !"__UNIQUE_ID_author260", i1 false, i1 false}
!5 = !{!"../drivers/usb/class/cdc-acm.c", i32 2080, i32 1}
!6 = !{ptr @__UNIQUE_ID_description261, !7, !"__UNIQUE_ID_description261", i1 false, i1 false}
!7 = !{!"../drivers/usb/class/cdc-acm.c", i32 2081, i32 1}
!8 = !{ptr @__UNIQUE_ID_file262, !9, !"__UNIQUE_ID_file262", i1 false, i1 false}
!9 = !{!"../drivers/usb/class/cdc-acm.c", i32 2082, i32 1}
!10 = !{ptr @__UNIQUE_ID_license263, !9, !"__UNIQUE_ID_license263", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias264, !12, !"__UNIQUE_ID_alias264", i1 false, i1 false}
!12 = !{!"../drivers/usb/class/cdc-acm.c", i32 2083, i32 1}
!13 = !{ptr @acm_tty_driver, !14, !"acm_tty_driver", i1 false, i1 false}
!14 = !{!"../drivers/usb/class/cdc-acm.c", i32 48, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/class/cdc-acm.c", i32 1988, i32 11}
!17 = !{ptr @acm_driver, !18, !"acm_driver", i1 false, i1 false}
!18 = !{!"../drivers/usb/class/cdc-acm.c", i32 1987, i32 26}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/class/cdc-acm.c", i32 1192, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @acm_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @acm_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/class/cdc-acm.c", i32 1200, i32 4}
!29 = !{ptr @acm_probe.__UNIQUE_ID_ddebug249, !28, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/class/cdc-acm.c", i32 1205, i32 4}
!32 = !{ptr @acm_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @acm_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/class/cdc-acm.c", i32 1219, i32 4}
!36 = !{ptr @acm_probe.__UNIQUE_ID_ddebug250, !35, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/class/cdc-acm.c", i32 1224, i32 4}
!39 = !{ptr @acm_probe.__UNIQUE_ID_ddebug251, !38, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/class/cdc-acm.c", i32 1229, i32 4}
!42 = !{ptr @acm_probe.__UNIQUE_ID_ddebug252, !41, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/class/cdc-acm.c", i32 1243, i32 4}
!45 = !{ptr @acm_probe.__UNIQUE_ID_ddebug253, !44, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/class/cdc-acm.c", i32 1251, i32 3}
!48 = !{ptr @acm_probe.__UNIQUE_ID_ddebug254, !47, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/class/cdc-acm.c", i32 1256, i32 3}
!51 = !{ptr @acm_probe.__UNIQUE_ID_ddebug255, !50, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/class/cdc-acm.c", i32 1260, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @acm_probe._entry.16, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @acm_probe._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/class/cdc-acm.c", i32 1265, i32 4}
!59 = !{ptr @acm_probe._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @acm_probe._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/class/cdc-acm.c", i32 1282, i32 4}
!63 = !{ptr @acm_probe.__UNIQUE_ID_ddebug256, !62, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/class/cdc-acm.c", i32 1306, i32 3}
!66 = !{ptr @acm_probe.__UNIQUE_ID_ddebug257, !65, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/class/cdc-acm.c", i32 1311, i32 2}
!69 = !{ptr @acm_probe.__UNIQUE_ID_ddebug258, !68, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!70 = !{ptr @acm_probe.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/usb/class/cdc-acm.c", i32 1345, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @acm_probe.__key.27, !71, !"__key", i1 false, i1 false}
!74 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @acm_probe.__key.29, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/usb/class/cdc-acm.c", i32 1346, i32 2}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @acm_probe.__key.31, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/usb/class/cdc-acm.c", i32 1347, i32 2}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @acm_probe.__key.33, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/usb/class/cdc-acm.c", i32 1348, i32 2}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @acm_probe.__key.35, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/usb/class/cdc-acm.c", i32 1349, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/class/cdc-acm.c", i32 1495, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @acm_probe._entry.37, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @acm_probe._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @acm_port_ops, !93, !"acm_port_ops", i1 false, i1 false}
!93 = !{!"../drivers/usb/class/cdc-acm.c", i32 1090, i32 41}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/class/cdc-acm.c", i32 671, i32 3}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @acm_port_dtr_rts.__UNIQUE_ID_ddebug245, !95, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/class/cdc-acm.c", i32 694, i32 3}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @acm_port_activate._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @acm_port_activate._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/class/cdc-acm.c", i32 1081, i32 3}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @acm_tty_set_termios.__UNIQUE_ID_ddebug248, !104, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/class/cdc-acm.c", i32 450, i32 4}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @acm_submit_read_urb._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @acm_submit_read_urb._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/class/cdc-acm.c", i32 51, i32 8}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @acm_minors_lock, !113, !"acm_minors_lock", i1 false, i1 false}
!116 = !{ptr @init_usb_anchor.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @init_usb_anchor.__key.52, !120, !"__key", i1 false, i1 false}
!120 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!121 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/class/cdc-acm.c", i32 518, i32 3}
!124 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @acm_read_bulk_callback.__UNIQUE_ID_ddebug242, !123, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/class/cdc-acm.c", i32 525, i32 3}
!128 = !{ptr @acm_read_bulk_callback.__UNIQUE_ID_ddebug243, !127, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/class/cdc-acm.c", i32 533, i32 3}
!131 = !{ptr @acm_read_bulk_callback.__UNIQUE_ID_ddebug244, !130, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/class/cdc-acm.c", i32 261, i32 8}
!134 = !{ptr @dev_attr_bmCapabilities, !133, !"dev_attr_bmCapabilities", i1 false, i1 false}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/class/cdc-acm.c", i32 259, i32 22}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/class/cdc-acm.c", i32 273, i32 8}
!139 = !{ptr @dev_attr_wCountryCodes, !138, !"dev_attr_wCountryCodes", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/class/cdc-acm.c", i32 284, i32 8}
!142 = !{ptr @dev_attr_iCountryCodeRelDate, !141, !"dev_attr_iCountryCodeRelDate", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/class/cdc-acm.c", i32 377, i32 3}
!145 = !{ptr @acm_ctrl_irq.__UNIQUE_ID_ddebug238, !144, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!146 = !{ptr @acm_ctrl_irq.__UNIQUE_ID_ddebug239, !147, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!147 = !{!"../drivers/usb/class/cdc-acm.c", i32 382, i32 3}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/class/cdc-acm.c", i32 433, i32 3}
!150 = !{ptr @acm_ctrl_irq._entry, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @acm_ctrl_irq._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/class/cdc-acm.c", i32 299, i32 3}
!154 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @acm_process_notification.__UNIQUE_ID_ddebug233, !153, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/class/cdc-acm.c", i32 305, i32 4}
!158 = !{ptr @acm_process_notification.__UNIQUE_ID_ddebug234, !157, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/class/cdc-acm.c", i32 311, i32 3}
!161 = !{ptr @acm_process_notification.__UNIQUE_ID_ddebug235, !160, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/class/cdc-acm.c", i32 315, i32 4}
!164 = !{ptr @acm_process_notification.__UNIQUE_ID_ddebug236, !163, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/class/cdc-acm.c", i32 352, i32 3}
!167 = !{ptr @acm_process_notification.__UNIQUE_ID_ddebug237, !166, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/class/cdc-acm.c", i32 124, i32 2}
!170 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @acm_ctrl_msg.__UNIQUE_ID_ddebug232, !169, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/class/cdc-acm.c", i32 242, i32 4}
!174 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @acm_start_wb._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @acm_start_wb._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @acm_ids, !178, !"acm_ids", i1 false, i1 false}
!178 = !{!"../drivers/usb/class/cdc-acm.c", i32 1690, i32 35}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/class/cdc-acm.c", i32 50, i32 8}
!181 = !{ptr @acm_minors, !180, !"acm_minors", i1 false, i1 false}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/class/cdc-acm.c", i32 2040, i32 32}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/class/cdc-acm.c", i32 2041, i32 25}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/class/cdc-acm.c", i32 2064, i32 2}
!188 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @acm_init._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @acm_init._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @acm_ops, !192, !"acm_ops", i1 false, i1 false}
!192 = !{!"../drivers/usb/class/cdc-acm.c", i32 2008, i32 36}
!193 = distinct !{null, !194, !"__already_done", i1 false, i1 false}
!194 = !{!"../drivers/usb/class/cdc-acm.c", i32 995, i32 3}
!195 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/class/cdc-acm.c", i32 897, i32 3}
!197 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @acm_tty_break_ctl.__UNIQUE_ID_ddebug246, !196, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!199 = !{!"sp"}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i64 2148746484, i64 2148746489, i64 2148746502, i64 2148746546, i64 2148746580, i64 2148746601}
!210 = !{i64 2154254176}
!211 = !{i64 2154250123}
!212 = !{i64 2154250420}
!213 = !{i32 0, i32 33}
!214 = !{i8 0, i8 2}
!215 = !{i64 748405, i64 748429, i64 748450, i64 748467, i64 748484}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{i64 2154268116}
!218 = !{i64 2154275989}
