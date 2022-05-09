; ModuleID = '/llk/IR_all_yes/drivers/usb/mon/mon_text.c_pt.bc'
source_filename = "../drivers/usb/mon/mon_text.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.mon_bus = type { %struct.list_head, %struct.spinlock, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.kref, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mon_text_ptr = type { i32, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.mon_reader_text = type { ptr, i32, %struct.list_head, %struct.mon_reader, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.mutex, [30 x i8] }
%struct.mon_reader = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mon_event_text = type { %struct.list_head, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i32, [5 x %struct.mon_iso_desc], [8 x i8], [32 x i8] }
%struct.mon_iso_desc = type { i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@mon_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%dt\00", [28 x i8] zeroinitializer }, align 32
@mon_fops_text_t = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @mon_text_read_t, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mon_text_open, ptr null, ptr @mon_text_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%du\00", [28 x i8] zeroinitializer }, align 32
@mon_fops_text_u = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @mon_text_read_u, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mon_text_open, ptr null, ptr @mon_text_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ds\00", [28 x i8] zeroinitializer }, align 32
@mon_fops_stat = external dso_local constant %struct.file_operations, align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbmon\00", [25 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/mon/mon_text.c\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%lx %u %c %c%c:%03u:%02u\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" s %02x %02x %04x %04x %04x\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" %c __ __ ____ ____ ____\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" =\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %c\0A\00", [27 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mon_lock = external dso_local global %struct.mutex, align 4
@mon_text_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rp->wait\00", [22 x i8] zeroinitializer }, align 32
@mon_text_open.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&rp->printf_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mon_text_%p\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@mon_text_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013usbmon: consistency error on close\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mon_text_release\00", [47 x i8] zeroinitializer }, align 32
@mon_text_release._entry_ptr = internal global ptr @mon_text_release._entry, section ".printk_index", align 4
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%lx %u %c %c%c:%d:%03u:%u\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %d:%d:%d\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" %d:%d:%d:%d\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %d:%u:%u\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %d:%d\00", [25 x i8] zeroinitializer }, align 32
@switch.table.mon_text_read_t = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 67, i32 90, i32 66, i32 73], [16 x i8] zeroinitializer }, align 32
@switch.table.mon_text_read_u = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 67, i32 90, i32 66, i32 73], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"mon_dir\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 96, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 712, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"mon_fops_text_t\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 685, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 719, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"mon_fops_text_u\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 693, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 725, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 766, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 418, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 488, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 524, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 553, i32 7 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 561, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 618, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 625, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 629, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 632, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 635, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 230, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 214, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 174, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 339, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 340, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 355, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 654, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 542, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 580, i32 7 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 583, i32 7 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 605, i32 7 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [30 x i8] c"../drivers/usb/mon/mon_text.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 572, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant [29 x i8] c"switch.table.mon_text_read_t\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [29 x i8] c"switch.table.mon_text_read_u\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @mon_text_release._entry, ptr @mon_text_release._entry_ptr, ptr @mon_dir, ptr @.str, ptr @mon_fops_text_t, ptr @.str.1, ptr @mon_fops_text_u, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mon_text_open.__key, ptr @.str.20, ptr @mon_text_open.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @switch.table.mon_text_read_t, ptr @switch.table.mon_text_read_u], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_fops_text_t to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_fops_text_u to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_text_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_text_open.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_text_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mon_text_read_t to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mon_text_read_u to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mon_text_add(ptr noundef %mbus, ptr noundef readonly %ubus) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #10
  %tobool.not = icmp eq ptr %ubus, null
  %0 = call ptr @memset(ptr %name, i32 255, i32 10)
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr @mon_dir, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %cond.end.if.end10_crit_edge

cond.end.if.end10_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end.thread:                                  ; preds = %entry
  %busnum1 = getelementptr inbounds %struct.usb_bus, ptr %ubus, i32 0, i32 2
  %2 = ptrtoint ptr %busnum1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busnum1, align 4
  %4 = load ptr, ptr @mon_dir, align 4
  %cmp60 = icmp eq ptr %4, null
  br i1 %cmp60, label %cond.end.thread.cleanup_crit_edge, label %if.then3

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %cond.end.thread
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str, i32 noundef %3)
  %5 = add i32 %call, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %5)
  %6 = icmp ult i32 %5, -9
  br i1 %6, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load ptr, ptr @mon_dir, align 4
  %call9 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 384, ptr noundef %7, ptr noundef %mbus, ptr noundef nonnull @mon_fops_text_t) #10
  %dent_t = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 6
  %8 = ptrtoint ptr %dent_t to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %dent_t, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %cond.end.if.end10_crit_edge
  %cond62 = phi i32 [ %3, %if.end7 ], [ 0, %cond.end.if.end10_crit_edge ]
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.1, i32 noundef %cond62)
  %9 = add i32 %call12, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %9)
  %10 = icmp ult i32 %9, -9
  br i1 %10, label %if.end10.err_print_u_crit_edge, label %if.end17

if.end10.err_print_u_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_print_u

if.end17:                                         ; preds = %if.end10
  %11 = load ptr, ptr @mon_dir, align 4
  %call19 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 384, ptr noundef %11, ptr noundef %mbus, ptr noundef nonnull @mon_fops_text_u) #10
  %dent_u = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 7
  %12 = ptrtoint ptr %dent_u to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %dent_u, align 4
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef %cond62)
  %13 = add i32 %call21, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %13)
  %14 = icmp ult i32 %13, -9
  br i1 %14, label %err_print_s, label %if.end26

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %15 = load ptr, ptr @mon_dir, align 4
  %call28 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 384, ptr noundef %15, ptr noundef %mbus, ptr noundef nonnull @mon_fops_stat) #10
  %dent_s = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 5
  %16 = ptrtoint ptr %dent_s to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %dent_s, align 4
  br label %cleanup

err_print_s:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dent_u to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dent_u, align 4
  call void @debugfs_remove(ptr noundef %18) #10
  %19 = ptrtoint ptr %dent_u to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dent_u, align 4
  br label %err_print_u

err_print_u:                                      ; preds = %err_print_s, %if.end10.err_print_u_crit_edge
  br i1 %tobool.not, label %err_print_u.cleanup_crit_edge, label %if.then32

err_print_u.cleanup_crit_edge:                    ; preds = %err_print_u
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then32:                                        ; preds = %err_print_u
  call void @__sanitizer_cov_trace_pc() #12
  %dent_t33 = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 6
  %20 = ptrtoint ptr %dent_t33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dent_t33, align 4
  call void @debugfs_remove(ptr noundef %21) #10
  %22 = ptrtoint ptr %dent_t33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %dent_t33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %err_print_u.cleanup_crit_edge, %if.end26, %if.then3.cleanup_crit_edge, %cond.end.thread.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end26 ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %err_print_u.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %cond.end.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mon_text_del(ptr nocapture noundef readonly %mbus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dent_u = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 7
  %0 = ptrtoint ptr %dent_u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dent_u, align 4
  tail call void @debugfs_remove(ptr noundef %1) #10
  %dent_t = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 6
  %2 = ptrtoint ptr %dent_t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dent_t, align 4
  tail call void @debugfs_remove(ptr noundef %3) #10
  %dent_s = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 5
  %4 = ptrtoint ptr %dent_s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dent_s, align 4
  tail call void @debugfs_remove(ptr noundef %5) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mon_text_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %0 = load ptr, ptr @usb_debug_root, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store ptr %call, ptr @mon_dir, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mon_text_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mon_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_text_read_t(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %ptr = alloca %struct.mon_text_ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ptr) #10
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ptr, align 4, !annotation !81
  %3 = getelementptr inbounds %struct.mon_text_ptr, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !81
  %5 = getelementptr inbounds %struct.mon_text_ptr, ptr %ptr, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !81
  %printf_lock = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %printf_lock, i32 noundef 0) #10
  %printf_togo = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %printf_togo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %printf_togo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call fastcc ptr @mon_text_read_wait(ptr noundef %1, ptr noundef %file)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %printf_lock) #10
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ptr, align 4
  %printf_buf = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %printf_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %printf_buf, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %5, align 4
  %printf_size = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %printf_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %printf_size, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %3, align 4
  %is_in.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_in.i, align 2
  %xfertype.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 8
  %19 = ptrtoint ptr %xfertype.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xfertype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %21 = icmp ult i8 %20, 4
  br i1 %21, label %switch.lookup, label %if.end.mon_text_read_head_t.exit_crit_edge

