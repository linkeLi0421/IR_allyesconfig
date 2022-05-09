; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vudc_sysfs.c_pt.bc'
source_filename = "../drivers/usb/usbip/vudc_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.vudc = type { %struct.usb_gadget, ptr, ptr, %struct.usb_device_descriptor, %struct.usbip_device, %struct.transfer_timer, %struct.timespec64, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.spinlock, ptr, i32, i16, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.transfer_timer = type { %struct.timer_list, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vep = type { %struct.usb_ep, i8, [8 x i8], ptr, ptr, %struct.list_head, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.108 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@vudc_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dev_attrs, ptr @dev_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@vudc_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @vudc_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_usbip_sockfd, ptr @dev_attr_usbip_status, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_dev_desc, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_usbip_sockfd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @usbip_sockfd_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usbip_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usbip_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbip_sockfd\00", [19 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no device\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbip_sockfd_store\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/usbip/vudc_sysfs.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr = internal global ptr @usbip_sockfd_store._entry, section ".printk_index", align 4
@usbip_sockfd_store._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gadget not bound\00", [47 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.8 = internal global ptr @usbip_sockfd_store._entry.6, section ".printk_index", align 4
@usbip_sockfd_store._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Device already connected\00", [39 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.11 = internal global ptr @usbip_sockfd_store._entry.9, section ".printk_index", align 4
@usbip_sockfd_store._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to lookup sock\00", [42 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.14 = internal global ptr @usbip_sockfd_store._entry.12, section ".printk_index", align 4
@usbip_sockfd_store._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Expecting SOCK_STREAM - found %d\00", [63 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.17 = internal global ptr @usbip_sockfd_store._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vudc_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vudc_tx\00", [24 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device not connected\00", [43 x i8] zeroinitializer }, align 32
@usbip_sockfd_store._entry_ptr.22 = internal global ptr @usbip_sockfd_store._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbip_status\00", [19 x i8] zeroinitializer }, align 32
@usbip_status_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.24, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbip_status_show\00", [46 x i8] zeroinitializer }, align 32
@usbip_status_show._entry_ptr = internal global ptr @usbip_status_show._entry, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@bin_attr_dev_desc = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 18, ptr null, ptr null, ptr @dev_desc_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_desc\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"vudc_attr_group\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 260, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"vudc_groups\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 265, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"dev_attrs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 249, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"dev_bin_attrs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 255, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"dev_attr_usbip_sockfd\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"dev_attr_usbip_status\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 229, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 112, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 119, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 126, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 140, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 146, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 156, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 162, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 199, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 247, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 238, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 245, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"bin_attr_dev_desc\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [34 x i8] c"../drivers/usb/usbip/vudc_sysfs.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 91, i32 8 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @usbip_sockfd_store._entry, ptr @usbip_sockfd_store._entry.12, ptr @usbip_sockfd_store._entry.15, ptr @usbip_sockfd_store._entry.20, ptr @usbip_sockfd_store._entry.6, ptr @usbip_sockfd_store._entry.9, ptr @usbip_sockfd_store._entry_ptr, ptr @usbip_sockfd_store._entry_ptr.11, ptr @usbip_sockfd_store._entry_ptr.14, ptr @usbip_sockfd_store._entry_ptr.17, ptr @usbip_sockfd_store._entry_ptr.22, ptr @usbip_sockfd_store._entry_ptr.8, ptr @usbip_status_show._entry, ptr @usbip_status_show._entry_ptr, ptr @vudc_attr_group, ptr @vudc_groups, ptr @dev_attrs, ptr @dev_bin_attrs, ptr @dev_attr_usbip_sockfd, ptr @dev_attr_usbip_status, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @bin_attr_dev_desc, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vudc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vudc_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usbip_sockfd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usbip_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_sockfd_store._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_status_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_dev_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_gadget_descs(ptr noundef %udc) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.usb_ctrlrequest, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ep01 = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 3
  %0 = ptrtoint ptr %ep01 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep01, align 4
  %dev_desc = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #6
  %2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 3
  %5 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 4
  %driver = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 1
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pullup = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 15
  %8 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %pullup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %req, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 1, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %4, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 4608, ptr %5, align 1
  %lock = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup, align 4
  %call5 = call i32 %17(ptr noundef %udc, ptr noundef nonnull %req) #6
  call void @_raw_spin_lock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %prev = getelementptr inbounds %struct.vep, ptr %1, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 -60
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %length = getelementptr i8, ptr %19, i32 -56
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %29)
  %cmp10 = icmp ugt i32 %29, 18
  br i1 %cmp10, label %list_del.exit.giveback_req_crit_edge, label %if.end12

list_del.exit.giveback_req_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %giveback_req

if.end12:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %32 = call ptr @memcpy(ptr %dev_desc, ptr %31, i32 18)
  %33 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load14 = load i8, ptr %pullup, align 2
  %bf.set = or i8 %bf.load14, 32
  store i8 %bf.set, ptr %pullup, align 2
  br label %giveback_req

giveback_req:                                     ; preds = %if.end12, %list_del.exit.giveback_req_crit_edge
  %ret.0 = phi i32 [ 0, %if.end12 ], [ -75, %list_del.exit.giveback_req_crit_edge ]
  %status = getelementptr i8, ptr %19, i32 -12
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %status, align 4
  %35 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length, align 4
  %actual = getelementptr i8, ptr %19, i32 -8
  %37 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %actual, align 4
  call void @usb_gadget_giveback_request(ptr noundef %1, ptr noundef %add.ptr) #6
  br label %cleanup

cleanup:                                          ; preds = %giveback_req, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %ret.0, %giveback_req ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbip_sockfd_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %in, i32 noundef %count) #0 align 64 {
entry:
  %sockfd = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sockfd) #6
  %2 = ptrtoint ptr %sockfd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sockfd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4, !annotation !64
  %call1 = call i32 @kstrtoint(ptr noundef %in, i32 noundef 0, ptr noundef nonnull %sockfd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ud = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4
  %sysfs_lock = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 3
  call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #6
  %lock = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 11
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %driver = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 8
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end3.do.end18_crit_edge, label %lor.lhs.false

if.end3.do.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.end3
  %pullup = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %pullup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool14.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool14.not, label %lor.lhs.false.do.end18_crit_edge, label %if.end19

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %if.end3.do.end18_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %unlock

if.end19:                                         ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sockfd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp20.not = icmp eq i32 %8, -1
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool119.not = icmp eq i8 %9, 0
  br i1 %cmp20.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  br i1 %tobool119.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %unlock

if.end31:                                         ; preds = %if.then22
  %lock33 = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %lock33) #6
  %status = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp35.not = icmp eq i32 %11, 1
  br i1 %cmp35.not, label %if.end38, label %if.end31.unlock_ud_crit_edge

