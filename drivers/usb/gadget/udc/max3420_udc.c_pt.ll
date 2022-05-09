; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/max3420_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/max3420_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.atomic_t = type { i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
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
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.max3420_udc = type { %struct.usb_gadget, [4 x %struct.max3420_ep], ptr, ptr, i32, i32, i8, i8, %struct.usb_ctrlrequest, %struct.mutex, %struct.max3420_req, ptr, ptr, %struct.spinlock, i8, [64 x i8], i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.max3420_ep = type { %struct.usb_ep, ptr, %struct.list_head, [16 x i8], i32, %struct.spinlock, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.max3420_req = type { %struct.usb_request, %struct.list_head, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }

@__initcall__kmod_max3420_udc__271_1327_max3420_driver_init6 = internal global ptr @max3420_driver_init, section ".initcall6.init", align 4
@max3420_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @max3420_probe, ptr @max3420_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max3420_udc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max3420_driver_exit = internal global ptr @max3420_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description272 = internal constant [55 x i8] c"max3420_udc.description=MAX3420 USB Device-Mode Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [59 x i8] c"max3420_udc.author=Jassi Brar <jaswinder.singh@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [52 x i8] c"max3420_udc.file=drivers/usb/gadget/udc/max3420_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [24 x i8] c"max3420_udc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max3420-udc\00", [20 x i8] zeroinitializer }, align 32
@max3420_udc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max3420-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max3421-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max3420_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UDC needs full duplex to work\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max3420_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/max3420_udc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max3420_probe._entry_ptr = internal global ptr @max3420_probe._entry, section ".printk_index", align 4
@max3420_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to setup SPI bus\0A\00", [39 x i8] zeroinitializer }, align 32
@max3420_probe._entry_ptr.8 = internal global ptr @max3420_probe._entry.6, section ".printk_index", align 4
@max3420_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr null, ptr @max3420_wakeup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max3420_udc_start, ptr @max3420_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max3420-udc\00", [20 x i8] zeroinitializer }, align 32
@max3420_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@max3420_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&udc->spi_bus_mutex\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udc\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max3420\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max3420-thread\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@max3420_eps_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ep->lock\00", [22 x i8] zeroinitializer }, align 32
@max3420_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @max3420_ep_enable, ptr @max3420_ep_disable, ptr null, ptr @max3420_alloc_request, ptr @max3420_free_request, ptr @max3420_ep_queue, ptr @max3420_ep_dequeue, ptr @max3420_ep_set_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ep0_desc = internal constant { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 0, i8 0, i8 0, i8 0, i16 16384, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep1-bulk-out\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep%d-bulk-in\00", [19 x i8] zeroinitializer }, align 32
@max3420_req_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 680, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s done %p, status %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max3420_req_done\00", [47 x i8] zeroinitializer }, align 32
@max3420_req_done._entry_ptr = internal global ptr @max3420_req_done._entry, section ".printk_index", align 4
@__max3420_ep_disable.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -9, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max3420_udc\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__max3420_ep_disable\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Disabled %s\0A\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@max3420_ep_set_halt.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max3420_ep_set_halt\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%sStall %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Un\00", [29 x i8] zeroinitializer }, align 32
@max3420_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 901, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SPI thread exiting\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max3420_thread\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max3420_thread._entry_ptr = internal global ptr @max3420_thread._entry, section ".printk_index", align 4
@max3420_handle_irqs.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 -64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max3420_handle_irqs\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cable plugged in\0A\00", [46 x i8] zeroinitializer }, align 32
@max3420_handle_irqs.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.35, i8 0, i8 -63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cable pulled out\0A\00", [46 x i8] zeroinitializer }, align 32
@max3420_handle_irqs.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.36, i8 0, i8 -61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USB Reset - Start\0A\00", [45 x i8] zeroinitializer }, align 32
@max3420_handle_irqs.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.37, i8 0, i8 -60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB Reset - END\0A\00", [47 x i8] zeroinitializer }, align 32
@max3420_handle_irqs.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.38, i8 0, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB Suspend - Enter\0A\00", [43 x i8] zeroinitializer }, align 32
@max3420_handle_irqs.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.39, i8 0, i8 -56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB Suspend - Exit\0A\00", [44 x i8] zeroinitializer }, align 32
@max3420_handle_irqs.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.40, i8 0, i8 -54, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Asked Host to wakeup\0A\00", [42 x i8] zeroinitializer }, align 32
@max3420_handle_irqs.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.33, ptr @.str.3, ptr @.str.41, i8 0, i8 -53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Osc stabilized, start work\0A\00", [36 x i8] zeroinitializer }, align 32
@max3420_handle_setup.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max3420_handle_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Assigned Address=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@max3420_getstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't respond to getstatus request\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max3420_getstatus\00", [46 x i8] zeroinitializer }, align 32
@max3420_getstatus._entry_ptr = internal global ptr @max3420_getstatus._entry, section ".printk_index", align 4
@max3420_set_clear_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't respond to SET/CLEAR FEATURE\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max3420_set_clear_feature\00", [38 x i8] zeroinitializer }, align 32
@max3420_set_clear_feature._entry_ptr = internal global ptr @max3420_set_clear_feature._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967188]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967188]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"max3420_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1318, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1320, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"max3420_udc_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1311, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1204, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1213, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"max3420_udc_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1142, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 192, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1232, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1233, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1254, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1256, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1260, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1267, i32 44 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1157, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"max3420_ep_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1068, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant [9 x i8] c"ep0_desc\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 195, i32 45 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1181, i32 44 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1186, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 679, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 989, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 923, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 901, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 768, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 774, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 780, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 786, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 795, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 802, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 809, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 815, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 648, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 573, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [40 x i8] c"../drivers/usb/gadget/udc/max3420_udc.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 617, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_max3420_driver_exit, ptr @__initcall__kmod_max3420_udc__271_1327_max3420_driver_init6, ptr @max3420_driver_exit, ptr @max3420_getstatus._entry, ptr @max3420_getstatus._entry_ptr, ptr @max3420_probe._entry, ptr @max3420_probe._entry.6, ptr @max3420_probe._entry_ptr, ptr @max3420_probe._entry_ptr.8, ptr @max3420_req_done._entry, ptr @max3420_req_done._entry_ptr, ptr @max3420_set_clear_feature._entry, ptr @max3420_set_clear_feature._entry_ptr, ptr @max3420_thread._entry, ptr @max3420_thread._entry_ptr, ptr @max3420_driver, ptr @.str, ptr @max3420_udc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @max3420_udc_ops, ptr @driver_name, ptr @max3420_probe.__key, ptr @.str.9, ptr @max3420_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @max3420_eps_init.__key, ptr @.str.16, ptr @max3420_ep_ops, ptr @ep0_desc, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_udc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_eps_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_req_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_getstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3420_set_clear_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max3420_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max3420_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max3420_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_probe(ptr noundef %spi) #2 align 64 {
entry:
  %transfer.i146 = alloca %struct.spi_transfer, align 4
  %msg.i147 = alloca %struct.spi_message, align 4
  %local_buf.i148 = alloca [65 x i8], align 1
  %transfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %txdata.i.i = alloca [2 x i8], align 1
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %local_buf.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end7, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 1888, i32 noundef 3520) #10
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %spi13 = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %spi13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %spi13, align 4
  %remote_wkp = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %remote_wkp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %remote_wkp, align 8
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @max3420_udc_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %max_speed, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %speed, align 8
  %ep = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 1
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ep, ptr %ep0, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @driver_name, ptr %name, align 4
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @max3420_probe.__key, i16 noundef signext 3) #10
  %spi_bus_mutex = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %spi_bus_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @max3420_probe.__key.10) #10
  %ep0req = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 10
  %ep27 = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %ep27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ep, ptr %ep27, align 8
  %ep0buf = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 15
  %15 = ptrtoint ptr %ep0req to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ep0buf, ptr %ep0req, align 8
  %queue = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %queue, ptr %prev.i, align 4
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end12
  %idx.0112.i = phi i32 [ 0, %if.end12 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i
  %lock.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @max3420_eps_init.__key, i16 noundef signext 3) #10
  %queue.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i, i32 2
  %20 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i110.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i110.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queue.i, ptr %prev.i110.i, align 4
  %udc2.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i, i32 1
  %22 = ptrtoint ptr %udc2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %udc2.i, align 4
  %id.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i, i32 8
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %idx.0112.i, ptr %id.i, align 4
  %halted.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i, i32 6
  %24 = ptrtoint ptr %halted.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %halted.i, align 4
  %maxpacket.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i, i32 4
  %25 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %maxpacket.i, align 4
  %name.i = getelementptr %struct.max3420_udc, ptr %call.i, i32 0, i32 1, i32 %idx.0112.i, i32 3
  %name3.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 1
  %26 = ptrtoint ptr %name3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %name.i, ptr %name3.i, align 4
  %ops.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @max3420_ep_ops, ptr %ops.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.i, i32 noundef 64) #10
  %28 = zext i32 %idx.0112.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %idx.0112.i, label %if.else.i [
    i32 0, label %if.then.i
    i32 1, label %if.then29.i
  ]

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 9
  %29 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ep0_desc, ptr %desc.i, align 4
  %maxpacket10.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 7
  %30 = ptrtoint ptr %maxpacket10.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 7)
  %bf.load.i = load i56, ptr %maxpacket10.i, align 2
  %bf.clear.i = and i56 %bf.load.i, 1099511627775
  %bf.set.i = or i56 %bf.clear.i, 70368744177664
  store i56 %bf.set.i, ptr %maxpacket10.i, align 2
  %caps.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 4
  %31 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load12.i = load i8, ptr %caps.i, align 4
  %bf.set24.i = or i8 %bf.load12.i, -116
  store i8 %bf.set24.i, ptr %caps.i, align 4
  %32 = ptrtoint ptr %name.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 1701851136, ptr %name.i, align 1
  br label %cleanup.i

if.then29.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %caps31.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 4
  %33 = ptrtoint ptr %caps31.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load32.i = load i8, ptr %caps31.i, align 4
  %bf.clear38.i = and i8 %bf.load32.i, -13
  %bf.set39.i = or i8 %bf.clear38.i, 4
  store i8 %bf.set39.i, ptr %caps31.i, align 4
  %34 = call ptr @memcpy(ptr %name.i, ptr @.str.18, i32 13)
  br label %if.end56.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %caps44.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 4
  %35 = ptrtoint ptr %caps44.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load45.i = load i8, ptr %caps44.i, align 4
  %bf.set47.i = and i8 %bf.load45.i, -13
  %bf.clear51.i = or i8 %bf.set47.i, 8
  store i8 %bf.clear51.i, ptr %caps44.i, align 4
  %call55.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %idx.0112.i) #10
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i, %if.then29.i
  %caps58.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 4
  %36 = ptrtoint ptr %caps58.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load59.i = load i8, ptr %caps58.i, align 4
  %bf.clear70.i = and i8 %bf.load59.i, -113
  %bf.set71.i = or i8 %bf.clear70.i, 32
  store i8 %bf.set71.i, ptr %caps58.i, align 4
  %ep_list73.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 3
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list73.i, ptr noundef %38, ptr noundef %ep_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end56.i.cleanup.i_crit_edge

if.end56.i.cleanup.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ep_list73.i, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %ep_list73.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ep_list.i, ptr %ep_list73.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %ep_list73.i, ptr %38, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end56.i.cleanup.i_crit_edge, %if.then.i
  %inc.i = add nuw nsw i32 %idx.0112.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %max3420_eps_init.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

max3420_eps_init.exit:                            ; preds = %cleanup.i
  %43 = ptrtoint ptr %spi13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spi13, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %local_buf.i) #10
  %45 = getelementptr inbounds i8, ptr %local_buf.i, i32 1
  %46 = call ptr @memset(ptr %45, i32 0, i32 64)
  %47 = getelementptr inbounds i8, ptr %transfer.i, i32 12
  %48 = call ptr @memset(ptr %47, i32 0, i32 84)
  %49 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %50 = call ptr @memset(ptr %49, i32 0, i32 40)
  %51 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %53 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %55 = ptrtoint ptr %local_buf.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 88, ptr %local_buf.i, align 1
  %56 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %local_buf.i, ptr %transfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 1
  %57 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %local_buf.i, ptr %rx_buf.i, align 4
  %len20.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %58 = ptrtoint ptr %len20.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 9, ptr %len20.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %max3420_eps_init.exit.spi_rd_buf.exit_crit_edge

max3420_eps_init.exit.spi_rd_buf.exit_crit_edge:  ; preds = %max3420_eps_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd_buf.exit

if.end.i.i.i.i:                                   ; preds = %max3420_eps_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %60 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %62 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_rd_buf.exit

spi_rd_buf.exit:                                  ; preds = %if.end.i.i.i.i, %max3420_eps_init.exit.spi_rd_buf.exit_crit_edge
  %call.i144 = call i32 @spi_sync(ptr noundef %44, ptr noundef nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %local_buf.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  %63 = ptrtoint ptr %spi13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %spi13, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i) #10
  %65 = getelementptr inbounds i8, ptr %transfer.i.i, i32 4
  %66 = call ptr @memset(ptr %65, i32 0, i32 92)
  %67 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %68 = call ptr @memset(ptr %67, i32 0, i32 40)
  %69 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %71 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %72 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %73 = getelementptr inbounds [2 x i8], ptr %txdata.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %txdata.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -118, ptr %txdata.i.i, align 1
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 16, ptr %73, align 1
  %76 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %txdata.i.i, ptr %transfer.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %spi_rd_buf.exit.spi_wr8.exit_crit_edge

spi_rd_buf.exit.spi_wr8.exit_crit_edge:           ; preds = %spi_rd_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i.i:                                 ; preds = %spi_rd_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %79 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %81 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i.i, %spi_rd_buf.exit.spi_wr8.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %64, ptr noundef nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #10
  %call33 = call i32 @usb_add_gadget_udc(ptr noundef %spi, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %spi_wr8.exit.cleanup_crit_edge

spi_wr8.exit.cleanup_crit_edge:                   ; preds = %spi_wr8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %spi_wr8.exit
  %dev38 = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 11
  %dev39 = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 12
  %82 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %dev38, ptr %dev39, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %83 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %84 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node, align 8
  %call41 = call i32 @of_irq_get_byname(ptr noundef %85, ptr noundef nonnull @.str.12) #10
  %call.i145 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %call41, ptr noundef nonnull @max3420_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp = icmp slt i32 %call.i145, 0
  br i1 %cmp, label %if.end36.del_gadget_crit_edge, label %if.end46

if.end36.del_gadget_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %del_gadget

if.end46:                                         ; preds = %if.end36
  %call47 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @max3420_thread, ptr noundef nonnull %call.i, i32 noundef -1, ptr noundef nonnull @.str.14) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 3
  %86 = ptrtoint ptr %thread_task to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call47, ptr %thread_task, align 4
  %cmp.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %call47 to i32
  br label %del_gadget

if.end53:                                         ; preds = %if.end46
  %88 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %of_node, align 8
  %call56 = call i32 @of_irq_get_byname(ptr noundef %89, ptr noundef nonnull @.str.15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 1
  %is_selfpowered = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 5
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %is_selfpowered, align 4
  %vbus_active = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 6
  %91 = ptrtoint ptr %vbus_active to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %vbus_active, align 8
  %todo = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 16
  %92 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %todo, align 4
  %or = or i32 %93, 96
  store i32 %or, ptr %todo, align 4
  call void @usb_udc_vbus_handler(ptr noundef nonnull %call.i, i1 noundef zeroext true) #10
  call void @usb_gadget_set_state(ptr noundef nonnull %call.i, i32 noundef 2) #10
  %call64 = call fastcc i32 @max3420_start(ptr noundef nonnull %call.i)
  br label %cleanup

if.else:                                          ; preds = %if.end53
  %94 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %is_selfpowered, align 4
  %95 = ptrtoint ptr %spi13 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %spi13, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i146) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i147) #10
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %local_buf.i148) #10
  %97 = getelementptr inbounds i8, ptr %local_buf.i148, i32 1
  %98 = call ptr @memset(ptr %97, i32 0, i32 64)
  %99 = getelementptr inbounds i8, ptr %transfer.i146, i32 12
  %100 = call ptr @memset(ptr %99, i32 0, i32 84)
  %101 = getelementptr inbounds i8, ptr %msg.i147, i32 8
  %102 = call ptr @memset(ptr %101, i32 0, i32 40)
  %103 = ptrtoint ptr %msg.i147 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %msg.i147, ptr %msg.i147, align 4
  %prev.i.i.i.i150 = getelementptr inbounds %struct.list_head, ptr %msg.i147, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %msg.i147, ptr %prev.i.i.i.i150, align 4
  %resources.i.i.i151 = getelementptr inbounds %struct.spi_message, ptr %msg.i147, i32 0, i32 10
  %105 = ptrtoint ptr %resources.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %resources.i.i.i151, ptr %resources.i.i.i151, align 4
  %prev.i2.i.i.i152 = getelementptr inbounds %struct.spi_message, ptr %msg.i147, i32 0, i32 10, i32 1
  %106 = ptrtoint ptr %prev.i2.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %resources.i.i.i151, ptr %prev.i2.i.i.i152, align 4
  %107 = ptrtoint ptr %local_buf.i148 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 88, ptr %local_buf.i148, align 1
  %108 = ptrtoint ptr %transfer.i146 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %local_buf.i148, ptr %transfer.i146, align 4
  %rx_buf.i153 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i146, i32 0, i32 1
  %109 = ptrtoint ptr %rx_buf.i153 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %local_buf.i148, ptr %rx_buf.i153, align 4
  %len20.i154 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i146, i32 0, i32 2
  %110 = ptrtoint ptr %len20.i154 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 9, ptr %len20.i154, align 4
  %transfer_list.i.i155 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i146, i32 0, i32 18
  %call.i.i.i.i156 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i155, ptr noundef nonnull %msg.i147, ptr noundef nonnull %msg.i147) #10
  br i1 %call.i.i.i.i156, label %if.end.i.i.i.i158, label %if.else.spi_rd_buf.exit161_crit_edge

if.else.spi_rd_buf.exit161_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd_buf.exit161

if.end.i.i.i.i158:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %prev.i.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %transfer_list.i.i155, ptr %prev.i.i.i.i150, align 4
  %112 = ptrtoint ptr %transfer_list.i.i155 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %msg.i147, ptr %transfer_list.i.i155, align 4
  %prev3.i.i.i.i157 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i146, i32 0, i32 18, i32 1
  %113 = ptrtoint ptr %prev3.i.i.i.i157 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %msg.i147, ptr %prev3.i.i.i.i157, align 4
  %114 = ptrtoint ptr %msg.i147 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %transfer_list.i.i155, ptr %msg.i147, align 4
  br label %spi_rd_buf.exit161

spi_rd_buf.exit161:                               ; preds = %if.end.i.i.i.i158, %if.else.spi_rd_buf.exit161_crit_edge
  %call.i159 = call i32 @spi_sync(ptr noundef %96, ptr noundef nonnull %msg.i147) #10
  %reg.sroa.11.0.arrayidx21.i160.sroa_idx = getelementptr inbounds [65 x i8], ptr %local_buf.i148, i32 0, i32 8
  %115 = ptrtoint ptr %reg.sroa.11.0.arrayidx21.i160.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %115)
  %reg.sroa.11.0.copyload170 = load i8, ptr %reg.sroa.11.0.arrayidx21.i160.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %local_buf.i148) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i147) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i146) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %reg.sroa.11.0.copyload170)
  %cmp69.not = icmp eq i8 %reg.sroa.11.0.copyload170, -1
  br i1 %cmp69.not, label %spi_rd_buf.exit161.if.end73_crit_edge, label %if.then71

spi_rd_buf.exit161.if.end73_crit_edge:            ; preds = %spi_rd_buf.exit161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then71:                                        ; preds = %spi_rd_buf.exit161
  call void @__sanitizer_cov_trace_pc() #12
  %vbus_active72 = getelementptr inbounds %struct.max3420_udc, ptr %call.i, i32 0, i32 6
  %116 = ptrtoint ptr %vbus_active72 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %vbus_active72, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %spi_rd_buf.exit161.if.end73_crit_edge
  %call.i162 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %call56, ptr noundef nonnull @max3420_vbus_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %cmp76 = icmp slt i32 %call.i162, 0
  br i1 %cmp76, label %if.end73.del_gadget_crit_edge, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end73.del_gadget_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %del_gadget

del_gadget:                                       ; preds = %if.end73.del_gadget_crit_edge, %if.then50, %if.end36.del_gadget_crit_edge
  %err.0 = phi i32 [ %call.i145, %if.end36.del_gadget_crit_edge ], [ %87, %if.then50 ], [ %call.i162, %if.end73.del_gadget_crit_edge ]
  call void @usb_del_gadget_udc(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %del_gadget, %if.end73.cleanup_crit_edge, %if.then59, %spi_wr8.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -14, %do.end5 ], [ %err.0, %del_gadget ], [ -12, %if.end7.cleanup_crit_edge ], [ %call33, %spi_wr8.exit.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ 0, %if.then59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_del_gadget_udc(ptr noundef %1) #10
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thread_task, align 4
  %call6 = tail call i32 @kthread_stop(ptr noundef %3) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_wr8(ptr nocapture noundef readonly %udc, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %txdata.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %0 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i) #10
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
  %10 = getelementptr inbounds [2 x i8], ptr %txdata.i, i32 0, i32 1
  %shl.i = shl i8 %reg, 3
  %or17.i = or i8 %shl.i, 2
  %11 = ptrtoint ptr %txdata.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or17.i, ptr %txdata.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %val, ptr %10, align 1
  %13 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txdata.i, ptr %transfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_wr8_ack.exit_crit_edge

entry.spi_wr8_ack.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8_ack.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_wr8_ack.exit

spi_wr8_ack.exit:                                 ; preds = %if.end.i.i.i.i, %entry.spi_wr8_ack.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %todo = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 16
  %2 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %todo, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq8 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq8, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #10
  %6 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %todo, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %todo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 3
  %8 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread_task, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @wake_up_process(ptr noundef nonnull %9) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_thread(ptr noundef %dev_id) #2 align 64 {
entry:
  %transfer.i.i90.i = alloca %struct.spi_transfer, align 4
  %msg.i.i91.i = alloca %struct.spi_message, align 4
  %txdata.i.i92.i = alloca [2 x i8], align 1
  %transfer.i.i77.i = alloca %struct.spi_transfer, align 4
  %msg.i.i78.i = alloca %struct.spi_message, align 4
  %txdata.i.i79.i = alloca [2 x i8], align 1
  %transfer.i.i61.i218 = alloca %struct.spi_transfer, align 4
  %msg.i.i62.i219 = alloca %struct.spi_message, align 4
  %txdata.i.i63.i220 = alloca [2 x i8], align 1
  %rxdata.i.i64.i = alloca [2 x i8], align 1
  %transfer.i.i.i221 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i222 = alloca %struct.spi_message, align 4
  %txdata.i.i.i223 = alloca [2 x i8], align 1
  %rxdata.i.i.i224 = alloca [2 x i8], align 1
  %transfer.i.i61.i = alloca %struct.spi_transfer, align 4
  %msg.i.i62.i = alloca %struct.spi_message, align 4
  %txdata.i.i63.i = alloca [2 x i8], align 1
  %transfer.i.i45.i = alloca %struct.spi_transfer, align 4
  %msg.i.i46.i = alloca %struct.spi_message, align 4
  %txdata.i.i47.i = alloca [2 x i8], align 1
  %rxdata.i.i48.i = alloca [2 x i8], align 1
  %transfer.i.i32.i = alloca %struct.spi_transfer, align 4
  %msg.i.i33.i = alloca %struct.spi_message, align 4
  %txdata.i.i34.i = alloca [2 x i8], align 1
  %transfer.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %txdata.i.i.i = alloca [2 x i8], align 1
  %rxdata.i.i.i = alloca [2 x i8], align 1
  %kt = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %call252 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call252, label %entry.__here163_crit_edge, label %while.body.lr.ph

entry.__here163_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here163

while.body.lr.ph:                                 ; preds = %entry
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 13
  %todo = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 16
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %spi_bus_mutex = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 9
  %vbus_active = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 6
  %softconnect = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 7
  %suspended.i = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 14
  %2 = getelementptr inbounds [2 x i8], ptr %txdata.i.i.i, i32 0, i32 1
  %3 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i.i, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %transfer.i.i.i, i32 12
  %5 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %rx_buf.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 1
  %len.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 2
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18, i32 1
  %6 = getelementptr inbounds i8, ptr %transfer.i.i32.i, i32 4
  %7 = getelementptr inbounds i8, ptr %msg.i.i33.i, i32 8
  %prev.i.i.i.i.i36.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i33.i, i32 0, i32 1
  %resources.i.i.i.i37.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i33.i, i32 0, i32 10
  %prev.i2.i.i.i.i38.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i33.i, i32 0, i32 10, i32 1
  %8 = getelementptr inbounds [2 x i8], ptr %txdata.i.i34.i, i32 0, i32 1
  %len.i.i39.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i32.i, i32 0, i32 2
  %transfer_list.i.i.i40.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i32.i, i32 0, i32 18
  %prev3.i.i.i.i.i42.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i32.i, i32 0, i32 18, i32 1
  %9 = getelementptr inbounds [2 x i8], ptr %txdata.i.i47.i, i32 0, i32 1
  %10 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i48.i, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %transfer.i.i45.i, i32 12
  %12 = getelementptr inbounds i8, ptr %msg.i.i46.i, i32 8
  %prev.i.i.i.i.i50.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i46.i, i32 0, i32 1
  %resources.i.i.i.i51.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i46.i, i32 0, i32 10
  %prev.i2.i.i.i.i52.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i46.i, i32 0, i32 10, i32 1
  %rx_buf.i.i53.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i45.i, i32 0, i32 1
  %len.i.i54.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i45.i, i32 0, i32 2
  %transfer_list.i.i.i55.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i45.i, i32 0, i32 18
  %prev3.i.i.i.i.i57.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i45.i, i32 0, i32 18, i32 1
  %13 = getelementptr inbounds i8, ptr %transfer.i.i61.i, i32 4
  %14 = getelementptr inbounds i8, ptr %msg.i.i62.i, i32 8
  %prev.i.i.i.i.i65.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i62.i, i32 0, i32 1
  %resources.i.i.i.i66.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i62.i, i32 0, i32 10
  %prev.i2.i.i.i.i67.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i62.i, i32 0, i32 10, i32 1
  %15 = getelementptr inbounds [2 x i8], ptr %txdata.i.i63.i, i32 0, i32 1
  %len.i.i68.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i61.i, i32 0, i32 2
  %transfer_list.i.i.i69.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i61.i, i32 0, i32 18
  %prev3.i.i.i.i.i71.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i61.i, i32 0, i32 18, i32 1
  %16 = getelementptr inbounds [2 x i8], ptr %txdata.i.i.i223, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i.i224, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %transfer.i.i.i221, i32 12
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i222, i32 8
  %prev.i.i.i.i.i.i230 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i222, i32 0, i32 1
  %resources.i.i.i.i.i231 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i222, i32 0, i32 10
  %prev.i2.i.i.i.i.i232 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i222, i32 0, i32 10, i32 1
  %rx_buf.i.i.i233 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i221, i32 0, i32 1
  %len.i.i.i234 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i221, i32 0, i32 2
  %transfer_list.i.i.i.i235 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i221, i32 0, i32 18
  %prev3.i.i.i.i.i.i238 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i221, i32 0, i32 18, i32 1
  %20 = getelementptr inbounds [2 x i8], ptr %txdata.i.i63.i220, i32 0, i32 1
  %21 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i64.i, i32 0, i32 1
  %22 = getelementptr inbounds i8, ptr %transfer.i.i61.i218, i32 12
  %23 = getelementptr inbounds i8, ptr %msg.i.i62.i219, i32 8
  %prev.i.i.i.i.i66.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i62.i219, i32 0, i32 1
  %resources.i.i.i.i67.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i62.i219, i32 0, i32 10
  %prev.i2.i.i.i.i68.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i62.i219, i32 0, i32 10, i32 1
  %rx_buf.i.i69.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i61.i218, i32 0, i32 1
  %len.i.i70.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i61.i218, i32 0, i32 2
  %transfer_list.i.i.i71.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i61.i218, i32 0, i32 18
  %prev3.i.i.i.i.i73.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i61.i218, i32 0, i32 18, i32 1
  %24 = getelementptr inbounds i8, ptr %transfer.i.i77.i, i32 4
  %25 = getelementptr inbounds i8, ptr %msg.i.i78.i, i32 8
  %prev.i.i.i.i.i81.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i78.i, i32 0, i32 1
  %resources.i.i.i.i82.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i78.i, i32 0, i32 10
  %prev.i2.i.i.i.i83.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i78.i, i32 0, i32 10, i32 1
  %26 = getelementptr inbounds [2 x i8], ptr %txdata.i.i79.i, i32 0, i32 1
  %len.i.i84.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i77.i, i32 0, i32 2
  %transfer_list.i.i.i85.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i77.i, i32 0, i32 18
  %prev3.i.i.i.i.i87.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i77.i, i32 0, i32 18, i32 1
  %27 = getelementptr inbounds i8, ptr %transfer.i.i90.i, i32 4
  %28 = getelementptr inbounds i8, ptr %msg.i.i91.i, i32 8
  %prev.i.i.i.i.i94.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i91.i, i32 0, i32 1
  %resources.i.i.i.i95.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i91.i, i32 0, i32 10
  %prev.i2.i.i.i.i96.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i91.i, i32 0, i32 10, i32 1
  %29 = getelementptr inbounds [2 x i8], ptr %txdata.i.i92.i, i32 0, i32 1
  %len.i.i97.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i90.i, i32 0, i32 2
  %transfer_list.i.i.i98.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i90.i, i32 0, i32 18
  %prev3.i.i.i.i.i100.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i90.i, i32 0, i32 18, i32 1
  br label %while.body

while.body:                                       ; preds = %loop.while.body_crit_edge, %while.body.lr.ph
  %loop_again.0253 = phi i32 [ 1, %while.body.lr.ph ], [ %loop_again.4, %loop.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loop_again.0253)
  %tobool.not = icmp eq i32 %loop_again.0253, 0
  br i1 %tobool.not, label %if.then, label %while.body.if.end82_crit_edge

while.body.if.end82_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kt) #10
  %30 = ptrtoint ptr %kt to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 250000000, ptr %kt, align 8
  br label %__here

