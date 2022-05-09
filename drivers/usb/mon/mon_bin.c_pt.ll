; ModuleID = '/llk/IR_all_yes/drivers/usb/mon/mon_bin.c_pt.bc'
source_filename = "../drivers/usb/mon/mon_bin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%union.anon.69 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mon_bus = type { %struct.list_head, %struct.spinlock, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.kref, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.mon_reader_bin = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, %struct.mutex, i32, %struct.mon_reader, i32 }
%struct.mon_reader = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.mon_pgmap = type { ptr, ptr }
%struct.mon_bin_hdr = type { i64, i8, i8, i8, i8, i16, i8, i8, i64, i32, i32, i32, i32, %union.anon.74, i32, i32, i32, i32 }
%union.anon.74 = type { %struct.iso_rec }
%struct.iso_rec = type { i32, i32 }
%struct.mon_bin_get = type { ptr, ptr, i32 }
%struct.mon_bin_mfetch = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mon_bin_stats = type { i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.mon_bin_isodesc = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@mon_bin_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mon_bin_dev0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usbmon%d\00", [23 x i8] zeroinitializer }, align 32
@mon_bin_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbmon\00", [25 x i8] zeroinitializer }, align 32
@mon_bin_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@mon_fops_binary = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @mon_bin_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mon_bin_poll, ptr @mon_bin_ioctl, ptr null, ptr @mon_bin_mmap, i32 0, ptr @mon_bin_open, ptr null, ptr @mon_bin_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/mon/mon_bin.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mon_bin_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @mon_bin_vma_open, ptr @mon_bin_vma_close, ptr null, ptr null, ptr null, ptr @mon_bin_vma_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@mon_lock = external dso_local global %struct.mutex, align 4
@mon_bus0 = external dso_local global %struct.mon_bus, align 4
@mon_bin_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013usbmon: consistency error on open\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mon_bin_open\00", [19 x i8] zeroinitializer }, align 32
@mon_bin_open._entry_ptr = internal global ptr @mon_bin_open._entry, section ".printk_index", align 4
@mon_bin_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rp->b_lock\00", [20 x i8] zeroinitializer }, align 32
@mon_bin_open.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rp->b_wait\00", [20 x i8] zeroinitializer }, align 32
@mon_bin_open.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rp->fetch_lock\00", [16 x i8] zeroinitializer }, align 32
@xfer_to_pipe = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\00\03\01", [28 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@mon_bin_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013usbmon: consistency error on close\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mon_bin_release\00", [16 x i8] zeroinitializer }, align 32
@mon_bin_release._entry_ptr = internal global ptr @mon_bin_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 37377, i64 37380, i64 37381, i64 37384, i64 1074565638, i64 1074565642, i64 2148045315, i64 3222049287]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"mon_bin_class\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 216, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"mon_bin_dev0\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 217, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1361, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1378, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"mon_bin_cdev\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 218, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"mon_fops_binary\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1277, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1298, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 230, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 214, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 174, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"mon_bin_vm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1261, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 1160, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 687, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 697, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 698, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 699, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"xfer_to_pipe\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 212, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [29 x i8] c"../drivers/usb/mon/mon_bin.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 786, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @mon_bin_open._entry, ptr @mon_bin_open._entry_ptr, ptr @mon_bin_release._entry, ptr @mon_bin_release._entry_ptr, ptr @mon_bin_class, ptr @mon_bin_dev0, ptr @.str, ptr @mon_bin_init.__key, ptr @.str.1, ptr @mon_bin_cdev, ptr @mon_fops_binary, ptr @.str.2, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mon_bin_vm_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mon_bin_open.__key, ptr @.str.12, ptr @mon_bin_open.__key.13, ptr @.str.14, ptr @mon_bin_open.__key.15, ptr @.str.16, ptr @xfer_to_pipe, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_dev0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_fops_binary to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_open.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_open.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfer_to_pipe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bin_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mon_bin_add(ptr nocapture noundef writeonly %mbus, ptr noundef readonly %ubus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ubus, null
  br i1 %tobool.not, label %entry.cond.end4_crit_edge, label %cond.end

entry.cond.end4_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end4

cond.end:                                         ; preds = %entry
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %ubus, i32 0, i32 2
  %0 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %busnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %cmp = icmp ugt i32 %1, 127
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %cond.true2

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true2:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ubus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ubus, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.true2, %entry.cond.end4_crit_edge
  %cond1820 = phi i32 [ %1, %cond.true2 ], [ 0, %entry.cond.end4_crit_edge ]
  %cond5 = phi ptr [ %3, %cond.true2 ], [ null, %entry.cond.end4_crit_edge ]
  %4 = load ptr, ptr @mon_bin_class, align 4
  %5 = load i32, ptr @mon_bin_dev0, align 4
  %shr = and i32 %5, -1048576
  %or = or i32 %shr, %cond1820
  %call = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %4, ptr noundef %cond5, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str, i32 noundef %cond1820) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cond.end4.cleanup_crit_edge, label %if.end8

cond.end4.cleanup_crit_edge:                      ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #12
  %classdev = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 8
  %6 = ptrtoint ptr %classdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %classdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %cond.end4.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %cond.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mon_bin_del(ptr nocapture noundef readonly %mbus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mon_bin_class, align 4
  %classdev = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 8
  %1 = ptrtoint ptr %classdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %classdev, align 4
  %devt = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 29
  %3 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devt, align 8
  tail call void @device_destroy(ptr noundef %0, i32 noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mon_bin_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @mon_bin_init.__key) #10
  store ptr %call, ptr @mon_bin_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @mon_bin_dev0, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.err_dev_crit_edge, label %if.end5

if.end.err_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dev

if.end5:                                          ; preds = %if.end
  tail call void @cdev_init(ptr noundef nonnull @mon_bin_cdev, ptr noundef nonnull @mon_fops_binary) #10
  store ptr null, ptr getelementptr inbounds (%struct.cdev, ptr @mon_bin_cdev, i32 0, i32 1), align 4
  %1 = load i32, ptr @mon_bin_dev0, align 4
  %call6 = tail call i32 @cdev_add(ptr noundef nonnull @mon_bin_cdev, i32 noundef %1, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %err_add, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_add:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load i32, ptr @mon_bin_dev0, align 4
  tail call void @unregister_chrdev_region(i32 noundef %2, i32 noundef 128) #10
  br label %err_dev

err_dev:                                          ; preds = %err_add, %if.end.err_dev_crit_edge
  %rc.0 = phi i32 [ %call3, %if.end.err_dev_crit_edge ], [ %call6, %err_add ]
  %3 = load ptr, ptr @mon_bin_class, align 4
  tail call void @class_destroy(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %err_dev, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %0, %if.then ], [ %rc.0, %err_dev ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mon_bin_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cdev_del(ptr noundef nonnull @mon_bin_cdev) #10
  %0 = load i32, ptr @mon_bin_dev0, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 128) #10
  %1 = load ptr, ptr @mon_bin_class, align 4
  tail call void @class_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_bin_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fetch_lock = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %fetch_lock, i32 noundef 0) #10
  %call = tail call fastcc i32 @mon_bin_wait_event(ptr noundef %file, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_out = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %b_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_out, align 4
  %b_vec.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %b_vec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_vec.i, align 4
  %div2.i = lshr i32 %3, 12
  %ptr.i = getelementptr %struct.mon_pgmap, ptr %5, i32 %div2.i, i32 1
  %6 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr.i, align 4
  %rem.i = and i32 %3, 4095
  %add.ptr.i = getelementptr i8, ptr %7, i32 %rem.i
  %b_read = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %b_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %9)
  %cmp3 = icmp ult i32 %9, 48
  br i1 %cmp3, label %if.then4, label %if.end.if.then20_crit_edge

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then4:                                         ; preds = %if.end
  %sub = sub nuw nsw i32 48, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %nbytes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then4.if.end17_crit_edge, label %land.lhs.true

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %9
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %10, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %land.lhs.true.cleanup_crit_edge, label %if.end.i.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %10, i32 -1226833920) #13, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %10) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool9.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool9.not, label %copy_to_user.exit.if.end17_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit.if.end17_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %copy_to_user.exit.if.end17_crit_edge, %if.then4.if.end17_crit_edge
  %sub13 = sub i32 %nbytes, %10
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %10
  %12 = ptrtoint ptr %b_read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_read, align 4
  %add = add i32 %13, %10
  store i32 %add, ptr %b_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %add)
  %cmp19 = icmp ugt i32 %add, 47
  br i1 %cmp19, label %if.end17.if.then20_crit_edge, label %if.end17.if.end47_crit_edge

if.end17.if.end47_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %if.end17.if.then20_crit_edge, %if.end.if.then20_crit_edge
  %buf.addr.0144 = phi ptr [ %add.ptr14, %if.end17.if.then20_crit_edge ], [ %buf, %if.end.if.then20_crit_edge ]
  %done.0143 = phi i32 [ %10, %if.end17.if.then20_crit_edge ], [ 0, %if.end.if.then20_crit_edge ]
  %nbytes.addr.0142 = phi i32 [ %sub13, %if.end17.if.then20_crit_edge ], [ %nbytes, %if.end.if.then20_crit_edge ]
  %14 = phi i32 [ %add, %if.end17.if.then20_crit_edge ], [ %9, %if.end.if.then20_crit_edge ]
  %len_cap = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 12
  %15 = ptrtoint ptr %len_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len_cap, align 4
  %sub22.neg = sub i32 48, %14
  %sub23 = add i32 %sub22.neg, %16
  %17 = tail call i32 @llvm.umin.i32(i32 %sub23, i32 %nbytes.addr.0142)
  %18 = ptrtoint ptr %b_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_out, align 4
  %sub30 = add i32 %14, 16
  %add31 = add i32 %sub30, %19
  %b_size = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %21)
  %cmp32.not = icmp ult i32 %add31, %21
  %sub35 = select i1 %cmp32.not, i32 0, i32 %21
  %offset.0 = sub i32 %add31, %sub35
  %call37 = tail call fastcc i32 @copy_from_buf(ptr noundef %1, i32 noundef %offset.0, ptr noundef %buf.addr.0144, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %b_read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_read, align 4
  %add45 = add i32 %23, %17
  store i32 %add45, ptr %b_read, align 4
  %add46 = add i32 %17, %done.0143
  br label %if.end47

if.end47:                                         ; preds = %if.end41, %if.end17.if.end47_crit_edge
  %done.1 = phi i32 [ %add46, %if.end41 ], [ %10, %if.end17.if.end47_crit_edge ]
  %24 = ptrtoint ptr %b_read to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %b_read, align 4
  %len_cap49 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 12
  %26 = ptrtoint ptr %len_cap49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len_cap49, align 4
  %add50 = add i32 %27, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add50)
  %cmp51.not = icmp ult i32 %25, %add50
  br i1 %cmp51.not, label %if.end47.cleanup_crit_edge, label %do.body53

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body53:                                        ; preds = %if.end47
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %28 = ptrtoint ptr %len_cap49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len_cap49, align 4
  %sub.i = add i32 %29, 127
  %and.i = and i32 %sub.i, -64
  %b_cnt.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %b_cnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %b_cnt.i, align 4
  %sub1.i = sub i32 %31, %and.i
  store i32 %sub1.i, ptr %b_cnt.i, align 4
  %32 = ptrtoint ptr %b_out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_out, align 4
  %add2.i = add i32 %33, %and.i
  store i32 %add2.i, ptr %b_out, align 4
  %b_size.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %35)
  %cmp.not.i = icmp ult i32 %add2.i, %35
  br i1 %cmp.not.i, label %do.body53.mon_buff_area_free.exit_crit_edge, label %if.then.i135

do.body53.mon_buff_area_free.exit_crit_edge:      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_buff_area_free.exit

if.then.i135:                                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %sub5.i = sub i32 %add2.i, %35
  %36 = ptrtoint ptr %b_out to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub5.i, ptr %b_out, align 4
  br label %mon_buff_area_free.exit

mon_buff_area_free.exit:                          ; preds = %if.then.i135, %do.body53.mon_buff_area_free.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call57) #10
  %37 = ptrtoint ptr %b_read to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %b_read, align 4
  br label %cleanup

cleanup:                                          ; preds = %mon_buff_area_free.exit, %if.end47.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %land.lhs.true.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then20.cleanup_crit_edge ], [ %done.1, %mon_buff_area_free.exit ], [ %done.1, %if.end47.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fetch_lock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_bin_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

if.then:                                          ; preds = %entry
  %b_wait = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then.do.body1_crit_edge, label %land.lhs.true.i

if.then.do.body1_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

land.lhs.true.i:                                  ; preds = %if.then
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %b_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.do.body1_crit_edge, label %if.then.i

land.lhs.true.i.do.body1_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %file, ptr noundef nonnull %b_wait, ptr noundef nonnull %wait) #10
  br label %do.body1