if.end31.unlock_ud_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ud

if.end38:                                         ; preds = %if.end31
  %12 = ptrtoint ptr %sockfd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sockfd, align 4
  %call39 = call ptr @sockfd_lookup(i32 noundef %13, ptr noundef nonnull %err) #6
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end45

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %unlock_ud

if.end45:                                         ; preds = %if.end38
  %type = getelementptr inbounds %struct.socket, ptr %call39, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp47.not = icmp eq i16 %15, 1
  br i1 %cmp47.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %conv46 = sext i16 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv46) #9
  %file140 = getelementptr inbounds %struct.socket, ptr %call39, i32 0, i32 3
  %16 = ptrtoint ptr %file140 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %file140, align 4
  call void @fput(ptr noundef %17) #6
  br label %unlock_ud

if.end55:                                         ; preds = %if.end45
  call void @_raw_spin_unlock_irq(ptr noundef %lock33) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #6
  %call60 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @v_rx_loop, ptr noundef %ud, i32 noundef -1, ptr noundef nonnull @.str.18) #6
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %file = getelementptr inbounds %struct.socket, ptr %call39, i32 0, i32 3
  %18 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %19) #6
  call void @mutex_unlock(ptr noundef %sysfs_lock) #6
  br label %cleanup

if.end65:                                         ; preds = %if.end55
  %call67 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @v_tx_loop, ptr noundef %ud, i32 noundef -1, ptr noundef nonnull @.str.19) #6
  %cmp.i212 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then69, label %if.end74

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = call i32 @kthread_stop(ptr noundef %call60) #6
  %file71 = getelementptr inbounds %struct.socket, ptr %call39, i32 0, i32 3
  %20 = ptrtoint ptr %file71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file71, align 4
  call void @fput(ptr noundef %21) #6
  call void @mutex_unlock(ptr noundef %sysfs_lock) #6
  br label %cleanup