__here:                                           ; preds = %if.then
  %31 = call i32 @llvm.read_register.i32(metadata !124) #10
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@max3420_thread, %__here) to i32), ptr %task_state_change, align 4
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %36, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  %call70 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %38 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %todo, align 4
  %and = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %__here.if.end79_crit_edge, label %if.then76

__here.if.end79_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then76:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %41) #10
  %42 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %todo, align 4
  %and78 = and i32 %43, -2
  store i32 %and78, ptr %todo, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %__here.if.end79_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call70) #10
  %call81 = call i32 @schedule_hrtimeout(ptr noundef nonnull %kt, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kt) #10
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %while.body.if.end82_crit_edge
  call void @mutex_lock_nested(ptr noundef %spi_bus_mutex, i32 noundef 0) #10
  %44 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vbus_active, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool83.not = icmp eq i8 %45, 0
  br i1 %tobool83.not, label %if.end82.loop_crit_edge, label %lor.lhs.false

if.end82.loop_crit_edge:                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %loop

lor.lhs.false:                                    ; preds = %if.end82
  %46 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %softconnect, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool84.not = icmp eq i8 %47, 0
  br i1 %tobool84.not, label %lor.lhs.false.loop_crit_edge, label %if.end86

lor.lhs.false.loop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %loop

if.end86:                                         ; preds = %lor.lhs.false
  %call87 = call fastcc i32 @max3420_start(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.loop_crit_edge

if.end86.loop_crit_edge:                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %loop

if.end90:                                         ; preds = %if.end86
  %call91 = call fastcc i32 @max3420_handle_irqs(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.loop_crit_edge

if.end90.loop_crit_edge:                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %loop

if.end94:                                         ; preds = %if.end90
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %48 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %todo, align 4
  %and.i217 = and i32 %49, 4
  %and6.i = and i32 %49, -5
  store i32 %and6.i, ptr %todo, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool.not.i = icmp eq i32 %and.i217, 0
  br i1 %tobool.not.i, label %if.end94.if.end98_crit_edge, label %lor.lhs.false.i

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

lor.lhs.false.i:                                  ; preds = %if.end94
  %50 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %suspended.i, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool8.not.i = icmp eq i8 %51, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.if.end98_crit_edge, label %if.end.i

lor.lhs.false.i.if.end98_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end.i:                                         ; preds = %lor.lhs.false.i
  %52 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i.i) #10
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %2, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i.i) #10
  %55 = ptrtoint ptr %rxdata.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %rxdata.i.i.i, align 1, !annotation !136
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %3, align 1, !annotation !136
  %57 = call ptr @memset(ptr %4, i32 0, i32 84)
  %58 = call ptr @memset(ptr %5, i32 0, i32 40)
  %59 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %txdata.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 120, ptr %txdata.i.i.i, align 1
  %64 = ptrtoint ptr %transfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %txdata.i.i.i, ptr %transfer.i.i.i, align 4
  %65 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %rxdata.i.i.i, ptr %rx_buf.i.i.i, align 4
  %66 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %len.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #10
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.spi_rd8.exit.i_crit_edge

if.end.i.spi_rd8.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %68 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %69 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %70 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_rd8.exit.i

spi_rd8.exit.i:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.i.spi_rd8.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %53, ptr noundef nonnull %msg.i.i.i) #10
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i.i) #10
  %73 = or i8 %72, 4
  %74 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %spi1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i32.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i33.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i34.i) #10
  %76 = call ptr @memset(ptr %6, i32 0, i32 92)
  %77 = call ptr @memset(ptr %7, i32 0, i32 40)
  %78 = ptrtoint ptr %msg.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %msg.i.i33.i, ptr %msg.i.i33.i, align 4
  %79 = ptrtoint ptr %prev.i.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i33.i, ptr %prev.i.i.i.i.i36.i, align 4
  %80 = ptrtoint ptr %resources.i.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %resources.i.i.i.i37.i, ptr %resources.i.i.i.i37.i, align 4
  %81 = ptrtoint ptr %prev.i2.i.i.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %resources.i.i.i.i37.i, ptr %prev.i2.i.i.i.i38.i, align 4
  %82 = ptrtoint ptr %txdata.i.i34.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 122, ptr %txdata.i.i34.i, align 1
  %83 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %73, ptr %8, align 1
  %84 = ptrtoint ptr %transfer.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %txdata.i.i34.i, ptr %transfer.i.i32.i, align 4
  %85 = ptrtoint ptr %len.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %len.i.i39.i, align 4
  %call.i.i.i.i.i41.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i40.i, ptr noundef nonnull %msg.i.i33.i, ptr noundef nonnull %msg.i.i33.i) #10
  br i1 %call.i.i.i.i.i41.i, label %if.end.i.i.i.i.i43.i, label %spi_rd8.exit.i.spi_wr8.exit.i_crit_edge

spi_rd8.exit.i.spi_wr8.exit.i_crit_edge:          ; preds = %spi_rd8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i

if.end.i.i.i.i.i43.i:                             ; preds = %spi_rd8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %prev.i.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %transfer_list.i.i.i40.i, ptr %prev.i.i.i.i.i36.i, align 4
  %87 = ptrtoint ptr %transfer_list.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %msg.i.i33.i, ptr %transfer_list.i.i.i40.i, align 4
  %88 = ptrtoint ptr %prev3.i.i.i.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %msg.i.i33.i, ptr %prev3.i.i.i.i.i42.i, align 4
  %89 = ptrtoint ptr %msg.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %transfer_list.i.i.i40.i, ptr %msg.i.i33.i, align 4
  br label %spi_wr8.exit.i

spi_wr8.exit.i:                                   ; preds = %if.end.i.i.i.i.i43.i, %spi_rd8.exit.i.spi_wr8.exit.i_crit_edge
  %call.i.i44.i = call i32 @spi_sync(ptr noundef %75, ptr noundef nonnull %msg.i.i33.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i34.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i33.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i32.i) #10
  %call12.i = call i32 @msleep_interruptible(i32 noundef 5) #10
  %90 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %spi1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i45.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i46.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i47.i) #10
  %92 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %9, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i48.i) #10
  %93 = ptrtoint ptr %rxdata.i.i48.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %rxdata.i.i48.i, align 1, !annotation !136
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %10, align 1, !annotation !136
  %95 = call ptr @memset(ptr %11, i32 0, i32 84)
  %96 = call ptr @memset(ptr %12, i32 0, i32 40)
  %97 = ptrtoint ptr %msg.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %msg.i.i46.i, ptr %msg.i.i46.i, align 4
  %98 = ptrtoint ptr %prev.i.i.i.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg.i.i46.i, ptr %prev.i.i.i.i.i50.i, align 4
  %99 = ptrtoint ptr %resources.i.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %resources.i.i.i.i51.i, ptr %resources.i.i.i.i51.i, align 4
  %100 = ptrtoint ptr %prev.i2.i.i.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %resources.i.i.i.i51.i, ptr %prev.i2.i.i.i.i52.i, align 4
  %101 = ptrtoint ptr %txdata.i.i47.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 120, ptr %txdata.i.i47.i, align 1
  %102 = ptrtoint ptr %transfer.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %txdata.i.i47.i, ptr %transfer.i.i45.i, align 4
  %103 = ptrtoint ptr %rx_buf.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %rxdata.i.i48.i, ptr %rx_buf.i.i53.i, align 4
  %104 = ptrtoint ptr %len.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %len.i.i54.i, align 4
  %call.i.i.i.i.i56.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i55.i, ptr noundef nonnull %msg.i.i46.i, ptr noundef nonnull %msg.i.i46.i) #10
  br i1 %call.i.i.i.i.i56.i, label %if.end.i.i.i.i.i58.i, label %spi_wr8.exit.i.spi_rd8.exit60.i_crit_edge

spi_wr8.exit.i.spi_rd8.exit60.i_crit_edge:        ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit60.i

if.end.i.i.i.i.i58.i:                             ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %prev.i.i.i.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %transfer_list.i.i.i55.i, ptr %prev.i.i.i.i.i50.i, align 4
  %106 = ptrtoint ptr %transfer_list.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %msg.i.i46.i, ptr %transfer_list.i.i.i55.i, align 4
  %107 = ptrtoint ptr %prev3.i.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %msg.i.i46.i, ptr %prev3.i.i.i.i.i57.i, align 4
  %108 = ptrtoint ptr %msg.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %transfer_list.i.i.i55.i, ptr %msg.i.i46.i, align 4
  br label %spi_rd8.exit60.i

spi_rd8.exit60.i:                                 ; preds = %if.end.i.i.i.i.i58.i, %spi_wr8.exit.i.spi_rd8.exit60.i_crit_edge
  %call.i.i59.i = call i32 @spi_sync(ptr noundef %91, ptr noundef nonnull %msg.i.i46.i) #10
  %109 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i48.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i47.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i46.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i45.i) #10
  %111 = and i8 %110, -5
  %112 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %spi1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i61.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i62.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i63.i) #10
  %114 = call ptr @memset(ptr %13, i32 0, i32 92)
  %115 = call ptr @memset(ptr %14, i32 0, i32 40)
  %116 = ptrtoint ptr %msg.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %msg.i.i62.i, ptr %msg.i.i62.i, align 4
  %117 = ptrtoint ptr %prev.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %msg.i.i62.i, ptr %prev.i.i.i.i.i65.i, align 4
  %118 = ptrtoint ptr %resources.i.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %resources.i.i.i.i66.i, ptr %resources.i.i.i.i66.i, align 4
  %119 = ptrtoint ptr %prev.i2.i.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %resources.i.i.i.i66.i, ptr %prev.i2.i.i.i.i67.i, align 4
  %120 = ptrtoint ptr %txdata.i.i63.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 122, ptr %txdata.i.i63.i, align 1
  %121 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %111, ptr %15, align 1
  %122 = ptrtoint ptr %transfer.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %txdata.i.i63.i, ptr %transfer.i.i61.i, align 4
  %123 = ptrtoint ptr %len.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %len.i.i68.i, align 4
  %call.i.i.i.i.i70.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i69.i, ptr noundef nonnull %msg.i.i62.i, ptr noundef nonnull %msg.i.i62.i) #10
  br i1 %call.i.i.i.i.i70.i, label %if.end.i.i.i.i.i72.i, label %spi_rd8.exit60.i.spi_max3420_rwkup.exit_crit_edge

spi_rd8.exit60.i.spi_max3420_rwkup.exit_crit_edge: ; preds = %spi_rd8.exit60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_max3420_rwkup.exit

if.end.i.i.i.i.i72.i:                             ; preds = %spi_rd8.exit60.i
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %prev.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %transfer_list.i.i.i69.i, ptr %prev.i.i.i.i.i65.i, align 4
  %125 = ptrtoint ptr %transfer_list.i.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %msg.i.i62.i, ptr %transfer_list.i.i.i69.i, align 4
  %126 = ptrtoint ptr %prev3.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %msg.i.i62.i, ptr %prev3.i.i.i.i.i71.i, align 4
  %127 = ptrtoint ptr %msg.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %transfer_list.i.i.i69.i, ptr %msg.i.i62.i, align 4
  br label %spi_max3420_rwkup.exit

spi_max3420_rwkup.exit:                           ; preds = %if.end.i.i.i.i.i72.i, %spi_rd8.exit60.i.spi_max3420_rwkup.exit_crit_edge
  %call.i.i73.i = call i32 @spi_sync(ptr noundef %113, ptr noundef nonnull %msg.i.i62.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i63.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i62.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i61.i) #10
  %128 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %suspended.i, align 8
  br label %loop

if.end98:                                         ; preds = %lor.lhs.false.i.if.end98_crit_edge, %if.end94.if.end98_crit_edge
  %call99 = call fastcc i32 @max3420_do_data(ptr noundef %dev_id, i32 noundef 0, i32 noundef 1)
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end98
  %i.0250 = phi i32 [ 1, %if.end98 ], [ %inc, %for.cond.for.body_crit_edge ]
  %loop_again.1249 = phi i32 [ 0, %if.end98 ], [ %loop_again.3, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.max3420_udc, ptr %dev_id, i32 0, i32 1, i32 %i.0250
  %udc1.i = getelementptr %struct.max3420_udc, ptr %dev_id, i32 0, i32 1, i32 %i.0250, i32 1
  %129 = ptrtoint ptr %udc1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %udc1.i, align 4
  %lock.i225 = getelementptr %struct.max3420_udc, ptr %dev_id, i32 0, i32 1, i32 %i.0250, i32 5
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i225) #10
  %todo6.i = getelementptr %struct.max3420_udc, ptr %dev_id, i32 0, i32 1, i32 %i.0250, i32 7
  %131 = ptrtoint ptr %todo6.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %todo6.i, align 4
  %and.i226 = and i32 %132, 384
  %and8.i = and i32 %132, -385
  store i32 %and8.i, ptr %todo6.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i225, i32 noundef %call3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226)
  %tobool.not.i227 = icmp eq i32 %and.i226, 0
  br i1 %tobool.not.i227, label %for.body.for.cond_crit_edge, label %lor.lhs.false.i228

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

lor.lhs.false.i228:                               ; preds = %for.body
  %id.i = getelementptr %struct.max3420_udc, ptr %dev_id, i32 0, i32 1, i32 %i.0250, i32 8
  %133 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp10.i = icmp eq i32 %134, 0
  br i1 %cmp10.i, label %lor.lhs.false.i228.for.cond_crit_edge, label %if.end.i237

lor.lhs.false.i228.for.cond_crit_edge:            ; preds = %lor.lhs.false.i228
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end.i237:                                      ; preds = %lor.lhs.false.i228
  %spi1.i.i.i229 = getelementptr inbounds %struct.max3420_udc, ptr %130, i32 0, i32 11
  %135 = ptrtoint ptr %spi1.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %spi1.i.i.i229, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i.i221) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i222) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i.i223) #10
  %137 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -1, ptr %16, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i.i224) #10
  %138 = ptrtoint ptr %rxdata.i.i.i224 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -1, ptr %rxdata.i.i.i224, align 1, !annotation !136
  %139 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -1, ptr %17, align 1, !annotation !136
  %140 = call ptr @memset(ptr %18, i32 0, i32 84)
  %141 = call ptr @memset(ptr %19, i32 0, i32 40)
  %142 = ptrtoint ptr %msg.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %msg.i.i.i222, ptr %msg.i.i.i222, align 4
  %143 = ptrtoint ptr %prev.i.i.i.i.i.i230 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %msg.i.i.i222, ptr %prev.i.i.i.i.i.i230, align 4
  %144 = ptrtoint ptr %resources.i.i.i.i.i231 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %resources.i.i.i.i.i231, ptr %resources.i.i.i.i.i231, align 4
  %145 = ptrtoint ptr %prev.i2.i.i.i.i.i232 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %resources.i.i.i.i.i231, ptr %prev.i2.i.i.i.i.i232, align 4
  %146 = ptrtoint ptr %txdata.i.i.i223 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 96, ptr %txdata.i.i.i223, align 1
  %147 = ptrtoint ptr %transfer.i.i.i221 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %txdata.i.i.i223, ptr %transfer.i.i.i221, align 4
  %148 = ptrtoint ptr %rx_buf.i.i.i233 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %rxdata.i.i.i224, ptr %rx_buf.i.i.i233, align 4
  %149 = ptrtoint ptr %len.i.i.i234 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2, ptr %len.i.i.i234, align 4
  %call.i.i.i.i.i.i236 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i235, ptr noundef nonnull %msg.i.i.i222, ptr noundef nonnull %msg.i.i.i222) #10
  br i1 %call.i.i.i.i.i.i236, label %if.end.i.i.i.i.i.i239, label %if.end.i237.spi_rd8.exit.i241_crit_edge

if.end.i237.spi_rd8.exit.i241_crit_edge:          ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i241

if.end.i.i.i.i.i.i239:                            ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %prev.i.i.i.i.i.i230 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %transfer_list.i.i.i.i235, ptr %prev.i.i.i.i.i.i230, align 4
  %151 = ptrtoint ptr %transfer_list.i.i.i.i235 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %msg.i.i.i222, ptr %transfer_list.i.i.i.i235, align 4
  %152 = ptrtoint ptr %prev3.i.i.i.i.i.i238 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %msg.i.i.i222, ptr %prev3.i.i.i.i.i.i238, align 4
  %153 = ptrtoint ptr %msg.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %transfer_list.i.i.i.i235, ptr %msg.i.i.i222, align 4
  br label %spi_rd8.exit.i241

spi_rd8.exit.i241:                                ; preds = %if.end.i.i.i.i.i.i239, %if.end.i237.spi_rd8.exit.i241_crit_edge
  %call.i.i.i240 = call i32 @spi_sync(ptr noundef %136, ptr noundef nonnull %msg.i.i.i222) #10
  %154 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %17, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i.i224) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i.i223) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i222) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i.i221) #10
  %156 = ptrtoint ptr %spi1.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %spi1.i.i.i229, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i61.i218) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i62.i219) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i63.i220) #10
  %158 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 -1, ptr %20, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i64.i) #10
  %159 = ptrtoint ptr %rxdata.i.i64.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -1, ptr %rxdata.i.i64.i, align 1, !annotation !136
  %160 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -1, ptr %21, align 1, !annotation !136
  %161 = call ptr @memset(ptr %22, i32 0, i32 84)
  %162 = call ptr @memset(ptr %23, i32 0, i32 40)
  %163 = ptrtoint ptr %msg.i.i62.i219 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %msg.i.i62.i219, ptr %msg.i.i62.i219, align 4
  %164 = ptrtoint ptr %prev.i.i.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %msg.i.i62.i219, ptr %prev.i.i.i.i.i66.i, align 4
  %165 = ptrtoint ptr %resources.i.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %resources.i.i.i.i67.i, ptr %resources.i.i.i.i67.i, align 4
  %166 = ptrtoint ptr %prev.i2.i.i.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %resources.i.i.i.i67.i, ptr %prev.i2.i.i.i.i68.i, align 4
  %167 = ptrtoint ptr %txdata.i.i63.i220 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 80, ptr %txdata.i.i63.i220, align 1
  %168 = ptrtoint ptr %transfer.i.i61.i218 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %txdata.i.i63.i220, ptr %transfer.i.i61.i218, align 4
  %169 = ptrtoint ptr %rx_buf.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %rxdata.i.i64.i, ptr %rx_buf.i.i69.i, align 4
  %170 = ptrtoint ptr %len.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 2, ptr %len.i.i70.i, align 4
  %call.i.i.i.i.i72.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i71.i, ptr noundef nonnull %msg.i.i62.i219, ptr noundef nonnull %msg.i.i62.i219) #10
  br i1 %call.i.i.i.i.i72.i, label %if.end.i.i.i.i.i74.i, label %spi_rd8.exit.i241.spi_rd8.exit76.i_crit_edge

spi_rd8.exit.i241.spi_rd8.exit76.i_crit_edge:     ; preds = %spi_rd8.exit.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit76.i

if.end.i.i.i.i.i74.i:                             ; preds = %spi_rd8.exit.i241
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %prev.i.i.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %transfer_list.i.i.i71.i, ptr %prev.i.i.i.i.i66.i, align 4
  %172 = ptrtoint ptr %transfer_list.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %msg.i.i62.i219, ptr %transfer_list.i.i.i71.i, align 4
  %173 = ptrtoint ptr %prev3.i.i.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %msg.i.i62.i219, ptr %prev3.i.i.i.i.i73.i, align 4
  %174 = ptrtoint ptr %msg.i.i62.i219 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %transfer_list.i.i.i71.i, ptr %msg.i.i62.i219, align 4
  br label %spi_rd8.exit76.i

spi_rd8.exit76.i:                                 ; preds = %if.end.i.i.i.i.i74.i, %spi_rd8.exit.i241.spi_rd8.exit76.i_crit_edge
  %call.i.i75.i = call i32 @spi_sync(ptr noundef %157, ptr noundef nonnull %msg.i.i62.i219) #10
  %175 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %21, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i64.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i63.i220) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i62.i219) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i61.i218) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i226)
  %cmp14.i = icmp eq i32 %and.i226, 128
  %177 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %id.i, align 4
  %add.i = add i32 %178, 4
  %shl.i = shl nuw i32 1, %add.i
  %179 = trunc i32 %shl.i to i8
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %spi_rd8.exit76.i
  call void @__sanitizer_cov_trace_pc() #12
  %180 = xor i8 %179, -1
  %conv20.i = and i8 %176, %180
  %add22.i = add i32 %178, 1
  %shl23.i = shl nuw i32 1, %add22.i
  %181 = trunc i32 %shl23.i to i8
  %conv25.i = or i8 %155, %181
  br label %if.end39.i

