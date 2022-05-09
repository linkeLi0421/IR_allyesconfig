; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vudc_dev.c_pt.bc'
source_filename = "../drivers/usb/usbip/vudc_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.urbp = type { ptr, ptr, %struct.list_head, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.vudc = type { %struct.usb_gadget, ptr, ptr, %struct.usb_device_descriptor, %struct.usbip_device, %struct.transfer_timer, %struct.timespec64, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.spinlock, ptr, i32, i16, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.transfer_timer = type { %struct.timer_list, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.vep = type { %struct.usb_ep, i8, [8 x i8], ptr, ptr, %struct.list_head, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.vudc_device = type { ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.vrequest = type { %struct.usb_request, ptr, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip-vudc\00", [21 x i8] zeroinitializer }, align 32
@vgadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @vgadget_get_frame, ptr null, ptr @vgadget_set_selfpowered, ptr null, ptr null, ptr @vgadget_pullup, ptr null, ptr null, ptr @vgadget_udc_start, ptr @vgadget_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vgadget_pullup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable go get desc: %d\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vgadget_pullup\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/usbip/vudc_dev.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vgadget_pullup._entry_ptr = internal global ptr @vgadget_pullup._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%d%s\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@vep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @vep_enable, ptr @vep_disable, ptr null, ptr @vep_alloc_request, ptr @vep_free_request, ptr @vep_queue, ptr @vep_dequeue, ptr @vep_set_halt, ptr @vep_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@init_vudc_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@init_vudc_hw.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&udc->lock_tx\00", [18 x i8] zeroinitializer }, align 32
@init_vudc_hw.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&udc->tx_waitq\00", [17 x i8] zeroinitializer }, align 32
@init_vudc_hw.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ud->lock\00", [22 x i8] zeroinitializer }, align 32
@init_vudc_hw.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ud->sysfs_lock\00", [16 x i8] zeroinitializer }, align 32
@vudc_shutdown.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_vudc\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vudc_shutdown\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device shutdown\00", [16 x i8] zeroinitializer }, align 32
@vudc_device_reset.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vudc_device_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device reset\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 500, i32 40 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"vgadget_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 218, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 171, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 535, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 536, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 536, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 536, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [8 x i8] c"vep_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 412, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 568, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 569, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 572, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 574, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 575, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 435, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [32 x i8] c"../drivers/usb/usbip/vudc_dev.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 468, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @vgadget_pullup._entry, ptr @vgadget_pullup._entry_ptr, ptr @.str, ptr @vgadget_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vep_ops, ptr @init_vudc_hw.__key, ptr @.str.10, ptr @init_vudc_hw.__key.11, ptr @.str.12, ptr @init_vudc_hw.__key.13, ptr @.str.14, ptr @init_vudc_hw.__key.15, ptr @.str.16, ptr @init_vudc_hw.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgadget_pullup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vudc_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vudc_hw.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vudc_hw.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vudc_hw.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vudc_hw.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_urbp() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  %ep = getelementptr inbounds %struct.urbp, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ep, align 4
  %urb_entry = getelementptr inbounds %struct.urbp, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %urb_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %urb_entry, ptr %urb_entry, align 8
  %prev.i = getelementptr inbounds %struct.urbp, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %urb_entry, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_urbp_and_urb(ptr noundef %urb_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb_p, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %urb_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb_p, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.free_urb.exit_crit_edge, label %if.end.i

if.end.free_urb.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_urb.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup_packet.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %setup_packet.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %transfer_buffer.i, align 4
  tail call void @usb_free_urb(ptr noundef nonnull %1) #10
  br label %free_urb.exit

free_urb.exit:                                    ; preds = %if.end.i, %if.end.free_urb.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %urb_p) #10
  br label %return

return:                                           ; preds = %free_urb.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vudc_find_endpoint(ptr nocapture noundef readonly %udc, i8 noundef zeroext %address) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %address, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  %ep = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 12
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep, align 4
  br i1 %cmp, label %entry.cleanup16_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup16

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %desc = getelementptr %struct.vep, ptr %2, i32 %i.028, i32 3
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %address)
  %cmp12 = icmp eq i8 %6, %address
  br i1 %cmp12, label %cleanup16.loopexit.split.loop.exit26, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.inc.cleanup16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup16