if.end74:                                         ; preds = %if.end65
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call60, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end74.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

if.end74.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end74
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !67

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end74.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end74.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #6
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %usage.i213 = getelementptr inbounds %struct.task_struct, ptr %call67, i32 0, i32 2
  %call.i.i.i.i.i.i214 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i213, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %usage.i213, i32 1, i32 3, i32 1) #6
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i213, ptr %usage.i213, i32 1, ptr elementtype(i32) %usage.i213) #6, !srcloc !65
  %asmresult.i.i.i.i.i.i215 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i215)
  %tobool1.not.i.i.i.i216 = icmp eq i32 %asmresult.i.i.i.i.i.i215, 0
  br i1 %tobool1.not.i.i.i.i216, label %get_task_struct.exit.if.end15.sink.split.i.i.i.i221_crit_edge, label %if.else.i.i.i.i219, !prof !66

get_task_struct.exit.if.end15.sink.split.i.i.i.i221_crit_edge: ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i221

if.else.i.i.i.i219:                               ; preds = %get_task_struct.exit
  %add.i.i.i.i217 = add i32 %asmresult.i.i.i.i.i.i215, 1
  %25 = or i32 %add.i.i.i.i217, %asmresult.i.i.i.i.i.i215
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i218 = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i218, label %if.else.i.i.i.i219.get_task_struct.exit222_crit_edge, label %if.else.i.i.i.i219.if.end15.sink.split.i.i.i.i221_crit_edge, !prof !67

if.else.i.i.i.i219.if.end15.sink.split.i.i.i.i221_crit_edge: ; preds = %if.else.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i221

if.else.i.i.i.i219.get_task_struct.exit222_crit_edge: ; preds = %if.else.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_task_struct.exit222

if.end15.sink.split.i.i.i.i221:                   ; preds = %if.else.i.i.i.i219.if.end15.sink.split.i.i.i.i221_crit_edge, %get_task_struct.exit.if.end15.sink.split.i.i.i.i221_crit_edge
  %.sink.i.i.i.i220 = phi i32 [ 2, %get_task_struct.exit.if.end15.sink.split.i.i.i.i221_crit_edge ], [ 1, %if.else.i.i.i.i219.if.end15.sink.split.i.i.i.i221_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i213, i32 noundef %.sink.i.i.i.i220) #6
  br label %get_task_struct.exit222

get_task_struct.exit222:                          ; preds = %if.end15.sink.split.i.i.i.i221, %if.else.i.i.i.i219.get_task_struct.exit222_crit_edge
  %call86 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @_raw_spin_lock_irq(ptr noundef %lock33) #6
  %tcp_socket = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call39, ptr %tcp_socket, align 4
  %tcp_rx95 = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %tcp_rx95 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call60, ptr %tcp_rx95, align 8
  %tcp_tx97 = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %tcp_tx97 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call67, ptr %tcp_tx97, align 4
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %status, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock33) #6
  %start_time = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 6
  call void @ktime_get_ts64(ptr noundef %start_time) #6
  call void @v_start_timer(ptr noundef nonnull %1) #6
  %30 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load103 = load i8, ptr %pullup, align 2
  %bf.set = or i8 %bf.load103, 64
  store i8 %bf.set, ptr %pullup, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call86) #6
  %31 = ptrtoint ptr %tcp_rx95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tcp_rx95, align 8
  %call108 = call i32 @wake_up_process(ptr noundef %32) #6
  %33 = ptrtoint ptr %tcp_tx97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tcp_tx97, align 4
  %call111 = call i32 @wake_up_process(ptr noundef %34) #6
  call void @mutex_unlock(ptr noundef %sysfs_lock) #6
  br label %cleanup