if.else.i:                                        ; preds = %spi_rd8.exit76.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv31.i = or i8 %176, %179
  %add33.i = add i32 %178, 1
  %shl34.i = shl nuw i32 1, %add33.i
  %182 = trunc i32 %shl34.i to i8
  %183 = xor i8 %182, -1
  %conv38.i = and i8 %155, %183
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i, %if.then16.i
  %epdis.0.i = phi i8 [ %conv20.i, %if.then16.i ], [ %conv31.i, %if.else.i ]
  %epien.0.i = phi i8 [ %conv25.i, %if.then16.i ], [ %conv38.i, %if.else.i ]
  %184 = ptrtoint ptr %spi1.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %spi1.i.i.i229, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i77.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i78.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i79.i) #10
  %186 = call ptr @memset(ptr %24, i32 0, i32 92)
  %187 = call ptr @memset(ptr %25, i32 0, i32 40)
  %188 = ptrtoint ptr %msg.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %msg.i.i78.i, ptr %msg.i.i78.i, align 4
  %189 = ptrtoint ptr %prev.i.i.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %msg.i.i78.i, ptr %prev.i.i.i.i.i81.i, align 4
  %190 = ptrtoint ptr %resources.i.i.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %resources.i.i.i.i82.i, ptr %resources.i.i.i.i82.i, align 4
  %191 = ptrtoint ptr %prev.i2.i.i.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %resources.i.i.i.i82.i, ptr %prev.i2.i.i.i.i83.i, align 4
  %192 = ptrtoint ptr %txdata.i.i79.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 82, ptr %txdata.i.i79.i, align 1
  %193 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %epdis.0.i, ptr %26, align 1
  %194 = ptrtoint ptr %transfer.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %txdata.i.i79.i, ptr %transfer.i.i77.i, align 4
  %195 = ptrtoint ptr %len.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 2, ptr %len.i.i84.i, align 4
  %call.i.i.i.i.i86.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i85.i, ptr noundef nonnull %msg.i.i78.i, ptr noundef nonnull %msg.i.i78.i) #10
  br i1 %call.i.i.i.i.i86.i, label %if.end.i.i.i.i.i88.i, label %if.end39.i.spi_wr8.exit.i242_crit_edge

if.end39.i.spi_wr8.exit.i242_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i242

if.end.i.i.i.i.i88.i:                             ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %prev.i.i.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %transfer_list.i.i.i85.i, ptr %prev.i.i.i.i.i81.i, align 4
  %197 = ptrtoint ptr %transfer_list.i.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %msg.i.i78.i, ptr %transfer_list.i.i.i85.i, align 4
  %198 = ptrtoint ptr %prev3.i.i.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %msg.i.i78.i, ptr %prev3.i.i.i.i.i87.i, align 4
  %199 = ptrtoint ptr %msg.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %transfer_list.i.i.i85.i, ptr %msg.i.i78.i, align 4
  br label %spi_wr8.exit.i242

spi_wr8.exit.i242:                                ; preds = %if.end.i.i.i.i.i88.i, %if.end39.i.spi_wr8.exit.i242_crit_edge
  %call.i.i89.i = call i32 @spi_sync(ptr noundef %185, ptr noundef nonnull %msg.i.i78.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i79.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i78.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i77.i) #10
  %200 = ptrtoint ptr %spi1.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %spi1.i.i.i229, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i90.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i91.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i92.i) #10
  %202 = call ptr @memset(ptr %27, i32 0, i32 92)
  %203 = call ptr @memset(ptr %28, i32 0, i32 40)
  %204 = ptrtoint ptr %msg.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %msg.i.i91.i, ptr %msg.i.i91.i, align 4
  %205 = ptrtoint ptr %prev.i.i.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %msg.i.i91.i, ptr %prev.i.i.i.i.i94.i, align 4
  %206 = ptrtoint ptr %resources.i.i.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %resources.i.i.i.i95.i, ptr %resources.i.i.i.i95.i, align 4
  %207 = ptrtoint ptr %prev.i2.i.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %resources.i.i.i.i95.i, ptr %prev.i2.i.i.i.i96.i, align 4
  %208 = ptrtoint ptr %txdata.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 98, ptr %txdata.i.i92.i, align 1
  %209 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %epien.0.i, ptr %29, align 1
  %210 = ptrtoint ptr %transfer.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %txdata.i.i92.i, ptr %transfer.i.i90.i, align 4
  %211 = ptrtoint ptr %len.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 2, ptr %len.i.i97.i, align 4
  %call.i.i.i.i.i99.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i98.i, ptr noundef nonnull %msg.i.i91.i, ptr noundef nonnull %msg.i.i91.i) #10
  br i1 %call.i.i.i.i.i99.i, label %if.end.i.i.i.i.i101.i, label %spi_wr8.exit.i242.spi_max3420_enable.exit_crit_edge

spi_wr8.exit.i242.spi_max3420_enable.exit_crit_edge: ; preds = %spi_wr8.exit.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_max3420_enable.exit

if.end.i.i.i.i.i101.i:                            ; preds = %spi_wr8.exit.i242
  call void @__sanitizer_cov_trace_pc() #12
  %212 = ptrtoint ptr %prev.i.i.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %transfer_list.i.i.i98.i, ptr %prev.i.i.i.i.i94.i, align 4
  %213 = ptrtoint ptr %transfer_list.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %msg.i.i91.i, ptr %transfer_list.i.i.i98.i, align 4
  %214 = ptrtoint ptr %prev3.i.i.i.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %msg.i.i91.i, ptr %prev3.i.i.i.i.i100.i, align 4
  %215 = ptrtoint ptr %msg.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store volatile ptr %transfer_list.i.i.i98.i, ptr %msg.i.i91.i, align 4
  br label %spi_max3420_enable.exit

spi_max3420_enable.exit:                          ; preds = %if.end.i.i.i.i.i101.i, %spi_wr8.exit.i242.spi_max3420_enable.exit_crit_edge
  %call.i.i102.i = call i32 @spi_sync(ptr noundef %201, ptr noundef nonnull %msg.i.i91.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i92.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i91.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i90.i) #10
  br label %for.cond

for.cond:                                         ; preds = %spi_max3420_enable.exit, %lor.lhs.false.i228.for.cond_crit_edge, %for.body.for.cond_crit_edge
  %216 = phi i32 [ 1, %spi_max3420_enable.exit ], [ %loop_again.1249, %lor.lhs.false.i228.for.cond_crit_edge ], [ %loop_again.1249, %for.body.for.cond_crit_edge ]
  %call107 = call fastcc i32 @spi_max3420_stall(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  %loop_again.3 = select i1 %tobool108.not, i32 %216, i32 1
  %inc = add nuw nsw i32 %i.0250, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond.loop_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loop_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %loop

loop:                                             ; preds = %for.cond.loop_crit_edge, %spi_max3420_rwkup.exit, %if.end90.loop_crit_edge, %if.end86.loop_crit_edge, %lor.lhs.false.loop_crit_edge, %if.end82.loop_crit_edge
  %loop_again.4 = phi i32 [ 0, %lor.lhs.false.loop_crit_edge ], [ 0, %if.end82.loop_crit_edge ], [ 1, %if.end86.loop_crit_edge ], [ 1, %if.end90.loop_crit_edge ], [ 1, %spi_max3420_rwkup.exit ], [ %loop_again.3, %for.cond.loop_crit_edge ]
  call void @mutex_unlock(ptr noundef %spi_bus_mutex) #10
  %call = call zeroext i1 @kthread_should_stop() #10
  br i1 %call, label %loop.__here163_crit_edge, label %loop.while.body_crit_edge

loop.while.body_crit_edge:                        ; preds = %loop
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

loop.__here163_crit_edge:                         ; preds = %loop
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here163

__here163:                                        ; preds = %loop.__here163_crit_edge, %entry.__here163_crit_edge
  %217 = call i32 @llvm.read_register.i32(metadata !124) #10
  %and.i244 = and i32 %217, -16384
  %218 = inttoptr i32 %and.i244 to ptr
  %task166 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %task166 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %task166, align 8
  %task_state_change167 = getelementptr inbounds %struct.task_struct, ptr %220, i32 0, i32 212
  %221 = ptrtoint ptr %task_state_change167 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 ptrtoint (ptr blockaddress(@max3420_thread, %__here163) to i32), ptr %task_state_change167, align 4
  %222 = load ptr, ptr %task166, align 8
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile i32 0, ptr %222, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !137
  %dev = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 12
  %224 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %225, ptr noundef nonnull @.str.30) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_udc_vbus_handler(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max3420_start(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  %transfer.i.i29.i = alloca %struct.spi_transfer, align 4
  %msg.i.i30.i = alloca %struct.spi_message, align 4
  %txdata.i.i31.i = alloca [2 x i8], align 1
  %transfer.i.i16.i = alloca %struct.spi_transfer, align 4
  %msg.i.i17.i = alloca %struct.spi_message, align 4
  %txdata.i.i18.i = alloca [2 x i8], align 1
  %rxdata.i.i.i23 = alloca [2 x i8], align 1
  %transfer.i.i.i24 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i25 = alloca %struct.spi_message, align 4
  %txdata.i.i.i26 = alloca [2 x i8], align 1
  %transfer.i.i126.i = alloca %struct.spi_transfer, align 4
  %msg.i.i127.i = alloca %struct.spi_message, align 4
  %txdata.i.i128.i = alloca [2 x i8], align 1
  %transfer.i.i112.i = alloca %struct.spi_transfer, align 4
  %msg.i.i113.i = alloca %struct.spi_message, align 4
  %txdata.i.i114.i = alloca [2 x i8], align 1
  %transfer.i.i98.i = alloca %struct.spi_transfer, align 4
  %msg.i.i99.i = alloca %struct.spi_message, align 4
  %txdata.i.i100.i = alloca [2 x i8], align 1
  %transfer.i.i84.i = alloca %struct.spi_transfer, align 4
  %msg.i.i85.i = alloca %struct.spi_message, align 4
  %txdata.i.i86.i = alloca [2 x i8], align 1
  %transfer.i.i68.i = alloca %struct.spi_transfer, align 4
  %msg.i.i69.i = alloca %struct.spi_message, align 4
  %txdata.i.i70.i = alloca [2 x i8], align 1
  %rxdata.i.i71.i = alloca [2 x i8], align 1
  %transfer.i.i55.i = alloca %struct.spi_transfer, align 4
  %msg.i.i56.i = alloca %struct.spi_message, align 4
  %txdata.i.i57.i = alloca [2 x i8], align 1
  %rxdata.i.i.i = alloca [2 x i8], align 1
  %transfer.i.i41.i = alloca %struct.spi_transfer, align 4
  %msg.i.i42.i = alloca %struct.spi_message, align 4
  %txdata.i.i43.i = alloca [2 x i8], align 1
  %transfer.i.i27.i = alloca %struct.spi_transfer, align 4
  %msg.i.i28.i = alloca %struct.spi_message, align 4
  %txdata.i.i29.i = alloca [2 x i8], align 1
  %transfer.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %txdata.i.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %todo5 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 16
  %0 = ptrtoint ptr %todo5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %todo5, align 4
  %and = and i32 %1, 96
  %and7 = and i32 %1, -97
  store i32 %and7, ptr %todo5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vbus_active = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 6
  %2 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vbus_active, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool9.not = icmp eq i8 %3, 0
  br i1 %tobool9.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %softconnect = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 7
  %4 = ptrtoint ptr %softconnect to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %softconnect, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %land.lhs.true.if.else_crit_edge, label %if.then13

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  %call.i = tail call i32 @msleep_interruptible(i32 noundef 250) #10
  %spi1.i.i.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %6 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i.i) #10
  %8 = getelementptr inbounds i8, ptr %transfer.i.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %16 = getelementptr inbounds [2 x i8], ptr %txdata.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %txdata.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -118, ptr %txdata.i.i.i, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %16, align 1
  %19 = ptrtoint ptr %transfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %txdata.i.i.i, ptr %transfer.i.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #10
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then13.spi_wr8.exit.i_crit_edge

if.then13.spi_wr8.exit.i_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_wr8.exit.i

spi_wr8.exit.i:                                   ; preds = %if.end.i.i.i.i.i.i, %if.then13.spi_wr8.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i.i) #10
  %25 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i27.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i28.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i29.i) #10
  %27 = getelementptr inbounds i8, ptr %transfer.i.i27.i, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 92)
  %29 = getelementptr inbounds i8, ptr %msg.i.i28.i, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 40)
  %31 = ptrtoint ptr %msg.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %msg.i.i28.i, ptr %msg.i.i28.i, align 4
  %prev.i.i.i.i.i31.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i28.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i28.i, ptr %prev.i.i.i.i.i31.i, align 4
  %resources.i.i.i.i32.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i28.i, i32 0, i32 10
  %33 = ptrtoint ptr %resources.i.i.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %resources.i.i.i.i32.i, ptr %resources.i.i.i.i32.i, align 4
  %prev.i2.i.i.i.i33.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i28.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i2.i.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resources.i.i.i.i32.i, ptr %prev.i2.i.i.i.i33.i, align 4
  %35 = getelementptr inbounds [2 x i8], ptr %txdata.i.i29.i, i32 0, i32 1
  %36 = ptrtoint ptr %txdata.i.i29.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 122, ptr %txdata.i.i29.i, align 1
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 32, ptr %35, align 1
  %38 = ptrtoint ptr %transfer.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %txdata.i.i29.i, ptr %transfer.i.i27.i, align 4
  %len.i.i34.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i27.i, i32 0, i32 2
  %39 = ptrtoint ptr %len.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %len.i.i34.i, align 4
  %transfer_list.i.i.i35.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i27.i, i32 0, i32 18
  %call.i.i.i.i.i36.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i35.i, ptr noundef nonnull %msg.i.i28.i, ptr noundef nonnull %msg.i.i28.i) #10
  br i1 %call.i.i.i.i.i36.i, label %if.end.i.i.i.i.i38.i, label %spi_wr8.exit.i.spi_wr8.exit40.i_crit_edge

spi_wr8.exit.i.spi_wr8.exit40.i_crit_edge:        ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit40.i

if.end.i.i.i.i.i38.i:                             ; preds = %spi_wr8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %prev.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i.i.i35.i, ptr %prev.i.i.i.i.i31.i, align 4
  %41 = ptrtoint ptr %transfer_list.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i28.i, ptr %transfer_list.i.i.i35.i, align 4
  %prev3.i.i.i.i.i37.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i27.i, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i28.i, ptr %prev3.i.i.i.i.i37.i, align 4
  %43 = ptrtoint ptr %msg.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i.i.i35.i, ptr %msg.i.i28.i, align 4
  br label %spi_wr8.exit40.i

spi_wr8.exit40.i:                                 ; preds = %if.end.i.i.i.i.i38.i, %spi_wr8.exit.i.spi_wr8.exit40.i_crit_edge
  %call.i.i39.i = call i32 @spi_sync(ptr noundef %26, ptr noundef nonnull %msg.i.i28.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i29.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i28.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i27.i) #10
  %call1.i = call i32 @msleep_interruptible(i32 noundef 5) #10
  %44 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i41.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i42.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i43.i) #10
  %46 = getelementptr inbounds i8, ptr %transfer.i.i41.i, i32 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 92)
  %48 = getelementptr inbounds i8, ptr %msg.i.i42.i, i32 8
  %49 = call ptr @memset(ptr %48, i32 0, i32 40)
  %50 = ptrtoint ptr %msg.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %msg.i.i42.i, ptr %msg.i.i42.i, align 4
  %prev.i.i.i.i.i45.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i42.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i42.i, ptr %prev.i.i.i.i.i45.i, align 4
  %resources.i.i.i.i46.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i42.i, i32 0, i32 10
  %52 = ptrtoint ptr %resources.i.i.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %resources.i.i.i.i46.i, ptr %resources.i.i.i.i46.i, align 4
  %prev.i2.i.i.i.i47.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i42.i, i32 0, i32 10, i32 1
  %53 = ptrtoint ptr %prev.i2.i.i.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %resources.i.i.i.i46.i, ptr %prev.i2.i.i.i.i47.i, align 4
  %54 = getelementptr inbounds [2 x i8], ptr %txdata.i.i43.i, i32 0, i32 1
  %55 = ptrtoint ptr %txdata.i.i43.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 122, ptr %txdata.i.i43.i, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %54, align 1
  %57 = ptrtoint ptr %transfer.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %txdata.i.i43.i, ptr %transfer.i.i41.i, align 4
  %len.i.i48.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i41.i, i32 0, i32 2
  %58 = ptrtoint ptr %len.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %len.i.i48.i, align 4
  %transfer_list.i.i.i49.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i41.i, i32 0, i32 18
  %call.i.i.i.i.i50.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i49.i, ptr noundef nonnull %msg.i.i42.i, ptr noundef nonnull %msg.i.i42.i) #10
  br i1 %call.i.i.i.i.i50.i, label %if.end.i.i.i.i.i52.i, label %spi_wr8.exit40.i.spi_wr8.exit54.i_crit_edge

spi_wr8.exit40.i.spi_wr8.exit54.i_crit_edge:      ; preds = %spi_wr8.exit40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit54.i

if.end.i.i.i.i.i52.i:                             ; preds = %spi_wr8.exit40.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %prev.i.i.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i.i.i49.i, ptr %prev.i.i.i.i.i45.i, align 4
  %60 = ptrtoint ptr %transfer_list.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i42.i, ptr %transfer_list.i.i.i49.i, align 4
  %prev3.i.i.i.i.i51.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i41.i, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i42.i, ptr %prev3.i.i.i.i.i51.i, align 4
  %62 = ptrtoint ptr %msg.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i.i.i49.i, ptr %msg.i.i42.i, align 4
  br label %spi_wr8.exit54.i

spi_wr8.exit54.i:                                 ; preds = %if.end.i.i.i.i.i52.i, %spi_wr8.exit40.i.spi_wr8.exit54.i_crit_edge
  %call.i.i53.i = call i32 @spi_sync(ptr noundef %45, ptr noundef nonnull %msg.i.i42.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i43.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i42.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i41.i) #10
  %63 = getelementptr inbounds [2 x i8], ptr %txdata.i.i57.i, i32 0, i32 1
  %64 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i.i, i32 0, i32 1
  %65 = getelementptr inbounds i8, ptr %transfer.i.i55.i, i32 12
  %66 = getelementptr inbounds i8, ptr %msg.i.i56.i, i32 8
  %prev.i.i.i.i.i59.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i56.i, i32 0, i32 1
  %resources.i.i.i.i60.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i56.i, i32 0, i32 10
  %prev.i2.i.i.i.i61.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i56.i, i32 0, i32 10, i32 1
  %rx_buf.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i55.i, i32 0, i32 1
  %len.i.i62.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i55.i, i32 0, i32 2
  %transfer_list.i.i.i63.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i55.i, i32 0, i32 18
  %prev3.i.i.i.i.i65.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i55.i, i32 0, i32 18, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %spi_wr8.exit54.i
  %67 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i55.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i56.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i57.i) #10
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %63, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i.i) #10
  %70 = ptrtoint ptr %rxdata.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %rxdata.i.i.i, align 1, !annotation !136
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %64, align 1, !annotation !136
  %72 = call ptr @memset(ptr %65, i32 0, i32 84)
  %73 = call ptr @memset(ptr %66, i32 0, i32 40)
  %74 = ptrtoint ptr %msg.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %msg.i.i56.i, ptr %msg.i.i56.i, align 4
  %75 = ptrtoint ptr %prev.i.i.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i56.i, ptr %prev.i.i.i.i.i59.i, align 4
  %76 = ptrtoint ptr %resources.i.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %resources.i.i.i.i60.i, ptr %resources.i.i.i.i60.i, align 4
  %77 = ptrtoint ptr %prev.i2.i.i.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resources.i.i.i.i60.i, ptr %prev.i2.i.i.i.i61.i, align 4
  %78 = ptrtoint ptr %txdata.i.i57.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 104, ptr %txdata.i.i57.i, align 1
  %79 = ptrtoint ptr %transfer.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %txdata.i.i57.i, ptr %transfer.i.i55.i, align 4
  %80 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %rxdata.i.i.i, ptr %rx_buf.i.i.i, align 4
  %81 = ptrtoint ptr %len.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %len.i.i62.i, align 4
  %call.i.i.i.i.i64.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i63.i, ptr noundef nonnull %msg.i.i56.i, ptr noundef nonnull %msg.i.i56.i) #10
  br i1 %call.i.i.i.i.i64.i, label %if.end.i.i.i.i.i66.i, label %while.cond.i.spi_rd8.exit.i_crit_edge

while.cond.i.spi_rd8.exit.i_crit_edge:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i

if.end.i.i.i.i.i66.i:                             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %prev.i.i.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %transfer_list.i.i.i63.i, ptr %prev.i.i.i.i.i59.i, align 4
  %83 = ptrtoint ptr %transfer_list.i.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %msg.i.i56.i, ptr %transfer_list.i.i.i63.i, align 4
  %84 = ptrtoint ptr %prev3.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i56.i, ptr %prev3.i.i.i.i.i65.i, align 4
  %85 = ptrtoint ptr %msg.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %transfer_list.i.i.i63.i, ptr %msg.i.i56.i, align 4
  br label %spi_rd8.exit.i

spi_rd8.exit.i:                                   ; preds = %if.end.i.i.i.i.i66.i, %while.cond.i.spi_rd8.exit.i_crit_edge
  %call.i.i67.i = call i32 @spi_sync(ptr noundef %68, ptr noundef nonnull %msg.i.i56.i) #10
  %86 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %64, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i57.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i56.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i55.i) #10
  %88 = and i8 %87, 1
  %tobool.not.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.end.i

if.end.i:                                         ; preds = %spi_rd8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 456, i32 noundef 0) #10
  %call.i.i = call i32 @__cond_resched() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %spi_rd8.exit.i
  %89 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i68.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i69.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i70.i) #10
  %91 = getelementptr inbounds [2 x i8], ptr %txdata.i.i70.i, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %91, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i71.i) #10
  %93 = ptrtoint ptr %rxdata.i.i71.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %rxdata.i.i71.i, align 1, !annotation !136
  %94 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i71.i, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %94, align 1, !annotation !136
  %96 = getelementptr inbounds i8, ptr %transfer.i.i68.i, i32 12
  %97 = call ptr @memset(ptr %96, i32 0, i32 84)
  %98 = getelementptr inbounds i8, ptr %msg.i.i69.i, i32 8
  %99 = call ptr @memset(ptr %98, i32 0, i32 40)
  %100 = ptrtoint ptr %msg.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %msg.i.i69.i, ptr %msg.i.i69.i, align 4
  %prev.i.i.i.i.i73.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i69.i, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %msg.i.i69.i, ptr %prev.i.i.i.i.i73.i, align 4
  %resources.i.i.i.i74.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i69.i, i32 0, i32 10
  %102 = ptrtoint ptr %resources.i.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %resources.i.i.i.i74.i, ptr %resources.i.i.i.i74.i, align 4
  %prev.i2.i.i.i.i75.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i69.i, i32 0, i32 10, i32 1
  %103 = ptrtoint ptr %prev.i2.i.i.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %resources.i.i.i.i74.i, ptr %prev.i2.i.i.i.i75.i, align 4
  %104 = ptrtoint ptr %txdata.i.i70.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 120, ptr %txdata.i.i70.i, align 1
  %105 = ptrtoint ptr %transfer.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %txdata.i.i70.i, ptr %transfer.i.i68.i, align 4
  %rx_buf.i.i76.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i68.i, i32 0, i32 1
  %106 = ptrtoint ptr %rx_buf.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %rxdata.i.i71.i, ptr %rx_buf.i.i76.i, align 4
  %len.i.i77.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i68.i, i32 0, i32 2
  %107 = ptrtoint ptr %len.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %len.i.i77.i, align 4
  %transfer_list.i.i.i78.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i68.i, i32 0, i32 18
  %call.i.i.i.i.i79.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i78.i, ptr noundef nonnull %msg.i.i69.i, ptr noundef nonnull %msg.i.i69.i) #10
  br i1 %call.i.i.i.i.i79.i, label %if.end.i.i.i.i.i81.i, label %while.end.i.spi_rd8.exit83.i_crit_edge

while.end.i.spi_rd8.exit83.i_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit83.i

if.end.i.i.i.i.i81.i:                             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %prev.i.i.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %transfer_list.i.i.i78.i, ptr %prev.i.i.i.i.i73.i, align 4
  %109 = ptrtoint ptr %transfer_list.i.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %msg.i.i69.i, ptr %transfer_list.i.i.i78.i, align 4
  %prev3.i.i.i.i.i80.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i68.i, i32 0, i32 18, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %msg.i.i69.i, ptr %prev3.i.i.i.i.i80.i, align 4
  %111 = ptrtoint ptr %msg.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %transfer_list.i.i.i78.i, ptr %msg.i.i69.i, align 4
  br label %spi_rd8.exit83.i