do.body1:                                         ; preds = %if.then.i, %land.lhs.true.i.do.body1_crit_edge, %if.then.do.body1_crit_edge, %entry.do.body1_crit_edge
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %b_cnt = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %b_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  %spec.select = select i1 %cmp5, i32 0, i32 65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #10
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_bin_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %getb = alloca %struct.mon_bin_get, align 4
  %mfetch = alloca %struct.mon_bin_mfetch, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup187_crit_edge [
    i32 37377, label %do.body1
    i32 37381, label %sw.bb9
    i32 37380, label %sw.bb11
    i32 37384, label %sw.bb57
    i32 1074565638, label %entry.sw.bb59_crit_edge
    i32 1074565642, label %entry.sw.bb59_crit_edge383
    i32 -1072918009, label %sw.bb75
    i32 -2146921981, label %sw.bb127
  ]

entry.sw.bb59_crit_edge383:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

entry.sw.bb59_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

entry.cleanup187_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %b_cnt = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %b_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %do.body1.if.end_crit_edge, label %if.then

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %b_out = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %b_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_out, align 4
  %b_vec.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %b_vec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_vec.i, align 4
  %div2.i = lshr i32 %6, 12
  %ptr.i = getelementptr %struct.mon_pgmap, ptr %8, i32 %div2.i, i32 1
  %9 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptr.i, align 4
  %rem.i = and i32 %6, 4095
  %add.ptr.i = getelementptr i8, ptr %10, i32 %rem.i
  %len_cap = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 12
  %11 = ptrtoint ptr %len_cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len_cap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body1.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %do.body1.if.end_crit_edge ], [ %12, %if.then ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fetch_lock = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %fetch_lock, i32 noundef 0) #10
  %b_size = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_size, align 4
  tail call void @mutex_unlock(ptr noundef %fetch_lock) #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %15 = add i32 %arg, -1228801
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1220609, i32 %15)
  %16 = icmp ult i32 %15, -1220609
  br i1 %16, label %sw.bb11.cleanup187_crit_edge, label %if.end17

sw.bb11.cleanup187_crit_edge:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187

if.end17:                                         ; preds = %sw.bb11
  %sub = add nuw nsw i32 %arg, 4095
  %and = and i32 %sub, -4096
  %div258 = lshr i32 %sub, 12
  %17 = shl nuw nsw i32 %div258, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #14
  %cmp19 = icmp eq ptr %call8.i.i, null
  br i1 %cmp19, label %if.end17.sw.epilog_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %n.020.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end17.for.body.i_crit_edge ]
  %call.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %while.cond.preheader.i, label %if.end.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.020.i)
  %cmp2.not21.i = icmp eq i32 %n.020.i, 0
  br i1 %cmp2.not21.i, label %while.cond.preheader.i.if.then27_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.then27_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %n.122.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %n.020.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %n.122.i, -1
  %ptr.i296 = getelementptr %struct.mon_pgmap, ptr %call8.i.i, i32 %dec.i, i32 1
  %18 = ptrtoint ptr %ptr.i296 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr.i296, align 4
  %20 = ptrtoint ptr %19 to i32
  tail call void @free_pages(i32 noundef %20, i32 noundef 0) #10
  %cmp2.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.not.i, label %while.body.i.if.then27_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.if.then27_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end.i:                                         ; preds = %for.body.i
  %21 = inttoptr i32 %call.i to ptr
  %arrayidx3.i = getelementptr %struct.mon_pgmap, ptr %call8.i.i, i32 %n.020.i
  %ptr4.i = getelementptr %struct.mon_pgmap, ptr %call8.i.i, i32 %n.020.i, i32 1
  %22 = ptrtoint ptr %ptr4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %ptr4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %call.i, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i297 = getelementptr %struct.page, ptr %23, i32 %shr.i
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i297, ptr %arrayidx3.i, align 8
  %inc.i = add nuw nsw i32 %n.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div258
  br i1 %exitcond.not.i, label %if.end28, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then27:                                        ; preds = %while.body.i.if.then27_crit_edge, %while.cond.preheader.i.if.then27_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %sw.epilog

if.end28:                                         ; preds = %if.end.i
  %fetch_lock29 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %fetch_lock29, i32 noundef 0) #10
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %mmap_active = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %mmap_active to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mmap_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %if.else, label %if.end28.for.body.i301_crit_edge

if.end28.for.body.i301_crit_edge:                 ; preds = %if.end28
  br label %for.body.i301

for.body.i301:                                    ; preds = %for.body.i301.for.body.i301_crit_edge, %if.end28.for.body.i301_crit_edge
  %n.04.i = phi i32 [ %inc.i299, %for.body.i301.for.body.i301_crit_edge ], [ 0, %if.end28.for.body.i301_crit_edge ]
  %ptr.i298 = getelementptr %struct.mon_pgmap, ptr %call8.i.i, i32 %n.04.i, i32 1
  %27 = ptrtoint ptr %ptr.i298 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptr.i298, align 4
  %29 = ptrtoint ptr %28 to i32
  tail call void @free_pages(i32 noundef %29, i32 noundef 0) #10
  %inc.i299 = add nuw nsw i32 %n.04.i, 1
  %exitcond.not.i300 = icmp eq i32 %inc.i299, %div258
  br i1 %exitcond.not.i300, label %mon_free_buff.exit, label %for.body.i301.for.body.i301_crit_edge

for.body.i301.for.body.i301_crit_edge:            ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i301

mon_free_buff.exit:                               ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %if.end53

if.else:                                          ; preds = %if.end28
  %b_vec = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %b_vec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_vec, align 4
  %b_size46 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %b_size46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_size46, align 4
  %div47259 = lshr i32 %33, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %33)
  %cmp3.i302.not = icmp ult i32 %33, 4096
  br i1 %cmp3.i302.not, label %if.else.mon_free_buff.exit308_crit_edge, label %if.else.for.body.i307_crit_edge

if.else.for.body.i307_crit_edge:                  ; preds = %if.else
  br label %for.body.i307

if.else.mon_free_buff.exit308_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_free_buff.exit308

for.body.i307:                                    ; preds = %for.body.i307.for.body.i307_crit_edge, %if.else.for.body.i307_crit_edge
  %n.04.i303 = phi i32 [ %inc.i305, %for.body.i307.for.body.i307_crit_edge ], [ 0, %if.else.for.body.i307_crit_edge ]
  %ptr.i304 = getelementptr %struct.mon_pgmap, ptr %31, i32 %n.04.i303, i32 1
  %34 = ptrtoint ptr %ptr.i304 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptr.i304, align 4
  %36 = ptrtoint ptr %35 to i32
  tail call void @free_pages(i32 noundef %36, i32 noundef 0) #10
  %inc.i305 = add nuw nsw i32 %n.04.i303, 1
  %exitcond.not.i306 = icmp eq i32 %inc.i305, %div47259
  br i1 %exitcond.not.i306, label %for.body.i307.mon_free_buff.exit308_crit_edge, label %for.body.i307.for.body.i307_crit_edge

for.body.i307.for.body.i307_crit_edge:            ; preds = %for.body.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i307

for.body.i307.mon_free_buff.exit308_crit_edge:    ; preds = %for.body.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_free_buff.exit308

mon_free_buff.exit308:                            ; preds = %for.body.i307.mon_free_buff.exit308_crit_edge, %if.else.mon_free_buff.exit308_crit_edge
  %37 = ptrtoint ptr %b_vec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_vec, align 4
  tail call void @kfree(ptr noundef %38) #10
  %39 = ptrtoint ptr %b_vec to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i.i, ptr %b_vec, align 4
  %40 = ptrtoint ptr %b_size46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and, ptr %b_size46, align 4
  %b_cnt51 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 2
  %cnt_lost = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 11
  %41 = ptrtoint ptr %cnt_lost to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %cnt_lost, align 4
  %42 = call ptr @memset(ptr %b_cnt51, i32 0, i32 16)
  br label %if.end53

if.end53:                                         ; preds = %mon_free_buff.exit308, %mon_free_buff.exit
  %ret.1 = phi i32 [ -16, %mon_free_buff.exit ], [ 0, %mon_free_buff.exit308 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call39) #10
  tail call void @mutex_unlock(ptr noundef %fetch_lock29) #10
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = tail call fastcc i32 @mon_bin_flush(ptr noundef %1, i32 noundef %arg)
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry.sw.bb59_crit_edge, %entry.sw.bb59_crit_edge383
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %getb) #10
  %43 = ptrtoint ptr %getb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %getb, align 4, !annotation !65
  %44 = getelementptr inbounds %struct.mon_bin_get, ptr %getb, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %44, align 4, !annotation !65
  %46 = getelementptr inbounds %struct.mon_bin_get, ptr %getb, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %46, align 4, !annotation !65
  %48 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb59.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb59.if.then11.i.i_crit_edge:                  ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb59
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 12, i32 -1226833920) #13, !srcloc !66
  %asmresult.i.i = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !67

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %getb, i32 noundef 12) #10
  %50 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !68
  %and.i.i.i.i = and i32 %52, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %getb, ptr noundef %48, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end63, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !67

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb59.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %sw.bb59.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %getb, i32 %sub.i.i
  %53 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup72.thread

if.end63:                                         ; preds = %if.end.i.i
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %55)
  %cmp64 = icmp ugt i32 %55, 268435456
  br i1 %cmp64, label %if.end63.cleanup72.thread_crit_edge, label %if.end67

if.end63.cleanup72.thread_crit_edge:              ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72.thread

if.end67:                                         ; preds = %if.end63
  %56 = ptrtoint ptr %getb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %getb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074565638, i32 %cmd)
  %cmp68 = icmp eq i32 %cmd, 1074565638
  %cond = select i1 %cmp68, i32 48, i32 64
  %58 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %44, align 4
  %fetch_lock.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %fetch_lock.i, i32 noundef 0) #10
  %call.i309 = call fastcc i32 @mon_bin_wait_event(ptr noundef %file, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309)
  %cmp.i = icmp slt i32 %call.i309, 0
  br i1 %cmp.i, label %if.end67.cleanup72_crit_edge, label %if.end.i312

if.end67.cleanup72_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end.i312:                                      ; preds = %if.end67
  %b_out.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %b_out.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %b_out.i, align 4
  %b_vec.i.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %b_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_vec.i.i, align 4
  %div2.i.i = lshr i32 %61, 12
  %ptr.i.i = getelementptr %struct.mon_pgmap, ptr %63, i32 %div2.i.i, i32 1
  %64 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ptr.i.i, align 4
  %rem.i.i = and i32 %61, 4095
  %add.ptr.i.i310 = getelementptr i8, ptr %65, i32 %rem.i.i
  call void @__check_object_size(ptr noundef %add.ptr.i.i310, i32 noundef %cond, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i.i314 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i314, label %if.end.i312.cleanup72_crit_edge, label %if.end.i.i.i315

if.end.i312.cleanup72_crit_edge:                  ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end.i.i.i315:                                  ; preds = %if.end.i312
  %66 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 %cond, i32 -1226833920) #13, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i315.cleanup72_crit_edge

if.end.i.i.i315.cleanup72_crit_edge:              ; preds = %if.end.i.i.i315
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i315
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i310, i32 noundef %cond) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %57, ptr noundef %add.ptr.i.i310, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %copy_to_user.exit.i.cleanup72_crit_edge

copy_to_user.exit.i.cleanup72_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end6.i:                                        ; preds = %copy_to_user.exit.i
  %len_cap.i = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i.i310, i32 0, i32 12
  %67 = ptrtoint ptr %len_cap.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len_cap.i, align 4
  %69 = call i32 @llvm.umin.i32(i32 %68, i32 %55) #10
  %70 = ptrtoint ptr %b_out.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %b_out.i, align 4
  %add.i = add i32 %71, 64
  %b_size.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %b_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %73)
  %cmp9.not.i = icmp ult i32 %add.i, %73
  %spec.store.select.i = select i1 %cmp9.not.i, i32 %add.i, i32 0
  %call12.i = call fastcc i32 @copy_from_buf(ptr noundef %1, i32 noundef %spec.store.select.i, ptr noundef %59, i32 noundef %69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.body17.i, label %if.end6.i.cleanup72_crit_edge

if.end6.i.cleanup72_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

do.body17.i:                                      ; preds = %if.end6.i
  %call21.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %74 = ptrtoint ptr %len_cap.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len_cap.i, align 4
  %sub.i.i316 = add i32 %75, 127
  %and.i.i = and i32 %sub.i.i316, -64
  %b_cnt.i.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %b_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %b_cnt.i.i, align 4
  %sub1.i.i = sub i32 %77, %and.i.i
  store i32 %sub1.i.i, ptr %b_cnt.i.i, align 4
  %78 = ptrtoint ptr %b_out.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %b_out.i, align 4
  %add2.i.i = add i32 %79, %and.i.i
  store i32 %add2.i.i, ptr %b_out.i, align 4
  %80 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %b_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %81)
  %cmp.not.i.i = icmp ult i32 %add2.i.i, %81
  br i1 %cmp.not.i.i, label %do.body17.i.mon_buff_area_free.exit.i_crit_edge, label %if.then.i50.i