cleanup16.loopexit.split.loop.exit26:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6.le = getelementptr %struct.vep, ptr %2, i32 %i.028
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup16.loopexit.split.loop.exit26, %for.inc.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi ptr [ %arrayidx6.le, %cleanup16.loopexit.split.loop.exit26 ], [ %2, %entry.cleanup16_crit_edge ], [ null, %for.inc.cleanup16_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_vudc_device(i32 noundef %devid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %dev_entry = getelementptr inbounds %struct.vudc_device, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev_entry to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %dev_entry, ptr %dev_entry, align 4
  %prev.i = getelementptr inbounds %struct.vudc_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev_entry, ptr %prev.i, align 8
  %call1 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %devid) #10
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %out

out:                                              ; preds = %if.then4, %if.end.out_crit_edge, %entry.out_crit_edge
  %udc_dev.0 = phi ptr [ %call7.i.i, %if.end.out_crit_edge ], [ null, %if.then4 ], [ null, %entry.out_crit_edge ]
  ret ptr %udc_dev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_vudc_device(ptr noundef %udc_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %udc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc_dev, align 4
  tail call void @platform_device_put(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %udc_dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vudc_probe(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1568) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %name, align 4
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vgadget_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %max_speed, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %pdev5 = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev5, align 4
  %ud1.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2356) #13
  %ep2.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %ep2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i.i, ptr %ep2.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end.err_init_vudc_hw_crit_edge, label %for.body.peel.next.i

if.end.err_init_vudc_hw_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_vudc_hw

for.body.peel.next.i:                             ; preds = %if.end
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  %name.peel.i = getelementptr %struct.vep, ptr %call7.i.i.i.i, i32 0, i32 2
  %call8.peel.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.peel.i, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.9) #10
  %name12.peel.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %name12.peel.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %name.peel.i, ptr %name12.peel.i, align 4
  %ops.peel.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %ops.peel.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vep_ops, ptr %ops.peel.i, align 8
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %call7.i.i.i.i, i32 noundef -1) #10
  %max_streams.peel.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %max_streams.peel.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 7)
  %bf.load.peel.i = load i56, ptr %max_streams.peel.i, align 2
  %bf.clear.peel.i = and i56 %bf.load.peel.i, -16776961
  %bf.set.peel.i = or i56 %bf.clear.peel.i, 4096
  store i56 %bf.set.peel.i, ptr %max_streams.peel.i, align 2
  %gadget17.peel.i = getelementptr %struct.vep, ptr %call7.i.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %gadget17.peel.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %gadget17.peel.i, align 4
  %req_queue.peel.i = getelementptr %struct.vep, ptr %call7.i.i.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %req_queue.peel.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %req_queue.peel.i, ptr %req_queue.peel.i, align 8
  %prev.i133.peel.i = getelementptr %struct.vep, ptr %call7.i.i.i.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i133.peel.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %req_queue.peel.i, ptr %prev.i133.peel.i, align 4
  %ep0.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 3
  %caps.peel.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %caps.peel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load21.peel.i = load i8, ptr %caps.peel.i, align 4
  %bf.set33.peel.i = or i8 %bf.load21.peel.i, -116
  store i8 %bf.set33.peel.i, ptr %caps.peel.i, align 4
  %17 = ptrtoint ptr %ep0.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i.i, ptr %ep0.i, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.end69.i.if.else.i_crit_edge, %for.body.peel.next.i
  %i.0138.i = phi i32 [ 1, %for.body.peel.next.i ], [ %add.i, %if.end69.i.if.else.i_crit_edge ]
  %rem.i = and i32 %i.0138.i, 1
  %add.i = add nuw nsw i32 %i.0138.i, 1
  %div137.i = lshr i32 %add.i, 1
  %18 = ptrtoint ptr %ep2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep2.i, align 4
  %arrayidx.i = getelementptr %struct.vep, ptr %19, i32 %i.0138.i
  %name.i = getelementptr %struct.vep, ptr %19, i32 %i.0138.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool6.not.i = icmp eq i32 %rem.i, 0
  %cond.i = select i1 %tobool6.not.i, ptr @.str.8, ptr @.str.7
  %call8.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.6, i32 noundef %div137.i, ptr noundef nonnull %cond.i) #10
  %name12.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 1
  %20 = ptrtoint ptr %name12.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %name.i, ptr %name12.i, align 4
  %ops.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vep_ops, ptr %ops.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.i, i32 noundef -1) #10
  %max_streams.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 7
  %22 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 7)
  %bf.load.i = load i56, ptr %max_streams.i, align 2
  %bf.clear.i = and i56 %bf.load.i, -16776961
  %bf.set.i = or i56 %bf.clear.i, 4096
  store i56 %bf.set.i, ptr %max_streams.i, align 2
  %gadget17.i = getelementptr %struct.vep, ptr %19, i32 %i.0138.i, i32 4
  %23 = ptrtoint ptr %gadget17.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %gadget17.i, align 4
  %req_queue.i = getelementptr %struct.vep, ptr %19, i32 %i.0138.i, i32 5
  %24 = ptrtoint ptr %req_queue.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %req_queue.i, ptr %req_queue.i, align 4
  %prev.i133.i = getelementptr %struct.vep, ptr %19, i32 %i.0138.i, i32 5, i32 1
  %25 = ptrtoint ptr %prev.i133.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %req_queue.i, ptr %prev.i133.i, align 4
  %caps37.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 4
  %26 = ptrtoint ptr %caps37.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load38.i = load i8, ptr %caps37.i, align 4
  %storemerge.v.i = select i1 %tobool6.not.i, i8 120, i8 116
  %storemerge.i = or i8 %bf.load38.i, %storemerge.v.i
  store i8 %storemerge.i, ptr %caps37.i, align 4
  %ep_list66.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 3
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list66.i, ptr noundef %28, ptr noundef %ep_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.if.end69.i_crit_edge