spi_rd8.exit83.i:                                 ; preds = %if.end.i.i.i.i.i81.i, %while.end.i.spi_rd8.exit83.i_crit_edge
  %call.i.i82.i = call i32 @spi_sync(ptr noundef %90, ptr noundef nonnull %msg.i.i69.i) #10
  %112 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %94, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i71.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i70.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i69.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i68.i) #10
  %114 = or i8 %113, 72
  %115 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i84.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i85.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i86.i) #10
  %117 = getelementptr inbounds i8, ptr %transfer.i.i84.i, i32 4
  %118 = call ptr @memset(ptr %117, i32 0, i32 92)
  %119 = getelementptr inbounds i8, ptr %msg.i.i85.i, i32 8
  %120 = call ptr @memset(ptr %119, i32 0, i32 40)
  %121 = ptrtoint ptr %msg.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %msg.i.i85.i, ptr %msg.i.i85.i, align 4
  %prev.i.i.i.i.i88.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i85.i, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i.i.i.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %msg.i.i85.i, ptr %prev.i.i.i.i.i88.i, align 4
  %resources.i.i.i.i89.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i85.i, i32 0, i32 10
  %123 = ptrtoint ptr %resources.i.i.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %resources.i.i.i.i89.i, ptr %resources.i.i.i.i89.i, align 4
  %prev.i2.i.i.i.i90.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i85.i, i32 0, i32 10, i32 1
  %124 = ptrtoint ptr %prev.i2.i.i.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %resources.i.i.i.i89.i, ptr %prev.i2.i.i.i.i90.i, align 4
  %125 = getelementptr inbounds [2 x i8], ptr %txdata.i.i86.i, i32 0, i32 1
  %126 = ptrtoint ptr %txdata.i.i86.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 122, ptr %txdata.i.i86.i, align 1
  %127 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %114, ptr %125, align 1
  %128 = ptrtoint ptr %transfer.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %txdata.i.i86.i, ptr %transfer.i.i84.i, align 4
  %len.i.i91.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i84.i, i32 0, i32 2
  %129 = ptrtoint ptr %len.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 2, ptr %len.i.i91.i, align 4
  %transfer_list.i.i.i92.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i84.i, i32 0, i32 18
  %call.i.i.i.i.i93.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i92.i, ptr noundef nonnull %msg.i.i85.i, ptr noundef nonnull %msg.i.i85.i) #10
  br i1 %call.i.i.i.i.i93.i, label %if.end.i.i.i.i.i95.i, label %spi_rd8.exit83.i.spi_wr8.exit97.i_crit_edge

spi_rd8.exit83.i.spi_wr8.exit97.i_crit_edge:      ; preds = %spi_rd8.exit83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit97.i

if.end.i.i.i.i.i95.i:                             ; preds = %spi_rd8.exit83.i
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %prev.i.i.i.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %transfer_list.i.i.i92.i, ptr %prev.i.i.i.i.i88.i, align 4
  %131 = ptrtoint ptr %transfer_list.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %msg.i.i85.i, ptr %transfer_list.i.i.i92.i, align 4
  %prev3.i.i.i.i.i94.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i84.i, i32 0, i32 18, i32 1
  %132 = ptrtoint ptr %prev3.i.i.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %msg.i.i85.i, ptr %prev3.i.i.i.i.i94.i, align 4
  %133 = ptrtoint ptr %msg.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %transfer_list.i.i.i92.i, ptr %msg.i.i85.i, align 4
  br label %spi_wr8.exit97.i

spi_wr8.exit97.i:                                 ; preds = %if.end.i.i.i.i.i95.i, %spi_rd8.exit83.i.spi_wr8.exit97.i_crit_edge
  %call.i.i96.i = call i32 @spi_sync(ptr noundef %116, ptr noundef nonnull %msg.i.i85.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i86.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i85.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i84.i) #10
  %is_selfpowered.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 5
  %134 = ptrtoint ptr %is_selfpowered.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %is_selfpowered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool7.not.i = icmp eq i32 %135, 0
  %spec.select.i = select i1 %tobool7.not.i, i8 -120, i8 -88
  %136 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i98.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i99.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i100.i) #10
  %138 = getelementptr inbounds i8, ptr %transfer.i.i98.i, i32 4
  %139 = call ptr @memset(ptr %138, i32 0, i32 92)
  %140 = getelementptr inbounds i8, ptr %msg.i.i99.i, i32 8
  %141 = call ptr @memset(ptr %140, i32 0, i32 40)
  %142 = ptrtoint ptr %msg.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %msg.i.i99.i, ptr %msg.i.i99.i, align 4
  %prev.i.i.i.i.i102.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i99.i, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i.i.i.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %msg.i.i99.i, ptr %prev.i.i.i.i.i102.i, align 4
  %resources.i.i.i.i103.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i99.i, i32 0, i32 10
  %144 = ptrtoint ptr %resources.i.i.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %resources.i.i.i.i103.i, ptr %resources.i.i.i.i103.i, align 4
  %prev.i2.i.i.i.i104.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i99.i, i32 0, i32 10, i32 1
  %145 = ptrtoint ptr %prev.i2.i.i.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %resources.i.i.i.i103.i, ptr %prev.i2.i.i.i.i104.i, align 4
  %146 = getelementptr inbounds [2 x i8], ptr %txdata.i.i100.i, i32 0, i32 1
  %147 = ptrtoint ptr %txdata.i.i100.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 114, ptr %txdata.i.i100.i, align 1
  %148 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %spec.select.i, ptr %146, align 1
  %149 = ptrtoint ptr %transfer.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %txdata.i.i100.i, ptr %transfer.i.i98.i, align 4
  %len.i.i105.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i98.i, i32 0, i32 2
  %150 = ptrtoint ptr %len.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 2, ptr %len.i.i105.i, align 4
  %transfer_list.i.i.i106.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i98.i, i32 0, i32 18
  %call.i.i.i.i.i107.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i106.i, ptr noundef nonnull %msg.i.i99.i, ptr noundef nonnull %msg.i.i99.i) #10
  br i1 %call.i.i.i.i.i107.i, label %if.end.i.i.i.i.i109.i, label %spi_wr8.exit97.i.spi_wr8.exit111.i_crit_edge

spi_wr8.exit97.i.spi_wr8.exit111.i_crit_edge:     ; preds = %spi_wr8.exit97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit111.i

if.end.i.i.i.i.i109.i:                            ; preds = %spi_wr8.exit97.i
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %prev.i.i.i.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %transfer_list.i.i.i106.i, ptr %prev.i.i.i.i.i102.i, align 4
  %152 = ptrtoint ptr %transfer_list.i.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %msg.i.i99.i, ptr %transfer_list.i.i.i106.i, align 4
  %prev3.i.i.i.i.i108.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i98.i, i32 0, i32 18, i32 1
  %153 = ptrtoint ptr %prev3.i.i.i.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %msg.i.i99.i, ptr %prev3.i.i.i.i.i108.i, align 4
  %154 = ptrtoint ptr %msg.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %transfer_list.i.i.i106.i, ptr %msg.i.i99.i, align 4
  br label %spi_wr8.exit111.i

spi_wr8.exit111.i:                                ; preds = %if.end.i.i.i.i.i109.i, %spi_wr8.exit97.i.spi_wr8.exit111.i_crit_edge
  %call.i.i110.i = call i32 @spi_sync(ptr noundef %137, ptr noundef nonnull %msg.i.i99.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i100.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i99.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i98.i) #10
  %155 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i112.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i113.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i114.i) #10
  %157 = getelementptr inbounds i8, ptr %transfer.i.i112.i, i32 4
  %158 = call ptr @memset(ptr %157, i32 0, i32 92)
  %159 = getelementptr inbounds i8, ptr %msg.i.i113.i, i32 8
  %160 = call ptr @memset(ptr %159, i32 0, i32 40)
  %161 = ptrtoint ptr %msg.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %msg.i.i113.i, ptr %msg.i.i113.i, align 4
  %prev.i.i.i.i.i116.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i113.i, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i.i.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %msg.i.i113.i, ptr %prev.i.i.i.i.i116.i, align 4
  %resources.i.i.i.i117.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i113.i, i32 0, i32 10
  %163 = ptrtoint ptr %resources.i.i.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %resources.i.i.i.i117.i, ptr %resources.i.i.i.i117.i, align 4
  %prev.i2.i.i.i.i118.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i113.i, i32 0, i32 10, i32 1
  %164 = ptrtoint ptr %prev.i2.i.i.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %resources.i.i.i.i117.i, ptr %prev.i2.i.i.i.i118.i, align 4
  %165 = getelementptr inbounds [2 x i8], ptr %txdata.i.i114.i, i32 0, i32 1
  %166 = ptrtoint ptr %txdata.i.i114.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 98, ptr %txdata.i.i114.i, align 1
  %167 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 35, ptr %165, align 1
  %168 = ptrtoint ptr %transfer.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %txdata.i.i114.i, ptr %transfer.i.i112.i, align 4
  %len.i.i119.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i112.i, i32 0, i32 2
  %169 = ptrtoint ptr %len.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 2, ptr %len.i.i119.i, align 4
  %transfer_list.i.i.i120.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i112.i, i32 0, i32 18
  %call.i.i.i.i.i121.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i120.i, ptr noundef nonnull %msg.i.i113.i, ptr noundef nonnull %msg.i.i113.i) #10
  br i1 %call.i.i.i.i.i121.i, label %if.end.i.i.i.i.i123.i, label %spi_wr8.exit111.i.spi_wr8.exit125.i_crit_edge

spi_wr8.exit111.i.spi_wr8.exit125.i_crit_edge:    ; preds = %spi_wr8.exit111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit125.i

if.end.i.i.i.i.i123.i:                            ; preds = %spi_wr8.exit111.i
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %prev.i.i.i.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %transfer_list.i.i.i120.i, ptr %prev.i.i.i.i.i116.i, align 4
  %171 = ptrtoint ptr %transfer_list.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %msg.i.i113.i, ptr %transfer_list.i.i.i120.i, align 4
  %prev3.i.i.i.i.i122.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i112.i, i32 0, i32 18, i32 1
  %172 = ptrtoint ptr %prev3.i.i.i.i.i122.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %msg.i.i113.i, ptr %prev3.i.i.i.i.i122.i, align 4
  %173 = ptrtoint ptr %msg.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %transfer_list.i.i.i120.i, ptr %msg.i.i113.i, align 4
  br label %spi_wr8.exit125.i

spi_wr8.exit125.i:                                ; preds = %if.end.i.i.i.i.i123.i, %spi_wr8.exit111.i.spi_wr8.exit125.i_crit_edge
  %call.i.i124.i = call i32 @spi_sync(ptr noundef %156, ptr noundef nonnull %msg.i.i113.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i114.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i113.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i112.i) #10
  %174 = ptrtoint ptr %spi1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %spi1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i126.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i127.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i128.i) #10
  %176 = getelementptr inbounds i8, ptr %transfer.i.i126.i, i32 4
  %177 = call ptr @memset(ptr %176, i32 0, i32 92)
  %178 = getelementptr inbounds i8, ptr %msg.i.i127.i, i32 8
  %179 = call ptr @memset(ptr %178, i32 0, i32 40)
  %180 = ptrtoint ptr %msg.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %msg.i.i127.i, ptr %msg.i.i127.i, align 4
  %prev.i.i.i.i.i130.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i127.i, i32 0, i32 1
  %181 = ptrtoint ptr %prev.i.i.i.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %msg.i.i127.i, ptr %prev.i.i.i.i.i130.i, align 4
  %resources.i.i.i.i131.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i127.i, i32 0, i32 10
  %182 = ptrtoint ptr %resources.i.i.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %resources.i.i.i.i131.i, ptr %resources.i.i.i.i131.i, align 4
  %prev.i2.i.i.i.i132.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i127.i, i32 0, i32 10, i32 1
  %183 = ptrtoint ptr %prev.i2.i.i.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %resources.i.i.i.i131.i, ptr %prev.i2.i.i.i.i132.i, align 4
  %184 = getelementptr inbounds [2 x i8], ptr %txdata.i.i128.i, i32 0, i32 1
  %185 = ptrtoint ptr %txdata.i.i128.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -126, ptr %txdata.i.i128.i, align 1
  %186 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %184, align 1
  %187 = ptrtoint ptr %transfer.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %txdata.i.i128.i, ptr %transfer.i.i126.i, align 4
  %len.i.i133.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i126.i, i32 0, i32 2
  %188 = ptrtoint ptr %len.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 2, ptr %len.i.i133.i, align 4
  %transfer_list.i.i.i134.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i126.i, i32 0, i32 18
  %call.i.i.i.i.i135.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i134.i, ptr noundef nonnull %msg.i.i127.i, ptr noundef nonnull %msg.i.i127.i) #10
  br i1 %call.i.i.i.i.i135.i, label %if.end.i.i.i.i.i137.i, label %spi_wr8.exit125.i.__max3420_start.exit_crit_edge

spi_wr8.exit125.i.__max3420_start.exit_crit_edge: ; preds = %spi_wr8.exit125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__max3420_start.exit

if.end.i.i.i.i.i137.i:                            ; preds = %spi_wr8.exit125.i
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %prev.i.i.i.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %transfer_list.i.i.i134.i, ptr %prev.i.i.i.i.i130.i, align 4
  %190 = ptrtoint ptr %transfer_list.i.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %msg.i.i127.i, ptr %transfer_list.i.i.i134.i, align 4
  %prev3.i.i.i.i.i136.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i126.i, i32 0, i32 18, i32 1
  %191 = ptrtoint ptr %prev3.i.i.i.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %msg.i.i127.i, ptr %prev3.i.i.i.i.i136.i, align 4
  %192 = ptrtoint ptr %msg.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %transfer_list.i.i.i134.i, ptr %msg.i.i127.i, align 4
  br label %__max3420_start.exit

__max3420_start.exit:                             ; preds = %if.end.i.i.i.i.i137.i, %spi_wr8.exit125.i.__max3420_start.exit_crit_edge
  %call.i.i138.i = call i32 @spi_sync(ptr noundef %175, ptr noundef nonnull %msg.i.i127.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i128.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i127.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i126.i) #10
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %arrayidx.i = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 1
  tail call fastcc void @max3420_nuke(ptr noundef %arrayidx.i, i32 noundef -104) #10
  %arrayidx.1.i = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 2
  tail call fastcc void @max3420_nuke(ptr noundef %arrayidx.1.i, i32 noundef -104) #10
  %arrayidx.2.i = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 3
  tail call fastcc void @max3420_nuke(ptr noundef %arrayidx.2.i, i32 noundef -104) #10
  %spi1.i.i.i27 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %193 = ptrtoint ptr %spi1.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %spi1.i.i.i27, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i.i24) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i25) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i.i26) #10
  %195 = getelementptr inbounds i8, ptr %transfer.i.i.i24, i32 4
  %196 = call ptr @memset(ptr %195, i32 0, i32 92)
  %197 = getelementptr inbounds i8, ptr %msg.i.i.i25, i32 8
  %198 = call ptr @memset(ptr %197, i32 0, i32 40)
  %199 = ptrtoint ptr %msg.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %msg.i.i.i25, ptr %msg.i.i.i25, align 4
  %prev.i.i.i.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i25, i32 0, i32 1
  %200 = ptrtoint ptr %prev.i.i.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %msg.i.i.i25, ptr %prev.i.i.i.i.i.i28, align 4
  %resources.i.i.i.i.i29 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i25, i32 0, i32 10
  %201 = ptrtoint ptr %resources.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %resources.i.i.i.i.i29, ptr %resources.i.i.i.i.i29, align 4
  %prev.i2.i.i.i.i.i30 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i25, i32 0, i32 10, i32 1
  %202 = ptrtoint ptr %prev.i2.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %resources.i.i.i.i.i29, ptr %prev.i2.i.i.i.i.i30, align 4
  %203 = getelementptr inbounds [2 x i8], ptr %txdata.i.i.i26, i32 0, i32 1
  %204 = ptrtoint ptr %txdata.i.i.i26 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 -126, ptr %txdata.i.i.i26, align 1
  %205 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %203, align 1
  %206 = ptrtoint ptr %transfer.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %txdata.i.i.i26, ptr %transfer.i.i.i24, align 4
  %len.i.i.i31 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i24, i32 0, i32 2
  %207 = ptrtoint ptr %len.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 2, ptr %len.i.i.i31, align 4
  %transfer_list.i.i.i.i32 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i24, i32 0, i32 18
  %call.i.i.i.i.i.i33 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i32, ptr noundef nonnull %msg.i.i.i25, ptr noundef nonnull %msg.i.i.i25) #10
  br i1 %call.i.i.i.i.i.i33, label %if.end.i.i.i.i.i.i35, label %if.else.spi_wr8.exit.i38_crit_edge

if.else.spi_wr8.exit.i38_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i38

if.end.i.i.i.i.i.i35:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %prev.i.i.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %transfer_list.i.i.i.i32, ptr %prev.i.i.i.i.i.i28, align 4
  %209 = ptrtoint ptr %transfer_list.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %msg.i.i.i25, ptr %transfer_list.i.i.i.i32, align 4
  %prev3.i.i.i.i.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i24, i32 0, i32 18, i32 1
  %210 = ptrtoint ptr %prev3.i.i.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %msg.i.i.i25, ptr %prev3.i.i.i.i.i.i34, align 4
  %211 = ptrtoint ptr %msg.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %transfer_list.i.i.i.i32, ptr %msg.i.i.i25, align 4
  br label %spi_wr8.exit.i38

spi_wr8.exit.i38:                                 ; preds = %if.end.i.i.i.i.i.i35, %if.else.spi_wr8.exit.i38_crit_edge
  %call.i.i.i36 = call i32 @spi_sync(ptr noundef %194, ptr noundef nonnull %msg.i.i.i25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i.i26) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i25) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i.i24) #10
  %212 = ptrtoint ptr %spi1.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %spi1.i.i.i27, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i16.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i17.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i18.i) #10
  %214 = getelementptr inbounds [2 x i8], ptr %txdata.i.i18.i, i32 0, i32 1
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -1, ptr %214, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i.i23) #10
  %216 = ptrtoint ptr %rxdata.i.i.i23 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -1, ptr %rxdata.i.i.i23, align 1, !annotation !136
  %217 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i.i23, i32 0, i32 1
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -1, ptr %217, align 1, !annotation !136
  %219 = getelementptr inbounds i8, ptr %transfer.i.i16.i, i32 12
  %220 = call ptr @memset(ptr %219, i32 0, i32 84)
  %221 = getelementptr inbounds i8, ptr %msg.i.i17.i, i32 8
  %222 = call ptr @memset(ptr %221, i32 0, i32 40)
  %223 = ptrtoint ptr %msg.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %msg.i.i17.i, ptr %msg.i.i17.i, align 4
  %prev.i.i.i.i.i20.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i17.i, i32 0, i32 1
  %224 = ptrtoint ptr %prev.i.i.i.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %msg.i.i17.i, ptr %prev.i.i.i.i.i20.i, align 4
  %resources.i.i.i.i21.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i17.i, i32 0, i32 10
  %225 = ptrtoint ptr %resources.i.i.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %resources.i.i.i.i21.i, ptr %resources.i.i.i.i21.i, align 4
  %prev.i2.i.i.i.i22.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i17.i, i32 0, i32 10, i32 1
  %226 = ptrtoint ptr %prev.i2.i.i.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %resources.i.i.i.i21.i, ptr %prev.i2.i.i.i.i22.i, align 4
  %227 = ptrtoint ptr %txdata.i.i18.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 120, ptr %txdata.i.i18.i, align 1
  %228 = ptrtoint ptr %transfer.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %txdata.i.i18.i, ptr %transfer.i.i16.i, align 4
  %rx_buf.i.i.i37 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i16.i, i32 0, i32 1
  %229 = ptrtoint ptr %rx_buf.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %rxdata.i.i.i23, ptr %rx_buf.i.i.i37, align 4
  %len.i.i23.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i16.i, i32 0, i32 2
  %230 = ptrtoint ptr %len.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 2, ptr %len.i.i23.i, align 4
  %transfer_list.i.i.i24.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i16.i, i32 0, i32 18
  %call.i.i.i.i.i25.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i24.i, ptr noundef nonnull %msg.i.i17.i, ptr noundef nonnull %msg.i.i17.i) #10
  br i1 %call.i.i.i.i.i25.i, label %if.end.i.i.i.i.i27.i, label %spi_wr8.exit.i38.spi_rd8.exit.i41_crit_edge

spi_wr8.exit.i38.spi_rd8.exit.i41_crit_edge:      ; preds = %spi_wr8.exit.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit.i41

if.end.i.i.i.i.i27.i:                             ; preds = %spi_wr8.exit.i38
  call void @__sanitizer_cov_trace_pc() #12
  %231 = ptrtoint ptr %prev.i.i.i.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %transfer_list.i.i.i24.i, ptr %prev.i.i.i.i.i20.i, align 4
  %232 = ptrtoint ptr %transfer_list.i.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %msg.i.i17.i, ptr %transfer_list.i.i.i24.i, align 4
  %prev3.i.i.i.i.i26.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i16.i, i32 0, i32 18, i32 1
  %233 = ptrtoint ptr %prev3.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %msg.i.i17.i, ptr %prev3.i.i.i.i.i26.i, align 4
  %234 = ptrtoint ptr %msg.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile ptr %transfer_list.i.i.i24.i, ptr %msg.i.i17.i, align 4
  br label %spi_rd8.exit.i41

spi_rd8.exit.i41:                                 ; preds = %if.end.i.i.i.i.i27.i, %spi_wr8.exit.i38.spi_rd8.exit.i41_crit_edge
  %call.i.i28.i = call i32 @spi_sync(ptr noundef %213, ptr noundef nonnull %msg.i.i17.i) #10
  %235 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %217, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i.i23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i18.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i17.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i16.i) #10
  %is_selfpowered.i39 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 5
  %237 = ptrtoint ptr %is_selfpowered.i39 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %is_selfpowered.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.not.i40 = icmp eq i32 %238, 0
  %239 = and i8 %236, 111
  %240 = or i8 %239, 16
  %241 = or i8 %236, -112
  %val.0.i = select i1 %tobool.not.i40, i8 %241, i8 %240
  %242 = ptrtoint ptr %spi1.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %spi1.i.i.i27, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i29.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i30.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i31.i) #10
  %244 = getelementptr inbounds i8, ptr %transfer.i.i29.i, i32 4
  %245 = call ptr @memset(ptr %244, i32 0, i32 92)
  %246 = getelementptr inbounds i8, ptr %msg.i.i30.i, i32 8
  %247 = call ptr @memset(ptr %246, i32 0, i32 40)
  %248 = ptrtoint ptr %msg.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %msg.i.i30.i, ptr %msg.i.i30.i, align 4
  %prev.i.i.i.i.i33.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i30.i, i32 0, i32 1
  %249 = ptrtoint ptr %prev.i.i.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %msg.i.i30.i, ptr %prev.i.i.i.i.i33.i, align 4
  %resources.i.i.i.i34.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i30.i, i32 0, i32 10
  %250 = ptrtoint ptr %resources.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store volatile ptr %resources.i.i.i.i34.i, ptr %resources.i.i.i.i34.i, align 4
  %prev.i2.i.i.i.i35.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i30.i, i32 0, i32 10, i32 1
  %251 = ptrtoint ptr %prev.i2.i.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %resources.i.i.i.i34.i, ptr %prev.i2.i.i.i.i35.i, align 4
  %252 = getelementptr inbounds [2 x i8], ptr %txdata.i.i31.i, i32 0, i32 1
  %253 = ptrtoint ptr %txdata.i.i31.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 122, ptr %txdata.i.i31.i, align 1
  %254 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %val.0.i, ptr %252, align 1
  %255 = ptrtoint ptr %transfer.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %txdata.i.i31.i, ptr %transfer.i.i29.i, align 4
  %len.i.i36.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i29.i, i32 0, i32 2
  %256 = ptrtoint ptr %len.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 2, ptr %len.i.i36.i, align 4
  %transfer_list.i.i.i37.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i29.i, i32 0, i32 18
  %call.i.i.i.i.i38.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i37.i, ptr noundef nonnull %msg.i.i30.i, ptr noundef nonnull %msg.i.i30.i) #10
  br i1 %call.i.i.i.i.i38.i, label %if.end.i.i.i.i.i40.i, label %spi_rd8.exit.i41.__max3420_stop.exit_crit_edge

spi_rd8.exit.i41.__max3420_stop.exit_crit_edge:   ; preds = %spi_rd8.exit.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %__max3420_stop.exit

if.end.i.i.i.i.i40.i:                             ; preds = %spi_rd8.exit.i41
  call void @__sanitizer_cov_trace_pc() #12
  %257 = ptrtoint ptr %prev.i.i.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %transfer_list.i.i.i37.i, ptr %prev.i.i.i.i.i33.i, align 4
  %258 = ptrtoint ptr %transfer_list.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %msg.i.i30.i, ptr %transfer_list.i.i.i37.i, align 4
  %prev3.i.i.i.i.i39.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i29.i, i32 0, i32 18, i32 1
  %259 = ptrtoint ptr %prev3.i.i.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %msg.i.i30.i, ptr %prev3.i.i.i.i.i39.i, align 4
  %260 = ptrtoint ptr %msg.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store volatile ptr %transfer_list.i.i.i37.i, ptr %msg.i.i30.i, align 4
  br label %__max3420_stop.exit

__max3420_stop.exit:                              ; preds = %if.end.i.i.i.i.i40.i, %spi_rd8.exit.i41.__max3420_stop.exit_crit_edge
  %call.i.i41.i = call i32 @spi_sync(ptr noundef %243, ptr noundef nonnull %msg.i.i30.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i31.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i30.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i29.i) #10
  br label %cleanup