if.else:                                          ; preds = %if.end19
  br i1 %tobool119.not, label %do.end123, label %if.end124

do.end123:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %unlock

if.end124:                                        ; preds = %if.else
  %lock126 = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %lock126) #6
  %status128 = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %status128 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp129.not = icmp eq i32 %36, 2
  br i1 %cmp129.not, label %if.end132, label %if.end124.unlock_ud_crit_edge

if.end124.unlock_ud_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_ud

if.end132:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irq(ptr noundef %lock126) #6
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #6
  call void @mutex_unlock(ptr noundef %sysfs_lock) #6
  br label %cleanup

unlock_ud:                                        ; preds = %if.end124.unlock_ud_crit_edge, %do.end52, %do.end44, %if.end31.unlock_ud_crit_edge
  %lock142 = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %lock142) #6
  br label %unlock

unlock:                                           ; preds = %unlock_ud, %do.end123, %do.end30, %do.end18
  %ret.1 = phi i32 [ -16, %do.end30 ], [ -22, %unlock_ud ], [ -22, %do.end123 ], [ -19, %do.end18 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #6
  call void @mutex_unlock(ptr noundef %sysfs_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end132, %get_task_struct.exit222, %if.then69, %if.then62, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ -22, %if.then62 ], [ -22, %if.then69 ], [ %count, %get_task_struct.exit222 ], [ %count, %if.end132 ], [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sockfd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v_rx_loop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v_tx_loop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v_start_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbip_status_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %status2 = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out, i32 noundef 4096, ptr noundef nonnull @.str.25, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_desc_read(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %out, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %desc_cached = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %desc_cached to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %desc_cached, align 2
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_desc = getelementptr inbounds %struct.vudc, ptr %1, i32 0, i32 3
  %idx.ext = trunc i64 %off to i32
  %add.ptr = getelementptr i8, ptr %dev_desc, i32 %idx.ext
  %4 = call ptr @memcpy(ptr %out, ptr %add.ptr, i32 %count)
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %count, %if.end ], [ -19, %entry.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !52, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @vudc_groups, !1, !"vudc_groups", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 265, i32 31}
!2 = !{ptr @vudc_attr_group, !3, !"vudc_attr_group", i1 false, i1 false}
!3 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 260, i32 37}
!4 = !{ptr @dev_attrs, !5, !"dev_attrs", i1 false, i1 false}
!5 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 249, i32 26}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 229, i32 8}
!8 = !{ptr @dev_attr_usbip_sockfd, !7, !"dev_attr_usbip_sockfd", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 112, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @usbip_sockfd_store._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @usbip_sockfd_store._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 119, i32 3}
!19 = !{ptr @usbip_sockfd_store._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @usbip_sockfd_store._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 126, i32 4}
!23 = !{ptr @usbip_sockfd_store._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @usbip_sockfd_store._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 140, i32 4}
!27 = !{ptr @usbip_sockfd_store._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @usbip_sockfd_store._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 146, i32 4}
!31 = !{ptr @usbip_sockfd_store._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @usbip_sockfd_store._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 156, i32 12}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 162, i32 12}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 199, i32 4}
!39 = !{ptr @usbip_sockfd_store._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @usbip_sockfd_store._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 247, i32 8}
!43 = !{ptr @dev_attr_usbip_status, !42, !"dev_attr_usbip_status", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 238, i32 3}
!46 = !{ptr @usbip_status_show._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @usbip_status_show._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 245, i32 34}
!50 = !{ptr @dev_bin_attrs, !51, !"dev_bin_attrs", i1 false, i1 false}
!51 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 255, i32 30}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/usbip/vudc_sysfs.c", i32 91, i32 8}
!54 = !{ptr @bin_attr_dev_desc, !53, !"bin_attr_dev_desc", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{i64 2148469788, i64 2148469820, i64 2148469849, i64 2148469883, i64 2148469914, i64 2148469937}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