if.else.i.if.end69.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ep_list66.i, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %ep_list66.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ep_list.i, ptr %ep_list66.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ep_list66.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %ep_list66.i, ptr %28, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end.i.i.i, %if.else.i.if.end69.i_crit_edge
  %exitcond.not.i = icmp eq i32 %add.i, 31
  br i1 %exitcond.not.i, label %if.end9, label %if.end69.i.if.else.i_crit_edge, !llvm.loop !55

if.end69.i.if.else.i_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end9:                                          ; preds = %if.end69.i
  %lock.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_vudc_hw.__key, i16 noundef signext 3) #10
  %lock_tx.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock_tx.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_vudc_hw.__key.11, i16 noundef signext 3) #10
  %urb_queue.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %urb_queue.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %urb_queue.i, ptr %urb_queue.i, align 8
  %prev.i135.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %prev.i135.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %urb_queue.i, ptr %prev.i135.i, align 4
  %tx_queue.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %tx_queue.i, ptr %tx_queue.i, align 4
  %prev.i136.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %prev.i136.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tx_queue.i, ptr %prev.i136.i, align 8
  %tx_waitq.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %tx_waitq.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_vudc_hw.__key.13) #10
  %lock79.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock79.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_vudc_hw.__key.15, i16 noundef signext 3) #10
  %sysfs_lock.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @__mutex_init(ptr noundef %sysfs_lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_vudc_hw.__key.17) #10
  %status.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %status.i, align 4
  %38 = ptrtoint ptr %ud1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %ud1.i, align 8
  %eh_ops.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 4, i32 10
  %39 = ptrtoint ptr %eh_ops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @vudc_shutdown, ptr %eh_ops.i, align 8
  %reset.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 4, i32 10, i32 1
  %40 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @vudc_device_reset, ptr %reset.i, align 4
  %unusable.i = getelementptr inbounds %struct.vudc, ptr %call7.i.i, i32 0, i32 4, i32 10, i32 2
  %41 = ptrtoint ptr %unusable.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @vudc_device_unusable, ptr %unusable.i, align 8
  tail call void @v_init_timer(ptr noundef %call7.i.i) #10
  %call12 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %err_add_udc, label %if.end14

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_add_udc:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %ep2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ep2.i, align 4
  tail call void @kfree(ptr noundef %44) #10
  br label %err_init_vudc_hw