if.end.mon_text_read_head_t.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_read_head_t.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = sext i8 %20 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mon_text_read_t, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mon_text_read_head_t.exit

mon_text_read_head_t.exit:                        ; preds = %switch.lookup, %if.end.mon_text_read_head_t.exit_crit_edge
  %utype.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 66, %if.end.mon_text_read_head_t.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %conv1.i = select i1 %tobool.not.i, i32 111, i32 105
  %id.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 2
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i, align 4
  %tstamp.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 3
  %26 = ptrtoint ptr %tstamp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tstamp.i, align 4
  %type.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  %devnum.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 5
  %30 = ptrtoint ptr %devnum.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %devnum.i, align 4
  %conv8.i = zext i8 %31 to i32
  %epnum.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 6
  %32 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %epnum.i, align 1
  %conv9.i = zext i8 %33 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %12, i32 noundef %15, ptr noundef nonnull @.str.9, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %utype.0.i, i32 noundef %conv1.i, i32 noundef %conv8.i, i32 noundef %conv9.i) #10
  %34 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptr, align 4
  %add.i = add i32 %35, %call.i
  store i32 %add.i, ptr %ptr, align 4
  call fastcc void @mon_text_read_statset(ptr noundef nonnull %ptr, ptr noundef %call)
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  %38 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %sub = sub i32 %41, %39
  %length = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 9
  %42 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.4, i32 noundef %43) #10
  %add = add i32 %39, %call9
  %44 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add, ptr %ptr, align 4
  call fastcc void @mon_text_read_data(ptr noundef nonnull %ptr, ptr noundef %call)
  %45 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ptr, align 4
  %47 = ptrtoint ptr %printf_togo to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %printf_togo, align 4
  %printf_offset = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %printf_offset to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %printf_offset, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  call void @kmem_cache_free(ptr noundef %50, ptr noundef %call) #10
  br label %if.end13

if.end13:                                         ; preds = %mon_text_read_head_t.exit, %entry.if.end13_crit_edge
  %call14 = call fastcc i32 @mon_text_copy_to_user(ptr noundef %1, ptr noundef %buf, i32 noundef %nbytes)
  call void @mutex_unlock(ptr noundef %printf_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then2
  %retval.0 = phi i32 [ %9, %if.then2 ], [ %call14, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ptr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_text_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mon_lock, i32 noundef 0) #10
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 236) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %e_list = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %e_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %e_list, ptr %e_list, align 8
  %prev.i = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %e_list, ptr %prev.i, align 4
  %wait = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.20, ptr noundef nonnull @mon_text_open.__key) #10
  %printf_lock = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %printf_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @mon_text_open.__key.21) #10
  %printf_size = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %printf_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 250, ptr %printf_size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 250) #13
  %printf_buf = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %printf_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %printf_buf, align 4
  %cmp7 = icmp eq ptr %call7.i, null
  br i1 %cmp7, label %if.end.err_alloc_pr_crit_edge, label %if.end9

if.end.err_alloc_pr_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_pr

if.end9:                                          ; preds = %if.end
  %m_bus = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %m_bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %m_bus, align 8
  %r_data = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %r_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %r_data, align 4
  %rnf_submit = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %rnf_submit to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mon_text_submit, ptr %rnf_submit, align 8
  %rnf_error = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %rnf_error to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mon_text_error, ptr %rnf_error, align 4
  %rnf_complete = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %rnf_complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mon_text_complete, ptr %rnf_complete, align 8
  %slab_name = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 10
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %slab_name, i32 noundef 30, ptr noundef nonnull @.str.23, ptr noundef nonnull %call7.i.i)
  %call17 = tail call ptr @kmem_cache_create(ptr noundef %slab_name, i32 noundef 156, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @mon_text_ctor) #10
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %call7.i.i, align 8
  %cmp19 = icmp eq ptr %call17, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %printf_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %printf_buf, align 4
  tail call void @kfree(ptr noundef %15) #10
  br label %err_alloc_pr

if.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %r = getelementptr inbounds %struct.mon_reader_text, ptr %call7.i.i, i32 0, i32 3
  tail call void @mon_reader_add(ptr noundef %1, ptr noundef %r) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