cleanup:                                          ; preds = %__max3420_stop.exit, %__max3420_start.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %__max3420_stop.exit ], [ 1, %__max3420_start.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_vbus_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %vbus_active = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vbus_active, align 8, !range !135
  %2 = xor i8 %1, 1
  store i8 %2, ptr %vbus_active, align 8
  %todo = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 16
  %3 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %todo, align 4
  %or = or i32 %4, 96
  store i32 %or, ptr %todo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool7 = icmp ne i8 %2, 0
  tail call void @usb_udc_vbus_handler(ptr noundef %dev_id, i1 noundef zeroext %tobool7) #10
  %5 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vbus_active, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool10.not, i32 0, i32 2
  tail call void @usb_gadget_set_state(ptr noundef %dev_id, i32 noundef %cond) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %dev_id, i32 0, i32 3
  %7 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %thread_task, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @wake_up_process(ptr noundef nonnull %8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_wakeup(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %remote_wkp = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %remote_wkp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %remote_wkp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %todo = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 16
  %2 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %todo, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %todo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 3
  %4 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_task, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @wake_up_process(ptr noundef nonnull %5) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_udc_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus, align 4
  %driver7 = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 2
  %1 = ptrtoint ptr %driver7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %driver, ptr %driver7, align 8
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %speed, align 8
  %is_selfpowered = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 5
  %3 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_selfpowered, align 4
  %is_selfpowered10 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %5 = ptrtoint ptr %is_selfpowered10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %is_selfpowered10, align 4
  %bf.value = shl i32 %4, 18
  %bf.shl = and i32 %bf.value, 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered10, align 4
  %remote_wkp = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 4
  %6 = ptrtoint ptr %remote_wkp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %remote_wkp, align 8
  %softconnect = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 7
  %7 = ptrtoint ptr %softconnect to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %softconnect, align 1
  %todo = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 16
  %8 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %todo, align 4
  %or = or i32 %9, 96
  store i32 %or, ptr %todo, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 3
  %10 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread_task, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @wake_up_process(ptr noundef nonnull %11) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_udc_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.clear = and i32 %bf.lshr, 1
  %is_selfpowered7 = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 5
  %1 = ptrtoint ptr %is_selfpowered7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.clear, ptr %is_selfpowered7, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %speed, align 8
  %driver = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 2
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %driver, align 8
  %softconnect = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 7
  %4 = ptrtoint ptr %softconnect to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %softconnect, align 1
  %todo = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 16
  %5 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %todo, align 4
  %or = or i32 %6, 96
  store i32 %or, ptr %todo, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %gadget, i32 0, i32 3
  %7 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %thread_task, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @wake_up_process(ptr noundef nonnull %8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_ep_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %4 = and i16 %3, -249
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  %lock.i = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %desc6.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %6 = ptrtoint ptr %desc6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %desc, ptr %desc6.i, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %7 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.value.i = zext i16 %5 to i56
  %bf.shl.i = shl nuw nsw i56 %bf.value.i, 40
  %bf.clear.i = and i56 %bf.load.i, 1099511627775
  %bf.set.i = or i56 %bf.clear.i, %bf.shl.i
  store i56 %bf.set.i, ptr %maxpacket.i, align 2
  %todo.i = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 7
  %8 = ptrtoint ptr %todo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %todo.i, align 4
  %and.i = and i32 %9, -385
  %or.i = or i32 %and.i, 128
  store i32 %or.i, ptr %todo.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread_task, align 4
  %call2 = tail call i32 @wake_up_process(ptr noundef %11) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  tail call fastcc void @max3420_nuke(ptr noundef %_ep, i32 noundef -108)
  %2 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc1, align 4
  %lock.i = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %desc.i, align 4
  %todo.i = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 7
  %5 = ptrtoint ptr %todo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %todo.i, align 4
  %or.i = or i32 %6, 384
  store i32 %or.i, ptr %todo.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__max3420_ep_disable.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_ep_disable, %__max3420_ep_disable.exit)) #10
          to label %if.then.i [label %__max3420_ep_disable.exit], !srcloc !138

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.max3420_udc, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__max3420_ep_disable.__UNIQUE_ID_ddebug270, ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef %name.i) #10
  br label %__max3420_ep_disable.exit

__max3420_ep_disable.exit:                        ; preds = %if.then.i, %entry
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread_task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %10) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @max3420_alloc_request(ptr noundef %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !139

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 68) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ep1 = getelementptr inbounds %struct.max3420_req, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %_ep, ptr %ep1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3420_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc4 = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc4, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %3 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %actual, align 4
  %lock = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.max3420_req, ptr %_req, i32 0, i32 1
  %queue10 = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %queue10) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue10, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.max3420_req, ptr %_req, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread_task, align 4
  %call12 = tail call i32 @wake_up_process(ptr noundef %11) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_ep_dequeue(ptr noundef %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 5
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %queue, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %t.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp14.not = icmp eq ptr %.pn, %queue
  br i1 %cmp14.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp16 = icmp eq ptr %t.0, %_req
  br i1 %cmp16, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %queue18 = getelementptr inbounds %struct.max3420_req, ptr %_req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue18) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.for.end.thread_crit_edge

if.then.for.end.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.max3420_req, ptr %_req, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %queue18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end.i.i, %if.then.for.end.thread_crit_edge
  %7 = ptrtoint ptr %queue18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %queue18, ptr %queue18, align 4
  %prev.i3.i = getelementptr inbounds %struct.max3420_req, ptr %_req, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue18, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  br label %if.then27

for.end:                                          ; preds = %for.cond
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  %cmp25 = icmp eq ptr %t.0, %_req
  br i1 %cmp25, label %for.end.if.then27_crit_edge, label %for.end.if.end28_crit_edge

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

for.end.if.then27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %for.end.if.then27_crit_edge, %for.end.thread
  %ep1.i = getelementptr inbounds %struct.max3420_req, ptr %_req, i32 0, i32 2
  %9 = ptrtoint ptr %ep1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep1.i, align 4
  %udc2.i = getelementptr inbounds %struct.max3420_ep, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %udc2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udc2.i, align 4
  %status3.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %13 = ptrtoint ptr %status3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status3.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %14, label %if.then27.do.end.i_crit_edge [
    i32 -115, label %if.end.i.thread
    i32 0, label %if.then27.if.end10.i_crit_edge
    i32 -108, label %if.then27.if.end10.i_crit_edge50
  ]

if.then27.if.end10.i_crit_edge50:                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then27.if.end10.i_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then27.do.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.thread:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %status3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -104, ptr %status3.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.thread, %if.then27.do.end.i_crit_edge
  %status.addr.0.i39 = phi i32 [ -104, %if.end.i.thread ], [ %14, %if.then27.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.max3420_udc, ptr %12, i32 0, i32 12
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20, ptr noundef %20, ptr noundef %_req, i32 noundef %status.addr.0.i39) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.then27.if.end10.i_crit_edge, %if.then27.if.end10.i_crit_edge50
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %complete.i, align 4
  %tobool12.not.i = icmp eq ptr %22, null
  br i1 %tobool12.not.i, label %if.end10.i.if.end28_crit_edge, label %if.then13.i

if.end10.i.if.end28_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %22(ptr noundef %10, ptr noundef %_req) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then13.i, %if.end10.i.if.end28_crit_edge, %for.end.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3420_ep_set_halt(ptr noundef %_ep, i32 noundef %stall) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %lock = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %todo = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 7
  %2 = ptrtoint ptr %todo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %todo, align 4
  %and = and i32 %3, -1537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stall)
  %tobool.not = icmp eq i32 %stall, 0
  %or9 = or i32 %3, 1536
  %or = or i32 %and, 512
  %storemerge = select i1 %tobool.not, i32 %or9, i32 %or
  %4 = ptrtoint ptr %todo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %todo, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %thread_task = getelementptr inbounds %struct.max3420_udc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %thread_task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %thread_task, align 4
  %call11 = tail call i32 @wake_up_process(ptr noundef %6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_ep_set_halt.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_ep_set_halt, %do.end23)) #10
          to label %if.then19 [label %do.end23], !srcloc !138

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.max3420_udc, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %cond = select i1 %tobool.not, ptr @.str.28, ptr @.str.27
  %name = getelementptr inbounds %struct.max3420_ep, ptr %_ep, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_ep_set_halt.__UNIQUE_ID_ddebug269, ptr noundef %8, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, ptr noundef %name) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max3420_nuke(ptr noundef %ep, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max3420_ep, ptr %ep, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %queue = getelementptr inbounds %struct.max3420_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %cmp13.not48 = icmp eq ptr %1, %queue
  br i1 %cmp13.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %max3420_req_done.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in50 = phi ptr [ %.pn, %max3420_req_done.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %flags.049 = phi i32 [ %call26, %max3420_req_done.exit.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn.in50, i32 -56
  %2 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in50, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in50) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in50, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in50, ptr %.pn.in50, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in50, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.049) #10
  %ep1.i = getelementptr i8, ptr %.pn.in50, i32 8
  %11 = ptrtoint ptr %ep1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep1.i, align 4
  %udc2.i = getelementptr inbounds %struct.max3420_ep, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %udc2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udc2.i, align 4
  %status3.i = getelementptr i8, ptr %.pn.in50, i32 -8
  %15 = ptrtoint ptr %status3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %16)
  %cmp.i = icmp eq i32 %16, -115
  br i1 %cmp.i, label %if.then.i, label %list_del_init.exit.if.end.i_crit_edge

list_del_init.exit.if.end.i_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %status3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %status, ptr %status3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del_init.exit.if.end.i_crit_edge
  %status.addr.0.i = phi i32 [ %status, %if.then.i ], [ %16, %list_del_init.exit.if.end.i_crit_edge ]
  %18 = zext i32 %status.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %status.addr.0.i, label %do.end.i [
    i32 0, label %if.end.i.if.end10.i_crit_edge
    i32 -108, label %if.end.i.if.end10.i_crit_edge51
  ]

if.end.i.if.end10.i_crit_edge51:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.max3420_udc, ptr %14, i32 0, i32 12
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.20, ptr noundef %22, ptr noundef %req.0, i32 noundef %status.addr.0.i) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge51
  %complete.i = getelementptr i8, ptr %.pn.in50, i32 -28
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %complete.i, align 4
  %tobool12.not.i = icmp eq ptr %24, null
  br i1 %tobool12.not.i, label %if.end10.i.max3420_req_done.exit_crit_edge, label %if.then13.i

if.end10.i.max3420_req_done.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max3420_req_done.exit

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %24(ptr noundef %12, ptr noundef %req.0) #10
  br label %max3420_req_done.exit

max3420_req_done.exit:                            ; preds = %if.then13.i, %if.end10.i.max3420_req_done.exit_crit_edge
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %cmp13.not = icmp eq ptr %.pn, %queue
  br i1 %cmp13.not, label %max3420_req_done.exit.for.end_crit_edge, label %max3420_req_done.exit.for.body_crit_edge

max3420_req_done.exit.for.body_crit_edge:         ; preds = %max3420_req_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

max3420_req_done.exit.for.end_crit_edge:          ; preds = %max3420_req_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %max3420_req_done.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.for.end_crit_edge ], [ %call26, %max3420_req_done.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_wr8_ack(ptr nocapture noundef readonly %udc, i8 noundef zeroext %reg, i8 noundef zeroext %val, i32 noundef %actstat) unnamed_addr #2 align 64 {
entry:
  %transfer = alloca %struct.spi_transfer, align 4
  %msg = alloca %struct.spi_message, align 4
  %txdata = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata) #10
  %2 = getelementptr inbounds i8, ptr %transfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = getelementptr inbounds i8, ptr %msg, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %10 = getelementptr inbounds [2 x i8], ptr %txdata, i32 0, i32 1
  %shl = shl i8 %reg, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %actstat)
  %tobool16.not = icmp ne i32 %actstat, 0
  %cond = zext i1 %tobool16.not to i8
  %or = or i8 %shl, %cond
  %or17 = or i8 %or, 2
  %11 = ptrtoint ptr %txdata to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or17, ptr %txdata, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %val, ptr %10, align 1
  %13 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txdata, ptr %transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max3420_handle_irqs(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  %transfer.i.i383 = alloca %struct.spi_transfer, align 4
  %msg.i.i384 = alloca %struct.spi_message, align 4
  %txdata.i.i385 = alloca [2 x i8], align 1
  %transfer.i.i369 = alloca %struct.spi_transfer, align 4
  %msg.i.i370 = alloca %struct.spi_message, align 4
  %txdata.i.i371 = alloca [2 x i8], align 1
  %transfer.i.i355 = alloca %struct.spi_transfer, align 4
  %msg.i.i356 = alloca %struct.spi_message, align 4
  %txdata.i.i357 = alloca [2 x i8], align 1
  %transfer.i.i341 = alloca %struct.spi_transfer, align 4
  %msg.i.i342 = alloca %struct.spi_message, align 4
  %txdata.i.i343 = alloca [2 x i8], align 1
  %transfer.i.i327 = alloca %struct.spi_transfer, align 4
  %msg.i.i328 = alloca %struct.spi_message, align 4
  %txdata.i.i329 = alloca [2 x i8], align 1
  %transfer.i.i313 = alloca %struct.spi_transfer, align 4
  %msg.i.i314 = alloca %struct.spi_message, align 4
  %txdata.i.i315 = alloca [2 x i8], align 1
  %transfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %txdata.i.i = alloca [2 x i8], align 1
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %local_buf.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %0 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %local_buf.i) #10
  %2 = getelementptr inbounds i8, ptr %local_buf.i, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 64)
  %4 = getelementptr inbounds i8, ptr %transfer.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 84)
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %12 = ptrtoint ptr %local_buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 88, ptr %local_buf.i, align 1
  %13 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %local_buf.i, ptr %transfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 1
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %local_buf.i, ptr %rx_buf.i, align 4
  %len20.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %15 = ptrtoint ptr %len20.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %len20.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_rd_buf.exit_crit_edge

entry.spi_rd_buf.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd_buf.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_rd_buf.exit

spi_rd_buf.exit:                                  ; preds = %if.end.i.i.i.i, %entry.spi_rd_buf.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #10
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %reg.sroa.0.0.copyload = load i8, ptr %2, align 1
  %reg.sroa.5.0.arrayidx21.i.sroa_idx = getelementptr inbounds [65 x i8], ptr %local_buf.i, i32 0, i32 2
  %21 = ptrtoint ptr %reg.sroa.5.0.arrayidx21.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %reg.sroa.5.0.copyload = load i8, ptr %reg.sroa.5.0.arrayidx21.i.sroa_idx, align 1
  %reg.sroa.7.0.arrayidx21.i.sroa_idx = getelementptr inbounds [65 x i8], ptr %local_buf.i, i32 0, i32 3
  %22 = ptrtoint ptr %reg.sroa.7.0.arrayidx21.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %reg.sroa.7.0.copyload = load i8, ptr %reg.sroa.7.0.arrayidx21.i.sroa_idx, align 1
  %reg.sroa.9.0.arrayidx21.i.sroa_idx = getelementptr inbounds [65 x i8], ptr %local_buf.i, i32 0, i32 4
  %23 = ptrtoint ptr %reg.sroa.9.0.arrayidx21.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %reg.sroa.9.0.copyload = load i8, ptr %reg.sroa.9.0.arrayidx21.i.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %local_buf.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  %and8282 = and i8 %reg.sroa.5.0.copyload, %reg.sroa.0.0.copyload
  %conv10 = zext i8 %and8282 to i32
  %and11 = and i32 %conv10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %spi_rd_buf.exit
  %24 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i) #10
  %26 = getelementptr inbounds i8, ptr %transfer.i.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 92)
  %28 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %34 = getelementptr inbounds [2 x i8], ptr %txdata.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %txdata.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 90, ptr %txdata.i.i, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 32, ptr %34, align 1
  %37 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %txdata.i.i, ptr %transfer.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.spi_wr8.exit_crit_edge

if.then.spi_wr8.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i.i, %if.then.spi_wr8.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %25, ptr noundef nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call fastcc void @max3420_handle_setup(ptr noundef %udc)
  br label %cleanup

if.end:                                           ; preds = %spi_rd_buf.exit
  %and281 = and i8 %reg.sroa.9.0.copyload, %reg.sroa.7.0.copyload
  %conv12 = zext i8 %and281 to i32
  %and13 = and i32 %conv12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end22, label %if.then15

if.then15:                                        ; preds = %if.end
  %43 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i313) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i314) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i315) #10
  %45 = getelementptr inbounds i8, ptr %transfer.i.i313, i32 4
  %46 = call ptr @memset(ptr %45, i32 0, i32 92)
  %47 = getelementptr inbounds i8, ptr %msg.i.i314, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg.i.i314 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg.i.i314, ptr %msg.i.i314, align 4
  %prev.i.i.i.i.i317 = getelementptr inbounds %struct.list_head, ptr %msg.i.i314, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i317 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i314, ptr %prev.i.i.i.i.i317, align 4
  %resources.i.i.i.i318 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i314, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i318 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i318, ptr %resources.i.i.i.i318, align 4
  %prev.i2.i.i.i.i319 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i314, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i319 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i318, ptr %prev.i2.i.i.i.i319, align 4
  %53 = getelementptr inbounds [2 x i8], ptr %txdata.i.i315, i32 0, i32 1
  %54 = ptrtoint ptr %txdata.i.i315 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 106, ptr %txdata.i.i315, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 64, ptr %53, align 1
  %56 = ptrtoint ptr %transfer.i.i313 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %txdata.i.i315, ptr %transfer.i.i313, align 4
  %len.i.i320 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i313, i32 0, i32 2
  %57 = ptrtoint ptr %len.i.i320 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %len.i.i320, align 4
  %transfer_list.i.i.i321 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i313, i32 0, i32 18
  %call.i.i.i.i.i322 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i321, ptr noundef nonnull %msg.i.i314, ptr noundef nonnull %msg.i.i314) #10
  br i1 %call.i.i.i.i.i322, label %if.end.i.i.i.i.i324, label %if.then15.spi_wr8.exit326_crit_edge

if.then15.spi_wr8.exit326_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit326

if.end.i.i.i.i.i324:                              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %prev.i.i.i.i.i317 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i.i.i321, ptr %prev.i.i.i.i.i317, align 4
  %59 = ptrtoint ptr %transfer_list.i.i.i321 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i314, ptr %transfer_list.i.i.i321, align 4
  %prev3.i.i.i.i.i323 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i313, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i323 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i314, ptr %prev3.i.i.i.i.i323, align 4
  %61 = ptrtoint ptr %msg.i.i314 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i.i.i321, ptr %msg.i.i314, align 4
  br label %spi_wr8.exit326

spi_wr8.exit326:                                  ; preds = %if.end.i.i.i.i.i324, %if.then15.spi_wr8.exit326_crit_edge
  %call.i.i325 = call i32 @spi_sync(ptr noundef %44, ptr noundef nonnull %msg.i.i314) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i315) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i314) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i313) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_irqs, %cleanup)) #10
          to label %if.then20 [label %cleanup], !srcloc !138

if.then20:                                        ; preds = %spi_wr8.exit326
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_irqs.__UNIQUE_ID_ddebug259, ptr noundef %63, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %and24 = and i32 %conv12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end46, label %if.then26

if.then26:                                        ; preds = %if.end22
  %64 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i327) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i328) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i329) #10
  %66 = getelementptr inbounds i8, ptr %transfer.i.i327, i32 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 92)
  %68 = getelementptr inbounds i8, ptr %msg.i.i328, i32 8
  %69 = call ptr @memset(ptr %68, i32 0, i32 40)
  %70 = ptrtoint ptr %msg.i.i328 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %msg.i.i328, ptr %msg.i.i328, align 4
  %prev.i.i.i.i.i331 = getelementptr inbounds %struct.list_head, ptr %msg.i.i328, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i.i331 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i328, ptr %prev.i.i.i.i.i331, align 4
  %resources.i.i.i.i332 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i328, i32 0, i32 10
  %72 = ptrtoint ptr %resources.i.i.i.i332 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %resources.i.i.i.i332, ptr %resources.i.i.i.i332, align 4
  %prev.i2.i.i.i.i333 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i328, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %prev.i2.i.i.i.i333 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %resources.i.i.i.i332, ptr %prev.i2.i.i.i.i333, align 4
  %74 = getelementptr inbounds [2 x i8], ptr %txdata.i.i329, i32 0, i32 1
  %75 = ptrtoint ptr %txdata.i.i329 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 106, ptr %txdata.i.i329, align 1
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 32, ptr %74, align 1
  %77 = ptrtoint ptr %transfer.i.i327 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %txdata.i.i329, ptr %transfer.i.i327, align 4
  %len.i.i334 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i327, i32 0, i32 2
  %78 = ptrtoint ptr %len.i.i334 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %len.i.i334, align 4
  %transfer_list.i.i.i335 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i327, i32 0, i32 18
  %call.i.i.i.i.i336 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i335, ptr noundef nonnull %msg.i.i328, ptr noundef nonnull %msg.i.i328) #10
  br i1 %call.i.i.i.i.i336, label %if.end.i.i.i.i.i338, label %if.then26.spi_wr8.exit340_crit_edge

if.then26.spi_wr8.exit340_crit_edge:              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit340

if.end.i.i.i.i.i338:                              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %prev.i.i.i.i.i331 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %transfer_list.i.i.i335, ptr %prev.i.i.i.i.i331, align 4
  %80 = ptrtoint ptr %transfer_list.i.i.i335 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i328, ptr %transfer_list.i.i.i335, align 4
  %prev3.i.i.i.i.i337 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i327, i32 0, i32 18, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i.i.i337 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg.i.i328, ptr %prev3.i.i.i.i.i337, align 4
  %82 = ptrtoint ptr %msg.i.i328 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %transfer_list.i.i.i335, ptr %msg.i.i328, align 4
  br label %spi_wr8.exit340

spi_wr8.exit340:                                  ; preds = %if.end.i.i.i.i.i338, %if.then26.spi_wr8.exit340_crit_edge
  %call.i.i339 = call i32 @spi_sync(ptr noundef %65, ptr noundef nonnull %msg.i.i328) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i329) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i328) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i327) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_irqs, %cleanup)) #10
          to label %if.then41 [label %cleanup], !srcloc !138

if.then41:                                        ; preds = %spi_wr8.exit340
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %83 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev42, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_irqs.__UNIQUE_ID_ddebug260, ptr noundef %84, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end22
  %and48 = and i32 %conv12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end70, label %if.then50

if.then50:                                        ; preds = %if.end46
  %85 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i341) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i342) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i343) #10
  %87 = getelementptr inbounds i8, ptr %transfer.i.i341, i32 4
  %88 = call ptr @memset(ptr %87, i32 0, i32 92)
  %89 = getelementptr inbounds i8, ptr %msg.i.i342, i32 8
  %90 = call ptr @memset(ptr %89, i32 0, i32 40)
  %91 = ptrtoint ptr %msg.i.i342 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %msg.i.i342, ptr %msg.i.i342, align 4
  %prev.i.i.i.i.i345 = getelementptr inbounds %struct.list_head, ptr %msg.i.i342, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i.i.i345 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %msg.i.i342, ptr %prev.i.i.i.i.i345, align 4
  %resources.i.i.i.i346 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i342, i32 0, i32 10
  %93 = ptrtoint ptr %resources.i.i.i.i346 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %resources.i.i.i.i346, ptr %resources.i.i.i.i346, align 4
  %prev.i2.i.i.i.i347 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i342, i32 0, i32 10, i32 1
  %94 = ptrtoint ptr %prev.i2.i.i.i.i347 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %resources.i.i.i.i346, ptr %prev.i2.i.i.i.i347, align 4
  %95 = getelementptr inbounds [2 x i8], ptr %txdata.i.i343, i32 0, i32 1
  %96 = ptrtoint ptr %txdata.i.i343 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 106, ptr %txdata.i.i343, align 1
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 8, ptr %95, align 1
  %98 = ptrtoint ptr %transfer.i.i341 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %txdata.i.i343, ptr %transfer.i.i341, align 4
  %len.i.i348 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i341, i32 0, i32 2
  %99 = ptrtoint ptr %len.i.i348 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %len.i.i348, align 4
  %transfer_list.i.i.i349 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i341, i32 0, i32 18
  %call.i.i.i.i.i350 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i349, ptr noundef nonnull %msg.i.i342, ptr noundef nonnull %msg.i.i342) #10
  br i1 %call.i.i.i.i.i350, label %if.end.i.i.i.i.i352, label %if.then50.spi_wr8.exit354_crit_edge

if.then50.spi_wr8.exit354_crit_edge:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit354

if.end.i.i.i.i.i352:                              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %prev.i.i.i.i.i345 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %transfer_list.i.i.i349, ptr %prev.i.i.i.i.i345, align 4
  %101 = ptrtoint ptr %transfer_list.i.i.i349 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %msg.i.i342, ptr %transfer_list.i.i.i349, align 4
  %prev3.i.i.i.i.i351 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i341, i32 0, i32 18, i32 1
  %102 = ptrtoint ptr %prev3.i.i.i.i.i351 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i.i342, ptr %prev3.i.i.i.i.i351, align 4
  %103 = ptrtoint ptr %msg.i.i342 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %transfer_list.i.i.i349, ptr %msg.i.i342, align 4
  br label %spi_wr8.exit354

spi_wr8.exit354:                                  ; preds = %if.end.i.i.i.i.i352, %if.then50.spi_wr8.exit354_crit_edge
  %call.i.i353 = call i32 @spi_sync(ptr noundef %86, ptr noundef nonnull %msg.i.i342) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i343) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i342) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i341) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_irqs, %cleanup)) #10
          to label %if.then65 [label %cleanup], !srcloc !138

if.then65:                                        ; preds = %spi_wr8.exit354
  call void @__sanitizer_cov_trace_pc() #12
  %dev66 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %104 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev66, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_irqs.__UNIQUE_ID_ddebug261, ptr noundef %105, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end70:                                         ; preds = %if.end46
  %and72 = and i32 %conv12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end94, label %if.then74