do.body17.i.mon_buff_area_free.exit.i_crit_edge:  ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_buff_area_free.exit.i

if.then.i50.i:                                    ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub5.i.i = sub i32 %add2.i.i, %81
  %82 = ptrtoint ptr %b_out.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub5.i.i, ptr %b_out.i, align 4
  br label %mon_buff_area_free.exit.i

mon_buff_area_free.exit.i:                        ; preds = %if.then.i50.i, %do.body17.i.mon_buff_area_free.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call21.i) #10
  %b_read.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 5
  %83 = ptrtoint ptr %b_read.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %b_read.i, align 4
  br label %cleanup72

cleanup72.thread:                                 ; preds = %if.end63.cleanup72.thread_crit_edge, %if.then11.i.i
  %retval.1.ph = phi i32 [ -22, %if.end63.cleanup72.thread_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %getb) #10
  br label %cleanup187

cleanup72:                                        ; preds = %mon_buff_area_free.exit.i, %if.end6.i.cleanup72_crit_edge, %copy_to_user.exit.i.cleanup72_crit_edge, %if.end.i.i.i315.cleanup72_crit_edge, %if.end.i312.cleanup72_crit_edge, %if.end67.cleanup72_crit_edge
  %retval.0.i317 = phi i32 [ 0, %mon_buff_area_free.exit.i ], [ %call.i309, %if.end67.cleanup72_crit_edge ], [ -14, %copy_to_user.exit.i.cleanup72_crit_edge ], [ -14, %if.end6.i.cleanup72_crit_edge ], [ -14, %if.end.i312.cleanup72_crit_edge ], [ -14, %if.end.i.i.i315.cleanup72_crit_edge ]
  call void @mutex_unlock(ptr noundef %fetch_lock.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %getb) #10
  br label %sw.epilog

sw.bb75:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mfetch) #10
  %84 = ptrtoint ptr %mfetch to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 -1 to ptr), ptr %mfetch, align 4, !annotation !65
  %85 = getelementptr inbounds %struct.mon_bin_mfetch, ptr %mfetch, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %85, align 4, !annotation !65
  %87 = getelementptr inbounds %struct.mon_bin_mfetch, ptr %mfetch, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %87, align 4, !annotation !65
  %89 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i264 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i264, label %sw.bb75.if.then11.i.i280_crit_edge, label %land.lhs.true.i.i268

sw.bb75.if.then11.i.i280_crit_edge:               ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i280

land.lhs.true.i.i268:                             ; preds = %sw.bb75
  %90 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %89, i32 12, i32 -1226833920) #13, !srcloc !66
  %asmresult.i.i266 = extractvalue { i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i266)
  %cmp.i1.i267 = icmp eq i32 %asmresult.i.i266, 0
  br i1 %cmp.i1.i267, label %if.end.i.i276, label %land.lhs.true.i.i268.if.then11.i.i280_crit_edge, !prof !67

land.lhs.true.i.i268.if.then11.i.i280_crit_edge:  ; preds = %land.lhs.true.i.i268
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i280

if.end.i.i276:                                    ; preds = %land.lhs.true.i.i268
  %call.i.i.i269 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mfetch, i32 noundef 12) #10
  %91 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i.i.i.i270 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i.i270 to ptr
  %cpu_domain.i.i.i.i.i271 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 4
  %93 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i271) #4, !srcloc !68
  %and.i.i.i.i272 = and i32 %93, -13
  %or.i.i.i.i273 = or i32 %and.i.i.i.i272, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i273) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %call1.i.i.i274 = call i32 @arm_copy_from_user(ptr noundef nonnull %mfetch, ptr noundef %89, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i274)
  %tobool4.not.i.i275 = icmp eq i32 %call1.i.i.i274, 0
  br i1 %tobool4.not.i.i275, label %if.end79, label %if.end.i.i276.if.then11.i.i280_crit_edge, !prof !67

if.end.i.i276.if.then11.i.i280_crit_edge:         ; preds = %if.end.i.i276
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i280

if.then11.i.i280:                                 ; preds = %if.end.i.i276.if.then11.i.i280_crit_edge, %land.lhs.true.i.i268.if.then11.i.i280_crit_edge, %sw.bb75.if.then11.i.i280_crit_edge
  %res.03.i.i277 = phi i32 [ %call1.i.i.i274, %if.end.i.i276.if.then11.i.i280_crit_edge ], [ 12, %sw.bb75.if.then11.i.i280_crit_edge ], [ 12, %land.lhs.true.i.i268.if.then11.i.i280_crit_edge ]
  %sub.i.i278 = sub i32 12, %res.03.i.i277
  %add.ptr.i.i279 = getelementptr i8, ptr %mfetch, i32 %sub.i.i278
  %94 = call ptr @memset(ptr %add.ptr.i.i279, i32 0, i32 %res.03.i.i277)
  br label %cleanup123.thread

if.end79:                                         ; preds = %if.end.i.i276
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool80.not = icmp eq i32 %96, 0
  br i1 %tobool80.not, label %if.end79.if.end98_crit_edge, label %if.then81

if.end79.if.end98_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then81:                                        ; preds = %if.end79
  %call83 = call fastcc i32 @mon_bin_flush(ptr noundef %1, i32 noundef %96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then81.cleanup123.thread_crit_edge, label %if.end87

if.then81.cleanup123.thread_crit_edge:            ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end87:                                         ; preds = %if.then81
  %nflush89 = getelementptr inbounds %struct.mon_bin_mfetch, ptr %89, i32 0, i32 2
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1094) #10
  %97 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 4
  %99 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !68
  %and.i = and i32 %99, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %100 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %nflush89, i32 %call83, i32 -1226833921) #10, !srcloc !71
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool95.not = icmp eq i32 %100, 0
  br i1 %tobool95.not, label %if.end87.if.end98_crit_edge, label %if.end87.cleanup123.thread_crit_edge

if.end87.cleanup123.thread_crit_edge:             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end98:                                         ; preds = %if.end87.if.end98_crit_edge, %if.end79.if.end98_crit_edge
  %101 = ptrtoint ptr %mfetch to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mfetch, align 4
  %103 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %85, align 4
  %fetch_lock.i318 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %fetch_lock.i318, i32 noundef 0) #10
  %call.i319 = call fastcc i32 @mon_bin_wait_event(ptr noundef %file, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %cmp.i320 = icmp slt i32 %call.i319, 0
  br i1 %cmp.i320, label %if.end98.mon_bin_fetch.exit.thread_crit_edge, label %do.body2.i

if.end98.mon_bin_fetch.exit.thread_crit_edge:     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_bin_fetch.exit.thread

do.body2.i:                                       ; preds = %if.end98
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %b_cnt.i = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 2
  %105 = ptrtoint ptr %b_cnt.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %b_cnt.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp963.i = icmp ne i32 %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp11.not64.i = icmp ne i32 %104, 0
  %or.cond65.i = and i1 %cmp11.not64.i, %cmp963.i
  br i1 %or.cond65.i, label %if.end14.lr.ph.i, label %mon_bin_fetch.exit.thread370

mon_bin_fetch.exit.thread370:                     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %fetch_lock.i318) #10
  br label %cleanup123

if.end14.lr.ph.i:                                 ; preds = %do.body2.i
  %b_out.i321 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %b_out.i321 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %b_out.i321, align 4
  %b_vec.i.i322 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 6
  %b_size.i323 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end24.i.if.end14.i_crit_edge, %if.end14.lr.ph.i
  %cur_out.068.i = phi i32 [ %108, %if.end14.lr.ph.i ], [ %spec.select.i, %if.end24.i.if.end14.i_crit_edge ]
  %bytes.067.i = phi i32 [ 0, %if.end14.lr.ph.i ], [ %add33.i, %if.end24.i.if.end14.i_crit_edge ]
  %nevents.066.i = phi i32 [ 0, %if.end14.lr.ph.i ], [ %inc.i331, %if.end24.i.if.end14.i_crit_edge ]
  %109 = ptrtoint ptr %b_vec.i.i322 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %b_vec.i.i322, align 4
  %div2.i.i324 = lshr i32 %cur_out.068.i, 12
  %ptr.i.i325 = getelementptr %struct.mon_pgmap, ptr %110, i32 %div2.i.i324, i32 1
  %111 = ptrtoint ptr %ptr.i.i325 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ptr.i.i325, align 4
  %arrayidx.i = getelementptr i32, ptr %102, i32 %nevents.066.i
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 928) #10
  %113 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i.i326 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i326 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 4
  %115 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !68
  %and.i.i327 = and i32 %115, -13
  %or.i.i = or i32 %and.i.i327, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %116 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx.i, i32 %cur_out.068.i, i32 -1226833921) #10, !srcloc !72
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i328 = icmp eq i32 %116, 0
  br i1 %tobool.not.i328, label %if.end24.i, label %if.end14.i.mon_bin_fetch.exit.thread_crit_edge

if.end14.i.mon_bin_fetch.exit.thread_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_bin_fetch.exit.thread

if.end24.i:                                       ; preds = %if.end14.i
  %rem.i.i329 = and i32 %cur_out.068.i, 4095
  %add.ptr.i.i330 = getelementptr i8, ptr %112, i32 %rem.i.i329
  %inc.i331 = add nuw i32 %nevents.066.i, 1
  %len_cap.i332 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i.i330, i32 0, i32 12
  %117 = ptrtoint ptr %len_cap.i332 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len_cap.i332, align 4
  %sub.i333 = add i32 %118, 127
  %and.i334 = and i32 %sub.i333, -64
  %add26.i = add i32 %and.i334, %cur_out.068.i
  %119 = ptrtoint ptr %b_size.i323 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %b_size.i323, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %120)
  %cmp27.not.i = icmp ult i32 %add26.i, %120
  %sub31.i = select i1 %cmp27.not.i, i32 0, i32 %120
  %spec.select.i = sub i32 %add26.i, %sub31.i
  %add33.i = add i32 %and.i334, %bytes.067.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %106)
  %cmp9.i = icmp ult i32 %add33.i, %106
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i331, i32 %104)
  %cmp11.not.i = icmp ult i32 %inc.i331, %104
  %or.cond.i = select i1 %cmp9.i, i1 %cmp11.not.i, i1 false
  br i1 %or.cond.i, label %if.end24.i.if.end14.i_crit_edge, label %mon_bin_fetch.exit

if.end24.i.if.end14.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

mon_bin_fetch.exit.thread:                        ; preds = %if.end14.i.mon_bin_fetch.exit.thread_crit_edge, %if.end98.mon_bin_fetch.exit.thread_crit_edge
  %retval.0.i335.ph = phi i32 [ %call.i319, %if.end98.mon_bin_fetch.exit.thread_crit_edge ], [ -14, %if.end14.i.mon_bin_fetch.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %fetch_lock.i318) #10
  br label %cleanup123.thread

mon_bin_fetch.exit:                               ; preds = %if.end24.i
  call void @mutex_unlock(ptr noundef %fetch_lock.i318) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i331)
  %cmp100 = icmp slt i32 %inc.i331, 0
  br i1 %cmp100, label %mon_bin_fetch.exit.cleanup123.thread_crit_edge, label %mon_bin_fetch.exit.cleanup123_crit_edge

mon_bin_fetch.exit.cleanup123_crit_edge:          ; preds = %mon_bin_fetch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123

mon_bin_fetch.exit.cleanup123.thread_crit_edge:   ; preds = %mon_bin_fetch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

cleanup123.thread:                                ; preds = %mon_bin_fetch.exit.cleanup123.thread_crit_edge, %mon_bin_fetch.exit.thread, %if.end87.cleanup123.thread_crit_edge, %if.then81.cleanup123.thread_crit_edge, %if.then11.i.i280
  %retval.2.ph = phi i32 [ %retval.0.i335.ph, %mon_bin_fetch.exit.thread ], [ %inc.i331, %mon_bin_fetch.exit.cleanup123.thread_crit_edge ], [ -14, %if.end87.cleanup123.thread_crit_edge ], [ %call83, %if.then81.cleanup123.thread_crit_edge ], [ -14, %if.then11.i.i280 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mfetch) #10
  br label %cleanup187