err_alloc_pr:                                     ; preds = %if.then20, %if.end.err_alloc_pr_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_pr, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err_alloc_pr ]
  tail call void @mutex_unlock(ptr noundef nonnull @mon_lock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_text_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mon_lock, i32 noundef 0) #10
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %nreaders to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nreaders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 3
  tail call void @mon_reader_del(ptr noundef %3, ptr noundef %r) #10
  %e_list = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %e_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %e_list, align 4
  %cmp.i.not17 = icmp eq ptr %7, %e_list
  br i1 %cmp.i.not17, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %nevents = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %8 = phi ptr [ %7, %while.body.lr.ph ], [ %22, %list_del.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %17 = ptrtoint ptr %nevents to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nevents, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %nevents, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %8) #10
  %21 = ptrtoint ptr %e_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %e_list, align 4
  %cmp.i.not = icmp eq ptr %22, %e_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void @kmem_cache_destroy(ptr noundef %24) #10
  %printf_buf = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %printf_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %printf_buf, align 4
  tail call void @kfree(ptr noundef %26) #10
  tail call void @kfree(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  tail call void @mutex_unlock(ptr noundef nonnull @mon_lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mon_text_read_wait(ptr noundef %rp, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  %waita = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m_bus = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %m_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_bus, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %waita) #10
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %waita to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %waita, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %wait = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 4
  call void @add_wait_queue(ptr noundef %wait, ptr noundef nonnull %waita) #10
  br label %__here

__here:                                           ; preds = %entry
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@mon_text_read_wait, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %18, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  %lock.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1
  %e_list.i = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 2
  %nevents.i = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %__here207, %__here
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %20 = ptrtoint ptr %e_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %e_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %e_list.i
  br i1 %cmp.i.not.i, label %mon_text_fetch.exit.thread, label %if.end.i

mon_text_fetch.exit.thread:                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %while.body

if.end.i:                                         ; preds = %while.cond
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.mon_text_fetch.exit_crit_edge

if.end.i.mon_text_fetch.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_fetch.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
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
  br label %mon_text_fetch.exit

mon_text_fetch.exit:                              ; preds = %if.end.i.i.i, %if.end.i.mon_text_fetch.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %nevents.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nevents.i, align 4
  %dec.i = add i32 %31, -1
  store i32 %dec.i, ptr %nevents.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %cmp = icmp eq ptr %21, null
  br i1 %cmp, label %mon_text_fetch.exit.while.body_crit_edge, label %__here287

mon_text_fetch.exit.while.body_crit_edge:         ; preds = %mon_text_fetch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %mon_text_fetch.exit.while.body_crit_edge, %mon_text_fetch.exit.thread
  %32 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_flags, align 4
  %and = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.end148, label %__here116

__here116:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %task_state_change120 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 212
  %36 = ptrtoint ptr %task_state_change120 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 ptrtoint (ptr blockaddress(@mon_text_read_wait, %__here116) to i32), ptr %task_state_change120, align 4
  %37 = load ptr, ptr %task, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %37, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  br label %cleanup

if.end148:                                        ; preds = %while.body
  call void @schedule() #10
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stack.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end148.cleanup_crit_edge, !prof !84

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end148
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %and1.i.i.i.i.i = and i32 %47, 1
  %tobool152.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool152.not, label %__here207, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__here207:                                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  %task_state_change211 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 212
  %48 = ptrtoint ptr %task_state_change211 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 ptrtoint (ptr blockaddress(@mon_text_read_wait, %__here207) to i32), ptr %task_state_change211, align 4
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 1, ptr %50, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  br label %while.cond

__here287:                                        ; preds = %mon_text_fetch.exit
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  %task_state_change291 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 212
  %54 = ptrtoint ptr %task_state_change291 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 ptrtoint (ptr blockaddress(@mon_text_read_wait, %__here287) to i32), ptr %task_state_change291, align 4
  %55 = load ptr, ptr %task, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %55, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %__here287, %signal_pending.exit.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %__here116
  %retval.0 = phi ptr [ inttoptr (i32 -11 to ptr), %__here116 ], [ %21, %__here287 ], [ inttoptr (i32 -4 to ptr), %if.end148.cleanup_crit_edge ], [ inttoptr (i32 -4 to ptr), %signal_pending.exit.cleanup_crit_edge ]
  call void @remove_wait_queue(ptr noundef %wait, ptr noundef nonnull %waita) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %waita) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_text_read_statset(ptr nocapture noundef %p, ptr nocapture noundef readonly %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_flag = getelementptr inbounds %struct.mon_event_text, ptr %ep, i32 0, i32 14
  %0 = ptrtoint ptr %setup_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup_flag, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.then34 [
    i8 0, label %if.then
    i8 45, label %if.else46
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pbuf = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbuf, align 4
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %6
  %limit = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit, align 4
  %sub = sub i32 %8, %6
  %setup = getelementptr inbounds %struct.mon_event_text, ptr %ep, i32 0, i32 18
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %setup, align 4
  %conv3 = zext i8 %10 to i32
  %arrayidx5 = getelementptr %struct.mon_event_text, ptr %ep, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %12 to i32
  %arrayidx8 = getelementptr %struct.mon_event_text, ptr %ep, i32 0, i32 18, i32 3
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %arrayidx11 = getelementptr %struct.mon_event_text, ptr %ep, i32 0, i32 18, i32 2
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11, align 2
  %conv12 = zext i8 %16 to i32
  %or = or i32 %shl, %conv12
  %arrayidx14 = getelementptr %struct.mon_event_text, ptr %ep, i32 0, i32 18, i32 5
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %arrayidx18 = getelementptr %struct.mon_event_text, ptr %ep, i32 0, i32 18, i32 4
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx18, align 4
  %conv19 = zext i8 %20 to i32
  %or20 = or i32 %shl16, %conv19
  %arrayidx22 = getelementptr %struct.mon_event_text, ptr %ep, i32 0, i32 18, i32 7
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %22 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %arrayidx26 = getelementptr %struct.mon_event_text, ptr %ep, i32 0, i32 18, i32 6
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx26, align 2
  %conv27 = zext i8 %24 to i32
  %or28 = or i32 %shl24, %conv27
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.10, i32 noundef %conv3, i32 noundef %conv6, i32 noundef %or, i32 noundef %or20, i32 noundef %or28) #10
  br label %if.end56

if.then34:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %1 to i32
  %pbuf35 = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 2
  %25 = ptrtoint ptr %pbuf35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pbuf35, align 4
  %27 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p, align 4
  %add.ptr37 = getelementptr i8, ptr %26, i32 %28
  %limit38 = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 1
  %29 = ptrtoint ptr %limit38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %limit38, align 4
  %sub40 = sub i32 %30, %28
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub40, ptr noundef nonnull @.str.11, i32 noundef %conv) #10
  br label %if.end56

if.else46:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pbuf47 = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 2
  %31 = ptrtoint ptr %pbuf47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pbuf47, align 4
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p, align 4
  %add.ptr49 = getelementptr i8, ptr %32, i32 %34
  %limit50 = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 1
  %35 = ptrtoint ptr %limit50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %limit50, align 4
  %sub52 = sub i32 %36, %34
  %status = getelementptr inbounds %struct.mon_event_text, ptr %ep, i32 0, i32 10
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub52, ptr noundef nonnull @.str.4, i32 noundef %38) #10
  br label %if.end56

if.end56:                                         ; preds = %if.else46, %if.then34, %if.then
  %call43.sink = phi i32 [ %call43, %if.then34 ], [ %call53, %if.else46 ], [ %call, %if.then ]
  %39 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %p, align 4
  %add45 = add i32 %40, %call43.sink
  store i32 %add45, ptr %p, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_text_read_data(ptr noundef %p, ptr nocapture noundef readonly %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.mon_event_text, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else55

if.then:                                          ; preds = %entry
  %data_flag = getelementptr inbounds %struct.mon_event_text, ptr %ep, i32 0, i32 15
  %2 = ptrtoint ptr %data_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %if.then
  %pbuf = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pbuf, align 4
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %limit = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 1
  %8 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit, align 4
  %sub = sub i32 %9, %7
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.12) #10
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p, align 4
  %add = add i32 %11, %call
  store i32 %add, ptr %p, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %1, i32 32)
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.preheader
  %i.02 = phi i32 [ %inc, %if.end23.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %13 = and i32 %i.02, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %if.then13, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pbuf, align 4
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 %17
  %18 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %limit, align 4
  %sub19 = sub i32 %19, %17
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub19, ptr noundef nonnull @.str.13) #10
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p, align 4
  %add22 = add i32 %21, %call20
  store i32 %add22, ptr %p, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then13, %for.body.if.end23_crit_edge
  %22 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pbuf, align 4
  %24 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p, align 4
  %add.ptr26 = getelementptr i8, ptr %23, i32 %25
  %26 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %limit, align 4
  %sub29 = sub i32 %27, %25
  %arrayidx = getelementptr %struct.mon_event_text, ptr %ep, i32 0, i32 19, i32 %i.02
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %conv30 = zext i8 %29 to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub29, ptr noundef nonnull @.str.14, i32 noundef %conv30) #10
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p, align 4
  %add33 = add i32 %31, %call31
  store i32 %add33, ptr %p, align 4
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.end, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pbuf, align 4
  %34 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p, align 4
  %add.ptr36 = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %limit, align 4
  %sub39 = sub i32 %37, %35
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub39, ptr noundef nonnull @.str.15) #10
  br label %if.end65

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %3 to i32
  %pbuf43 = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 2
  %38 = ptrtoint ptr %pbuf43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pbuf43, align 4
  %40 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %p, align 4
  %add.ptr45 = getelementptr i8, ptr %39, i32 %41
  %limit46 = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 1
  %42 = ptrtoint ptr %limit46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %limit46, align 4
  %sub48 = sub i32 %43, %41
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub48, ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %if.end65