err_init_vudc_hw:                                 ; preds = %err_add_udc, %if.end.err_init_vudc_hw_crit_edge
  %ret.0 = phi i32 [ %call12, %err_add_udc ], [ -12, %if.end.err_init_vudc_hw_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_init_vudc_hw, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end14 ], [ %ret.0, %err_init_vudc_hw ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vudc_remove(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_del_gadget_udc(ptr noundef %1) #10
  %ep.i = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgadget_get_frame(ptr nocapture noundef readonly %_gadget) #0 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #10
  %0 = call ptr @memset(ptr %now, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %now) #10
  %1 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %now, align 8
  %start_time = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 6
  %3 = ptrtoint ptr %start_time to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start_time, align 8
  %sub = sub i64 %2, %4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %5 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec, align 8
  %tv_nsec3 = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %tv_nsec3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec3, align 8
  %sub4 = sub i32 %6, %8
  %div = sdiv i32 %sub4, 1000000
  %9 = trunc i64 %sub to i32
  %10 = mul i32 %9, 1000
  %11 = add i32 %div, %10
  %conv5 = and i32 %11, 2047
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #10
  ret i32 %conv5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vgadget_set_selfpowered(ptr nocapture noundef %_gadget, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp ne i32 %value, 0
  %devstatus2 = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 14
  %0 = ptrtoint ptr %devstatus2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %devstatus2, align 4
  %2 = and i16 %1, -2
  %masksel = zext i1 %tobool.not to i16
  %.sink = or i16 %2, %masksel
  store i16 %.sink, ptr %devstatus2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgadget_pullup(ptr noundef %_gadget, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %pullup = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 15
  %0 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %pullup, align 2
  %bf.lshr = lshr i8 %bf.load, 7
  %1 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %1)
  %cmp7 = icmp eq i8 %bf.lshr, %1
  br i1 %cmp7, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  %bf.shl = select i1 %tobool, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  %2 = ptrtoint ptr %pullup to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set, ptr %pullup, align 2
  br i1 %tobool, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %driver = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 1
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_speed, align 4
  %conv16 = and i32 %6, 255
  %7 = tail call i32 @llvm.umin.i32(i32 %conv16, i32 3)
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 5
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %speed, align 8
  %ep = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 12
  %9 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %11, i32 7)
  %bf.load22 = load i56, ptr %maxpacket, align 2
  %bf.clear23 = and i56 %bf.load22, 1099511627775
  %bf.set24 = or i56 %bf.clear23, 70368744177664
  store i56 %bf.set24, ptr %maxpacket, align 2
  %call25 = tail call i32 @get_gadget_descs(ptr noundef %_gadget) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call25) #14
  br label %unlock

if.end32:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %ud = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 4
  %call34 = tail call i32 @usbip_start_eh(ptr noundef %ud) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear36 = and i8 %bf.set, -33
  %12 = ptrtoint ptr %pullup to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.clear36, ptr %pullup, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %ud39 = getelementptr inbounds %struct.vudc, ptr %_gadget, i32 0, i32 4
  tail call void @usbip_event_add(ptr noundef %ud39, i32 noundef 7) #10
  tail call void @usbip_stop_eh(ptr noundef %ud39) #10
  br label %cleanup

unlock:                                           ; preds = %do.end30, %entry.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.else, %if.end32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgadget_udc_start(ptr noundef %g, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vudc, ptr %g, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %driver6 = getelementptr inbounds %struct.vudc, ptr %g, i32 0, i32 1
  %0 = ptrtoint ptr %driver6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %driver, ptr %driver6, align 8
  %desc_cached = getelementptr inbounds %struct.vudc, ptr %g, i32 0, i32 15
  %1 = ptrtoint ptr %desc_cached to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %desc_cached, align 2
  %bf.clear11 = and i8 %bf.load, 31
  store i8 %bf.clear11, ptr %desc_cached, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vgadget_udc_stop(ptr noundef %g) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vudc, ptr %g, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %driver = getelementptr inbounds %struct.vudc, ptr %g, i32 0, i32 1
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_gadget_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_start_eh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_stop_eh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vudc_shutdown(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ud, i32 -1080
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vudc_shutdown.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vudc_shutdown, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr i8, ptr %ud, i32 -28
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vudc_shutdown.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tcp_socket = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 5
  %2 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcp_socket, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %if.then6

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %3, i32 noundef 2) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  %tcp_rx = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 6
  %4 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcp_rx, align 8
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end9.if.end19_crit_edge, label %do.body12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body12:                                        ; preds = %if.end9
  %call14 = tail call i32 @kthread_stop(ptr noundef nonnull %5) #10
  %6 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcp_rx, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !60

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @__put_task_struct(ptr noundef %7) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %9 = ptrtoint ptr %tcp_rx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tcp_rx, align 8
  br label %if.end19

if.end19:                                         ; preds = %put_task_struct.exit, %if.end9.if.end19_crit_edge
  %tcp_tx = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 7
  %10 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcp_tx, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.end19.if.end29_crit_edge, label %do.body22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.body22:                                        ; preds = %if.end19
  %call24 = tail call i32 @kthread_stop(ptr noundef nonnull %11) #10
  %12 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tcp_tx, align 4
  %usage.i82 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 2
  %call.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i82, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @llvm.prefetch.p0(ptr %usage.i82, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i82, ptr %usage.i82, i32 1, ptr elementtype(i32) %usage.i82) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i.i84 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i84)
  %cmp.i.i.i.i85 = icmp eq i32 %asmresult.i.i.i.i.i.i.i84, 1
  br i1 %cmp.i.i.i.i85, label %if.then.i89, label %if.end5.i.i.i.i87

if.end5.i.i.i.i87:                                ; preds = %do.body22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i84)
  %.not.i.i.i.i86 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i84, 0
  br i1 %.not.i.i.i.i86, label %if.end5.i.i.i.i87.put_task_struct.exit90_crit_edge, label %if.then10.i.i.i.i88, !prof !60

if.end5.i.i.i.i87.put_task_struct.exit90_crit_edge: ; preds = %if.end5.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit90

if.then10.i.i.i.i88:                              ; preds = %if.end5.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i82, i32 noundef 3) #10
  br label %put_task_struct.exit90