cleanup123:                                       ; preds = %mon_bin_fetch.exit.cleanup123_crit_edge, %mon_bin_fetch.exit.thread370
  %retval.0.i335373 = phi i32 [ 0, %mon_bin_fetch.exit.thread370 ], [ %inc.i331, %mon_bin_fetch.exit.cleanup123_crit_edge ]
  %nfetch107 = getelementptr inbounds %struct.mon_bin_mfetch, ptr %89, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1100) #10
  %121 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i283 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i283 to ptr
  %cpu_domain.i.i284 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 4
  %123 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i284) #4, !srcloc !68
  %and.i285 = and i32 %123, -13
  %or.i286 = or i32 %and.i285, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i286) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %124 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %nfetch107, i32 %retval.0.i335373, i32 -1226833921) #10, !srcloc !73
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #10, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool120.not = icmp eq i32 %124, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mfetch) #10
  br i1 %tobool120.not, label %cleanup123.sw.epilog_crit_edge, label %cleanup123.cleanup187_crit_edge

cleanup123.cleanup187_crit_edge:                  ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187

cleanup123.sw.epilog_crit_edge:                   ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb127:                                         ; preds = %entry
  %call137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %cnt_lost142 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 11
  %125 = ptrtoint ptr %cnt_lost142 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cnt_lost142, align 4
  store i32 0, ptr %cnt_lost142, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call137) #10
  %fetch_lock.i336 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %fetch_lock.i336, i32 noundef 0) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %b_cnt.i337 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 2
  %127 = ptrtoint ptr %b_cnt.i337 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %b_cnt.i337, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp631.not.i = icmp eq i32 %128, 0
  br i1 %cmp631.not.i, label %sw.bb127.mon_bin_queued.exit_crit_edge, label %while.body.lr.ph.i

sw.bb127.mon_bin_queued.exit_crit_edge:           ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_bin_queued.exit

while.body.lr.ph.i:                               ; preds = %sw.bb127
  %b_out.i338 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 4
  %129 = ptrtoint ptr %b_out.i338 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %b_out.i338, align 4
  %b_vec.i.i339 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 6
  %131 = ptrtoint ptr %b_vec.i.i339 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %b_vec.i.i339, align 4
  %b_size.i340 = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 1
  %133 = ptrtoint ptr %b_size.i340 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %b_size.i340, align 4
  br label %while.body.i351

while.body.i351:                                  ; preds = %while.body.i351.while.body.i351_crit_edge, %while.body.lr.ph.i
  %cur_out.034.i = phi i32 [ %130, %while.body.lr.ph.i ], [ %spec.select.i350, %while.body.i351.while.body.i351_crit_edge ]
  %bytes.033.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add15.i, %while.body.i351.while.body.i351_crit_edge ]
  %nevents.032.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i345, %while.body.i351.while.body.i351_crit_edge ]
  %div2.i.i341 = lshr i32 %cur_out.034.i, 12
  %ptr.i.i342 = getelementptr %struct.mon_pgmap, ptr %132, i32 %div2.i.i341, i32 1
  %135 = ptrtoint ptr %ptr.i.i342 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ptr.i.i342, align 4
  %rem.i.i343 = and i32 %cur_out.034.i, 4095
  %add.ptr.i.i344 = getelementptr i8, ptr %136, i32 %rem.i.i343
  %inc.i345 = add i32 %nevents.032.i, 1
  %len_cap.i346 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i.i344, i32 0, i32 12
  %137 = ptrtoint ptr %len_cap.i346 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len_cap.i346, align 4
  %sub.i347 = add i32 %138, 127
  %and.i348 = and i32 %sub.i347, -64
  %add10.i = add i32 %and.i348, %cur_out.034.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %134)
  %cmp11.not.i349 = icmp ult i32 %add10.i, %134
  %sub14.i = select i1 %cmp11.not.i349, i32 0, i32 %134
  %spec.select.i350 = sub i32 %add10.i, %sub14.i
  %add15.i = add i32 %and.i348, %bytes.033.i
  %cmp6.i = icmp ult i32 %add15.i, %128
  br i1 %cmp6.i, label %while.body.i351.while.body.i351_crit_edge, label %while.body.i351.mon_bin_queued.exit_crit_edge

while.body.i351.mon_bin_queued.exit_crit_edge:    ; preds = %while.body.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_bin_queued.exit

while.body.i351.while.body.i351_crit_edge:        ; preds = %while.body.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i351

mon_bin_queued.exit:                              ; preds = %while.body.i351.mon_bin_queued.exit_crit_edge, %sw.bb127.mon_bin_queued.exit_crit_edge
  %nevents.0.lcssa.i = phi i32 [ 0, %sw.bb127.mon_bin_queued.exit_crit_edge ], [ %inc.i345, %while.body.i351.mon_bin_queued.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fetch_lock.i336) #10
  %139 = inttoptr i32 %arg to ptr
  %dropped = getelementptr inbounds %struct.mon_bin_stats, ptr %139, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1118) #10
  %140 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i287 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i287 to ptr
  %cpu_domain.i.i288 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 4
  %142 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i288) #4, !srcloc !68
  %and.i289 = and i32 %142, -13
  %or.i290 = or i32 %and.i289, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i290) #10, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %143 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %dropped, i32 %126, i32 -1226833921) #10, !srcloc !74
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %142) #10, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool161.not = icmp eq i32 %143, 0
  br i1 %tobool161.not, label %if.end163, label %mon_bin_queued.exit.cleanup187_crit_edge

mon_bin_queued.exit.cleanup187_crit_edge:         ; preds = %mon_bin_queued.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187

if.end163:                                        ; preds = %mon_bin_queued.exit
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1120) #10
  %144 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i291 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i291 to ptr
  %cpu_domain.i.i292 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 4
  %146 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i292) #4, !srcloc !68
  %and.i293 = and i32 %146, -13
  %or.i294 = or i32 %and.i293, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i294) #10, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %147 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %139, i32 %nevents.0.lcssa.i, i32 -1226833921) #10, !srcloc !75
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #10, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool179.not = icmp eq i32 %147, 0
  br i1 %tobool179.not, label %if.end163.sw.epilog_crit_edge, label %if.end163.cleanup187_crit_edge

if.end163.cleanup187_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187

if.end163.sw.epilog_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end163.sw.epilog_crit_edge, %cleanup123.sw.epilog_crit_edge, %cleanup72, %sw.bb57, %if.end53, %if.then27, %if.end17.sw.epilog_crit_edge, %sw.bb9, %if.end
  %ret.5 = phi i32 [ 0, %if.end163.sw.epilog_crit_edge ], [ 0, %cleanup123.sw.epilog_crit_edge ], [ %retval.0.i317, %cleanup72 ], [ %call58, %sw.bb57 ], [ %14, %sw.bb9 ], [ %ret.0, %if.end ], [ -12, %if.end17.sw.epilog_crit_edge ], [ %ret.1, %if.end53 ], [ -12, %if.then27 ]
  br label %cleanup187

cleanup187:                                       ; preds = %sw.epilog, %if.end163.cleanup187_crit_edge, %mon_bin_queued.exit.cleanup187_crit_edge, %cleanup123.cleanup187_crit_edge, %cleanup123.thread, %cleanup72.thread, %sw.bb11.cleanup187_crit_edge, %entry.cleanup187_crit_edge
  %retval.4 = phi i32 [ %ret.5, %sw.epilog ], [ -14, %if.end163.cleanup187_crit_edge ], [ -14, %cleanup123.cleanup187_crit_edge ], [ -25, %entry.cleanup187_crit_edge ], [ -14, %mon_bin_queued.exit.cleanup187_crit_edge ], [ -22, %sw.bb11.cleanup187_crit_edge ], [ %retval.1.ph, %cleanup72.thread ], [ %retval.2.ph, %cleanup123.thread ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_bin_mmap(ptr nocapture noundef readonly %filp, ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %0 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mon_bin_vm_ops, ptr %vm_ops, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %1 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vm_flags, align 4
  %or = or i32 %2, 67371008
  store i32 %or, ptr %vm_flags, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %5 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %vm_private_data, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %mmap_active.i = getelementptr inbounds %struct.mon_reader_bin, ptr %4, i32 0, i32 9
  %6 = ptrtoint ptr %mmap_active.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmap_active.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %mmap_active.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call2.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_bin_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mon_lock, i32 noundef 0) #10
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @mon_bus_lookup(i32 noundef %and.i) #10
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq ptr %call1, @mon_bus0
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %u_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u_bus, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 248) #16
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %do.body11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body11:                                        ; preds = %if.end6
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @mon_bin_open.__key, i16 noundef signext 3) #10
  %b_wait = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %b_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @mon_bin_open.__key.13) #10
  %fetch_lock = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %fetch_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @mon_bin_open.__key.15) #10
  %b_size = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 307200, ptr %b_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 600) #16
  %b_vec = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %b_vec to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i65, ptr %b_vec, align 8
  %cmp23 = icmp eq ptr %call7.i.i65, null
  br i1 %cmp23, label %do.body11.err_allocvec_crit_edge, label %if.end25

do.body11.err_allocvec_crit_edge:                 ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_allocvec

if.end25:                                         ; preds = %do.body11
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 4
  %div2864 = lshr i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %cmp19.i.not = icmp ult i32 %9, 4096
  br i1 %cmp19.i.not, label %if.end25.if.end32_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %n.020.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end25.for.body.i_crit_edge ]
  %call.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %while.cond.preheader.i, label %if.end.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.020.i)
  %cmp2.not21.i = icmp eq i32 %n.020.i, 0
  br i1 %cmp2.not21.i, label %while.cond.preheader.i.err_allocbuff_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.err_allocbuff_crit_edge:   ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_allocbuff

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %n.122.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %n.020.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %n.122.i, -1
  %ptr.i = getelementptr %struct.mon_pgmap, ptr %call7.i.i65, i32 %dec.i, i32 1
  %10 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr.i, align 4
  %12 = ptrtoint ptr %11 to i32
  tail call void @free_pages(i32 noundef %12, i32 noundef 0) #10
  %cmp2.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.not.i, label %while.body.i.err_allocbuff_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.err_allocbuff_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_allocbuff

if.end.i:                                         ; preds = %for.body.i
  %13 = inttoptr i32 %call.i to ptr
  %arrayidx3.i = getelementptr %struct.mon_pgmap, ptr %call7.i.i65, i32 %n.020.i
  %ptr4.i = getelementptr %struct.mon_pgmap, ptr %call7.i.i65, i32 %n.020.i, i32 1
  %14 = ptrtoint ptr %ptr4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %ptr4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %call.i, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %arrayidx3.i, align 8
  %inc.i = add nuw nsw i32 %n.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div2864
  br i1 %exitcond.not.i, label %if.end.i.if.end32_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.if.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end32:                                         ; preds = %if.end.i.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %r = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 10
  %m_bus = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %m_bus to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1, ptr %m_bus, align 8
  %r_data = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %r_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %r_data, align 4
  %rnf_submit = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %rnf_submit to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mon_bin_submit, ptr %rnf_submit, align 8
  %rnf_error = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 10, i32 4
  %20 = ptrtoint ptr %rnf_error to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mon_bin_error, ptr %rnf_error, align 4
  %rnf_complete = getelementptr inbounds %struct.mon_reader_bin, ptr %call7.i.i, i32 0, i32 10, i32 5
  %21 = ptrtoint ptr %rnf_complete to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mon_bin_complete, ptr %rnf_complete, align 8
  tail call void @mon_reader_add(ptr noundef nonnull %call1, ptr noundef %r) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

err_allocbuff:                                    ; preds = %while.body.i.err_allocbuff_crit_edge, %while.cond.preheader.i.err_allocbuff_crit_edge
  %23 = ptrtoint ptr %b_vec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_vec, align 8
  tail call void @kfree(ptr noundef %24) #10
  br label %err_allocvec

err_allocvec:                                     ; preds = %err_allocbuff, %do.body11.err_allocvec_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_allocvec, %if.end32, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end32 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %err_allocvec ]
  tail call void @mutex_unlock(ptr noundef nonnull @mon_lock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_bin_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %m_bus = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %m_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_bus, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mon_lock, i32 noundef 0) #10
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %nreaders to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nreaders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 10
  tail call void @mon_reader_del(ptr noundef %3, ptr noundef %r) #10
  %b_vec = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %b_vec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_vec, align 4
  %b_size = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 4
  %div10 = lshr i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %cmp3.i.not = icmp ult i32 %9, 4096
  br i1 %cmp3.i.not, label %if.end.mon_free_buff.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.mon_free_buff.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_free_buff.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %n.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %ptr.i = getelementptr %struct.mon_pgmap, ptr %7, i32 %n.04.i, i32 1
  %10 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr.i, align 4
  %12 = ptrtoint ptr %11 to i32
  tail call void @free_pages(i32 noundef %12, i32 noundef 0) #10
  %inc.i = add nuw nsw i32 %n.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div10
  br i1 %exitcond.not.i, label %for.body.i.mon_free_buff.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.mon_free_buff.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_free_buff.exit