if.else55:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pbuf56 = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 2
  %44 = ptrtoint ptr %pbuf56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pbuf56, align 4
  %46 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %p, align 4
  %add.ptr58 = getelementptr i8, ptr %45, i32 %47
  %limit59 = getelementptr inbounds %struct.mon_text_ptr, ptr %p, i32 0, i32 1
  %48 = ptrtoint ptr %limit59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %limit59, align 4
  %sub61 = sub i32 %49, %47
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub61, ptr noundef nonnull @.str.15) #10
  br label %if.end65

if.end65:                                         ; preds = %if.else55, %if.else, %for.end
  %call40.sink = phi i32 [ %call40, %for.end ], [ %call51, %if.else ], [ %call62, %if.else55 ]
  %50 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %p, align 4
  %add42 = add i32 %51, %call40.sink
  store i32 %add42, ptr %p, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mon_text_copy_to_user(ptr nocapture noundef %rp, ptr noundef %buf, i32 noundef %nbytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %printf_togo = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 7
  %0 = ptrtoint ptr %printf_togo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %printf_togo, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %nbytes)
  %printf_buf = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 8
  %3 = ptrtoint ptr %printf_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %printf_buf, align 4
  %printf_offset = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 6
  %5 = ptrtoint ptr %printf_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %printf_offset, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9.i.i = icmp slt i32 %2, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !84

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %2, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %2, i32 -1226833920) #15, !srcloc !87
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef %2) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %2) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %2, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %2, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %printf_togo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %printf_togo, align 4
  %sub = sub i32 %9, %2
  store i32 %sub, ptr %printf_togo, align 4
  %10 = ptrtoint ptr %printf_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %printf_offset, align 4
  %add = add i32 %11, %2
  store i32 %add, ptr %printf_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_text_submit(ptr noundef %data, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mon_text_event(ptr noundef %data, ptr noundef %urb, i8 noundef zeroext 83, i32 noundef -115)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_text_error(ptr noundef %data, ptr noundef %urb, i32 noundef %error) #0 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nevents = getelementptr inbounds %struct.mon_reader_text, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %nevents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nevents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %1)
  %cmp = icmp ugt i32 %1, 104
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 2592) #10
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %m_bus = getelementptr inbounds %struct.mon_reader_text, ptr %data, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %m_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_bus, align 4
  %cnt_text_lost = getelementptr inbounds %struct.mon_bus, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %cnt_text_lost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt_text_lost, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %cnt_text_lost, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 69, ptr %type, align 8
  %9 = ptrtoint ptr %urb to i32
  %id = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %id, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busnum, align 4
  %busnum2 = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %busnum2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %busnum2, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 8
  %conv = trunc i32 %19 to i8
  %devnum4 = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 5
  %20 = ptrtoint ptr %devnum4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %devnum4, align 8
  %ep5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %21 = ptrtoint ptr %ep5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep5, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i, align 1
  %25 = and i8 %24, 15
  %epnum = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %epnum, align 1
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bmAttributes.i, align 1
  %29 = and i8 %28, 3
  %xfertype = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 8
  %30 = ptrtoint ptr %xfertype to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %xfertype, align 1
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %31 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_flags.i, align 4
  %and.i41 = lshr i32 %32, 9
  %33 = trunc i32 %and.i41 to i8
  %conv13 = and i8 %33, 1
  %is_in = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 7
  %34 = ptrtoint ptr %is_in to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv13, ptr %is_in, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #10
  %35 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %now.i) #10
  %36 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %now.i, align 8
  %38 = trunc i64 %37 to i32
  %conv.i = and i32 %38, 4095
  %mul.i = mul nuw i32 %conv.i, 1000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1
  %39 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %40, 1000
  %add.i = add i32 %mul.i, %div.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #10
  %tstamp = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 3
  %41 = ptrtoint ptr %tstamp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %tstamp, align 8
  %length = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 9
  %42 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %length, align 4
  %status = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 10
  %43 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %error, ptr %status, align 8
  %setup_flag = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 14
  %44 = ptrtoint ptr %setup_flag to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 45, ptr %setup_flag, align 8
  %data_flag = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 15
  %45 = ptrtoint ptr %data_flag to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 69, ptr %data_flag, align 1
  %46 = ptrtoint ptr %nevents to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nevents, align 4
  %inc16 = add i32 %47, 1
  store i32 %inc16, ptr %nevents, align 4
  %e_list = getelementptr inbounds %struct.mon_reader_text, ptr %data, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mon_reader_text, ptr %data, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %49, ptr noundef %e_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call, ptr %prev.i, align 4
  %51 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %e_list, ptr %call, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %wait = getelementptr inbounds %struct.mon_reader_text, ptr %data, i32 0, i32 4
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_text_complete(ptr noundef %data, ptr noundef %urb, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mon_text_event(ptr noundef %data, ptr noundef %urb, i8 noundef zeroext 67, i32 noundef %status)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mon_text_ctor(ptr nocapture noundef writeonly %mem) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mem, i32 229, i32 156)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mon_reader_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_text_event(ptr noundef %rp, ptr noundef %urb, i8 noundef zeroext %ev_type, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #10
  %0 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %now.i) #10
  %1 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %now.i, align 8
  %3 = trunc i64 %2 to i32
  %conv.i = and i32 %3, 4095
  %mul.i = mul nuw i32 %conv.i, 1000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %5, 1000
  %add.i = add i32 %mul.i, %div.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #10
  %nevents = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 1
  %6 = ptrtoint ptr %nevents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nevents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %7)
  %cmp = icmp ugt i32 %7, 104
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rp, align 4
  %call1 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 2592) #10
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %m_bus = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %m_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_bus, align 4
  %cnt_text_lost = getelementptr inbounds %struct.mon_bus, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %cnt_text_lost to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnt_text_lost, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %cnt_text_lost, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %ev_type to i32
  %type = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %type, align 8
  %15 = ptrtoint ptr %urb to i32
  %id = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 2
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %id, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %busnum, align 4
  %busnum3 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 4
  %23 = ptrtoint ptr %busnum3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %busnum3, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %18, align 8
  %conv5 = trunc i32 %25 to i8
  %devnum6 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 5
  %26 = ptrtoint ptr %devnum6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv5, ptr %devnum6, align 8
  %ep7 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %27 = ptrtoint ptr %ep7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep7, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bEndpointAddress.i, align 1
  %31 = and i8 %30, 15
  %epnum = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 6
  %32 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %epnum, align 1
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bmAttributes.i, align 1
  %35 = and i8 %34, 3
  %xfertype = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 8
  %36 = ptrtoint ptr %xfertype to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %xfertype, align 1
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %37 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %transfer_flags.i, align 4
  %and.i154 = lshr i32 %38, 9
  %39 = trunc i32 %and.i154 to i8
  %conv15 = and i8 %39, 1
  %is_in = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 7
  %40 = ptrtoint ptr %is_in to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv15, ptr %is_in, align 2
  %tstamp = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 3
  %41 = ptrtoint ptr %tstamp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %tstamp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %ev_type)
  %cmp17 = icmp eq i8 %ev_type, 83
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %cond.in = select i1 %cmp17, ptr %transfer_buffer_length, ptr %actual_length
  %42 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond = load i32, ptr %cond.in, align 4
  %length = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 9
  %43 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %length, align 4
  %status19 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 10
  %44 = ptrtoint ptr %status19 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %status, ptr %status19, align 8
  %trunc = trunc i8 %34 to i2
  %45 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.31)
  switch i2 %trunc, label %if.end.if.end36_crit_edge [
    i2 -1, label %if.then24
    i2 1, label %if.then30
  ]

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %46 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %interval, align 4
  %interval25 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 11
  %48 = ptrtoint ptr %interval25 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %interval25, align 4
  br label %if.end36

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %interval31 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %49 = ptrtoint ptr %interval31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interval31, align 4
  %interval32 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 11
  %51 = ptrtoint ptr %interval32 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %interval32, align 4
  %start_frame = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %52 = ptrtoint ptr %start_frame to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %start_frame, align 4
  %start_frame33 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 12
  %54 = ptrtoint ptr %start_frame33 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %start_frame33, align 8
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %55 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error_count, align 4
  %error_count34 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 13
  %57 = ptrtoint ptr %error_count34 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %error_count34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.then24, %if.end.if.end36_crit_edge
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %58 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %number_of_packets, align 4
  %numdesc = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 16
  %60 = ptrtoint ptr %numdesc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %numdesc, align 4
  %61 = ptrtoint ptr %xfertype to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %xfertype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp39 = icmp eq i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp42 = icmp sgt i32 %59, 0
  %or.cond = select i1 %cmp39, i1 %cmp42, i1 false
  br i1 %or.cond, label %for.body.preheader, label %if.end36.if.end75_crit_edge