if.then74:                                        ; preds = %if.end70
  %106 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i355) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i356) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i357) #10
  %108 = getelementptr inbounds i8, ptr %transfer.i.i355, i32 4
  %109 = call ptr @memset(ptr %108, i32 0, i32 92)
  %110 = getelementptr inbounds i8, ptr %msg.i.i356, i32 8
  %111 = call ptr @memset(ptr %110, i32 0, i32 40)
  %112 = ptrtoint ptr %msg.i.i356 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %msg.i.i356, ptr %msg.i.i356, align 4
  %prev.i.i.i.i.i359 = getelementptr inbounds %struct.list_head, ptr %msg.i.i356, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i.i.i.i.i359 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %msg.i.i356, ptr %prev.i.i.i.i.i359, align 4
  %resources.i.i.i.i360 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i356, i32 0, i32 10
  %114 = ptrtoint ptr %resources.i.i.i.i360 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %resources.i.i.i.i360, ptr %resources.i.i.i.i360, align 4
  %prev.i2.i.i.i.i361 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i356, i32 0, i32 10, i32 1
  %115 = ptrtoint ptr %prev.i2.i.i.i.i361 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %resources.i.i.i.i360, ptr %prev.i2.i.i.i.i361, align 4
  %116 = getelementptr inbounds [2 x i8], ptr %txdata.i.i357, i32 0, i32 1
  %117 = ptrtoint ptr %txdata.i.i357 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 106, ptr %txdata.i.i357, align 1
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -128, ptr %116, align 1
  %119 = ptrtoint ptr %transfer.i.i355 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %txdata.i.i357, ptr %transfer.i.i355, align 4
  %len.i.i362 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i355, i32 0, i32 2
  %120 = ptrtoint ptr %len.i.i362 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %len.i.i362, align 4
  %transfer_list.i.i.i363 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i355, i32 0, i32 18
  %call.i.i.i.i.i364 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i363, ptr noundef nonnull %msg.i.i356, ptr noundef nonnull %msg.i.i356) #10
  br i1 %call.i.i.i.i.i364, label %if.end.i.i.i.i.i366, label %if.then74.spi_wr8.exit368_crit_edge

if.then74.spi_wr8.exit368_crit_edge:              ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit368

if.end.i.i.i.i.i366:                              ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %prev.i.i.i.i.i359 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %transfer_list.i.i.i363, ptr %prev.i.i.i.i.i359, align 4
  %122 = ptrtoint ptr %transfer_list.i.i.i363 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %msg.i.i356, ptr %transfer_list.i.i.i363, align 4
  %prev3.i.i.i.i.i365 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i355, i32 0, i32 18, i32 1
  %123 = ptrtoint ptr %prev3.i.i.i.i.i365 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %msg.i.i356, ptr %prev3.i.i.i.i.i365, align 4
  %124 = ptrtoint ptr %msg.i.i356 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %transfer_list.i.i.i363, ptr %msg.i.i356, align 4
  br label %spi_wr8.exit368

spi_wr8.exit368:                                  ; preds = %if.end.i.i.i.i.i366, %if.then74.spi_wr8.exit368_crit_edge
  %call.i.i367 = call i32 @spi_sync(ptr noundef %107, ptr noundef nonnull %msg.i.i356) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i357) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i356) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i355) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_irqs, %do.end93)) #10
          to label %if.then89 [label %do.end93], !srcloc !138

if.then89:                                        ; preds = %spi_wr8.exit368
  call void @__sanitizer_cov_trace_pc() #12
  %dev90 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %125 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev90, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_irqs.__UNIQUE_ID_ddebug262, ptr noundef %126, ptr noundef nonnull @.str.37) #10
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %spi_wr8.exit368
  %127 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i369) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i370) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i371) #10
  %129 = getelementptr inbounds i8, ptr %transfer.i.i369, i32 4
  %130 = call ptr @memset(ptr %129, i32 0, i32 92)
  %131 = getelementptr inbounds i8, ptr %msg.i.i370, i32 8
  %132 = call ptr @memset(ptr %131, i32 0, i32 40)
  %133 = ptrtoint ptr %msg.i.i370 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %msg.i.i370, ptr %msg.i.i370, align 4
  %prev.i.i.i.i.i373 = getelementptr inbounds %struct.list_head, ptr %msg.i.i370, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i.i.i.i373 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %msg.i.i370, ptr %prev.i.i.i.i.i373, align 4
  %resources.i.i.i.i374 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i370, i32 0, i32 10
  %135 = ptrtoint ptr %resources.i.i.i.i374 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %resources.i.i.i.i374, ptr %resources.i.i.i.i374, align 4
  %prev.i2.i.i.i.i375 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i370, i32 0, i32 10, i32 1
  %136 = ptrtoint ptr %prev.i2.i.i.i.i375 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %resources.i.i.i.i374, ptr %prev.i2.i.i.i.i375, align 4
  %137 = getelementptr inbounds [2 x i8], ptr %txdata.i.i371, i32 0, i32 1
  %138 = ptrtoint ptr %txdata.i.i371 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 114, ptr %txdata.i.i371, align 1
  %139 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -120, ptr %137, align 1
  %140 = ptrtoint ptr %transfer.i.i369 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %txdata.i.i371, ptr %transfer.i.i369, align 4
  %len.i.i376 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i369, i32 0, i32 2
  %141 = ptrtoint ptr %len.i.i376 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2, ptr %len.i.i376, align 4
  %transfer_list.i.i.i377 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i369, i32 0, i32 18
  %call.i.i.i.i.i378 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i377, ptr noundef nonnull %msg.i.i370, ptr noundef nonnull %msg.i.i370) #10
  br i1 %call.i.i.i.i.i378, label %if.end.i.i.i.i.i380, label %do.end93.spi_wr8.exit382_crit_edge

do.end93.spi_wr8.exit382_crit_edge:               ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit382

if.end.i.i.i.i.i380:                              ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %prev.i.i.i.i.i373 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %transfer_list.i.i.i377, ptr %prev.i.i.i.i.i373, align 4
  %143 = ptrtoint ptr %transfer_list.i.i.i377 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %msg.i.i370, ptr %transfer_list.i.i.i377, align 4
  %prev3.i.i.i.i.i379 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i369, i32 0, i32 18, i32 1
  %144 = ptrtoint ptr %prev3.i.i.i.i.i379 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %msg.i.i370, ptr %prev3.i.i.i.i.i379, align 4
  %145 = ptrtoint ptr %msg.i.i370 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %transfer_list.i.i.i377, ptr %msg.i.i370, align 4
  br label %spi_wr8.exit382

spi_wr8.exit382:                                  ; preds = %if.end.i.i.i.i.i380, %do.end93.spi_wr8.exit382_crit_edge
  %call.i.i381 = call i32 @spi_sync(ptr noundef %128, ptr noundef nonnull %msg.i.i370) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i371) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i370) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i369) #10
  %146 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i383) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i384) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i385) #10
  %148 = getelementptr inbounds i8, ptr %transfer.i.i383, i32 4
  %149 = call ptr @memset(ptr %148, i32 0, i32 92)
  %150 = getelementptr inbounds i8, ptr %msg.i.i384, i32 8
  %151 = call ptr @memset(ptr %150, i32 0, i32 40)
  %152 = ptrtoint ptr %msg.i.i384 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %msg.i.i384, ptr %msg.i.i384, align 4
  %prev.i.i.i.i.i387 = getelementptr inbounds %struct.list_head, ptr %msg.i.i384, i32 0, i32 1
  %153 = ptrtoint ptr %prev.i.i.i.i.i387 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %msg.i.i384, ptr %prev.i.i.i.i.i387, align 4
  %resources.i.i.i.i388 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i384, i32 0, i32 10
  %154 = ptrtoint ptr %resources.i.i.i.i388 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %resources.i.i.i.i388, ptr %resources.i.i.i.i388, align 4
  %prev.i2.i.i.i.i389 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i384, i32 0, i32 10, i32 1
  %155 = ptrtoint ptr %prev.i2.i.i.i.i389 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %resources.i.i.i.i388, ptr %prev.i2.i.i.i.i389, align 4
  %156 = getelementptr inbounds [2 x i8], ptr %txdata.i.i385, i32 0, i32 1
  %157 = ptrtoint ptr %txdata.i.i385 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 98, ptr %txdata.i.i385, align 1
  %158 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 35, ptr %156, align 1
  %159 = ptrtoint ptr %transfer.i.i383 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %txdata.i.i385, ptr %transfer.i.i383, align 4
  %len.i.i390 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i383, i32 0, i32 2
  %160 = ptrtoint ptr %len.i.i390 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 2, ptr %len.i.i390, align 4
  %transfer_list.i.i.i391 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i383, i32 0, i32 18
  %call.i.i.i.i.i392 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i391, ptr noundef nonnull %msg.i.i384, ptr noundef nonnull %msg.i.i384) #10
  br i1 %call.i.i.i.i.i392, label %if.end.i.i.i.i.i394, label %spi_wr8.exit382.spi_wr8.exit396_crit_edge

spi_wr8.exit382.spi_wr8.exit396_crit_edge:        ; preds = %spi_wr8.exit382
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit396

if.end.i.i.i.i.i394:                              ; preds = %spi_wr8.exit382
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %prev.i.i.i.i.i387 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %transfer_list.i.i.i391, ptr %prev.i.i.i.i.i387, align 4
  %162 = ptrtoint ptr %transfer_list.i.i.i391 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %msg.i.i384, ptr %transfer_list.i.i.i391, align 4
  %prev3.i.i.i.i.i393 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i383, i32 0, i32 18, i32 1
  %163 = ptrtoint ptr %prev3.i.i.i.i.i393 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %msg.i.i384, ptr %prev3.i.i.i.i.i393, align 4
  %164 = ptrtoint ptr %msg.i.i384 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %transfer_list.i.i.i391, ptr %msg.i.i384, align 4
  br label %spi_wr8.exit396

spi_wr8.exit396:                                  ; preds = %if.end.i.i.i.i.i394, %spi_wr8.exit382.spi_wr8.exit396_crit_edge
  %call.i.i395 = call i32 @spi_sync(ptr noundef %147, ptr noundef nonnull %msg.i.i384) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i385) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i384) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i383) #10
  br label %cleanup

if.end94:                                         ; preds = %if.end70
  %and96 = and i32 %conv12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end118, label %if.then98

if.then98:                                        ; preds = %if.end94
  call fastcc void @spi_wr8(ptr noundef %udc, i8 noundef zeroext 13, i8 noundef zeroext 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_irqs, %do.end117)) #10
          to label %if.then113 [label %do.end117], !srcloc !138

if.then113:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %dev114 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %165 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev114, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_irqs.__UNIQUE_ID_ddebug263, ptr noundef %166, ptr noundef nonnull @.str.38) #10
  br label %do.end117

do.end117:                                        ; preds = %if.then113, %if.then98
  %suspended = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 14
  %167 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %suspended, align 8
  br label %cleanup

if.end118:                                        ; preds = %if.end94
  %and120 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end143, label %if.then122

if.then122:                                       ; preds = %if.end118
  call fastcc void @spi_wr8(ptr noundef %udc, i8 noundef zeroext 13, i8 noundef zeroext 4)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_irqs, %do.end141)) #10
          to label %if.then137 [label %do.end141], !srcloc !138

if.then137:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  %dev138 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %168 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev138, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_irqs.__UNIQUE_ID_ddebug264, ptr noundef %169, ptr noundef nonnull @.str.39) #10
  br label %do.end141

do.end141:                                        ; preds = %if.then137, %if.then122
  %suspended142 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 14
  %170 = ptrtoint ptr %suspended142 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %suspended142, align 8
  br label %cleanup

if.end143:                                        ; preds = %if.end118
  %and145 = and i32 %conv12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end167, label %if.then147

if.then147:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @spi_wr8(ptr noundef %udc, i8 noundef zeroext 13, i8 noundef zeroext 2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_irqs, %cleanup)) #10
          to label %if.then162 [label %cleanup], !srcloc !138

if.then162:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  %dev163 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %171 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev163, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_irqs.__UNIQUE_ID_ddebug265, ptr noundef %172, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end167:                                        ; preds = %if.end143
  %and169 = and i32 %conv12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end191, label %if.then171

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @spi_wr8(ptr noundef %udc, i8 noundef zeroext 13, i8 noundef zeroext 1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_irqs, %cleanup)) #10
          to label %if.then186 [label %cleanup], !srcloc !138

if.then186:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  %dev187 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %173 = ptrtoint ptr %dev187 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev187, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_irqs.__UNIQUE_ID_ddebug266, ptr noundef %174, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end191:                                        ; preds = %if.end167
  %and193 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end191.if.end198_crit_edge, label %land.lhs.true

if.end191.if.end198_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

land.lhs.true:                                    ; preds = %if.end191
  %call195 = call fastcc i32 @max3420_do_data(ptr noundef %udc, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %land.lhs.true.if.end198_crit_edge, label %if.then197

land.lhs.true.if.end198_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.then197:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @spi_wr8_ack(ptr noundef %udc, i8 noundef zeroext 11, i8 noundef zeroext 2, i32 noundef 1)
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %land.lhs.true.if.end198_crit_edge, %if.end191.if.end198_crit_edge
  %ret.0.off0 = phi i1 [ true, %if.then197 ], [ false, %land.lhs.true.if.end198_crit_edge ], [ false, %if.end191.if.end198_crit_edge ]
  %and200 = and i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.end198.if.end206_crit_edge, label %land.lhs.true202

if.end198.if.end206_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

land.lhs.true202:                                 ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  %call203 = call fastcc i32 @max3420_do_data(ptr noundef %udc, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp ne i32 %call203, 0
  %spec.select = or i1 %ret.0.off0, %tobool204.not
  br label %if.end206

if.end206:                                        ; preds = %land.lhs.true202, %if.end198.if.end206_crit_edge
  %ret.1.off0 = phi i1 [ %ret.0.off0, %if.end198.if.end206_crit_edge ], [ %spec.select, %land.lhs.true202 ]
  %and208 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.end206.if.end214_crit_edge, label %land.lhs.true210

if.end206.if.end214_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end214

land.lhs.true210:                                 ; preds = %if.end206
  %call211 = call fastcc i32 @max3420_do_data(ptr noundef %udc, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %land.lhs.true210.if.end214_crit_edge, label %if.then213

land.lhs.true210.if.end214_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end214

if.then213:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @spi_wr8_ack(ptr noundef %udc, i8 noundef zeroext 11, i8 noundef zeroext 4, i32 noundef 1)
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %land.lhs.true210.if.end214_crit_edge, %if.end206.if.end214_crit_edge
  %ret.2.off0 = phi i1 [ true, %if.then213 ], [ %ret.1.off0, %land.lhs.true210.if.end214_crit_edge ], [ %ret.1.off0, %if.end206.if.end214_crit_edge ]
  %and216 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end214.if.end222_crit_edge, label %land.lhs.true218

if.end214.if.end222_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222

land.lhs.true218:                                 ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #12
  %call219 = call fastcc i32 @max3420_do_data(ptr noundef %udc, i32 noundef 2, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp ne i32 %call219, 0
  %spec.select290 = select i1 %tobool220.not, i1 true, i1 %ret.2.off0
  br label %if.end222

if.end222:                                        ; preds = %land.lhs.true218, %if.end214.if.end222_crit_edge
  %ret.3.off0 = phi i1 [ %ret.2.off0, %if.end214.if.end222_crit_edge ], [ %spec.select290, %land.lhs.true218 ]
  %and224 = and i32 %conv10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.end222.if.end230_crit_edge, label %land.lhs.true226

if.end222.if.end230_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

land.lhs.true226:                                 ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  %call227 = call fastcc i32 @max3420_do_data(ptr noundef %udc, i32 noundef 3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp ne i32 %call227, 0
  %spec.select291 = select i1 %tobool228.not, i1 true, i1 %ret.3.off0
  br label %if.end230

if.end230:                                        ; preds = %land.lhs.true226, %if.end222.if.end230_crit_edge
  %ret.4.off0 = phi i1 [ %ret.3.off0, %if.end222.if.end230_crit_edge ], [ %spec.select291, %land.lhs.true226 ]
  %conv232 = zext i1 %ret.4.off0 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end230, %if.then186, %if.then171, %if.then162, %if.then147, %do.end141, %do.end117, %spi_wr8.exit396, %if.then65, %spi_wr8.exit354, %if.then41, %spi_wr8.exit340, %if.then20, %spi_wr8.exit326, %spi_wr8.exit
  %retval.0 = phi i32 [ 1, %spi_wr8.exit ], [ 1, %spi_wr8.exit396 ], [ 1, %do.end117 ], [ 1, %do.end141 ], [ %conv232, %if.end230 ], [ 1, %if.then20 ], [ 1, %if.then41 ], [ 1, %if.then65 ], [ 1, %if.then162 ], [ 1, %if.then186 ], [ 1, %spi_wr8.exit326 ], [ 1, %spi_wr8.exit340 ], [ 1, %spi_wr8.exit354 ], [ 1, %if.then147 ], [ 1, %if.then171 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max3420_do_data(ptr noundef %udc, i32 noundef %ep_id, i32 noundef %in) unnamed_addr #2 align 64 {
entry:
  %transfer.i159 = alloca %struct.spi_transfer, align 4
  %msg.i160 = alloca %struct.spi_message, align 4
  %txdata.i = alloca [1 x i8], align 1
  %transfer.i140 = alloca %struct.spi_transfer, align 4
  %msg.i141 = alloca %struct.spi_message, align 4
  %local_buf.i142 = alloca [65 x i8], align 1
  %transfer.i.i123 = alloca %struct.spi_transfer, align 4
  %msg.i.i124 = alloca %struct.spi_message, align 4
  %txdata.i.i125 = alloca [2 x i8], align 1
  %rxdata.i.i = alloca [2 x i8], align 1
  %transfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %txdata.i.i = alloca [2 x i8], align 1
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %local_buf.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 %ep_id, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %actual = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 %5
  %maxpacket = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 %ep_id, i32 0, i32 7
  %6 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %length7 = getelementptr i8, ptr %1, i32 -52
  %7 = ptrtoint ptr %length7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length7, align 4
  %sub = sub i32 %8, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast)
  %cmp = icmp slt i32 %sub, %bf.cast
  %9 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %bf.cast)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %if.end.if.then60_crit_edge, label %if.end13

if.end.if.then60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in)
  %tobool14.not = icmp eq i32 %in, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr5) #10, !srcloc !140
  %conv = trunc i32 %ep_id to i8
  %conv16 = trunc i32 %9 to i8
  %spi1.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %10 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %local_buf.i) #10
  %12 = getelementptr inbounds i8, ptr %local_buf.i, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 64)
  %14 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %shl.i = shl i8 %conv, 3
  %or.i = or i8 %shl.i, 2
  %22 = ptrtoint ptr %local_buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or.i, ptr %local_buf.i, align 1
  %conv18.i = and i32 %9, 255
  %23 = call ptr @memcpy(ptr %12, ptr %add.ptr5, i32 %conv18.i)
  %24 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %local_buf.i, ptr %transfer.i, align 4
  %add.i = add nuw nsw i32 %conv18.i, 1
  %len20.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %25 = ptrtoint ptr %len20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %len20.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then15.spi_wr_buf.exit_crit_edge

if.then15.spi_wr_buf.exit_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr_buf.exit

if.end.i.i.i.i:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_wr_buf.exit

spi_wr_buf.exit:                                  ; preds = %if.end.i.i.i.i, %if.then15.spi_wr_buf.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %local_buf.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  %30 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i) #10
  %32 = getelementptr inbounds i8, ptr %transfer.i.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 92)
  %34 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 40)
  %36 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %38 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %40 = getelementptr inbounds [2 x i8], ptr %txdata.i.i, i32 0, i32 1
  %conv18 = shl i8 %conv, 3
  %shl.i.i = add i8 %conv18, 40
  %or17.i.i = or i8 %shl.i.i, 2
  %41 = ptrtoint ptr %txdata.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %or17.i.i, ptr %txdata.i.i, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv16, ptr %40, align 1
  %43 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %txdata.i.i, ptr %transfer.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %spi_wr_buf.exit.spi_wr8.exit_crit_edge

spi_wr_buf.exit.spi_wr8.exit_crit_edge:           ; preds = %spi_wr_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i.i:                                 ; preds = %spi_wr_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i.i, %spi_wr_buf.exit.spi_wr8.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %31, ptr noundef nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #10
  br label %if.end47

if.else:                                          ; preds = %if.end13
  %49 = trunc i32 %ep_id to i8
  %spi1.i.i126 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %50 = ptrtoint ptr %spi1.i.i126 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi1.i.i126, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i123) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i124) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i125) #10
  %52 = getelementptr inbounds [2 x i8], ptr %txdata.i.i125, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %52, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i) #10
  %54 = ptrtoint ptr %rxdata.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %rxdata.i.i, align 1, !annotation !136
  %55 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %55, align 1, !annotation !136
  %57 = getelementptr inbounds i8, ptr %transfer.i.i123, i32 12
  %58 = call ptr @memset(ptr %57, i32 0, i32 84)
  %59 = getelementptr inbounds i8, ptr %msg.i.i124, i32 8
  %60 = call ptr @memset(ptr %59, i32 0, i32 40)
  %61 = ptrtoint ptr %msg.i.i124 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %msg.i.i124, ptr %msg.i.i124, align 4
  %prev.i.i.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %msg.i.i124, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i124, ptr %prev.i.i.i.i.i127, align 4
  %resources.i.i.i.i128 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i124, i32 0, i32 10
  %63 = ptrtoint ptr %resources.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %resources.i.i.i.i128, ptr %resources.i.i.i.i128, align 4
  %prev.i2.i.i.i.i129 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i124, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resources.i.i.i.i128, ptr %prev.i2.i.i.i.i129, align 4
  %conv25 = shl i8 %49, 3
  %shl.i.i132 = add i8 %conv25, 40
  %65 = ptrtoint ptr %txdata.i.i125 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %shl.i.i132, ptr %txdata.i.i125, align 1
  %66 = ptrtoint ptr %transfer.i.i123 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %txdata.i.i125, ptr %transfer.i.i123, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i123, i32 0, i32 1
  %67 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %rxdata.i.i, ptr %rx_buf.i.i, align 4
  %len.i.i133 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i123, i32 0, i32 2
  %68 = ptrtoint ptr %len.i.i133 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %len.i.i133, align 4
  %transfer_list.i.i.i134 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i123, i32 0, i32 18
  %call.i.i.i.i.i135 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i134, ptr noundef nonnull %msg.i.i124, ptr noundef nonnull %msg.i.i124) #10
  br i1 %call.i.i.i.i.i135, label %if.end.i.i.i.i.i138, label %if.else.spi_rd8.exit_crit_edge

if.else.spi_rd8.exit_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit

if.end.i.i.i.i.i138:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %prev.i.i.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %transfer_list.i.i.i134, ptr %prev.i.i.i.i.i127, align 4
  %70 = ptrtoint ptr %transfer_list.i.i.i134 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %msg.i.i124, ptr %transfer_list.i.i.i134, align 4
  %prev3.i.i.i.i.i137 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i123, i32 0, i32 18, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i.i.i137 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i124, ptr %prev3.i.i.i.i.i137, align 4
  %72 = ptrtoint ptr %msg.i.i124 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %transfer_list.i.i.i134, ptr %msg.i.i124, align 4
  br label %spi_rd8.exit

spi_rd8.exit:                                     ; preds = %if.end.i.i.i.i.i138, %if.else.spi_rd8.exit_crit_edge
  %call.i.i139 = call i32 @spi_sync(ptr noundef %51, ptr noundef nonnull %msg.i.i124) #10
  %73 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %55, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i125) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i124) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i123) #10
  %conv27 = zext i8 %74 to i32
  %75 = call i32 @llvm.smin.i32(i32 %9, i32 %conv27)
  call void @llvm.prefetch.p0(ptr %add.ptr5, i32 1, i32 3, i32 1)
  %76 = ptrtoint ptr %spi1.i.i126 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spi1.i.i126, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i140) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i141) #10
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %local_buf.i142) #10
  %78 = getelementptr inbounds i8, ptr %local_buf.i142, i32 1
  %79 = call ptr @memset(ptr %78, i32 0, i32 64)
  %80 = getelementptr inbounds i8, ptr %transfer.i140, i32 12
  %81 = call ptr @memset(ptr %80, i32 0, i32 84)
  %82 = getelementptr inbounds i8, ptr %msg.i141, i32 8
  %83 = call ptr @memset(ptr %82, i32 0, i32 40)
  %84 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %msg.i141, ptr %msg.i141, align 4
  %prev.i.i.i.i144 = getelementptr inbounds %struct.list_head, ptr %msg.i141, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i141, ptr %prev.i.i.i.i144, align 4
  %resources.i.i.i145 = getelementptr inbounds %struct.spi_message, ptr %msg.i141, i32 0, i32 10
  %86 = ptrtoint ptr %resources.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %resources.i.i.i145, ptr %resources.i.i.i145, align 4
  %prev.i2.i.i.i146 = getelementptr inbounds %struct.spi_message, ptr %msg.i141, i32 0, i32 10, i32 1
  %87 = ptrtoint ptr %prev.i2.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %resources.i.i.i145, ptr %prev.i2.i.i.i146, align 4
  %shl.i149 = shl i8 %49, 3
  %88 = ptrtoint ptr %local_buf.i142 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %shl.i149, ptr %local_buf.i142, align 1
  %89 = ptrtoint ptr %transfer.i140 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %local_buf.i142, ptr %transfer.i140, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i140, i32 0, i32 1
  %90 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %local_buf.i142, ptr %rx_buf.i, align 4
  %conv19.i = and i32 %75, 255
  %add.i150 = add nuw nsw i32 %conv19.i, 1
  %len20.i151 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i140, i32 0, i32 2
  %91 = ptrtoint ptr %len20.i151 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add.i150, ptr %len20.i151, align 4
  %transfer_list.i.i152 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i140, i32 0, i32 18
  %call.i.i.i.i153 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i152, ptr noundef nonnull %msg.i141, ptr noundef nonnull %msg.i141) #10
  br i1 %call.i.i.i.i153, label %if.end.i.i.i.i156, label %spi_rd8.exit.spi_rd_buf.exit_crit_edge

spi_rd8.exit.spi_rd_buf.exit_crit_edge:           ; preds = %spi_rd8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd_buf.exit