mon_free_buff.exit:                               ; preds = %for.body.i.mon_free_buff.exit_crit_edge, %if.end.mon_free_buff.exit_crit_edge
  %13 = ptrtoint ptr %b_vec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_vec, align 4
  tail call void @kfree(ptr noundef %14) #10
  tail call void @kfree(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %mon_free_buff.exit, %do.end
  tail call void @mutex_unlock(ptr noundef nonnull @mon_lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mon_bin_wait_event(ptr nocapture noundef readonly %file, ptr noundef %rp) #0 align 64 {
entry:
  %waita = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %waita) #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %waita, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %waita to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %waita, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !54) #10
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
  %b_wait = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 7
  call void @add_wait_queue(ptr noundef %b_wait, ptr noundef nonnull %waita) #10
  br label %__here

__here:                                           ; preds = %entry
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@mon_bin_wait_event, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %call68 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rp) #10
  %b_cnt = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 2
  %18 = ptrtoint ptr %b_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp73368 = icmp eq i32 %19, 0
  br i1 %cmp73368, label %while.body.lr.ph, label %__here.while.end_crit_edge

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %__here
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %__here219.while.body_crit_edge, %while.body.lr.ph
  %flags2.0369 = phi i32 [ %call68, %while.body.lr.ph ], [ %call258, %__here219.while.body_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rp, i32 noundef %flags2.0369) #10
  %20 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_flags, align 4
  %and = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.end160, label %__here129

__here129:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change133 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change133 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@mon_bin_wait_event, %__here129) to i32), ptr %task_state_change133, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %25, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  br label %cleanup

if.end160:                                        ; preds = %while.body
  call void @schedule() #10
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stack.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end160.cleanup_crit_edge, !prof !67

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end160
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %30, align 4
  %and1.i.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool164.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool164.not, label %__here219, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__here219:                                        ; preds = %signal_pending.exit
  %task_state_change223 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 212
  %36 = ptrtoint ptr %task_state_change223 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 ptrtoint (ptr blockaddress(@mon_bin_wait_event, %__here219) to i32), ptr %task_state_change223, align 4
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %38, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  %call258 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rp) #10
  %40 = ptrtoint ptr %b_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_cnt, align 4
  %cmp73 = icmp eq i32 %41, 0
  br i1 %cmp73, label %__here219.while.body_crit_edge, label %__here219.while.end_crit_edge

__here219.while.end_crit_edge:                    ; preds = %__here219
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

__here219.while.body_crit_edge:                   ; preds = %__here219
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %__here219.while.end_crit_edge, %__here.while.end_crit_edge
  %flags2.0.lcssa = phi i32 [ %call68, %__here.while.end_crit_edge ], [ %call258, %__here219.while.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rp, i32 noundef %flags2.0.lcssa) #10
  br label %__here315

__here315:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %task_state_change319 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 212
  %44 = ptrtoint ptr %task_state_change319 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 ptrtoint (ptr blockaddress(@mon_bin_wait_event, %__here315) to i32), ptr %task_state_change319, align 4
  %45 = load ptr, ptr %task, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %45, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %__here315, %signal_pending.exit.cleanup_crit_edge, %if.end160.cleanup_crit_edge, %__here129
  %retval.0 = phi i32 [ -11, %__here129 ], [ 0, %__here315 ], [ -4, %if.end160.cleanup_crit_edge ], [ -4, %signal_pending.exit.cleanup_crit_edge ]
  call void @remove_wait_queue(ptr noundef %b_wait, ptr noundef nonnull %waita) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %waita) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_buf(ptr nocapture noundef readonly %this, i32 noundef %off, ptr noundef %to, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not28 = icmp eq i32 %length, 0
  br i1 %tobool.not28, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %b_vec = getelementptr inbounds %struct.mon_reader_bin, ptr %this, i32 0, i32 6
  %b_size = getelementptr inbounds %struct.mon_reader_bin, ptr %this, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end3.while.body_crit_edge, %while.body.lr.ph
  %length.addr.031 = phi i32 [ %length, %while.body.lr.ph ], [ %sub8, %if.end3.while.body_crit_edge ]
  %to.addr.030 = phi ptr [ %to, %while.body.lr.ph ], [ %add.ptr7, %if.end3.while.body_crit_edge ]
  %off.addr.029 = phi i32 [ %off, %while.body.lr.ph ], [ %spec.store.select, %if.end3.while.body_crit_edge ]
  %and = and i32 %off.addr.029, 4095
  %sub = sub nuw nsw i32 4096, %and
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %length.addr.031)
  %1 = ptrtoint ptr %b_vec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_vec, align 4
  %div23 = lshr i32 %off.addr.029, 12
  %ptr = getelementptr %struct.mon_pgmap, ptr %2, i32 %div23, i32 1
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %and
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %0, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %while.body.cleanup_crit_edge, label %if.end.i.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %while.body
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %to.addr.030, i32 %0, i32 -1226833920) #13, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %0) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %to.addr.030, ptr noundef %add.ptr, i32 noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool1.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool1.not, label %if.end3, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %copy_to_user.exit
  %add = add i32 %0, %off.addr.029
  %6 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp4.not = icmp ult i32 %add, %7
  %spec.store.select = select i1 %cmp4.not, i32 %add, i32 0
  %add.ptr7 = getelementptr i8, ptr %to.addr.030, i32 %0
  %sub8 = sub i32 %length.addr.031, %0
  %tobool.not = icmp eq i32 %sub8, 0
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end3.while.body_crit_edge

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %copy_to_user.exit.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mon_bin_flush(ptr noundef %rp, i32 noundef %nevents) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fetch_lock = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %fetch_lock, i32 noundef 0) #10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rp) #10
  %b_cnt = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nevents)
  %cmp522.not = icmp eq i32 %nevents, 0
  br i1 %cmp522.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %b_out = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 4
  %b_vec.i = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 6
  %b_size.i = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %mon_buff_area_free.exit.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mon_buff_area_free.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %b_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp eq i32 %1, 0
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %b_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_out, align 4
  %4 = ptrtoint ptr %b_vec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_vec.i, align 4
  %div2.i = lshr i32 %3, 12
  %ptr.i = getelementptr %struct.mon_pgmap, ptr %5, i32 %div2.i, i32 1
  %6 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr.i, align 4
  %rem.i = and i32 %3, 4095
  %add.ptr.i = getelementptr i8, ptr %7, i32 %rem.i
  %len_cap = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 12
  %8 = ptrtoint ptr %len_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len_cap, align 4
  %sub.i = add i32 %9, 127
  %and.i = and i32 %sub.i, -64
  %sub1.i = sub i32 %1, %and.i
  %10 = ptrtoint ptr %b_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub1.i, ptr %b_cnt, align 4
  %add2.i = add i32 %and.i, %3
  store i32 %add2.i, ptr %b_out, align 4
  %11 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %12)
  %cmp.not.i = icmp ult i32 %add2.i, %12
  br i1 %cmp.not.i, label %if.end.mon_buff_area_free.exit_crit_edge, label %if.then.i

if.end.mon_buff_area_free.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_buff_area_free.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub5.i = sub i32 %add2.i, %12
  %13 = ptrtoint ptr %b_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub5.i, ptr %b_out, align 4
  br label %mon_buff_area_free.exit

mon_buff_area_free.exit:                          ; preds = %if.then.i, %if.end.mon_buff_area_free.exit_crit_edge
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %nevents
  br i1 %exitcond.not, label %mon_buff_area_free.exit.for.end_crit_edge, label %mon_buff_area_free.exit.for.body_crit_edge

mon_buff_area_free.exit.for.body_crit_edge:       ; preds = %mon_buff_area_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

mon_buff_area_free.exit.for.end_crit_edge:        ; preds = %mon_buff_area_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %mon_buff_area_free.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.023, %for.body.for.end_crit_edge ], [ %nevents, %mon_buff_area_free.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rp, i32 noundef %call2) #10
  %b_read = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 5
  %14 = ptrtoint ptr %b_read to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %b_read, align 4
  tail call void @mutex_unlock(ptr noundef %fetch_lock) #10
  ret i32 %i.0.lcssa
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_bin_vma_open(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %mmap_active = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mmap_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmap_active, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %mmap_active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_bin_vma_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %mmap_active = getelementptr inbounds %struct.mon_reader_bin, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mmap_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmap_active, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %mmap_active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_bin_vma_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %4 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgoff, align 4
  %shl = shl i32 %5, 12
  %b_size = getelementptr inbounds %struct.mon_reader_bin, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %7)
  %cmp.not = icmp ult i32 %shl, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %div9 = and i32 %5, 1048575
  %b_vec = getelementptr inbounds %struct.mon_reader_bin, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %b_vec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_vec, align 4
  %arrayidx = getelementptr %struct.mon_pgmap, ptr %9, i32 %div9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !67

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %11 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !80

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !81
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mon_bin_vma_fault, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !83

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %16, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %20 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %page, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mon_bus_lookup(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_bin_submit(ptr noundef %data, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mon_bin_event(ptr noundef %data, ptr noundef %urb, i8 noundef zeroext 83, i32 noundef -115)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_bin_error(ptr noundef %data, ptr noundef %urb, i32 noundef %error) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #10
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #10
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %data) #10
  %b_cnt.i = getelementptr inbounds %struct.mon_reader_bin, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %b_cnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %b_cnt.i, align 4
  %add1.i = add i32 %2, 64
  %b_size.i = getelementptr inbounds %struct.mon_reader_bin, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %4)
  %cmp.i = icmp ugt i32 %add1.i, %4
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %b_in.i = getelementptr inbounds %struct.mon_reader_bin, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %b_in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_in.i, align 4
  %7 = ptrtoint ptr %b_cnt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add1.i, ptr %b_cnt.i, align 4
  %add5.i = add i32 %6, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %4)
  %cmp7.not.i = icmp ult i32 %add5.i, %4
  %sub11.i = select i1 %cmp7.not.i, i32 0, i32 %4
  %spec.select = sub i32 %add5.i, %sub11.i
  %8 = ptrtoint ptr %b_in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %b_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp6 = icmp eq i32 %6, -1
  br i1 %cmp6, label %if.end.i.if.then_crit_edge, label %if.end

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call2) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %b_vec.i = getelementptr inbounds %struct.mon_reader_bin, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %b_vec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_vec.i, align 4
  %div2.i = lshr i32 %6, 12
  %ptr.i = getelementptr %struct.mon_pgmap, ptr %10, i32 %div2.i, i32 1
  %11 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr.i, align 4
  %rem.i = and i32 %6, 4095
  %add.ptr.i = getelementptr i8, ptr %12, i32 %rem.i
  %13 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 64)
  %type = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 69, ptr %type, align 8
  %ep10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %15 = ptrtoint ptr %ep10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep10, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmAttributes.i, align 1
  %19 = and i8 %18, 3
  %and.i = zext i8 %19 to i32
  %arrayidx = getelementptr [4 x i8], ptr @xfer_to_pipe, i32 0, i32 %and.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %xfer_type = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 2
  %22 = ptrtoint ptr %xfer_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %xfer_type, align 1
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %23 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_flags.i, align 4
  %25 = lshr i32 %24, 2
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, -128
  %epnum = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 3
  %28 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %epnum, align 2
  %29 = load ptr, ptr %ep10, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i, align 1
  %32 = and i8 %31, 15
  %conv19 = or i8 %32, %27
  store i8 %conv19, ptr %epnum, align 2
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %conv20 = trunc i32 %36 to i8
  %devnum21 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 4
  %37 = ptrtoint ptr %devnum21 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv20, ptr %devnum21, align 1
  %38 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %busnum, align 4
  %conv23 = trunc i32 %42 to i16
  %busnum24 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 5
  %43 = ptrtoint ptr %busnum24 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv23, ptr %busnum24, align 4
  %44 = ptrtoint ptr %urb to i32
  %conv25 = zext i32 %44 to i64
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv25, ptr %add.ptr.i, align 8
  %46 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ts, align 8
  %ts_sec = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 8
  %48 = ptrtoint ptr %ts_sec to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %ts_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %49 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %50, 1000
  %ts_usec = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 9
  %51 = ptrtoint ptr %ts_usec to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div, ptr %ts_usec, align 8
  %status = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 10
  %52 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %error, ptr %status, align 4
  %flag_setup = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 6
  %53 = ptrtoint ptr %flag_setup to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 45, ptr %flag_setup, align 2
  %flag_data = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 7
  %54 = ptrtoint ptr %flag_data to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 69, ptr %flag_data, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call2) #10
  %b_wait = getelementptr inbounds %struct.mon_reader_bin, ptr %data, i32 0, i32 7
  call void @__wake_up(ptr noundef %b_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_bin_complete(ptr noundef %data, ptr noundef %urb, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mon_bin_event(ptr noundef %data, ptr noundef %urb, i8 noundef zeroext 67, i32 noundef %status)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mon_reader_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_bin_event(ptr noundef %rp, ptr noundef %urb, i8 noundef zeroext %ev_type, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #10
  %2 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #10
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rp) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %ev_type)
  %cmp7 = icmp eq i8 %ev_type, 83
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %cond.in = select i1 %cmp7, ptr %transfer_buffer_length, ptr %actual_length
  %3 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond = load i32, ptr %cond.in, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes.i, align 1
  %6 = and i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i.not = icmp eq i8 %6, 1
  br i1 %cmp.i.not, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %entry
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %7 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number_of_packets, align 4
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 128)
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %ev_type)
  %cmp21 = icmp eq i8 %ev_type, 67
  br i1 %cmp21, label %land.lhs.true, label %if.then.if.end29_crit_edge

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %11 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %transfer_flags.i, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end29_crit_edge, label %if.then25

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not2.i = icmp slt i32 %9, 1
  br i1 %cmp.not2.i, label %if.then25.if.end29_crit_edge, label %while.body.preheader.i