if.end36.if.end75_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

for.body.preheader:                               ; preds = %if.end36
  %63 = call i32 @llvm.smin.i32(i32 %59, i32 5)
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 29
  %isodesc = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 17
  %status53 = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 3
  %64 = ptrtoint ptr %status53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status53, align 4
  %66 = ptrtoint ptr %isodesc to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %isodesc, align 8
  %67 = ptrtoint ptr %iso_frame_desc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iso_frame_desc, align 4
  %offset55 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 0, i32 1
  %69 = ptrtoint ptr %offset55 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %offset55, align 4
  %length60 = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 1
  %actual_length62 = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 2
  %cond64.in = select i1 %cmp17, ptr %length60, ptr %actual_length62
  %70 = ptrtoint ptr %cond64.in to i32
  call void @__asan_load4_noabort(i32 %70)
  %cond64 = load i32, ptr %cond64.in, align 4
  %length65 = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 0, i32 2
  %71 = ptrtoint ptr %length65 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond64, ptr %length65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %exitcond.not = icmp eq i32 %63, 1
  br i1 %exitcond.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %incdec.ptr66 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 1
  %incdec.ptr = getelementptr %struct.urb, ptr %urb, i32 1, i32 4
  %status53.1 = getelementptr %struct.urb, ptr %urb, i32 1, i32 6
  %72 = ptrtoint ptr %status53.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %status53.1, align 4
  %74 = ptrtoint ptr %incdec.ptr66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %incdec.ptr66, align 4
  %75 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr, align 4
  %offset55.1 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 1, i32 1
  %77 = ptrtoint ptr %offset55.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %offset55.1, align 8
  %length60.1 = getelementptr %struct.urb, ptr %urb, i32 1, i32 5
  %actual_length62.1 = getelementptr %struct.urb, ptr %urb, i32 1, i32 5, i32 1
  %cond64.in.1 = select i1 %cmp17, ptr %length60.1, ptr %actual_length62.1
  %78 = ptrtoint ptr %cond64.in.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %cond64.1 = load i32, ptr %cond64.in.1, align 4
  %length65.1 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 1, i32 2
  %79 = ptrtoint ptr %length65.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %cond64.1, ptr %length65.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %exitcond.not.1 = icmp eq i32 %63, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %incdec.ptr66.1 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 2
  %incdec.ptr.1 = getelementptr %struct.urb, ptr %urb, i32 1, i32 6, i32 1
  %status53.2 = getelementptr %struct.urb, ptr %urb, i32 1, i32 9
  %80 = ptrtoint ptr %status53.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %status53.2, align 4
  %82 = ptrtoint ptr %incdec.ptr66.1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %incdec.ptr66.1, align 8
  %83 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %incdec.ptr.1, align 4
  %offset55.2 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 2, i32 1
  %85 = ptrtoint ptr %offset55.2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %offset55.2, align 4
  %length60.2 = getelementptr %struct.urb, ptr %urb, i32 1, i32 7
  %actual_length62.2 = getelementptr %struct.urb, ptr %urb, i32 1, i32 8
  %cond64.in.2 = select i1 %cmp17, ptr %length60.2, ptr %actual_length62.2
  %86 = ptrtoint ptr %cond64.in.2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %cond64.2 = load i32, ptr %cond64.in.2, align 4
  %length65.2 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 2, i32 2
  %87 = ptrtoint ptr %length65.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond64.2, ptr %length65.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %exitcond.not.2 = icmp eq i32 %63, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %incdec.ptr66.2 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 3
  %incdec.ptr.2 = getelementptr %struct.urb, ptr %urb, i32 1, i32 10
  %status53.3 = getelementptr %struct.urb, ptr %urb, i32 1, i32 13
  %88 = ptrtoint ptr %status53.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %status53.3, align 4
  %90 = ptrtoint ptr %incdec.ptr66.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %incdec.ptr66.2, align 4
  %91 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %incdec.ptr.2, align 4
  %offset55.3 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 3, i32 1
  %93 = ptrtoint ptr %offset55.3 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %offset55.3, align 8
  %length60.3 = getelementptr %struct.urb, ptr %urb, i32 1, i32 11
  %actual_length62.3 = getelementptr %struct.urb, ptr %urb, i32 1, i32 12
  %cond64.in.3 = select i1 %cmp17, ptr %length60.3, ptr %actual_length62.3
  %94 = ptrtoint ptr %cond64.in.3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %cond64.3 = load i32, ptr %cond64.in.3, align 4
  %length65.3 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 3, i32 2
  %95 = ptrtoint ptr %length65.3 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %cond64.3, ptr %length65.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %exitcond.not.3 = icmp eq i32 %63, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr66.3 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 4
  %incdec.ptr.3 = getelementptr %struct.urb, ptr %urb, i32 1, i32 14
  %status53.4 = getelementptr %struct.urb, ptr %urb, i32 1, i32 17
  %96 = ptrtoint ptr %status53.4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %status53.4, align 4
  %98 = ptrtoint ptr %incdec.ptr66.3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %incdec.ptr66.3, align 8
  %99 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %incdec.ptr.3, align 4
  %offset55.4 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 4, i32 1
  %101 = ptrtoint ptr %offset55.4 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %offset55.4, align 4
  %length60.4 = getelementptr %struct.urb, ptr %urb, i32 1, i32 15
  %actual_length62.4 = getelementptr %struct.urb, ptr %urb, i32 1, i32 16
  %cond64.in.4 = select i1 %cmp17, ptr %length60.4, ptr %actual_length62.4
  %102 = ptrtoint ptr %cond64.in.4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %cond64.4 = load i32, ptr %cond64.in.4, align 4
  %length65.4 = getelementptr %struct.mon_event_text, ptr %call1, i32 0, i32 17, i32 4, i32 2
  %103 = ptrtoint ptr %length65.4 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %cond64.4, ptr %length65.4, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %ev_type)
  %cmp69 = icmp eq i8 %ev_type, 67
  br i1 %cmp69, label %if.then71, label %for.end.if.end75_crit_edge