if.end.i.i.i.i156:                                ; preds = %spi_rd8.exit
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %prev.i.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %transfer_list.i.i152, ptr %prev.i.i.i.i144, align 4
  %93 = ptrtoint ptr %transfer_list.i.i152 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %msg.i141, ptr %transfer_list.i.i152, align 4
  %prev3.i.i.i.i155 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i140, i32 0, i32 18, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i141, ptr %prev3.i.i.i.i155, align 4
  %95 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %transfer_list.i.i152, ptr %msg.i141, align 4
  br label %spi_rd_buf.exit

spi_rd_buf.exit:                                  ; preds = %if.end.i.i.i.i156, %spi_rd8.exit.spi_rd_buf.exit_crit_edge
  %call.i157 = call i32 @spi_sync(ptr noundef %77, ptr noundef nonnull %msg.i141) #10
  %96 = call ptr @memcpy(ptr %add.ptr5, ptr %78, i32 %conv19.i)
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %local_buf.i142) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i141) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i140) #10
  %97 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %97, i32 7)
  %bf.load40 = load i56, ptr %maxpacket, align 2
  %bf.lshr41 = lshr i56 %bf.load40, 40
  %bf.cast42 = trunc i56 %bf.lshr41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %bf.cast42)
  %cmp43 = icmp slt i32 %75, %bf.cast42
  br label %if.end47

if.end47:                                         ; preds = %spi_rd_buf.exit, %spi_wr8.exit
  %length.0 = phi i32 [ %9, %spi_wr8.exit ], [ %75, %spi_rd_buf.exit ]
  %done.0.in = phi i1 [ %cmp, %spi_wr8.exit ], [ %cmp43, %spi_rd_buf.exit ]
  %98 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %actual, align 4
  %add50 = add i32 %99, %length.0
  store i32 %add50, ptr %actual, align 4
  %100 = ptrtoint ptr %length7 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %length7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %101)
  %cmp55 = icmp ne i32 %add50, %101
  %tobool59.not = xor i1 %done.0.in, true
  %or.cond = select i1 %cmp55, i1 %tobool59.not, i1 false
  br i1 %or.cond, label %if.end47.cleanup_crit_edge, label %if.end47.if.then60_crit_edge

if.end47.if.then60_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then60:                                        ; preds = %if.end47.if.then60_crit_edge, %if.end.if.then60_crit_edge
  %lock = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 %ep_id, i32 5
  %call66 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call.i.i158 = call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i158, label %if.end.i.i, label %if.then60.list_del_init.exit_crit_edge

if.then60.list_del_init.exit_crit_edge:           ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then60.list_del_init.exit_crit_edge
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %1, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ep_id)
  %cmp71 = icmp eq i32 %ep_id, 0
  br i1 %cmp71, label %if.then73, label %list_del_init.exit.if.end74_crit_edge

list_del_init.exit.if.end74_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then73:                                        ; preds = %list_del_init.exit
  %spi1.i161 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %110 = ptrtoint ptr %spi1.i161 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %spi1.i161, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i159) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i160) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %txdata.i) #10
  %112 = getelementptr inbounds i8, ptr %transfer.i159, i32 4
  %113 = call ptr @memset(ptr %112, i32 0, i32 92)
  %114 = getelementptr inbounds i8, ptr %msg.i160, i32 8
  %115 = call ptr @memset(ptr %114, i32 0, i32 40)
  %116 = ptrtoint ptr %msg.i160 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %msg.i160, ptr %msg.i160, align 4
  %prev.i.i.i.i162 = getelementptr inbounds %struct.list_head, ptr %msg.i160, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %msg.i160, ptr %prev.i.i.i.i162, align 4
  %resources.i.i.i163 = getelementptr inbounds %struct.spi_message, ptr %msg.i160, i32 0, i32 10
  %118 = ptrtoint ptr %resources.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %resources.i.i.i163, ptr %resources.i.i.i163, align 4
  %prev.i2.i.i.i164 = getelementptr inbounds %struct.spi_message, ptr %msg.i160, i32 0, i32 10, i32 1
  %119 = ptrtoint ptr %prev.i2.i.i.i164 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %resources.i.i.i163, ptr %prev.i2.i.i.i164, align 4
  %120 = ptrtoint ptr %txdata.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %txdata.i, align 1
  %121 = ptrtoint ptr %transfer.i159 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %txdata.i, ptr %transfer.i159, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i159, i32 0, i32 2
  %122 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %len.i, align 4
  %transfer_list.i.i165 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i159, i32 0, i32 18
  %call.i.i.i.i166 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i165, ptr noundef nonnull %msg.i160, ptr noundef nonnull %msg.i160) #10
  br i1 %call.i.i.i.i166, label %if.end.i.i.i.i168, label %if.then73.spi_ack_ctrl.exit_crit_edge

if.then73.spi_ack_ctrl.exit_crit_edge:            ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_ack_ctrl.exit

if.end.i.i.i.i168:                                ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %prev.i.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %transfer_list.i.i165, ptr %prev.i.i.i.i162, align 4
  %124 = ptrtoint ptr %transfer_list.i.i165 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %msg.i160, ptr %transfer_list.i.i165, align 4
  %prev3.i.i.i.i167 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i159, i32 0, i32 18, i32 1
  %125 = ptrtoint ptr %prev3.i.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %msg.i160, ptr %prev3.i.i.i.i167, align 4
  %126 = ptrtoint ptr %msg.i160 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %transfer_list.i.i165, ptr %msg.i160, align 4
  br label %spi_ack_ctrl.exit

spi_ack_ctrl.exit:                                ; preds = %if.end.i.i.i.i168, %if.then73.spi_ack_ctrl.exit_crit_edge
  %call.i169 = call i32 @spi_sync(ptr noundef %111, ptr noundef nonnull %msg.i160) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %txdata.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i160) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i159) #10
  br label %if.end74

if.end74:                                         ; preds = %spi_ack_ctrl.exit, %list_del_init.exit.if.end74_crit_edge
  %ep1.i = getelementptr i8, ptr %1, i32 8
  %127 = ptrtoint ptr %ep1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ep1.i, align 4
  %status3.i = getelementptr i8, ptr %1, i32 -8
  %129 = ptrtoint ptr %status3.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %status3.i, align 4
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %130, label %do.end.i [
    i32 -115, label %if.end.i.thread
    i32 0, label %if.end74.if.end10.i_crit_edge
    i32 -108, label %if.end74.if.end10.i_crit_edge175
  ]

if.end74.if.end10.i_crit_edge175:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end74.if.end10.i_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end.i.thread:                                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %status3.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %status3.i, align 4
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %udc2.i = getelementptr inbounds %struct.max3420_ep, ptr %128, i32 0, i32 1
  %133 = ptrtoint ptr %udc2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %udc2.i, align 4
  %dev.i = getelementptr inbounds %struct.max3420_udc, ptr %134, i32 0, i32 12
  %135 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %128, i32 0, i32 1
  %137 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.20, ptr noundef %138, ptr noundef %add.ptr, i32 noundef %130) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end.i.thread, %if.end74.if.end10.i_crit_edge, %if.end74.if.end10.i_crit_edge175
  %complete.i = getelementptr i8, ptr %1, i32 -28
  %139 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %complete.i, align 4
  %tobool12.not.i = icmp eq ptr %140, null
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %if.then13.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %140(ptr noundef %128, ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i, %if.end10.i.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end10.i.cleanup_crit_edge ], [ 1, %if.then13.i ], [ 1, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_max3420_stall(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  %transfer.i.i86 = alloca %struct.spi_transfer, align 4
  %msg.i.i87 = alloca %struct.spi_message, align 4
  %txdata.i.i88 = alloca [2 x i8], align 1
  %transfer.i.i73 = alloca %struct.spi_transfer, align 4
  %msg.i.i74 = alloca %struct.spi_message, align 4
  %txdata.i.i75 = alloca [2 x i8], align 1
  %transfer.i.i57 = alloca %struct.spi_transfer, align 4
  %msg.i.i58 = alloca %struct.spi_message, align 4
  %txdata.i.i59 = alloca [2 x i8], align 1
  %rxdata.i.i60 = alloca [2 x i8], align 1
  %transfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %txdata.i.i = alloca [2 x i8], align 1
  %rxdata.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.max3420_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %lock = getelementptr inbounds %struct.max3420_ep, ptr %ep, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %todo6 = getelementptr inbounds %struct.max3420_ep, ptr %ep, i32 0, i32 7
  %2 = ptrtoint ptr %todo6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %todo6, align 4
  %and = and i32 %3, 1536
  %and8 = and i32 %3, -1537
  store i32 %and8, ptr %todo6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.max3420_ep, ptr %ep, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %spi1.i.i = getelementptr inbounds %struct.max3420_udc, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %spi1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i) #10
  %8 = getelementptr inbounds [2 x i8], ptr %txdata.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i) #10
  %10 = ptrtoint ptr %rxdata.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %rxdata.i.i, align 1, !annotation !136
  %11 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !136
  %13 = getelementptr inbounds i8, ptr %transfer.i.i, i32 12
  %14 = call ptr @memset(ptr %13, i32 0, i32 84)
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
  %21 = ptrtoint ptr %txdata.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 72, ptr %txdata.i.i, align 1
  %22 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %txdata.i.i, ptr %transfer.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rxdata.i.i, ptr %rx_buf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.spi_rd8.exit_crit_edge

if.end.spi_rd8.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit

if.end.i.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_rd8.exit

spi_rd8.exit:                                     ; preds = %if.end.i.i.i.i.i, %if.end.spi_rd8.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i) #10
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and)
  %cmp13 = icmp eq i32 %and, 512
  %halted = getelementptr inbounds %struct.max3420_ep, ptr %ep, i32 0, i32 6
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %spi_rd8.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %halted to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %halted, align 4
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %add = add i32 %33, 1
  %shl = shl nuw i32 1, %add
  %34 = trunc i32 %shl to i8
  %conv18 = or i8 %30, %34
  br label %if.end33

if.else:                                          ; preds = %spi_rd8.exit
  %35 = ptrtoint ptr %halted to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %halted, align 4
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  %add21 = add i32 %37, 1
  %shl22 = shl nuw i32 1, %add21
  %38 = trunc i32 %shl22 to i8
  %39 = xor i8 %38, -1
  %conv25 = and i8 %30, %39
  %40 = ptrtoint ptr %spi1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i57) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i58) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i59) #10
  %42 = getelementptr inbounds [2 x i8], ptr %txdata.i.i59, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %42, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i.i60) #10
  %44 = ptrtoint ptr %rxdata.i.i60 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %rxdata.i.i60, align 1, !annotation !136
  %45 = getelementptr inbounds [2 x i8], ptr %rxdata.i.i60, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %45, align 1, !annotation !136
  %47 = getelementptr inbounds i8, ptr %transfer.i.i57, i32 12
  %48 = call ptr @memset(ptr %47, i32 0, i32 84)
  %49 = getelementptr inbounds i8, ptr %msg.i.i58, i32 8
  %50 = call ptr @memset(ptr %49, i32 0, i32 40)
  %51 = ptrtoint ptr %msg.i.i58 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %msg.i.i58, ptr %msg.i.i58, align 4
  %prev.i.i.i.i.i62 = getelementptr inbounds %struct.list_head, ptr %msg.i.i58, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i58, ptr %prev.i.i.i.i.i62, align 4
  %resources.i.i.i.i63 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i58, i32 0, i32 10
  %53 = ptrtoint ptr %resources.i.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %resources.i.i.i.i63, ptr %resources.i.i.i.i63, align 4
  %prev.i2.i.i.i.i64 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i58, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %prev.i2.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %resources.i.i.i.i63, ptr %prev.i2.i.i.i.i64, align 4
  %55 = ptrtoint ptr %txdata.i.i59 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 80, ptr %txdata.i.i59, align 1
  %56 = ptrtoint ptr %transfer.i.i57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %txdata.i.i59, ptr %transfer.i.i57, align 4
  %rx_buf.i.i65 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i57, i32 0, i32 1
  %57 = ptrtoint ptr %rx_buf.i.i65 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rxdata.i.i60, ptr %rx_buf.i.i65, align 4
  %len.i.i66 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i57, i32 0, i32 2
  %58 = ptrtoint ptr %len.i.i66 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %len.i.i66, align 4
  %transfer_list.i.i.i67 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i57, i32 0, i32 18
  %call.i.i.i.i.i68 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i67, ptr noundef nonnull %msg.i.i58, ptr noundef nonnull %msg.i.i58) #10
  br i1 %call.i.i.i.i.i68, label %if.end.i.i.i.i.i70, label %if.else.spi_rd8.exit72_crit_edge

if.else.spi_rd8.exit72_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8.exit72

if.end.i.i.i.i.i70:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %prev.i.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i.i.i67, ptr %prev.i.i.i.i.i62, align 4
  %60 = ptrtoint ptr %transfer_list.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i58, ptr %transfer_list.i.i.i67, align 4
  %prev3.i.i.i.i.i69 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i57, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i58, ptr %prev3.i.i.i.i.i69, align 4
  %62 = ptrtoint ptr %msg.i.i58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i.i.i67, ptr %msg.i.i58, align 4
  br label %spi_rd8.exit72

spi_rd8.exit72:                                   ; preds = %if.end.i.i.i.i.i70, %if.else.spi_rd8.exit72_crit_edge
  %call.i.i71 = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %msg.i.i58) #10
  %63 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %45, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i.i60) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i59) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i58) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i57) #10
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id, align 4
  %add28 = add i32 %66, 1
  %shl29 = shl nuw i32 1, %add28
  %67 = trunc i32 %shl29 to i8
  %conv32 = or i8 %64, %67
  %68 = ptrtoint ptr %spi1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %spi1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i73) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i74) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i75) #10
  %70 = getelementptr inbounds i8, ptr %transfer.i.i73, i32 4
  %71 = call ptr @memset(ptr %70, i32 0, i32 92)
  %72 = getelementptr inbounds i8, ptr %msg.i.i74, i32 8
  %73 = call ptr @memset(ptr %72, i32 0, i32 40)
  %74 = ptrtoint ptr %msg.i.i74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %msg.i.i74, ptr %msg.i.i74, align 4
  %prev.i.i.i.i.i77 = getelementptr inbounds %struct.list_head, ptr %msg.i.i74, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i74, ptr %prev.i.i.i.i.i77, align 4
  %resources.i.i.i.i78 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i74, i32 0, i32 10
  %76 = ptrtoint ptr %resources.i.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %resources.i.i.i.i78, ptr %resources.i.i.i.i78, align 4
  %prev.i2.i.i.i.i79 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i74, i32 0, i32 10, i32 1
  %77 = ptrtoint ptr %prev.i2.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resources.i.i.i.i78, ptr %prev.i2.i.i.i.i79, align 4
  %78 = getelementptr inbounds [2 x i8], ptr %txdata.i.i75, i32 0, i32 1
  %79 = ptrtoint ptr %txdata.i.i75 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 82, ptr %txdata.i.i75, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv32, ptr %78, align 1
  %81 = ptrtoint ptr %transfer.i.i73 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %txdata.i.i75, ptr %transfer.i.i73, align 4
  %len.i.i80 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i73, i32 0, i32 2
  %82 = ptrtoint ptr %len.i.i80 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %len.i.i80, align 4
  %transfer_list.i.i.i81 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i73, i32 0, i32 18
  %call.i.i.i.i.i82 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i81, ptr noundef nonnull %msg.i.i74, ptr noundef nonnull %msg.i.i74) #10
  br i1 %call.i.i.i.i.i82, label %if.end.i.i.i.i.i84, label %spi_rd8.exit72.spi_wr8.exit_crit_edge

spi_rd8.exit72.spi_wr8.exit_crit_edge:            ; preds = %spi_rd8.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i.i84:                               ; preds = %spi_rd8.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %prev.i.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %transfer_list.i.i.i81, ptr %prev.i.i.i.i.i77, align 4
  %84 = ptrtoint ptr %transfer_list.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i74, ptr %transfer_list.i.i.i81, align 4
  %prev3.i.i.i.i.i83 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i73, i32 0, i32 18, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i.i74, ptr %prev3.i.i.i.i.i83, align 4
  %86 = ptrtoint ptr %msg.i.i74 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %transfer_list.i.i.i81, ptr %msg.i.i74, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i.i84, %spi_rd8.exit72.spi_wr8.exit_crit_edge
  %call.i.i85 = call i32 @spi_sync(ptr noundef %69, ptr noundef nonnull %msg.i.i74) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i75) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i74) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i73) #10
  br label %if.end33

if.end33:                                         ; preds = %spi_wr8.exit, %if.then15
  %epstalls.0 = phi i8 [ %conv18, %if.then15 ], [ %conv25, %spi_wr8.exit ]
  %87 = or i8 %epstalls.0, 64
  %88 = ptrtoint ptr %spi1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %spi1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i86) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i87) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i88) #10
  %90 = getelementptr inbounds i8, ptr %transfer.i.i86, i32 4
  %91 = call ptr @memset(ptr %90, i32 0, i32 92)
  %92 = getelementptr inbounds i8, ptr %msg.i.i87, i32 8
  %93 = call ptr @memset(ptr %92, i32 0, i32 40)
  %94 = ptrtoint ptr %msg.i.i87 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %msg.i.i87, ptr %msg.i.i87, align 4
  %prev.i.i.i.i.i90 = getelementptr inbounds %struct.list_head, ptr %msg.i.i87, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i.i87, ptr %prev.i.i.i.i.i90, align 4
  %resources.i.i.i.i91 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i87, i32 0, i32 10
  %96 = ptrtoint ptr %resources.i.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %resources.i.i.i.i91, ptr %resources.i.i.i.i91, align 4
  %prev.i2.i.i.i.i92 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i87, i32 0, i32 10, i32 1
  %97 = ptrtoint ptr %prev.i2.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %resources.i.i.i.i91, ptr %prev.i2.i.i.i.i92, align 4
  %98 = getelementptr inbounds [2 x i8], ptr %txdata.i.i88, i32 0, i32 1
  %99 = ptrtoint ptr %txdata.i.i88 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 74, ptr %txdata.i.i88, align 1
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %87, ptr %98, align 1
  %101 = ptrtoint ptr %transfer.i.i86 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %txdata.i.i88, ptr %transfer.i.i86, align 4
  %len.i.i93 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i86, i32 0, i32 2
  %102 = ptrtoint ptr %len.i.i93 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %len.i.i93, align 4
  %transfer_list.i.i.i94 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i86, i32 0, i32 18
  %call.i.i.i.i.i95 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i94, ptr noundef nonnull %msg.i.i87, ptr noundef nonnull %msg.i.i87) #10
  br i1 %call.i.i.i.i.i95, label %if.end.i.i.i.i.i97, label %if.end33.spi_wr8.exit99_crit_edge

if.end33.spi_wr8.exit99_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit99

if.end.i.i.i.i.i97:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %prev.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %transfer_list.i.i.i94, ptr %prev.i.i.i.i.i90, align 4
  %104 = ptrtoint ptr %transfer_list.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %msg.i.i87, ptr %transfer_list.i.i.i94, align 4
  %prev3.i.i.i.i.i96 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i86, i32 0, i32 18, i32 1
  %105 = ptrtoint ptr %prev3.i.i.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %msg.i.i87, ptr %prev3.i.i.i.i.i96, align 4
  %106 = ptrtoint ptr %msg.i.i87 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %transfer_list.i.i.i94, ptr %msg.i.i87, align 4
  br label %spi_wr8.exit99

spi_wr8.exit99:                                   ; preds = %if.end.i.i.i.i.i97, %if.end33.spi_wr8.exit99_crit_edge
  %call.i.i98 = call i32 @spi_sync(ptr noundef %89, ptr noundef nonnull %msg.i.i87) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i88) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i87) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i86) #10
  br label %cleanup

cleanup:                                          ; preds = %spi_wr8.exit99, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %spi_wr8.exit99 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max3420_handle_setup(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  %transfer.i.i107 = alloca %struct.spi_transfer, align 4
  %msg.i.i108 = alloca %struct.spi_message, align 4
  %txdata.i.i109 = alloca [2 x i8], align 1
  %transfer.i.i.i73 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i74 = alloca %struct.spi_message, align 4
  %txdata.i.i.i75 = alloca [2 x i8], align 1
  %transfer.i.i76 = alloca %struct.spi_transfer, align 4
  %msg.i.i77 = alloca %struct.spi_message, align 4
  %txdata.i.i78 = alloca [1 x i8], align 1
  %transfer.i61 = alloca %struct.spi_transfer, align 4
  %msg.i62 = alloca %struct.spi_message, align 4
  %txdata.i = alloca [2 x i8], align 1
  %rxdata.i = alloca [2 x i8], align 1
  %transfer.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %txdata.i.i.i = alloca [2 x i8], align 1
  %transfer.i54.i = alloca %struct.spi_transfer, align 4
  %msg.i55.i = alloca %struct.spi_message, align 4
  %txdata.i.i = alloca [2 x i8], align 1
  %transfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %local_buf.i.i = alloca [65 x i8], align 1
  %transfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %local_buf.i = alloca [65 x i8], align 1
  %setup = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %setup) #10
  %spi1.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 11
  %0 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %local_buf.i) #10
  %2 = getelementptr inbounds i8, ptr %local_buf.i, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 64)
  %4 = getelementptr inbounds i8, ptr %transfer.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 84)
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %12 = ptrtoint ptr %local_buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %local_buf.i, align 1
  %13 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %local_buf.i, ptr %transfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 1
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %local_buf.i, ptr %rx_buf.i, align 4
  %len20.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %15 = ptrtoint ptr %len20.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %len20.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_rd_buf.exit_crit_edge

entry.spi_rd_buf.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd_buf.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_rd_buf.exit

spi_rd_buf.exit:                                  ; preds = %if.end.i.i.i.i, %entry.spi_rd_buf.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #10
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %2, align 1
  %22 = ptrtoint ptr %setup to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %setup, align 8
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %local_buf.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #10
  %setup1 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 8
  %23 = ptrtoint ptr %setup1 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %21, ptr %setup1, align 2
  %24 = lshr i64 %21, 32
  %25 = trunc i64 %24 to i16
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %wValue3 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 8, i32 2
  %27 = ptrtoint ptr %wValue3 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %wValue3, align 2
  %28 = lshr i64 %21, 16
  %29 = trunc i64 %28 to i16
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %wIndex5 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 8, i32 3
  %31 = ptrtoint ptr %wIndex5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %wIndex5, align 2
  %32 = trunc i64 %21 to i16
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %wLength7 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 8, i32 4
  %34 = ptrtoint ptr %wLength7 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %wLength7, align 2
  %35 = lshr i64 %21, 48
  %36 = trunc i64 %35 to i8
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %36, label %spi_rd_buf.exit.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 5, label %sw.bb12
    i8 1, label %spi_rd_buf.exit.sw.bb29_crit_edge
    i8 3, label %spi_rd_buf.exit.sw.bb29_crit_edge122
  ]

spi_rd_buf.exit.sw.bb29_crit_edge122:             ; preds = %spi_rd_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb29

spi_rd_buf.exit.sw.bb29_crit_edge:                ; preds = %spi_rd_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb29

spi_rd_buf.exit.sw.epilog_crit_edge:              ; preds = %spi_rd_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %spi_rd_buf.exit
  %38 = ptrtoint ptr %setup1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %setup1, align 2
  %40 = and i8 %39, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %40)
  %cmp.not = icmp eq i8 %40, -128
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %41 = and i8 %39, 31
  %and.i = zext i8 %41 to i32
  %42 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and.i, label %if.end.do.end.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb10.i
  ]

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %is_selfpowered.i = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 17
  %43 = ptrtoint ptr %is_selfpowered.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load.i = load i32, ptr %is_selfpowered.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %44 = trunc i32 %bf.lshr.i to i16
  %conv1.i = and i16 %44, 1
  %remote_wkp.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 4
  %45 = ptrtoint ptr %remote_wkp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %remote_wkp.i, align 8
  %.tr.i = trunc i32 %46 to i16
  %47 = shl i16 %.tr.i, 1
  %conv4.i = or i16 %47, %conv1.i
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end
  %driver.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 2
  %48 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver.i, align 8
  %setup6.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %setup6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %setup6.i, align 4
  %call.i60 = call i32 %51(ptr noundef %udc, ptr noundef %setup1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i = icmp slt i32 %call.i60, 0
  br i1 %cmp.i, label %sw.bb5.i.do.end.i_crit_edge, label %sw.bb5.i.sw.epilog.i_crit_edge

sw.bb5.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb5.i.do.end.i_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

sw.bb10.i:                                        ; preds = %if.end
  %conv13.i = zext i16 %30 to i32
  %and14.i = and i32 %conv13.i, 15
  %and18.i = and i32 %conv13.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not.i = icmp eq i32 %and18.i, 0
  %caps27.i = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 %and14.i, i32 0, i32 4
  %52 = ptrtoint ptr %caps27.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load28.i = load i8, ptr %caps27.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %sw.bb10.i
  %53 = and i8 %bf.load28.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool23.not.i = icmp eq i8 %53, 0
  br i1 %tobool23.not.i, label %if.then19.i.do.end.i_crit_edge, label %if.then19.i.if.end35.i_crit_edge

if.then19.i.if.end35.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then19.i.do.end.i_crit_edge:                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.else.i:                                        ; preds = %sw.bb10.i
  %54 = and i8 %bf.load28.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool32.not.i = icmp eq i8 %54, 0
  br i1 %tobool32.not.i, label %if.else.i.do.end.i_crit_edge, label %if.else.i.if.end35.i_crit_edge

if.else.i.if.end35.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.else.i.do.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end35.i:                                       ; preds = %if.else.i.if.end35.i_crit_edge, %if.then19.i.if.end35.i_crit_edge
  %halted.i = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 %and14.i, i32 6
  %55 = ptrtoint ptr %halted.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %halted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool36.not.i = icmp ne i32 %56, 0
  %spec.select.i = zext i1 %tobool36.not.i to i16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end35.i, %sw.bb5.i.sw.epilog.i_crit_edge, %sw.bb.i
  %status.0.i = phi i16 [ 0, %sw.bb5.i.sw.epilog.i_crit_edge ], [ %conv4.i, %sw.bb.i ], [ %spec.select.i, %if.end35.i ]
  %57 = call i16 @llvm.bswap.i16(i16 %status.0.i) #10
  %58 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %local_buf.i.i) #10
  %60 = getelementptr inbounds i8, ptr %local_buf.i.i, i32 1
  %61 = getelementptr inbounds i8, ptr %local_buf.i.i, i32 3
  %62 = call ptr @memset(ptr %61, i32 0, i32 62)
  %63 = getelementptr inbounds i8, ptr %transfer.i.i, i32 4
  %64 = call ptr @memset(ptr %63, i32 0, i32 92)
  %65 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %69 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %70 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %71 = ptrtoint ptr %local_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %local_buf.i.i, align 1
  %72 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %57, ptr %60, align 1
  %73 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %local_buf.i.i, ptr %transfer.i.i, align 4
  %len20.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %len20.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3, ptr %len20.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %sw.epilog.i.spi_wr_buf.exit.i_crit_edge