if.then.i89:                                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @__put_task_struct(ptr noundef %13) #10
  br label %put_task_struct.exit90

put_task_struct.exit90:                           ; preds = %if.then.i89, %if.then10.i.i.i.i88, %if.end5.i.i.i.i87.put_task_struct.exit90_crit_edge
  %15 = ptrtoint ptr %tcp_tx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tcp_tx, align 4
  br label %if.end29

if.end29:                                         ; preds = %put_task_struct.exit90, %if.end19.if.end29_crit_edge
  %16 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcp_socket, align 4
  %tobool31.not = icmp eq ptr %17, null
  br i1 %tobool31.not, label %if.end29.do.body37_crit_edge, label %if.then32

if.end29.do.body37_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %file = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %19) #10
  %20 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tcp_socket, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.then32, %if.end29.do.body37_crit_edge
  %lock = getelementptr i8, ptr %ud, i32 432
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call fastcc void @stop_activity(ptr noundef %add.ptr)
  %connected = getelementptr i8, ptr %ud, i32 486
  %21 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %connected, align 2
  %22 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool45.not = icmp eq i8 %22, 0
  br i1 %tobool45.not, label %if.end57.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body37
  %driver = getelementptr i8, ptr %ud, i32 -32
  %23 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver, align 8
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disconnect, align 4
  %tobool46.not = icmp eq ptr %26, null
  %bf.clear51 = and i8 %bf.load, -65
  %27 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.clear51, ptr %connected, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #10
  br i1 %tobool46.not, label %land.lhs.true.if.end57_crit_edge, label %if.then54

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver, align 8
  %disconnect56 = getelementptr inbounds %struct.usb_gadget_driver, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %disconnect56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disconnect56, align 4
  tail call void %31(ptr noundef %add.ptr) #10
  br label %if.end57

if.end57.critedge:                                ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear51.c = and i8 %bf.load, -65
  %32 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %bf.clear51.c, ptr %connected, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #10
  br label %if.end57