if.then25.if.end29_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

while.body.preheader.i:                           ; preds = %if.then25
  %iso_frame_desc.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 29
  br label %while.body.i

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec6.in.i = phi i32 [ %dec6.i, %if.end8.i.while.body.i_crit_edge ], [ %10, %while.body.preheader.i ]
  %length.05.i = phi i32 [ %length.1.i, %if.end8.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %fp.03.i = phi ptr [ %incdec.ptr.i, %if.end8.i.while.body.i_crit_edge ], [ %iso_frame_desc.i, %while.body.preheader.i ]
  %dec6.i = add nsw i32 %dec6.in.i, -1
  %actual_length.i = getelementptr inbounds %struct.usb_iso_packet_descriptor, ptr %fp.03.i, i32 0, i32 2
  %14 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.not.i = icmp eq i32 %15, 0
  br i1 %cmp1.not.i, label %while.body.i.if.end8.i_crit_edge, label %if.then.i

while.body.i.if.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %fp.03.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fp.03.i, align 4
  %add.i = add i32 %17, %15
  %18 = call i32 @llvm.umax.i32(i32 %add.i, i32 %length.05.i) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i, %while.body.i.if.end8.i_crit_edge
  %length.1.i = phi i32 [ %length.05.i, %while.body.i.if.end8.i_crit_edge ], [ %18, %if.then.i ]
  %incdec.ptr.i = getelementptr %struct.usb_iso_packet_descriptor, ptr %fp.03.i, i32 1
  %cmp.not.i = icmp eq i32 %dec6.i, 0
  br i1 %cmp.not.i, label %if.end8.i.if.end29_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end8.i.if.end29_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end29:                                         ; preds = %if.end8.i.if.end29_crit_edge, %if.then25.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.then.if.end29_crit_edge, %entry.if.end29_crit_edge
  %length.0 = phi i32 [ %cond, %land.lhs.true.if.end29_crit_edge ], [ %cond, %if.then.if.end29_crit_edge ], [ %cond, %entry.if.end29_crit_edge ], [ 0, %if.then25.if.end29_crit_edge ], [ %length.1.i, %if.end8.i.if.end29_crit_edge ]
  %ndesc.1 = phi i32 [ %10, %land.lhs.true.if.end29_crit_edge ], [ %10, %if.then.if.end29_crit_edge ], [ 0, %entry.if.end29_crit_edge ], [ 0, %if.then25.if.end29_crit_edge ], [ %10, %if.end8.i.if.end29_crit_edge ]
  %mul = shl i32 %ndesc.1, 4
  %19 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_buffer_length, align 4
  %21 = call i32 @llvm.umin.i32(i32 %length.0, i32 %20)
  %b_size = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 1
  %22 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_size, align 4
  %div = udiv i32 %23, 5
  %24 = call i32 @llvm.umin.i32(i32 %21, i32 %div)
  %transfer_flags.i272 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %25 = ptrtoint ptr %transfer_flags.i272 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_flags.i272, align 4
  %27 = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool43.not = icmp eq i32 %27, 0
  br i1 %tobool43.not, label %if.else50, label %if.then44

if.then44:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select267 = select i1 %cmp7, i32 0, i32 %24
  %spec.select268 = select i1 %cmp7, i8 60, i8 0
  br label %if.end56

if.else50:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %ev_type)
  %cmp52 = icmp eq i8 %ev_type, 67
  %spec.select269 = select i1 %cmp52, i32 0, i32 %24
  %spec.select270 = select i1 %cmp52, i8 62, i8 0
  br label %if.end56

if.end56:                                         ; preds = %if.else50, %if.then44
  %length.5 = phi i32 [ %spec.select267, %if.then44 ], [ %spec.select269, %if.else50 ]
  %dir.0 = phi i8 [ -128, %if.then44 ], [ 0, %if.else50 ]
  %data_tag.2 = phi i8 [ %spec.select268, %if.then44 ], [ %spec.select270, %if.else50 ]
  %mmap_active = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 9
  %28 = ptrtoint ptr %mmap_active to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mmap_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool57.not = icmp eq i32 %29, 0
  %add63 = add i32 %length.5, %mul
  %sub.i277 = add i32 %add63, 127
  %and.i278 = and i32 %sub.i277, -64
  %b_cnt.i279 = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 2
  %30 = ptrtoint ptr %b_cnt.i279 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %b_cnt.i279, align 4
  %add1.i280 = add i32 %31, %and.i278
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i280, i32 %23)
  %cmp.i282 = icmp ugt i32 %add1.i280, %23
  br i1 %tobool57.not, label %if.else61, label %if.then58

if.then58:                                        ; preds = %if.end56
  br i1 %cmp.i282, label %if.then58.if.then68_crit_edge, label %if.end.i

if.then58.if.then68_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.end.i:                                         ; preds = %if.then58
  %b_in.i = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 3
  %32 = ptrtoint ptr %b_in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_in.i, align 4
  %add2.i = add i32 %33, %and.i278
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %23)
  %cmp4.i = icmp ugt i32 %add2.i, %23
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  %sub8.i = sub i32 %23, %33
  %add11.i = add i32 %sub8.i, %add1.i280
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %23)
  %cmp13.i = icmp ugt i32 %add11.i, %23
  br i1 %cmp13.i, label %if.then5.i.if.then68_crit_edge, label %if.end15.i

if.then5.i.if.then68_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.end15.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %b_vec.i.i.i = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 6
  %34 = ptrtoint ptr %b_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_vec.i.i.i, align 4
  %div2.i.i.i = lshr i32 %33, 12
  %ptr.i.i.i = getelementptr %struct.mon_pgmap, ptr %35, i32 %div2.i.i.i, i32 1
  %36 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptr.i.i.i, align 4
  %rem.i.i.i = and i32 %33, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 %rem.i.i.i
  %38 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 64)
  %type.i.i = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 64, ptr %type.i.i, align 8
  %sub.i.i = add i32 %sub8.i, -64
  %len_cap.i.i = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i.i.i, i32 0, i32 12
  %40 = ptrtoint ptr %len_cap.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i.i, ptr %len_cap.i.i, align 4
  %41 = ptrtoint ptr %b_in.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i278, ptr %b_in.i, align 4
  %add18.i = add i32 %sub8.i, %and.i278
  %42 = ptrtoint ptr %b_cnt.i279 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %b_cnt.i279, align 4
  %add20.i = add i32 %add18.i, %43
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %23)
  %cmp24.i = icmp eq i32 %add2.i, %23
  br i1 %cmp24.i, label %if.then25.i, label %if.else30.i

if.then25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %b_in.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %b_in.i, align 4
  br label %cleanup.sink.split.i

if.else30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %b_in.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add2.i, ptr %b_in.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else30.i, %if.then25.i, %if.end15.i
  %add20.sink.i = phi i32 [ %add20.i, %if.end15.i ], [ %add1.i280, %if.else30.i ], [ %add1.i280, %if.then25.i ]
  %retval.0.ph.i = phi i32 [ 0, %if.end15.i ], [ %33, %if.else30.i ], [ %33, %if.then25.i ]
  %46 = ptrtoint ptr %b_cnt.i279 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add20.sink.i, ptr %b_cnt.i279, align 4
  br label %if.end65

if.else61:                                        ; preds = %if.end56
  br i1 %cmp.i282, label %if.else61.if.then68_crit_edge, label %if.end.i284

if.else61.if.then68_crit_edge:                    ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.end.i284:                                      ; preds = %if.else61
  %b_in.i283 = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 3
  %47 = ptrtoint ptr %b_in.i283 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %b_in.i283, align 4
  %49 = ptrtoint ptr %b_cnt.i279 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add1.i280, ptr %b_cnt.i279, align 4
  %add5.i = add i32 %48, %and.i278
  store i32 %add5.i, ptr %b_in.i283, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %23)
  %cmp7.not.i = icmp ult i32 %add5.i, %23
  br i1 %cmp7.not.i, label %if.end.i284.if.end65_crit_edge, label %if.then8.i

if.end.i284.if.end65_crit_edge:                   ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then8.i:                                       ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #12
  %sub11.i = sub i32 %add5.i, %23
  %50 = ptrtoint ptr %b_in.i283 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub11.i, ptr %b_in.i283, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then8.i, %if.end.i284.if.end65_crit_edge, %cleanup.sink.split.i
  %offset.0 = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %48, %if.then8.i ], [ %48, %if.end.i284.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset.0)
  %cmp66 = icmp eq i32 %offset.0, -1
  br i1 %cmp66, label %if.end65.if.then68_crit_edge, label %if.end70

if.end65.if.then68_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.then68:                                        ; preds = %if.end65.if.then68_crit_edge, %if.else61.if.then68_crit_edge, %if.then5.i.if.then68_crit_edge, %if.then58.if.then68_crit_edge
  %cnt_lost = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 11
  %51 = ptrtoint ptr %cnt_lost to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cnt_lost, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %cnt_lost, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rp, i32 noundef %call3) #10
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %b_vec.i = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 6
  %53 = ptrtoint ptr %b_vec.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_vec.i, align 4
  %div2.i = lshr i32 %offset.0, 12
  %ptr.i = getelementptr %struct.mon_pgmap, ptr %54, i32 %div2.i, i32 1
  %55 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ptr.i, align 4
  %rem.i = and i32 %offset.0, 4095
  %add.ptr.i = getelementptr i8, ptr %56, i32 %rem.i
  %add72 = add i32 %offset.0, 64
  %57 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %b_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %58)
  %cmp74.not = icmp ult i32 %add72, %58
  %spec.store.select = select i1 %cmp74.not, i32 %add72, i32 0
  %59 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 64)
  %type = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 1
  %60 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %ev_type, ptr %type, align 8
  %61 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bmAttributes.i, align 1
  %63 = and i8 %62, 3
  %and.i287 = zext i8 %63 to i32
  %arrayidx = getelementptr [4 x i8], ptr @xfer_to_pipe, i32 0, i32 %and.i287
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %xfer_type = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 2
  %66 = ptrtoint ptr %xfer_type to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %xfer_type, align 1
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bEndpointAddress.i, align 1
  %69 = and i8 %68, 15
  %or = or i8 %69, %dir.0
  %epnum = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 3
  %70 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %or, ptr %epnum, align 2
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %conv82 = trunc i32 %74 to i8
  %devnum83 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 4
  %75 = ptrtoint ptr %devnum83 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv82, ptr %devnum83, align 1
  %76 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %busnum, align 4
  %conv85 = trunc i32 %80 to i16
  %busnum86 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 5
  %81 = ptrtoint ptr %busnum86 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv85, ptr %busnum86, align 4
  %82 = ptrtoint ptr %urb to i32
  %conv87 = zext i32 %82 to i64
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv87, ptr %add.ptr.i, align 8
  %84 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ts, align 8
  %ts_sec = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 8
  %86 = ptrtoint ptr %ts_sec to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %ts_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %87 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tv_nsec, align 8
  %div88 = sdiv i32 %88, 1000
  %ts_usec = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 9
  %89 = ptrtoint ptr %ts_usec to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div88, ptr %ts_usec, align 8
  %status89 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 10
  %90 = ptrtoint ptr %status89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %status, ptr %status89, align 4
  %len_urb = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 11
  %91 = ptrtoint ptr %len_urb to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %cond, ptr %len_urb, align 8
  %add90 = add i32 %length.5, %mul
  %len_cap = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 12
  %92 = ptrtoint ptr %len_cap to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add90, ptr %len_cap, align 4
  %93 = ptrtoint ptr %transfer_flags.i272 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %transfer_flags.i272, align 4
  %xfer_flags = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 16
  %95 = ptrtoint ptr %xfer_flags to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %xfer_flags, align 8
  %96 = load i8, ptr %bmAttributes.i, align 1
  %trunc = trunc i8 %96 to i2
  %97 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.19)
  switch i2 %trunc, label %if.end70.if.end106_crit_edge [
    i2 -1, label %if.then93
    i2 1, label %if.then98
  ]