for.end.if.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then71:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %transfer_buffer_length, align 4
  %106 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %length, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %for.end.if.end75_crit_edge, %if.end36.if.end75_crit_edge
  %107 = ptrtoint ptr %xfertype to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %xfertype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp.not.i = icmp eq i8 %108, 0
  %or.cond.i = and i1 %cmp17, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end75.mon_text_get_setup.exit_crit_edge

if.end75.mon_text_get_setup.exit_crit_edge:       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_get_setup.exit

if.end.i:                                         ; preds = %if.end75
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %109 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %setup_packet.i, align 4
  %cmp5.i = icmp eq ptr %110, null
  br i1 %cmp5.i, label %if.end.i.mon_text_get_setup.exit_crit_edge, label %if.end8.i

if.end.i.mon_text_get_setup.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_get_setup.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %setup.i = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 18
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %110, align 1
  %113 = ptrtoint ptr %setup.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 8)
  store i64 %112, ptr %setup.i, align 4
  br label %mon_text_get_setup.exit

mon_text_get_setup.exit:                          ; preds = %if.end8.i, %if.end.i.mon_text_get_setup.exit_crit_edge, %if.end75.mon_text_get_setup.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.end8.i ], [ 45, %if.end75.mon_text_get_setup.exit_crit_edge ], [ 90, %if.end.i.mon_text_get_setup.exit_crit_edge ]
  %setup_flag = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 14
  %114 = ptrtoint ptr %setup_flag to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %retval.0.i, ptr %setup_flag, align 8
  %115 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp.i = icmp slt i32 %116, 1
  br i1 %cmp.i, label %mon_text_get_setup.exit.mon_text_get_data.exit_crit_edge, label %if.end.i155

mon_text_get_setup.exit.mon_text_get_data.exit_crit_edge: ; preds = %mon_text_get_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_get_data.exit

if.end.i155:                                      ; preds = %mon_text_get_setup.exit
  %117 = call i32 @llvm.smin.i32(i32 %116, i32 32) #10
  %118 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %ev_type)
  %cmp5.not.i = icmp eq i8 %ev_type, 67
  br i1 %cmp5.not.i, label %if.then4.i.if.end14.i_crit_edge, label %if.then4.i.mon_text_get_data.exit_crit_edge

if.then4.i.mon_text_get_data.exit_crit_edge:      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_get_data.exit

if.then4.i.if.end14.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i155
  br i1 %cmp17, label %if.else.i.if.end14.i_crit_edge, label %if.else.i.mon_text_get_data.exit_crit_edge

if.else.i.mon_text_get_data.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_get_data.exit

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i.if.end14.i_crit_edge, %if.then4.i.if.end14.i_crit_edge
  %num_sgs.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 18
  %120 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_sgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp15.i = icmp eq i32 %121, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.else22.i

if.then17.i:                                      ; preds = %if.end14.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %122 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %transfer_buffer.i, align 4
  %cmp18.i = icmp eq ptr %123, null
  br i1 %cmp18.i, label %if.then17.i.mon_text_get_data.exit_crit_edge, label %if.then17.i.if.end32.i_crit_edge

if.then17.i.if.end32.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then17.i.mon_text_get_data.exit_crit_edge:     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_get_data.exit

if.else22.i:                                      ; preds = %if.end14.i
  %sg23.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 16
  %124 = ptrtoint ptr %sg23.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sg23.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %and.i.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !84

do.body2.i.i:                                     ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

sg_page.exit.i:                                   ; preds = %if.else22.i
  %and.i.i = and i32 %127, -4
  %128 = inttoptr i32 %and.i.i to ptr
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %shr.i.i = lshr i32 %130, 30
  %131 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i, label %sg_page.exit.i.cleanup.i_crit_edge [
    i32 2, label %sg_page.exit.i.mon_text_get_data.exit_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

sg_page.exit.i.mon_text_get_data.exit_crit_edge:  ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_get_data.exit

sg_page.exit.i.cleanup.i_crit_edge:               ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

is_highmem_idx.exit.i:                            ; preds = %sg_page.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %132 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp2.i.not.i = icmp eq i32 %132, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.mon_text_get_data.exit_crit_edge, label %is_highmem_idx.exit.i.cleanup.i_crit_edge

is_highmem_idx.exit.i.cleanup.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

is_highmem_idx.exit.i.mon_text_get_data.exit_crit_edge: ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_get_data.exit

cleanup.i:                                        ; preds = %is_highmem_idx.exit.i.cleanup.i_crit_edge, %sg_page.exit.i.cleanup.i_crit_edge
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %125, i32 0, i32 2
  %133 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length.i, align 4
  %135 = call i32 @llvm.smin.i32(i32 %134, i32 %117) #10
  %call1.i.i = call ptr @page_address(ptr noundef %128) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %125, i32 0, i32 1
  %136 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %137
  br label %if.end32.i

if.end32.i:                                       ; preds = %cleanup.i, %if.then17.i.if.end32.i_crit_edge
  %len.addr.1.i = phi i32 [ %117, %if.then17.i.if.end32.i_crit_edge ], [ %135, %cleanup.i ]
  %src.1.i = phi ptr [ %123, %if.then17.i.if.end32.i_crit_edge ], [ %add.ptr.i.i, %cleanup.i ]
  %data.i = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 19
  %138 = call ptr @memcpy(ptr %data.i, ptr %src.1.i, i32 %len.addr.1.i)
  br label %mon_text_get_data.exit

mon_text_get_data.exit:                           ; preds = %if.end32.i, %is_highmem_idx.exit.i.mon_text_get_data.exit_crit_edge, %sg_page.exit.i.mon_text_get_data.exit_crit_edge, %if.then17.i.mon_text_get_data.exit_crit_edge, %if.else.i.mon_text_get_data.exit_crit_edge, %if.then4.i.mon_text_get_data.exit_crit_edge, %mon_text_get_setup.exit.mon_text_get_data.exit_crit_edge
  %retval.1.i = phi i8 [ 0, %if.end32.i ], [ 76, %mon_text_get_setup.exit.mon_text_get_data.exit_crit_edge ], [ 60, %if.then4.i.mon_text_get_data.exit_crit_edge ], [ 62, %if.else.i.mon_text_get_data.exit_crit_edge ], [ 90, %if.then17.i.mon_text_get_data.exit_crit_edge ], [ 68, %is_highmem_idx.exit.i.mon_text_get_data.exit_crit_edge ], [ 68, %sg_page.exit.i.mon_text_get_data.exit_crit_edge ]
  %data_flag = getelementptr inbounds %struct.mon_event_text, ptr %call1, i32 0, i32 15
  %139 = ptrtoint ptr %data_flag to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %retval.1.i, ptr %data_flag, align 1
  %140 = ptrtoint ptr %nevents to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nevents, align 4
  %inc84 = add i32 %141, 1
  store i32 %inc84, ptr %nevents, align 4
  %e_list = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 2, i32 1
  %142 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %call1, ptr noundef %143, ptr noundef %e_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %mon_text_get_data.exit.list_add_tail.exit_crit_edge

mon_text_get_data.exit.list_add_tail.exit_crit_edge: ; preds = %mon_text_get_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %mon_text_get_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call1, ptr %prev.i, align 4
  %145 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %e_list, ptr %call1, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %146 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev3.i.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %call1, ptr %143, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %mon_text_get_data.exit.list_add_tail.exit_crit_edge
  %wait = getelementptr inbounds %struct.mon_reader_text, ptr %rp, i32 0, i32 4
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mon_reader_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_text_read_u(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %ptr = alloca %struct.mon_text_ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ptr) #10
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ptr, align 4, !annotation !81
  %3 = getelementptr inbounds %struct.mon_text_ptr, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !81
  %5 = getelementptr inbounds %struct.mon_text_ptr, ptr %ptr, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !81
  %printf_lock = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %printf_lock, i32 noundef 0) #10
  %printf_togo = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %printf_togo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %printf_togo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %entry
  %call = tail call fastcc ptr @mon_text_read_wait(ptr noundef %1, ptr noundef %file)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %printf_lock) #10
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ptr, align 4
  %printf_buf = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %printf_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %printf_buf, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %5, align 4
  %printf_size = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %printf_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %printf_size, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %3, align 4
  %is_in.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_in.i, align 2
  %xfertype.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 8
  %19 = ptrtoint ptr %xfertype.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xfertype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %21 = icmp ult i8 %20, 4
  br i1 %21, label %switch.lookup, label %if.end.mon_text_read_head_u.exit_crit_edge