if.end57:                                         ; preds = %if.end57.critedge, %if.then54, %land.lhs.true.if.end57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vudc_device_reset(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ud, i32 -1080
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vudc_device_reset.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vudc_device_reset, %do.body6)) #10
          to label %if.then [label %do.body6], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr i8, ptr %ud, i32 -28
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vudc_device_reset.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %ud, i32 432
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call fastcc void @stop_activity(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  %driver = getelementptr i8, ptr %ud, i32 -32
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %do.body6.do.body20_crit_edge, label %if.then16

do.body6.do.body20_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

if.then16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_gadget_udc_reset(ptr noundef %add.ptr, ptr noundef nonnull %3) #10
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %do.body6.do.body20_crit_edge
  %lock26 = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock26) #10
  %status = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock26, i32 noundef %call28) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vudc_device_unusable(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %status = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v_init_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vep_enable(ptr noundef %_ep, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget.i, align 4
  %tobool.not = icmp eq ptr %_ep, null
  %tobool2.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %desc4 = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %desc4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %caps = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %caps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %5 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp.not = icmp eq i8 %6, 5
  br i1 %cmp.not, label %if.end, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  %driver = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 8
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %do.body13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 11
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %9 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wMaxPacketSize.i, align 1
  %11 = and i16 %10, -249
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %13 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %13, i32 7)
  %bf.load21 = load i56, ptr %maxpacket, align 2
  %bf.value = zext i16 %12 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear = and i56 %bf.load21, 1099511627775
  %bf.set = or i56 %bf.shl, %bf.clear
  store i56 %bf.set, ptr %maxpacket, align 2
  %14 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %desc, ptr %desc4, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %15 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bmAttributes.i, align 1
  %type = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load24 = load i8, ptr %type, align 4
  %18 = shl i8 %16, 6
  %bf.clear27 = and i8 %bf.load24, 63
  %bf.set28 = or i8 %bf.clear27, %18
  store i8 %bf.set28, ptr %type, align 4
  %wedged = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 6
  %19 = ptrtoint ptr %wedged to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load30 = load i8, ptr %wedged, align 4
  %bf.clear34 = and i8 %bf.load30, 63
  store i8 %bf.clear34, ptr %wedged, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %if.end.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body13 ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vep_disable(ptr noundef %_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget.i, align 4
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %caps = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %caps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %do.body5, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false3
  %lock = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %desc, align 4
  %req_queue.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 5
  %6 = ptrtoint ptr %req_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %req_queue.i, align 4
  %cmp.i.not11.i = icmp eq ptr %7, %req_queue.i
  br i1 %cmp.i.not11.i, label %do.body5.nuke.exit_crit_edge, label %do.body5.while.body.i_crit_edge

do.body5.while.body.i_crit_edge:                  ; preds = %do.body5
  br label %while.body.i

do.body5.nuke.exit_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %nuke.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %do.body5.while.body.i_crit_edge
  %8 = phi ptr [ %19, %list_del_init.exit.i.while.body.i_crit_edge ], [ %7, %do.body5.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %8, i32 -60
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %prev.i3.i.i, align 4
  %status.i = getelementptr i8, ptr %8, i32 -12
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -108, ptr %status.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %18 = ptrtoint ptr %req_queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %req_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %req_queue.i
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.nuke.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del_init.exit.i.nuke.exit_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nuke.exit

nuke.exit:                                        ; preds = %list_del_init.exit.i.nuke.exit_crit_edge, %do.body5.nuke.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %nuke.exit, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nuke.exit ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vep_alloc_request(ptr noundef readnone %_ep, i32 noundef %mem_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i = or i32 %mem_flags, 256
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !60

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %if.end
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 68) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end3

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %req_entry = getelementptr inbounds %struct.vrequest, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %req_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %req_entry, ptr %req_entry, align 4
  %prev.i = getelementptr inbounds %struct.vrequest, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %req_entry, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vep_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_req, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %_req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %mem_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %gadget.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget.i, align 4
  %lock = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %2 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -115, ptr %status, align 4
  %req_entry = getelementptr inbounds %struct.vrequest, ptr %_req, i32 0, i32 2
  %req_queue = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_entry, ptr noundef %5, ptr noundef %req_queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %req_entry, ptr %prev.i, align 4
  %7 = ptrtoint ptr %req_entry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %req_queue, ptr %req_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.vrequest, ptr %_req, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %req_entry, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vep_dequeue(ptr noundef %_ep, ptr noundef %_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udc3 = getelementptr inbounds %struct.vrequest, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %udc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc3, align 4
  %driver = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 11
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %req_queue = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body7
  %.pn.in = phi ptr [ %req_queue, %do.body7 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp14.not = icmp eq ptr %.pn, %req_queue
  br i1 %cmp14.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %lst.0 = getelementptr i8, ptr %.pn, i32 -60
  %cmp17 = icmp eq ptr %lst.0, %_req
  br i1 %cmp17, label %if.then19, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then19:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then19.if.then30_crit_edge

if.then19.if.then30_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %if.then30

if.then30:                                        ; preds = %if.end.i.i, %if.then19.if.then30_crit_edge
  %11 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %.pn, ptr %.pn, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn, ptr %prev.i3.i, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -104, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %_ep, ptr noundef nonnull %_req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %for.end.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ -22, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vep_set_halt(ptr noundef %_ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %_ep, null
  br i1 %tobool.not.i, label %entry.vep_set_halt_and_wedge.exit_crit_edge, label %if.end.i

entry.vep_set_halt_and_wedge.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vep_set_halt_and_wedge.exit

if.end.i:                                         ; preds = %entry
  %gadget.i.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %gadget.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget.i.i, align 4
  %driver.i = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.vep_set_halt_and_wedge.exit_crit_edge, label %do.body5.i

if.end.i.vep_set_halt_and_wedge.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vep_set_halt_and_wedge.exit

do.body5.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 11
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool10.not.i = icmp eq i32 %value, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  %wedged12.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 6
  %4 = ptrtoint ptr %wedged12.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %wedged12.i, align 4
  %bf.clear14.i = and i8 %bf.load.i, 63
  store i8 %bf.clear14.i, ptr %wedged12.i, align 4
  br label %if.end37.i

if.else.i:                                        ; preds = %do.body5.i
  %desc.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 3
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.i, align 4
  %tobool16.not.i = icmp eq ptr %6, null
  br i1 %tobool16.not.i, label %if.else.i.if.else24.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else24.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool19.not.i = icmp sgt i8 %8, -1
  br i1 %tobool19.not.i, label %land.lhs.true.i.if.else24.i_crit_edge, label %land.lhs.true20.i

land.lhs.true.i.if.else24.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24.i

land.lhs.true20.i:                                ; preds = %land.lhs.true.i
  %req_queue.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 5
  %9 = ptrtoint ptr %req_queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %req_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %req_queue.i
  br i1 %cmp.i.not.i, label %land.lhs.true20.i.if.else24.i_crit_edge, label %land.lhs.true20.i.if.end37.i_crit_edge

land.lhs.true20.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

land.lhs.true20.i.if.else24.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24.i

if.else24.i:                                      ; preds = %land.lhs.true20.i.if.else24.i_crit_edge, %land.lhs.true.i.if.else24.i_crit_edge, %if.else.i.if.else24.i_crit_edge
  %halted25.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 6
  %11 = ptrtoint ptr %halted25.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load26.i = load i8, ptr %halted25.i, align 4
  %bf.set28.i = or i8 %bf.load26.i, -128
  store i8 %bf.set28.i, ptr %halted25.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else24.i, %land.lhs.true20.i.if.end37.i_crit_edge, %if.then11.i
  %ret.0.i = phi i32 [ 0, %if.else24.i ], [ 0, %if.then11.i ], [ -11, %land.lhs.true20.i.if.end37.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %vep_set_halt_and_wedge.exit

vep_set_halt_and_wedge.exit:                      ; preds = %if.end37.i, %if.end.i.vep_set_halt_and_wedge.exit_crit_edge, %entry.vep_set_halt_and_wedge.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end37.i ], [ -22, %entry.vep_set_halt_and_wedge.exit_crit_edge ], [ -108, %if.end.i.vep_set_halt_and_wedge.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vep_set_wedge(ptr noundef %_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %_ep, null
  br i1 %tobool.not.i, label %entry.vep_set_halt_and_wedge.exit_crit_edge, label %if.end.i

entry.vep_set_halt_and_wedge.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vep_set_halt_and_wedge.exit

if.end.i:                                         ; preds = %entry
  %gadget.i.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 4
  %0 = ptrtoint ptr %gadget.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget.i.i, align 4
  %driver.i = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.vep_set_halt_and_wedge.exit_crit_edge, label %do.body5.i

if.end.i.vep_set_halt_and_wedge.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vep_set_halt_and_wedge.exit

do.body5.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 11
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %desc.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %tobool16.not.i = icmp eq ptr %5, null
  br i1 %tobool16.not.i, label %do.body5.i.if.else24.i_crit_edge, label %land.lhs.true.i

do.body5.i.if.else24.i_crit_edge:                 ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24.i

land.lhs.true.i:                                  ; preds = %do.body5.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool19.not.i = icmp sgt i8 %7, -1
  br i1 %tobool19.not.i, label %land.lhs.true.i.if.else24.i_crit_edge, label %land.lhs.true20.i

land.lhs.true.i.if.else24.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24.i

land.lhs.true20.i:                                ; preds = %land.lhs.true.i
  %req_queue.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 5
  %8 = ptrtoint ptr %req_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %req_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %req_queue.i
  br i1 %cmp.i.not.i, label %land.lhs.true20.i.if.else24.i_crit_edge, label %land.lhs.true20.i.if.end37.i_crit_edge

land.lhs.true20.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

land.lhs.true20.i.if.else24.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24.i

if.else24.i:                                      ; preds = %land.lhs.true20.i.if.else24.i_crit_edge, %land.lhs.true.i.if.else24.i_crit_edge, %do.body5.i.if.else24.i_crit_edge
  %halted25.i = getelementptr inbounds %struct.vep, ptr %_ep, i32 0, i32 6
  %10 = ptrtoint ptr %halted25.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load26.i = load i8, ptr %halted25.i, align 4
  %bf.set34.i = or i8 %bf.load26.i, -64
  store i8 %bf.set34.i, ptr %halted25.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else24.i, %land.lhs.true20.i.if.end37.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.else24.i ], [ -11, %land.lhs.true20.i.if.end37.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %vep_set_halt_and_wedge.exit

vep_set_halt_and_wedge.exit:                      ; preds = %if.end37.i, %if.end.i.vep_set_halt_and_wedge.exit_crit_edge, %entry.vep_set_halt_and_wedge.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end37.i ], [ -22, %entry.vep_set_halt_and_wedge.exit_crit_edge ], [ -108, %if.end.i.vep_set_halt_and_wedge.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_activity(ptr noundef %udc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %address = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 13
  %0 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %address, align 8
  %ep = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 12
  %lock.i = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %nuke.exit.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %nuke.exit.for.body_crit_edge ]
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep, align 4
  %arrayidx = getelementptr %struct.vep, ptr %2, i32 %i.031
  %req_queue.i = getelementptr %struct.vep, ptr %2, i32 %i.031, i32 5
  %3 = ptrtoint ptr %req_queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %req_queue.i, align 4
  %cmp.i.not11.i = icmp eq ptr %4, %req_queue.i
  br i1 %cmp.i.not11.i, label %for.body.nuke.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.nuke.exit_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %nuke.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %5 = phi ptr [ %16, %list_del_init.exit.i.while.body.i_crit_edge ], [ %4, %for.body.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 -60
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i.i, align 4
  %status.i = getelementptr i8, ptr %5, i32 -12
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -108, ptr %status.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  tail call void @usb_gadget_giveback_request(ptr noundef %arrayidx, ptr noundef %add.ptr.i) #10
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %15 = ptrtoint ptr %req_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %req_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %req_queue.i
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.nuke.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del_init.exit.i.nuke.exit_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nuke.exit

nuke.exit:                                        ; preds = %list_del_init.exit.i.nuke.exit_crit_edge, %for.body.nuke.exit_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %nuke.exit.for.body_crit_edge

nuke.exit.for.body_crit_edge:                     ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %nuke.exit
  %urb_queue = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 7
  %17 = ptrtoint ptr %urb_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb_queue, align 8
  %cmp9.not32 = icmp eq ptr %18, %urb_queue
  br i1 %cmp9.not32, label %for.end.for.end18_crit_edge, label %for.end.for.body10_crit_edge

for.end.for.body10_crit_edge:                     ; preds = %for.end
  br label %for.body10

for.end.for.end18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

for.body10:                                       ; preds = %free_urbp_and_urb.exit.for.body10_crit_edge, %for.end.for.body10_crit_edge
  %.pn.in33 = phi ptr [ %.pn, %free_urbp_and_urb.exit.for.body10_crit_edge ], [ %18, %for.end.for.body10_crit_edge ]
  %urb_p.0 = getelementptr i8, ptr %.pn.in33, i32 -8
  %19 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn.in33, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body10.list_del.exit_crit_edge

for.body10.list_del.exit_crit_edge:               ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body10.list_del.exit_crit_edge
  %26 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %urb_p.0, null
  br i1 %tobool.not.i, label %list_del.exit.free_urbp_and_urb.exit_crit_edge, label %if.end.i

list_del.exit.free_urbp_and_urb.exit_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_urbp_and_urb.exit

if.end.i:                                         ; preds = %list_del.exit
  %28 = ptrtoint ptr %urb_p.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb_p.0, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.free_urb.exit.i_crit_edge, label %if.end.i.i30

if.end.i.free_urb.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_urb.exit.i

if.end.i.i30:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %setup_packet.i.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 21
  %30 = ptrtoint ptr %setup_packet.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %setup_packet.i.i, align 4
  tail call void @kfree(ptr noundef %31) #10
  %32 = ptrtoint ptr %setup_packet.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %setup_packet.i.i, align 4
  %transfer_buffer.i.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_buffer.i.i, align 4
  tail call void @kfree(ptr noundef %34) #10
  %35 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %transfer_buffer.i.i, align 4
  tail call void @usb_free_urb(ptr noundef nonnull %29) #10
  br label %free_urb.exit.i

free_urb.exit.i:                                  ; preds = %if.end.i.i30, %if.end.i.free_urb.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %urb_p.0) #10
  br label %free_urbp_and_urb.exit

free_urbp_and_urb.exit:                           ; preds = %free_urb.exit.i, %list_del.exit.free_urbp_and_urb.exit_crit_edge
  %cmp9.not = icmp eq ptr %.pn, %urb_queue
  br i1 %cmp9.not, label %free_urbp_and_urb.exit.for.end18_crit_edge, label %free_urbp_and_urb.exit.for.body10_crit_edge

free_urbp_and_urb.exit.for.body10_crit_edge:      ; preds = %free_urbp_and_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

free_urbp_and_urb.exit.for.end18_crit_edge:       ; preds = %free_urbp_and_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

for.end18:                                        ; preds = %free_urbp_and_urb.exit.for.end18_crit_edge, %for.end.for.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 500, i32 40}
!2 = !{ptr @vgadget_ops, !3, !"vgadget_ops", i1 false, i1 false}
!3 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 218, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 171, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vgadget_pullup._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @vgadget_pullup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 535, i32 21}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 536, i32 18}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 536, i32 26}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 536, i32 34}
!20 = !{ptr @init_vudc_hw.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 568, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @init_vudc_hw.__key.11, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 569, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @init_vudc_hw.__key.13, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 572, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @init_vudc_hw.__key.15, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 574, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @init_vudc_hw.__key.17, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 575, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vep_ops, !36, !"vep_ops", i1 false, i1 false}
!36 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 412, i32 32}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 435, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vudc_shutdown.__UNIQUE_ID_ddebug243, !38, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/usbip/vudc_dev.c", i32 468, i32 2}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vudc_device_reset.__UNIQUE_ID_ddebug244, !43, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.peeled.count", i32 1}
!57 = !{i64 2148288412, i64 2148288417, i64 2148288430, i64 2148288474, i64 2148288508, i64 2148288529}
!58 = !{i64 2148564550}
!59 = !{i64 2148479014, i64 2148479046, i64 2148479075, i64 2148479109, i64 2148479140, i64 2148479163}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2149610520}