if.end70.if.end106_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then93:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %98 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %interval, align 4
  %interval94 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 14
  %100 = ptrtoint ptr %interval94 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %interval94, align 8
  br label %if.end106

if.then98:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %interval99 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %101 = ptrtoint ptr %interval99 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %interval99, align 4
  %interval100 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 14
  %103 = ptrtoint ptr %interval100 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %interval100, align 8
  %start_frame = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %104 = ptrtoint ptr %start_frame to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %start_frame, align 4
  %start_frame101 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 15
  %106 = ptrtoint ptr %start_frame101 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %start_frame101, align 4
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %107 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %error_count, align 4
  %s = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 13
  %109 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %s, align 8
  %number_of_packets103 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %110 = ptrtoint ptr %number_of_packets103 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %number_of_packets103, align 4
  %numdesc = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 13, i32 0, i32 1
  %112 = ptrtoint ptr %numdesc to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %numdesc, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then98, %if.then93, %if.end70.if.end106_crit_edge
  %113 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bmAttributes.i, align 1
  %115 = and i8 %114, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp.i296 = icmp eq i8 %115, 0
  %116 = and i1 %cmp7, %cmp.i296
  br i1 %116, label %if.then113, label %if.end106.if.end118_crit_edge

if.end106.if.end118_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then113:                                       ; preds = %if.end106
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %117 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %setup_packet.i, align 4
  %cmp.i298 = icmp eq ptr %118, null
  br i1 %cmp.i298, label %if.then113.if.end118_crit_edge, label %if.end.i299

if.then113.if.end118_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.end.i299:                                      ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  %s114 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 13
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 8)
  %120 = load i64, ptr %118, align 1
  %121 = ptrtoint ptr %s114 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 %120, ptr %s114, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.end.i299, %if.then113.if.end118_crit_edge, %if.end106.if.end118_crit_edge
  %.sink = phi i8 [ 0, %if.end.i299 ], [ 90, %if.then113.if.end118_crit_edge ], [ 45, %if.end106.if.end118_crit_edge ]
  %flag_setup117 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 6
  %122 = ptrtoint ptr %flag_setup117 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %.sink, ptr %flag_setup117, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndesc.1)
  %cmp119.not = icmp eq i32 %ndesc.1, 0
  br i1 %cmp119.not, label %if.end118.if.end130_crit_edge, label %while.body.lr.ph.i

if.end118.if.end130_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

while.body.lr.ph.i:                               ; preds = %if.end118
  %ndesc122 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 17
  %123 = ptrtoint ptr %ndesc122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %ndesc.1, ptr %ndesc122, align 4
  %iso_frame_desc.i301 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 29
  br label %while.body.i311

while.body.i311:                                  ; preds = %while.body.i311.while.body.i311_crit_edge, %while.body.lr.ph.i
  %fp.020.i = phi ptr [ %iso_frame_desc.i301, %while.body.lr.ph.i ], [ %incdec.ptr.i309, %while.body.i311.while.body.i311_crit_edge ]
  %ndesc.addr.019.i = phi i32 [ %ndesc.1, %while.body.lr.ph.i ], [ %dec.i, %while.body.i311.while.body.i311_crit_edge ]
  %offset.addr.018.i = phi i32 [ %spec.store.select, %while.body.lr.ph.i ], [ %spec.store.select.i, %while.body.i311.while.body.i311_crit_edge ]
  %dec.i = add nsw i32 %ndesc.addr.019.i, -1
  %124 = ptrtoint ptr %b_vec.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_vec.i, align 4
  %div16.i = lshr i32 %offset.addr.018.i, 12
  %ptr.i304 = getelementptr %struct.mon_pgmap, ptr %125, i32 %div16.i, i32 1
  %126 = ptrtoint ptr %ptr.i304 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptr.i304, align 4
  %rem.i305 = and i32 %offset.addr.018.i, 4095
  %add.ptr.i306 = getelementptr i8, ptr %127, i32 %rem.i305
  %status.i = getelementptr inbounds %struct.usb_iso_packet_descriptor, ptr %fp.020.i, i32 0, i32 3
  %128 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %status.i, align 4
  %130 = ptrtoint ptr %add.ptr.i306 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %add.ptr.i306, align 4
  %131 = ptrtoint ptr %fp.020.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fp.020.i, align 4
  %iso_off.i = getelementptr inbounds %struct.mon_bin_isodesc, ptr %add.ptr.i306, i32 0, i32 1
  %133 = ptrtoint ptr %iso_off.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %iso_off.i, align 4
  %length.i = getelementptr inbounds %struct.usb_iso_packet_descriptor, ptr %fp.020.i, i32 0, i32 1
  %actual_length.i307 = getelementptr inbounds %struct.usb_iso_packet_descriptor, ptr %fp.020.i, i32 0, i32 2
  %cond.in.i = select i1 %cmp7, ptr %length.i, ptr %actual_length.i307
  %134 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %iso_len.i = getelementptr inbounds %struct.mon_bin_isodesc, ptr %add.ptr.i306, i32 0, i32 2
  %135 = ptrtoint ptr %iso_len.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %cond.i, ptr %iso_len.i, align 4
  %_pad.i = getelementptr inbounds %struct.mon_bin_isodesc, ptr %add.ptr.i306, i32 0, i32 3
  %136 = ptrtoint ptr %_pad.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %_pad.i, align 4
  %add.i308 = add i32 %offset.addr.018.i, 16
  %137 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %b_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i308, i32 %138)
  %cmp4.not.i = icmp ult i32 %add.i308, %138
  %spec.store.select.i = select i1 %cmp4.not.i, i32 %add.i308, i32 0
  %incdec.ptr.i309 = getelementptr %struct.usb_iso_packet_descriptor, ptr %fp.020.i, i32 1
  %cmp.not.i310 = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i310, label %mon_bin_get_isodesc.exit, label %while.body.i311.while.body.i311_crit_edge

while.body.i311.while.body.i311_crit_edge:        ; preds = %while.body.i311
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i311

mon_bin_get_isodesc.exit:                         ; preds = %while.body.i311
  call void @__sanitizer_cov_trace_pc() #12
  %add123 = add i32 %spec.store.select, %mul
  %139 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %b_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add123, i32 %140)
  %cmp125.not = icmp ult i32 %add123, %140
  %sub = select i1 %cmp125.not, i32 0, i32 %140
  %spec.select271 = sub i32 %add123, %sub
  br label %if.end130

if.end130:                                        ; preds = %mon_bin_get_isodesc.exit, %if.end118.if.end130_crit_edge
  %offset.1 = phi i32 [ %spec.store.select, %if.end118.if.end130_crit_edge ], [ %spec.select271, %mon_bin_get_isodesc.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.5)
  %cmp131.not = icmp eq i32 %length.5, 0
  %flag_data150 = getelementptr inbounds %struct.mon_bin_hdr, ptr %add.ptr.i, i32 0, i32 7
  br i1 %cmp131.not, label %if.else149, label %if.then133

if.then133:                                       ; preds = %if.end130
  %141 = ptrtoint ptr %flag_data150 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %flag_data150, align 1
  %num_sgs.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 18
  %142 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_sgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i312 = icmp eq i32 %143, 0
  br i1 %cmp.i312, label %if.then.i313, label %if.else.i318

if.then.i313:                                     ; preds = %if.then133
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %144 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %transfer_buffer.i, align 4
  %cmp1.i = icmp eq ptr %145, null
  br i1 %cmp1.i, label %if.then.i313.cleanup.sink.split.i321_crit_edge, label %if.then.i313.while.body.i.i_crit_edge

if.then.i313.while.body.i.i_crit_edge:            ; preds = %if.then.i313
  br label %while.body.i.i

if.then.i313.cleanup.sink.split.i321_crit_edge:   ; preds = %if.then.i313
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i321

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i313.while.body.i.i_crit_edge
  %length.addr.023.i.i = phi i32 [ %sub5.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %length.5, %if.then.i313.while.body.i.i_crit_edge ]
  %from.addr.022.i.i = phi ptr [ %add.ptr4.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %145, %if.then.i313.while.body.i.i_crit_edge ]
  %off.addr.021.i.i = phi i32 [ %spec.store.select.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %offset.1, %if.then.i313.while.body.i.i_crit_edge ]
  %and.i.i = and i32 %off.addr.021.i.i, 4095
  %sub.i.i315 = sub nuw nsw i32 4096, %and.i.i
  %146 = call i32 @llvm.umin.i32(i32 %sub.i.i315, i32 %length.addr.023.i.i) #10
  %147 = ptrtoint ptr %b_vec.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %b_vec.i, align 4
  %div19.i.i = lshr i32 %off.addr.021.i.i, 12
  %ptr.i.i = getelementptr %struct.mon_pgmap, ptr %148, i32 %div19.i.i, i32 1
  %149 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ptr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %150, i32 %and.i.i
  %151 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %from.addr.022.i.i, i32 %146)
  %add.i.i = add i32 %146, %off.addr.021.i.i
  %152 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %b_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %153)
  %cmp1.not.i.i = icmp ult i32 %add.i.i, %153
  %spec.store.select.i.i = select i1 %cmp1.not.i.i, i32 %add.i.i, i32 0
  %add.ptr4.i.i = getelementptr i8, ptr %from.addr.022.i.i, i32 %146
  %sub5.i.i = sub i32 %length.addr.023.i.i, %146
  %tobool.not.i.i = icmp eq i32 %sub5.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end151_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.if.end151_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.else.i318:                                     ; preds = %if.then133
  %154 = ptrtoint ptr %transfer_flags.i272 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %transfer_flags.i272, align 4
  %and.i317 = and i32 %155, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317)
  %tobool.not.i = icmp ne i32 %and.i317, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp881.i = icmp slt i32 %143, 1
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp881.i
  br i1 %or.cond, label %if.else.i318.cleanup.sink.split.i321_crit_edge, label %lor.lhs.false.lr.ph.i

if.else.i318.cleanup.sink.split.i321_crit_edge:   ; preds = %if.else.i318
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i321

lor.lhs.false.lr.ph.i:                            ; preds = %if.else.i318
  %sg6.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 16
  %156 = ptrtoint ptr %sg6.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sg6.i, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %mon_copy_to_buff.exit75.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.lr.ph.i
  %sg.089.i = phi ptr [ %157, %lor.lhs.false.lr.ph.i ], [ %call20.i, %mon_copy_to_buff.exit75.i.lor.lhs.false.i_crit_edge ]
  %i.087.i = phi i32 [ 0, %lor.lhs.false.lr.ph.i ], [ %inc.i, %mon_copy_to_buff.exit75.i.lor.lhs.false.i_crit_edge ]
  %offset.addr.086.i = phi i32 [ %offset.1, %lor.lhs.false.lr.ph.i ], [ %off.addr.0.lcssa.i74.i, %mon_copy_to_buff.exit75.i.lor.lhs.false.i_crit_edge ]
  %length.addr.084.i = phi i32 [ %length.5, %lor.lhs.false.lr.ph.i ], [ %sub.i319, %mon_copy_to_buff.exit75.i.lor.lhs.false.i_crit_edge ]
  %158 = ptrtoint ptr %sg.089.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %sg.089.i, align 4
  %and.i.i.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !67

do.body2.i.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !84
  unreachable

sg_page.exit.i:                                   ; preds = %lor.lhs.false.i
  %and.i52.i = and i32 %159, -4
  %160 = inttoptr i32 %and.i52.i to ptr
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %shr.i.i = lshr i32 %162, 30
  %163 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i.i, label %sg_page.exit.i.sg_virt.exit.i_crit_edge [
    i32 2, label %sg_page.exit.i.for.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

sg_page.exit.i.for.end.i_crit_edge:               ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

sg_page.exit.i.sg_virt.exit.i_crit_edge:          ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sg_virt.exit.i

is_highmem_idx.exit.i:                            ; preds = %sg_page.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %164 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %164)
  %cmp2.i.not.i = icmp eq i32 %164, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.for.end.i_crit_edge, label %is_highmem_idx.exit.i.sg_virt.exit.i_crit_edge

is_highmem_idx.exit.i.sg_virt.exit.i_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sg_virt.exit.i

is_highmem_idx.exit.i.for.end.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