if.end.mon_text_read_head_u.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_text_read_head_u.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = sext i8 %20 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mon_text_read_u, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mon_text_read_head_u.exit

mon_text_read_head_u.exit:                        ; preds = %switch.lookup, %if.end.mon_text_read_head_u.exit_crit_edge
  %utype.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 66, %if.end.mon_text_read_head_u.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %conv1.i = select i1 %tobool.not.i, i32 111, i32 105
  %id.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 2
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i, align 4
  %tstamp.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 3
  %26 = ptrtoint ptr %tstamp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tstamp.i, align 4
  %type.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  %busnum.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 4
  %30 = ptrtoint ptr %busnum.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %busnum.i, align 4
  %devnum.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 5
  %32 = ptrtoint ptr %devnum.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %devnum.i, align 4
  %conv8.i = zext i8 %33 to i32
  %epnum.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 6
  %34 = ptrtoint ptr %epnum.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %epnum.i, align 1
  %conv9.i = zext i8 %35 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %12, i32 noundef %15, ptr noundef nonnull @.str.26, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %utype.0.i, i32 noundef %conv1.i, i32 noundef %31, i32 noundef %conv8.i, i32 noundef %conv9.i) #10
  %36 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ptr, align 4
  %add.i = add i32 %37, %call.i
  store i32 %add.i, ptr %ptr, align 4
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %39)
  %cmp5 = icmp eq i32 %39, 69
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %mon_text_read_head_u.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mon_text_read_statset(ptr noundef nonnull %ptr, ptr noundef %call)
  br label %if.end19

if.else:                                          ; preds = %mon_text_read_head_u.exit
  %40 = ptrtoint ptr %xfertype.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %xfertype.i, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %41, label %if.else16 [
    i8 1, label %if.then9
    i8 3, label %if.then15
  ]

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %39)
  %cmp.i66 = icmp eq i32 %39, 83
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  %add.ptr.i68 = getelementptr i8, ptr %44, i32 %add.i
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  %sub.i70 = sub i32 %46, %add.i
  %status.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 10
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status.i, align 4
  %interval.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 11
  %49 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interval.i, align 4
  %start_frame.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 12
  %51 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %start_frame.i, align 4
  br i1 %cmp.i66, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i71 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i68, i32 noundef %sub.i70, ptr noundef nonnull @.str.27, i32 noundef %48, i32 noundef %50, i32 noundef %52) #10
  br label %mon_text_read_isostat.exit

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %error_count.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 13
  %53 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %error_count.i, align 4
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i68, i32 noundef %sub.i70, ptr noundef nonnull @.str.28, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #10
  br label %mon_text_read_isostat.exit

mon_text_read_isostat.exit:                       ; preds = %if.else.i, %if.then.i
  %call12.sink.i = phi i32 [ %call12.i, %if.else.i ], [ %call.i71, %if.then.i ]
  %55 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ptr, align 4
  %add14.i = add i32 %56, %call12.sink.i
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %5, align 4
  %add.ptr.i73 = getelementptr i8, ptr %58, i32 %add14.i
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %3, align 4
  %sub.i75 = sub i32 %60, %add14.i
  %numdesc.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 16
  %61 = ptrtoint ptr %numdesc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %numdesc.i, align 4
  %call.i76 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i73, i32 noundef %sub.i75, ptr noundef nonnull @.str.4, i32 noundef %62) #10
  %add.i77 = add i32 %add14.i, %call.i76
  %63 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i77, ptr %ptr, align 4
  %64 = ptrtoint ptr %numdesc.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %numdesc.i, align 4
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 5) #10
  %67 = tail call i32 @llvm.smax.i32(i32 %66, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp71.not.i = icmp slt i32 %66, 1
  br i1 %cmp71.not.i, label %mon_text_read_isostat.exit.if.end19_crit_edge, label %for.body.preheader.i

mon_text_read_isostat.exit.if.end19_crit_edge:    ; preds = %mon_text_read_isostat.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.preheader.i:                             ; preds = %mon_text_read_isostat.exit
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %5, align 4
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %3, align 4
  %isodesc.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 17
  %72 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ptr, align 4
  %add.ptr10.i = getelementptr i8, ptr %69, i32 %73
  %sub13.i = sub i32 %71, %73
  %74 = ptrtoint ptr %isodesc.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %isodesc.i, align 4
  %offset.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 0, i32 1
  %76 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset.i, align 4
  %length.i = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 0, i32 2
  %78 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length.i, align 4
  %call14.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i, i32 noundef %sub13.i, ptr noundef nonnull @.str.29, i32 noundef %75, i32 noundef %77, i32 noundef %79) #10
  %add16.i = add i32 %73, %call14.i
  %80 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add16.i, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %exitcond.not.i = icmp eq i32 %67, 1
  br i1 %exitcond.not.i, label %for.body.preheader.i.if.end19_crit_edge, label %for.body.i.1

for.body.preheader.i.if.end19_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i.1:                                     ; preds = %for.body.preheader.i
  %incdec.ptr.i = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 1
  %81 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ptr, align 4
  %add.ptr10.i.1 = getelementptr i8, ptr %69, i32 %82
  %sub13.i.1 = sub i32 %71, %82
  %83 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %incdec.ptr.i, align 4
  %offset.i.1 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 1, i32 1
  %85 = ptrtoint ptr %offset.i.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %offset.i.1, align 4
  %length.i.1 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 1, i32 2
  %87 = ptrtoint ptr %length.i.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length.i.1, align 4
  %call14.i.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i.1, i32 noundef %sub13.i.1, ptr noundef nonnull @.str.29, i32 noundef %84, i32 noundef %86, i32 noundef %88) #10
  %add16.i.1 = add i32 %82, %call14.i.1
  %89 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add16.i.1, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %exitcond.not.i.1 = icmp eq i32 %67, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.if.end19_crit_edge, label %for.body.i.2