sw.epilog.i.spi_wr_buf.exit.i_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr_buf.exit.i

if.end.i.i.i.i.i:                                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %78 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_wr_buf.exit.i

spi_wr_buf.exit.i:                                ; preds = %if.end.i.i.i.i.i, %sw.epilog.i.spi_wr_buf.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %59, ptr noundef nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %local_buf.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #10
  %79 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i54.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i55.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i) #10
  %81 = getelementptr inbounds i8, ptr %transfer.i54.i, i32 4
  %82 = call ptr @memset(ptr %81, i32 0, i32 92)
  %83 = getelementptr inbounds i8, ptr %msg.i55.i, i32 8
  %84 = call ptr @memset(ptr %83, i32 0, i32 40)
  %85 = ptrtoint ptr %msg.i55.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %msg.i55.i, ptr %msg.i55.i, align 4
  %prev.i.i.i.i57.i = getelementptr inbounds %struct.list_head, ptr %msg.i55.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %msg.i55.i, ptr %prev.i.i.i.i57.i, align 4
  %resources.i.i.i58.i = getelementptr inbounds %struct.spi_message, ptr %msg.i55.i, i32 0, i32 10
  %87 = ptrtoint ptr %resources.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %resources.i.i.i58.i, ptr %resources.i.i.i58.i, align 4
  %prev.i2.i.i.i59.i = getelementptr inbounds %struct.spi_message, ptr %msg.i55.i, i32 0, i32 10, i32 1
  %88 = ptrtoint ptr %prev.i2.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %resources.i.i.i58.i, ptr %prev.i2.i.i.i59.i, align 4
  %89 = getelementptr inbounds [2 x i8], ptr %txdata.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %txdata.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 43, ptr %txdata.i.i, align 1
  %91 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 2, ptr %89, align 1
  %92 = ptrtoint ptr %transfer.i54.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %txdata.i.i, ptr %transfer.i54.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i54.i, i32 0, i32 2
  %93 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i60.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i54.i, i32 0, i32 18
  %call.i.i.i.i61.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i60.i, ptr noundef nonnull %msg.i55.i, ptr noundef nonnull %msg.i55.i) #10
  br i1 %call.i.i.i.i61.i, label %if.end.i.i.i.i63.i, label %spi_wr_buf.exit.i.spi_wr8_ack.exit.i_crit_edge

spi_wr_buf.exit.i.spi_wr8_ack.exit.i_crit_edge:   ; preds = %spi_wr_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8_ack.exit.i

if.end.i.i.i.i63.i:                               ; preds = %spi_wr_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %prev.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %transfer_list.i.i60.i, ptr %prev.i.i.i.i57.i, align 4
  %95 = ptrtoint ptr %transfer_list.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i55.i, ptr %transfer_list.i.i60.i, align 4
  %prev3.i.i.i.i62.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i54.i, i32 0, i32 18, i32 1
  %96 = ptrtoint ptr %prev3.i.i.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %msg.i55.i, ptr %prev3.i.i.i.i62.i, align 4
  %97 = ptrtoint ptr %msg.i55.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %transfer_list.i.i60.i, ptr %msg.i55.i, align 4
  br label %spi_wr8_ack.exit.i

spi_wr8_ack.exit.i:                               ; preds = %if.end.i.i.i.i63.i, %spi_wr_buf.exit.i.spi_wr8_ack.exit.i_crit_edge
  %call.i64.i = call i32 @spi_sync(ptr noundef %80, ptr noundef nonnull %msg.i55.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i55.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i54.i) #10
  br label %cleanup

do.end.i:                                         ; preds = %if.else.i.do.end.i_crit_edge, %if.then19.i.do.end.i_crit_edge, %sw.bb5.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.44) #13
  %100 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i.i) #10
  %102 = getelementptr inbounds i8, ptr %transfer.i.i.i, i32 4
  %103 = call ptr @memset(ptr %102, i32 0, i32 92)
  %104 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %105 = call ptr @memset(ptr %104, i32 0, i32 40)
  %106 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %108 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %109 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %110 = getelementptr inbounds [2 x i8], ptr %txdata.i.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %txdata.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 74, ptr %txdata.i.i.i, align 1
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 35, ptr %110, align 1
  %113 = ptrtoint ptr %transfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %txdata.i.i.i, ptr %transfer.i.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %len.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #10
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.end.i.spi_wr8.exit.i_crit_edge

do.end.i.spi_wr8.exit.i_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %116 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i, i32 0, i32 18, i32 1
  %117 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %118 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_wr8.exit.i

spi_wr8.exit.i:                                   ; preds = %if.end.i.i.i.i.i.i, %do.end.i.spi_wr8.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %101, ptr noundef nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i.i) #10
  br label %cleanup

sw.bb12:                                          ; preds = %spi_rd_buf.exit
  %119 = ptrtoint ptr %setup1 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %setup1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp16.not = icmp eq i8 %120, 0
  br i1 %cmp16.not, label %if.end19, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end19:                                         ; preds = %sw.bb12
  %121 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i61) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i62) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i) #10
  %123 = getelementptr inbounds [2 x i8], ptr %txdata.i, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -1, ptr %123, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxdata.i) #10
  %125 = ptrtoint ptr %rxdata.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -1, ptr %rxdata.i, align 1, !annotation !136
  %126 = getelementptr inbounds [2 x i8], ptr %rxdata.i, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -1, ptr %126, align 1, !annotation !136
  %128 = getelementptr inbounds i8, ptr %transfer.i61, i32 12
  %129 = call ptr @memset(ptr %128, i32 0, i32 84)
  %130 = getelementptr inbounds i8, ptr %msg.i62, i32 8
  %131 = call ptr @memset(ptr %130, i32 0, i32 40)
  %132 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %msg.i62, ptr %msg.i62, align 4
  %prev.i.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %msg.i62, i32 0, i32 1
  %133 = ptrtoint ptr %prev.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %msg.i62, ptr %prev.i.i.i.i64, align 4
  %resources.i.i.i65 = getelementptr inbounds %struct.spi_message, ptr %msg.i62, i32 0, i32 10
  %134 = ptrtoint ptr %resources.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %resources.i.i.i65, ptr %resources.i.i.i65, align 4
  %prev.i2.i.i.i66 = getelementptr inbounds %struct.spi_message, ptr %msg.i62, i32 0, i32 10, i32 1
  %135 = ptrtoint ptr %prev.i2.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %resources.i.i.i65, ptr %prev.i2.i.i.i66, align 4
  %136 = ptrtoint ptr %txdata.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -103, ptr %txdata.i, align 1
  %137 = ptrtoint ptr %transfer.i61 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %txdata.i, ptr %transfer.i61, align 4
  %rx_buf.i67 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i61, i32 0, i32 1
  %138 = ptrtoint ptr %rx_buf.i67 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %rxdata.i, ptr %rx_buf.i67, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i61, i32 0, i32 2
  %139 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i68 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i61, i32 0, i32 18
  %call.i.i.i.i69 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i68, ptr noundef nonnull %msg.i62, ptr noundef nonnull %msg.i62) #10
  br i1 %call.i.i.i.i69, label %if.end.i.i.i.i71, label %if.end19.spi_rd8_ack.exit_crit_edge

if.end19.spi_rd8_ack.exit_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_rd8_ack.exit

if.end.i.i.i.i71:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %prev.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %transfer_list.i.i68, ptr %prev.i.i.i.i64, align 4
  %141 = ptrtoint ptr %transfer_list.i.i68 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %msg.i62, ptr %transfer_list.i.i68, align 4
  %prev3.i.i.i.i70 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i61, i32 0, i32 18, i32 1
  %142 = ptrtoint ptr %prev3.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %msg.i62, ptr %prev3.i.i.i.i70, align 4
  %143 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %transfer_list.i.i68, ptr %msg.i62, align 4
  br label %spi_rd8_ack.exit

spi_rd8_ack.exit:                                 ; preds = %if.end.i.i.i.i71, %if.end19.spi_rd8_ack.exit_crit_edge
  %call.i72 = call i32 @spi_sync(ptr noundef %122, ptr noundef nonnull %msg.i62) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxdata.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i62) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i61) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3420_handle_setup.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max3420_handle_setup, %cleanup)) #10
          to label %if.then24 [label %cleanup], !srcloc !138

if.then24:                                        ; preds = %spi_rd8_ack.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 8
  %146 = ptrtoint ptr %wValue3 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %wValue3, align 2
  %conv27 = zext i16 %147 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3420_handle_setup.__UNIQUE_ID_ddebug254, ptr noundef %145, ptr noundef nonnull @.str.43, i32 noundef %conv27) #10
  br label %cleanup

sw.bb29:                                          ; preds = %spi_rd_buf.exit.sw.bb29_crit_edge, %spi_rd_buf.exit.sw.bb29_crit_edge122
  %148 = ptrtoint ptr %setup1 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %setup1, align 2
  %150 = and i8 %149, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %cmp34.not = icmp eq i8 %150, 0
  br i1 %cmp34.not, label %if.end37, label %sw.bb29.sw.epilog_crit_edge

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end37:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp.i80 = icmp eq i8 %36, 3
  %151 = zext i8 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %149, label %if.end37.do.end44.i_crit_edge [
    i8 0, label %sw.bb.i81
    i8 2, label %sw.bb16.i
  ]

if.end37.do.end44.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44.i

sw.bb.i81:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %25)
  %cmp6.not.i = icmp eq i16 %25, 256
  br i1 %cmp6.not.i, label %if.end.i, label %sw.bb.i81.do.end44.i_crit_edge

sw.bb.i81.do.end44.i_crit_edge:                   ; preds = %sw.bb.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44.i

if.end.i:                                         ; preds = %sw.bb.i81
  %spec.select.i82 = zext i1 %cmp.i80 to i32
  %152 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %spec.select.i82, ptr %152, align 8
  %154 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i76) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i77) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %txdata.i.i78) #10
  %156 = getelementptr inbounds i8, ptr %transfer.i.i76, i32 4
  %157 = call ptr @memset(ptr %156, i32 0, i32 92)
  %158 = getelementptr inbounds i8, ptr %msg.i.i77, i32 8
  %159 = call ptr @memset(ptr %158, i32 0, i32 40)
  %160 = ptrtoint ptr %msg.i.i77 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %msg.i.i77, ptr %msg.i.i77, align 4
  %prev.i.i.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %msg.i.i77, i32 0, i32 1
  %161 = ptrtoint ptr %prev.i.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %msg.i.i77, ptr %prev.i.i.i.i.i84, align 4
  %resources.i.i.i.i85 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i77, i32 0, i32 10
  %162 = ptrtoint ptr %resources.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %resources.i.i.i.i85, ptr %resources.i.i.i.i85, align 4
  %prev.i2.i.i.i.i86 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i77, i32 0, i32 10, i32 1
  %163 = ptrtoint ptr %prev.i2.i.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %resources.i.i.i.i85, ptr %prev.i2.i.i.i.i86, align 4
  %164 = ptrtoint ptr %txdata.i.i78 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %txdata.i.i78, align 1
  %165 = ptrtoint ptr %transfer.i.i76 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %txdata.i.i78, ptr %transfer.i.i76, align 4
  %len.i.i87 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i76, i32 0, i32 2
  %166 = ptrtoint ptr %len.i.i87 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %len.i.i87, align 4
  %transfer_list.i.i.i88 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i76, i32 0, i32 18
  %call.i.i.i.i.i89 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i88, ptr noundef nonnull %msg.i.i77, ptr noundef nonnull %msg.i.i77) #10
  br i1 %call.i.i.i.i.i89, label %if.end.i.i.i.i.i91, label %if.end.i.spi_ack_ctrl.exit.i_crit_edge

if.end.i.spi_ack_ctrl.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_ack_ctrl.exit.i

if.end.i.i.i.i.i91:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %prev.i.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %transfer_list.i.i.i88, ptr %prev.i.i.i.i.i84, align 4
  %168 = ptrtoint ptr %transfer_list.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %msg.i.i77, ptr %transfer_list.i.i.i88, align 4
  %prev3.i.i.i.i.i90 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i76, i32 0, i32 18, i32 1
  %169 = ptrtoint ptr %prev3.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %msg.i.i77, ptr %prev3.i.i.i.i.i90, align 4
  %170 = ptrtoint ptr %msg.i.i77 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %transfer_list.i.i.i88, ptr %msg.i.i77, align 4
  br label %spi_ack_ctrl.exit.i

spi_ack_ctrl.exit.i:                              ; preds = %if.end.i.i.i.i.i91, %if.end.i.spi_ack_ctrl.exit.i_crit_edge
  %call.i.i92 = call i32 @spi_sync(ptr noundef %155, ptr noundef nonnull %msg.i.i77) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %txdata.i.i78) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i77) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i76) #10
  br label %cleanup

sw.bb16.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp20.not.i = icmp eq i16 %25, 0
  br i1 %cmp20.not.i, label %if.end23.i, label %sw.bb16.i.do.end44.i_crit_edge

sw.bb16.i.do.end44.i_crit_edge:                   ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44.i

if.end23.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  %171 = and i16 %30, 15
  %and.i94 = zext i16 %171 to i32
  %arrayidx.i = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 %and.i94
  %lock.i = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 %and.i94, i32 5
  %call30.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %todo.i = getelementptr %struct.max3420_udc, ptr %udc, i32 0, i32 1, i32 %and.i94, i32 7
  %172 = ptrtoint ptr %todo.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %todo.i, align 4
  %and33.i = and i32 %173, -1537
  %or38.i = or i32 %173, 1536
  %or.i = or i32 %and33.i, 512
  %storemerge.i = select i1 %cmp.i80, i32 %or.i, i32 %or38.i
  store i32 %storemerge.i, ptr %todo.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #10
  %call41.i = call fastcc i32 @spi_max3420_stall(ptr noundef %arrayidx.i) #10
  br label %cleanup

do.end44.i:                                       ; preds = %sw.bb16.i.do.end44.i_crit_edge, %sw.bb.i81.do.end44.i_crit_edge, %if.end37.do.end44.i_crit_edge
  %dev.i95 = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 12
  %174 = ptrtoint ptr %dev.i95 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev.i95, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.46) #13
  %176 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i.i73) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i74) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i.i75) #10
  %178 = getelementptr inbounds i8, ptr %transfer.i.i.i73, i32 4
  %179 = call ptr @memset(ptr %178, i32 0, i32 92)
  %180 = getelementptr inbounds i8, ptr %msg.i.i.i74, i32 8
  %181 = call ptr @memset(ptr %180, i32 0, i32 40)
  %182 = ptrtoint ptr %msg.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %msg.i.i.i74, ptr %msg.i.i.i74, align 4
  %prev.i.i.i.i.i.i97 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i74, i32 0, i32 1
  %183 = ptrtoint ptr %prev.i.i.i.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %msg.i.i.i74, ptr %prev.i.i.i.i.i.i97, align 4
  %resources.i.i.i.i.i98 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i74, i32 0, i32 10
  %184 = ptrtoint ptr %resources.i.i.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %resources.i.i.i.i.i98, ptr %resources.i.i.i.i.i98, align 4
  %prev.i2.i.i.i.i.i99 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i74, i32 0, i32 10, i32 1
  %185 = ptrtoint ptr %prev.i2.i.i.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %resources.i.i.i.i.i98, ptr %prev.i2.i.i.i.i.i99, align 4
  %186 = getelementptr inbounds [2 x i8], ptr %txdata.i.i.i75, i32 0, i32 1
  %187 = ptrtoint ptr %txdata.i.i.i75 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 74, ptr %txdata.i.i.i75, align 1
  %188 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 35, ptr %186, align 1
  %189 = ptrtoint ptr %transfer.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %txdata.i.i.i75, ptr %transfer.i.i.i73, align 4
  %len.i.i.i100 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i73, i32 0, i32 2
  %190 = ptrtoint ptr %len.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 2, ptr %len.i.i.i100, align 4
  %transfer_list.i.i.i.i101 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i73, i32 0, i32 18
  %call.i.i.i.i.i.i102 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i101, ptr noundef nonnull %msg.i.i.i74, ptr noundef nonnull %msg.i.i.i74) #10
  br i1 %call.i.i.i.i.i.i102, label %if.end.i.i.i.i.i.i104, label %do.end44.i.spi_wr8.exit.i106_crit_edge

do.end44.i.spi_wr8.exit.i106_crit_edge:           ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit.i106

if.end.i.i.i.i.i.i104:                            ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %prev.i.i.i.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %transfer_list.i.i.i.i101, ptr %prev.i.i.i.i.i.i97, align 4
  %192 = ptrtoint ptr %transfer_list.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %msg.i.i.i74, ptr %transfer_list.i.i.i.i101, align 4
  %prev3.i.i.i.i.i.i103 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i.i73, i32 0, i32 18, i32 1
  %193 = ptrtoint ptr %prev3.i.i.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %msg.i.i.i74, ptr %prev3.i.i.i.i.i.i103, align 4
  %194 = ptrtoint ptr %msg.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %transfer_list.i.i.i.i101, ptr %msg.i.i.i74, align 4
  br label %spi_wr8.exit.i106

spi_wr8.exit.i106:                                ; preds = %if.end.i.i.i.i.i.i104, %do.end44.i.spi_wr8.exit.i106_crit_edge
  %call.i.i.i105 = call i32 @spi_sync(ptr noundef %177, ptr noundef nonnull %msg.i.i.i74) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i.i75) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i74) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i.i73) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb29.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %spi_rd_buf.exit.sw.epilog_crit_edge
  %driver = getelementptr inbounds %struct.max3420_udc, ptr %udc, i32 0, i32 2
  %195 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %driver, align 8
  %setup38 = getelementptr inbounds %struct.usb_gadget_driver, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %setup38 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %setup38, align 4
  %call39 = call i32 %198(ptr noundef %udc, ptr noundef nonnull %setup) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %sw.epilog
  %199 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %spi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i107) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i108) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txdata.i.i109) #10
  %201 = getelementptr inbounds i8, ptr %transfer.i.i107, i32 4
  %202 = call ptr @memset(ptr %201, i32 0, i32 92)
  %203 = getelementptr inbounds i8, ptr %msg.i.i108, i32 8
  %204 = call ptr @memset(ptr %203, i32 0, i32 40)
  %205 = ptrtoint ptr %msg.i.i108 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %msg.i.i108, ptr %msg.i.i108, align 4
  %prev.i.i.i.i.i111 = getelementptr inbounds %struct.list_head, ptr %msg.i.i108, i32 0, i32 1
  %206 = ptrtoint ptr %prev.i.i.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %msg.i.i108, ptr %prev.i.i.i.i.i111, align 4
  %resources.i.i.i.i112 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i108, i32 0, i32 10
  %207 = ptrtoint ptr %resources.i.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %resources.i.i.i.i112, ptr %resources.i.i.i.i112, align 4
  %prev.i2.i.i.i.i113 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i108, i32 0, i32 10, i32 1
  %208 = ptrtoint ptr %prev.i2.i.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %resources.i.i.i.i112, ptr %prev.i2.i.i.i.i113, align 4
  %209 = getelementptr inbounds [2 x i8], ptr %txdata.i.i109, i32 0, i32 1
  %210 = ptrtoint ptr %txdata.i.i109 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 74, ptr %txdata.i.i109, align 1
  %211 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 35, ptr %209, align 1
  %212 = ptrtoint ptr %transfer.i.i107 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %txdata.i.i109, ptr %transfer.i.i107, align 4
  %len.i.i114 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i107, i32 0, i32 2
  %213 = ptrtoint ptr %len.i.i114 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 2, ptr %len.i.i114, align 4
  %transfer_list.i.i.i115 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i107, i32 0, i32 18
  %call.i.i.i.i.i116 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i115, ptr noundef nonnull %msg.i.i108, ptr noundef nonnull %msg.i.i108) #10
  br i1 %call.i.i.i.i.i116, label %if.end.i.i.i.i.i118, label %if.then42.spi_wr8.exit_crit_edge

if.then42.spi_wr8.exit_crit_edge:                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_wr8.exit

if.end.i.i.i.i.i118:                              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %214 = ptrtoint ptr %prev.i.i.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %transfer_list.i.i.i115, ptr %prev.i.i.i.i.i111, align 4
  %215 = ptrtoint ptr %transfer_list.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %msg.i.i108, ptr %transfer_list.i.i.i115, align 4
  %prev3.i.i.i.i.i117 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i107, i32 0, i32 18, i32 1
  %216 = ptrtoint ptr %prev3.i.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %msg.i.i108, ptr %prev3.i.i.i.i.i117, align 4
  %217 = ptrtoint ptr %msg.i.i108 to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile ptr %transfer_list.i.i.i115, ptr %msg.i.i108, align 4
  br label %spi_wr8.exit

spi_wr8.exit:                                     ; preds = %if.end.i.i.i.i.i118, %if.then42.spi_wr8.exit_crit_edge
  %call.i.i119 = call i32 @spi_sync(ptr noundef %200, ptr noundef nonnull %msg.i.i108) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txdata.i.i109) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i108) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i107) #10
  br label %cleanup

cleanup:                                          ; preds = %spi_wr8.exit, %sw.epilog.cleanup_crit_edge, %spi_wr8.exit.i106, %if.end23.i, %spi_ack_ctrl.exit.i, %if.then24, %spi_rd8_ack.exit, %spi_wr8.exit.i, %spi_wr8_ack.exit.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %setup) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !71, !73, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122}
!llvm.named.register.sp = !{!124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_max3420_udc__271_1327_max3420_driver_init6, !1, !"__initcall__kmod_max3420_udc__271_1327_max3420_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1327, i32 1}
!2 = !{ptr @__exitcall_max3420_driver_exit, !1, !"__exitcall_max3420_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description272, !4, !"__UNIQUE_ID_description272", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1329, i32 1}
!5 = !{ptr @__UNIQUE_ID_author273, !6, !"__UNIQUE_ID_author273", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1330, i32 1}
!7 = !{ptr @__UNIQUE_ID_file274, !8, !"__UNIQUE_ID_file274", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1331, i32 1}
!9 = !{ptr @__UNIQUE_ID_license275, !8, !"__UNIQUE_ID_license275", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1320, i32 11}
!12 = !{ptr @max3420_driver, !13, !"max3420_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1318, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1204, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max3420_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max3420_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1213, i32 3}
!24 = !{ptr @max3420_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max3420_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @max3420_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1232, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @max3420_probe.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1233, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1254, i32 44}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1256, i32 11}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1260, i32 21}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1267, i32 44}
!40 = !{ptr @max3420_udc_ops, !41, !"max3420_udc_ops", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1142, i32 36}
!42 = !{ptr @driver_name, !43, !"driver_name", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 192, i32 19}
!44 = !{ptr @max3420_eps_init.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1157, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1174, i32 44}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1181, i32 44}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1186, i32 6}
!53 = !{ptr @max3420_ep_ops, !54, !"max3420_ep_ops", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1068, i32 32}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 679, i32 3}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @max3420_req_done._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @max3420_req_done._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 989, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__max3420_ep_disable.__UNIQUE_ID_ddebug270, !61, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 923, i32 2}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @max3420_ep_set_halt.__UNIQUE_ID_ddebug269, !66, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!69 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ep0_desc, !72, !"ep0_desc", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 195, i32 45}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 852, i32 4}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 900, i32 2}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 901, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @max3420_thread._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @max3420_thread._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 768, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug259, !84, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 774, i32 3}
!89 = !{ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug260, !88, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 780, i32 3}
!92 = !{ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug261, !91, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 786, i32 3}
!95 = !{ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug262, !94, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 795, i32 3}
!98 = !{ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug263, !97, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 802, i32 3}
!101 = !{ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug264, !100, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 809, i32 3}
!104 = !{ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug265, !103, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 815, i32 3}
!107 = !{ptr @max3420_handle_irqs.__UNIQUE_ID_ddebug266, !106, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 648, i32 3}
!110 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @max3420_handle_setup.__UNIQUE_ID_ddebug254, !109, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 573, i32 2}
!114 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @max3420_getstatus._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @max3420_getstatus._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 617, i32 2}
!119 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @max3420_set_clear_feature._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @max3420_set_clear_feature._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @max3420_udc_of_match, !123, !"max3420_udc_of_match", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/max3420_udc.c", i32 1311, i32 34}
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
!134 = !{i64 2154714567}
!135 = !{i8 0, i8 2}
!136 = !{!"auto-init"}
!137 = !{i64 2154719873}
!138 = !{i64 2148785426, i64 2148785431, i64 2148785444, i64 2148785488, i64 2148785522, i64 2148785543}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{i64 715252}