sg_virt.exit.i:                                   ; preds = %is_highmem_idx.exit.i.sg_virt.exit.i_crit_edge, %sg_page.exit.i.sg_virt.exit.i_crit_edge
  %length16.i = getelementptr inbounds %struct.scatterlist, ptr %sg.089.i, i32 0, i32 2
  %165 = ptrtoint ptr %length16.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %length16.i, align 4
  %167 = call i32 @llvm.umin.i32(i32 %166, i32 %length.addr.084.i) #10
  %call1.i.i = call ptr @page_address(ptr noundef %160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not20.i55.i = icmp eq i32 %167, 0
  br i1 %tobool.not20.i55.i, label %sg_virt.exit.i.mon_copy_to_buff.exit75.i_crit_edge, label %while.body.lr.ph.i58.i

sg_virt.exit.i.mon_copy_to_buff.exit75.i_crit_edge: ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_copy_to_buff.exit75.i

while.body.lr.ph.i58.i:                           ; preds = %sg_virt.exit.i
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.089.i, i32 0, i32 1
  %168 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %call1.i.i, i32 %169
  br label %while.body.i73.i

while.body.i73.i:                                 ; preds = %while.body.i73.i.while.body.i73.i_crit_edge, %while.body.lr.ph.i58.i
  %length.addr.023.i59.i = phi i32 [ %167, %while.body.lr.ph.i58.i ], [ %sub5.i71.i, %while.body.i73.i.while.body.i73.i_crit_edge ]
  %from.addr.022.i60.i = phi ptr [ %add.ptr.i54.i, %while.body.lr.ph.i58.i ], [ %add.ptr4.i70.i, %while.body.i73.i.while.body.i73.i_crit_edge ]
  %off.addr.021.i61.i = phi i32 [ %offset.addr.086.i, %while.body.lr.ph.i58.i ], [ %spec.store.select.i69.i, %while.body.i73.i.while.body.i73.i_crit_edge ]
  %and.i62.i = and i32 %off.addr.021.i61.i, 4095
  %sub.i63.i = sub nuw nsw i32 4096, %and.i62.i
  %170 = call i32 @llvm.umin.i32(i32 %sub.i63.i, i32 %length.addr.023.i59.i) #10
  %171 = ptrtoint ptr %b_vec.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %b_vec.i, align 4
  %div19.i64.i = lshr i32 %off.addr.021.i61.i, 12
  %ptr.i65.i = getelementptr %struct.mon_pgmap, ptr %172, i32 %div19.i64.i, i32 1
  %173 = ptrtoint ptr %ptr.i65.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ptr.i65.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %174, i32 %and.i62.i
  %175 = call ptr @memcpy(ptr %add.ptr.i66.i, ptr %from.addr.022.i60.i, i32 %170)
  %add.i67.i = add i32 %170, %off.addr.021.i61.i
  %176 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %b_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i67.i, i32 %177)
  %cmp1.not.i68.i = icmp ult i32 %add.i67.i, %177
  %spec.store.select.i69.i = select i1 %cmp1.not.i68.i, i32 %add.i67.i, i32 0
  %add.ptr4.i70.i = getelementptr i8, ptr %from.addr.022.i60.i, i32 %170
  %sub5.i71.i = sub i32 %length.addr.023.i59.i, %170
  %tobool.not.i72.i = icmp eq i32 %sub5.i71.i, 0
  br i1 %tobool.not.i72.i, label %while.body.i73.i.mon_copy_to_buff.exit75.i_crit_edge, label %while.body.i73.i.while.body.i73.i_crit_edge

while.body.i73.i.while.body.i73.i_crit_edge:      ; preds = %while.body.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i73.i

while.body.i73.i.mon_copy_to_buff.exit75.i_crit_edge: ; preds = %while.body.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_copy_to_buff.exit75.i

mon_copy_to_buff.exit75.i:                        ; preds = %while.body.i73.i.mon_copy_to_buff.exit75.i_crit_edge, %sg_virt.exit.i.mon_copy_to_buff.exit75.i_crit_edge
  %off.addr.0.lcssa.i74.i = phi i32 [ %offset.addr.086.i, %sg_virt.exit.i.mon_copy_to_buff.exit75.i_crit_edge ], [ %spec.store.select.i69.i, %while.body.i73.i.mon_copy_to_buff.exit75.i_crit_edge ]
  %sub.i319 = sub i32 %length.addr.084.i, %167
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %call20.i = call ptr @sg_next(ptr noundef %sg.089.i) #10
  %178 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %num_sgs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %179)
  %cmp8.i = icmp sge i32 %inc.i, %179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i319)
  %cmp9.i = icmp eq i32 %sub.i319, 0
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %mon_bin_get_data.exit, label %mon_copy_to_buff.exit75.i.lor.lhs.false.i_crit_edge

mon_copy_to_buff.exit75.i.lor.lhs.false.i_crit_edge: ; preds = %mon_copy_to_buff.exit75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %is_highmem_idx.exit.i.for.end.i_crit_edge, %sg_page.exit.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.087.i)
  %cmp21.i = icmp eq i32 %i.087.i, 0
  br i1 %cmp21.i, label %for.end.i.cleanup.sink.split.i321_crit_edge, label %for.end.i.if.then137_crit_edge

for.end.i.if.then137_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

for.end.i.cleanup.sink.split.i321_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i321

cleanup.sink.split.i321:                          ; preds = %for.end.i.cleanup.sink.split.i321_crit_edge, %if.else.i318.cleanup.sink.split.i321_crit_edge, %if.then.i313.cleanup.sink.split.i321_crit_edge
  %.sink.i = phi i8 [ 90, %if.then.i313.cleanup.sink.split.i321_crit_edge ], [ 68, %if.else.i318.cleanup.sink.split.i321_crit_edge ], [ 68, %for.end.i.cleanup.sink.split.i321_crit_edge ]
  %retval.0.ph.i320 = phi i32 [ %length.5, %if.then.i313.cleanup.sink.split.i321_crit_edge ], [ %length.5, %if.else.i318.cleanup.sink.split.i321_crit_edge ], [ %length.addr.084.i, %for.end.i.cleanup.sink.split.i321_crit_edge ]
  %180 = ptrtoint ptr %flag_data150 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %.sink.i, ptr %flag_data150, align 1
  br label %if.then137

mon_bin_get_data.exit:                            ; preds = %mon_copy_to_buff.exit75.i
  br i1 %cmp9.i, label %mon_bin_get_data.exit.if.end151_crit_edge, label %mon_bin_get_data.exit.if.then137_crit_edge

mon_bin_get_data.exit.if.then137_crit_edge:       ; preds = %mon_bin_get_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then137

mon_bin_get_data.exit.if.end151_crit_edge:        ; preds = %mon_bin_get_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then137:                                       ; preds = %mon_bin_get_data.exit.if.then137_crit_edge, %cleanup.sink.split.i321, %for.end.i.if.then137_crit_edge
  %retval.0.i322335 = phi i32 [ %sub.i319, %mon_bin_get_data.exit.if.then137_crit_edge ], [ %retval.0.ph.i320, %cleanup.sink.split.i321 ], [ %length.addr.084.i, %for.end.i.if.then137_crit_edge ]
  %181 = ptrtoint ptr %len_cap to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %len_cap, align 4
  %sub140 = add i32 %182, 63
  %and = and i32 %sub140, -64
  %sub142 = sub i32 %182, %retval.0.i322335
  store i32 %sub142, ptr %len_cap, align 4
  %sub145 = add i32 %sub142, 63
  %and146 = and i32 %sub145, -64
  %sub147 = sub i32 %and, %and146
  %b_cnt.i323 = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 2
  %183 = ptrtoint ptr %b_cnt.i323 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %b_cnt.i323, align 4
  %sub.i324 = sub i32 %184, %sub147
  store i32 %sub.i324, ptr %b_cnt.i323, align 4
  %b_in.i325 = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 3
  %185 = ptrtoint ptr %b_in.i325 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %b_in.i325, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %sub147)
  %cmp.i326 = icmp ult i32 %186, %sub147
  br i1 %cmp.i326, label %if.then.i329, label %if.then137.mon_buff_area_shrink.exit_crit_edge

if.then137.mon_buff_area_shrink.exit_crit_edge:   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #12
  br label %mon_buff_area_shrink.exit

if.then.i329:                                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %b_size, align 4
  %add.i328 = add i32 %188, %186
  %189 = ptrtoint ptr %b_in.i325 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %add.i328, ptr %b_in.i325, align 4
  br label %mon_buff_area_shrink.exit

mon_buff_area_shrink.exit:                        ; preds = %if.then.i329, %if.then137.mon_buff_area_shrink.exit_crit_edge
  %190 = ptrtoint ptr %b_in.i325 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %b_in.i325, align 4
  %sub3.i = sub i32 %191, %sub147
  store i32 %sub3.i, ptr %b_in.i325, align 4
  br label %if.end151

if.else149:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %flag_data150 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %data_tag.2, ptr %flag_data150, align 1
  br label %if.end151

if.end151:                                        ; preds = %if.else149, %mon_buff_area_shrink.exit, %mon_bin_get_data.exit.if.end151_crit_edge, %while.body.i.i.if.end151_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rp, i32 noundef %call3) #10
  %b_wait = getelementptr inbounds %struct.mon_reader_bin, ptr %rp, i32 0, i32 7
  call void @__wake_up(ptr noundef %b_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %if.then68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mon_reader_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mon/mon_bin.c", i32 1361, i32 8}
!2 = !{ptr @mon_bin_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/usb/mon/mon_bin.c", i32 1378, i32 18}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mon_bin_class, !6, !"mon_bin_class", i1 false, i1 false}
!6 = !{!"../drivers/usb/mon/mon_bin.c", i32 216, i32 22}
!7 = !{ptr @mon_bin_dev0, !8, !"mon_bin_dev0", i1 false, i1 false}
!8 = !{!"../drivers/usb/mon/mon_bin.c", i32 217, i32 14}
!9 = !{ptr @mon_bin_cdev, !10, !"mon_bin_cdev", i1 false, i1 false}
!10 = !{!"../drivers/usb/mon/mon_bin.c", i32 218, i32 20}
!11 = !{ptr @mon_fops_binary, !12, !"mon_fops_binary", i1 false, i1 false}
!12 = !{!"../drivers/usb/mon/mon_bin.c", i32 1277, i32 37}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/usb/mon/mon_bin.c", i32 1298, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/usb/mon/mon_bin.c", i32 1305, i32 4}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/usb/mon/mon_bin.c", i32 1314, i32 3}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/usb/mon/mon_bin.c", i32 1320, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!29 = !{ptr @mon_bin_vm_ops, !30, !"mon_bin_vm_ops", i1 false, i1 false}
!30 = !{!"../drivers/usb/mon/mon_bin.c", i32 1261, i32 42}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/mon/mon_bin.c", i32 687, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mon_bin_open._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mon_bin_open._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mon_bin_open.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/usb/mon/mon_bin.c", i32 697, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mon_bin_open.__key.13, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/usb/mon/mon_bin.c", i32 698, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mon_bin_open.__key.15, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/usb/mon/mon_bin.c", i32 699, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @xfer_to_pipe, !48, !"xfer_to_pipe", i1 false, i1 false}
!48 = !{!"../drivers/usb/mon/mon_bin.c", i32 212, i32 22}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/mon/mon_bin.c", i32 786, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mon_bin_release._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mon_bin_release._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2150585024, i64 2150585049}
!65 = !{!"auto-init"}
!66 = !{i64 2150584343, i64 2150584368}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 3079898}
!69 = !{i64 3080095}
!70 = !{i64 2150565328}
!71 = !{i64 2154446712, i64 2154446992, i64 2154447326, i64 2154447660}
!72 = !{i64 2154430436, i64 2154430716, i64 2154431050, i64 2154431384}
!73 = !{i64 2154455539, i64 2154455819, i64 2154456153, i64 2154456487}
!74 = !{i64 2154465604, i64 2154465884, i64 2154466218, i64 2154466552}
!75 = !{i64 2154474429, i64 2154474709, i64 2154475043, i64 2154475377}
!76 = !{i64 2154483653}
!77 = !{i64 2154488769}
!78 = !{i64 2154493556}
!79 = !{i64 2154498641}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2154263429, i64 2154263913, i64 2154263466, i64 2154263522, i64 2154263556, i64 2154263580, i64 2154263621, i64 2154263642, i64 2154263670, i64 2154263704}
!82 = !{i64 2148242015, i64 2148242041, i64 2148242070, i64 2148242104, i64 2148242135, i64 2148242158}
!83 = !{i64 2148723830, i64 2148723835, i64 2148723848, i64 2148723892, i64 2148723926, i64 2148723947}
!84 = !{i64 2154401898, i64 2154402390, i64 2154401935, i64 2154401991, i64 2154402025, i64 2154402049, i64 2154402090, i64 2154402111, i64 2154402139, i64 2154402173}