for.body.i.1.if.end19_crit_edge:                  ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i.2:                                     ; preds = %for.body.i.1
  %incdec.ptr.i.1 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 2
  %90 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ptr, align 4
  %add.ptr10.i.2 = getelementptr i8, ptr %69, i32 %91
  %sub13.i.2 = sub i32 %71, %91
  %92 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %incdec.ptr.i.1, align 4
  %offset.i.2 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 2, i32 1
  %94 = ptrtoint ptr %offset.i.2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset.i.2, align 4
  %length.i.2 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 2, i32 2
  %96 = ptrtoint ptr %length.i.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %length.i.2, align 4
  %call14.i.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i.2, i32 noundef %sub13.i.2, ptr noundef nonnull @.str.29, i32 noundef %93, i32 noundef %95, i32 noundef %97) #10
  %add16.i.2 = add i32 %91, %call14.i.2
  %98 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add16.i.2, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %exitcond.not.i.2 = icmp eq i32 %67, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.if.end19_crit_edge, label %for.body.i.3

for.body.i.2.if.end19_crit_edge:                  ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i.3:                                     ; preds = %for.body.i.2
  %incdec.ptr.i.2 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 3
  %99 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ptr, align 4
  %add.ptr10.i.3 = getelementptr i8, ptr %69, i32 %100
  %sub13.i.3 = sub i32 %71, %100
  %101 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %incdec.ptr.i.2, align 4
  %offset.i.3 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 3, i32 1
  %103 = ptrtoint ptr %offset.i.3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offset.i.3, align 4
  %length.i.3 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 3, i32 2
  %105 = ptrtoint ptr %length.i.3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length.i.3, align 4
  %call14.i.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i.3, i32 noundef %sub13.i.3, ptr noundef nonnull @.str.29, i32 noundef %102, i32 noundef %104, i32 noundef %106) #10
  %add16.i.3 = add i32 %100, %call14.i.3
  %107 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add16.i.3, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %exitcond.not.i.3 = icmp eq i32 %67, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.if.end19_crit_edge, label %for.body.i.4

for.body.i.3.if.end19_crit_edge:                  ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i.4:                                     ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.3 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 4
  %108 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ptr, align 4
  %add.ptr10.i.4 = getelementptr i8, ptr %69, i32 %109
  %sub13.i.4 = sub i32 %71, %109
  %110 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %incdec.ptr.i.3, align 4
  %offset.i.4 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 4, i32 1
  %112 = ptrtoint ptr %offset.i.4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset.i.4, align 4
  %length.i.4 = getelementptr %struct.mon_event_text, ptr %call, i32 0, i32 17, i32 4, i32 2
  %114 = ptrtoint ptr %length.i.4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %length.i.4, align 4
  %call14.i.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i.4, i32 noundef %sub13.i.4, ptr noundef nonnull @.str.29, i32 noundef %111, i32 noundef %113, i32 noundef %115) #10
  %add16.i.4 = add i32 %109, %call14.i.4
  %116 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add16.i.4, ptr %ptr, align 4
  br label %if.end19

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %5, align 4
  %add.ptr.i79 = getelementptr i8, ptr %118, i32 %add.i
  %119 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %3, align 4
  %sub.i81 = sub i32 %120, %add.i
  %status.i82 = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 10
  %121 = ptrtoint ptr %status.i82 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %status.i82, align 4
  %interval.i83 = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 11
  %123 = ptrtoint ptr %interval.i83 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %interval.i83, align 4
  %call.i84 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i79, i32 noundef %sub.i81, ptr noundef nonnull @.str.30, i32 noundef %122, i32 noundef %124) #10
  %125 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ptr, align 4
  %add.i85 = add i32 %126, %call.i84
  store i32 %add.i85, ptr %ptr, align 4
  br label %if.end19

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mon_text_read_statset(ptr noundef nonnull %ptr, ptr noundef %call)
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then15, %for.body.i.4, %for.body.i.3.if.end19_crit_edge, %for.body.i.2.if.end19_crit_edge, %for.body.i.1.if.end19_crit_edge, %for.body.preheader.i.if.end19_crit_edge, %mon_text_read_isostat.exit.if.end19_crit_edge, %if.then6
  %127 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %5, align 4
  %129 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ptr, align 4
  %add.ptr = getelementptr i8, ptr %128, i32 %130
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %3, align 4
  %sub = sub i32 %132, %130
  %length = getelementptr inbounds %struct.mon_event_text, ptr %call, i32 0, i32 9
  %133 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.4, i32 noundef %134) #10
  %add = add i32 %130, %call24
  %135 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add, ptr %ptr, align 4
  call fastcc void @mon_text_read_data(ptr noundef nonnull %ptr, ptr noundef %call)
  %136 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ptr, align 4
  %138 = ptrtoint ptr %printf_togo to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %printf_togo, align 4
  %printf_offset = getelementptr inbounds %struct.mon_reader_text, ptr %1, i32 0, i32 6
  %139 = ptrtoint ptr %printf_offset to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %printf_offset, align 4
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  call void @kmem_cache_free(ptr noundef %141, ptr noundef %call) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end19, %entry.if.end28_crit_edge
  %call29 = call fastcc i32 @mon_text_copy_to_user(ptr noundef %1, ptr noundef %buf, i32 noundef %nbytes)
  call void @mutex_unlock(ptr noundef %printf_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then2
  %retval.0 = phi i32 [ %9, %if.then2 ], [ %call29, %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ptr) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mon/mon_text.c", i32 712, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/mon/mon_text.c", i32 719, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/mon/mon_text.c", i32 725, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/mon/mon_text.c", i32 766, i32 31}
!8 = !{ptr @mon_dir, !9, !"mon_dir", i1 false, i1 false}
!9 = !{!"../drivers/usb/mon/mon_text.c", i32 96, i32 23}
!10 = !{ptr @mon_fops_text_t, !11, !"mon_fops_text_t", i1 false, i1 false}
!11 = !{!"../drivers/usb/mon/mon_text.c", i32 685, i32 37}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/mon/mon_text.c", i32 418, i32 7}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/usb/mon/mon_text.c", i32 488, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/usb/mon/mon_text.c", i32 491, i32 4}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/usb/mon/mon_text.c", i32 504, i32 3}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/usb/mon/mon_text.c", i32 506, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/mon/mon_text.c", i32 524, i32 6}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/mon/mon_text.c", i32 553, i32 7}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/mon/mon_text.c", i32 561, i32 7}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/mon/mon_text.c", i32 618, i32 8}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/mon/mon_text.c", i32 625, i32 10}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/mon/mon_text.c", i32 629, i32 9}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/mon/mon_text.c", i32 632, i32 8}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/mon/mon_text.c", i32 635, i32 8}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!46 = !{ptr @mon_text_open.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/usb/mon/mon_text.c", i32 339, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mon_text_open.__key.21, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/usb/mon/mon_text.c", i32 340, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/mon/mon_text.c", i32 355, i32 40}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/mon/mon_text.c", i32 654, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mon_text_release._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mon_text_release._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @mon_fops_text_u, !60, !"mon_fops_text_u", i1 false, i1 false}
!60 = !{!"../drivers/usb/mon/mon_text.c", i32 693, i32 37}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/mon/mon_text.c", i32 542, i32 6}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/mon/mon_text.c", i32 580, i32 7}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/mon/mon_text.c", i32 583, i32 7}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/mon/mon_text.c", i32 605, i32 7}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/mon/mon_text.c", i32 572, i32 6}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 2154317133}
!83 = !{i64 2154321885}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2154326672}
!86 = !{i64 2154331403}
!87 = !{i64 2153534276, i64 2153534301}
!88 = !{i64 2154295962, i64 2154296454, i64 2154295999, i64 2154296055, i64 2154296089, i64 2154296113, i64 2154296154, i64 2154296175, i64 2154296203, i64 2154296237}
