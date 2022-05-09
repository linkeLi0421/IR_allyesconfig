; ModuleID = '/llk/IR_all_yes/drivers/misc/uacce/uacce.c_pt.bc'
source_filename = "../drivers/misc/uacce/uacce.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+uacce_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_uacce_alloc\09\09\09\09"
module asm "\09.long\09__crc_uacce_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uacce_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22uacce_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_uacce_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+uacce_register\22, \22a\22\09"
module asm "\09.weak\09__crc_uacce_register\09\09\09\09"
module asm "\09.long\09__crc_uacce_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uacce_register:\09\09\09\09\09"
module asm "\09.asciz \09\22uacce_register\22\09\09\09\09\09"
module asm "__kstrtabns_uacce_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+uacce_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_uacce_remove\09\09\09\09"
module asm "\09.long\09__crc_uacce_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uacce_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22uacce_remove\22\09\09\09\09\09"
module asm "__kstrtabns_uacce_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uacce_interface = type { [64 x i8], i32, ptr }
%struct.uacce_device = type { ptr, ptr, ptr, [2 x i32], ptr, i8, i32, i32, ptr, %struct.device, ptr, %struct.list_head, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.uacce_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.uacce_queue = type { ptr, ptr, %struct.wait_queue_head, %struct.list_head, [2 x ptr], i32, i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
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

@uacce_xa = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, [44 x i8] zeroinitializer }, align 32
@uacce_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&uacce->queues_lock\00", [44 x i8] zeroinitializer }, align 32
@uacce_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@uacce_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@uacce_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uacce_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_uacce_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_uacce_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_uacce_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uacce_alloc to i32), ptr @__kstrtab_uacce_alloc, ptr @__kstrtabns_uacce_alloc }, section "___ksymtab_gpl+uacce_alloc", align 4
@uacce_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uacce_fops_poll, ptr @uacce_fops_unl_ioctl, ptr null, ptr @uacce_fops_mmap, i32 0, ptr @uacce_fops_open, ptr null, ptr @uacce_fops_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_uacce_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_uacce_register = external dso_local constant [0 x i8], align 1
@__ksymtab_uacce_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uacce_register to i32), ptr @__kstrtab_uacce_register, ptr @__kstrtabns_uacce_register }, section "___ksymtab_gpl+uacce_register", align 4
@__kstrtab_uacce_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_uacce_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_uacce_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uacce_remove to i32), ptr @__kstrtab_uacce_remove, ptr @__kstrtabns_uacce_remove }, section "___ksymtab_gpl+uacce_remove", align 4
@__initcall__kmod_uacce__232_549_uacce_init4 = internal global ptr @uacce_init, section ".initcall4.init", align 4
@__exitcall_uacce_exit = internal global ptr @uacce_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [36 x i8] c"uacce.file=drivers/misc/uacce/uacce\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [18 x i8] c"uacce.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [39 x i8] c"uacce.author=HiSilicon Tech. Co., Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [66 x i8] c"uacce.description=Accelerator interface for Userland applications\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uacce_enable_sva._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to enable IOPF feature! ret = %pe\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uacce_enable_sva\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/misc/uacce/uacce.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uacce_enable_sva._entry_ptr = internal global ptr @uacce_enable_sva._entry, section ".printk_index", align 4
@uacce_enable_sva._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to enable SVA feature! ret = %pe\0A\00", [55 x i8] zeroinitializer }, align 32
@uacce_enable_sva._entry_ptr.9 = internal global ptr @uacce_enable_sva._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uacce_xa.xa_lock\00", [47 x i8] zeroinitializer }, align 32
@uacce_dev_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @uacce_dev_is_visible, ptr null, ptr @uacce_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@uacce_dev_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_api, ptr @dev_attr_flags, ptr @dev_attr_available_instances, ptr @dev_attr_algorithms, ptr @dev_attr_region_mmio_size, ptr @dev_attr_region_dus_size, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_region_mmio_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @region_mmio_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_region_dus_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @region_dus_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"region_mmio_size\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"region_dus_size\00", [16 x i8] zeroinitializer }, align 32
@dev_attr_api = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @api_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flags = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @flags_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_instances = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_instances_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_algorithms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @algorithms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"api\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"available_instances\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"algorithms\00", [21 x i8] zeroinitializer }, align 32
@uacce_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @uacce_mutex, i64 52), ptr getelementptr (i8, ptr @uacce_mutex, i64 52) }, ptr @uacce_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uacce_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uacce_mutex\00", [20 x i8] zeroinitializer }, align 32
@uacce_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr @uacce_vma_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uacce_fops_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->wait\00", [23 x i8] zeroinitializer }, align 32
@uacce_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uacce\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 22272, i64 22273]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"uacce_xa\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 453, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"uacce_devt\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 11, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"uacce_class\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 10, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"uacce_dev_groups\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 379, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 460, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"uacce_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 273, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 399, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 405, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 13, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"uacce_dev_group\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 374, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"uacce_dev_attrs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 349, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"dev_attr_region_mmio_size\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [25 x i8] c"dev_attr_region_dus_size\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 346, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 329, i32 25 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 347, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"dev_attr_api\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"dev_attr_flags\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [29 x i8] c"dev_attr_available_instances\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"dev_attr_algorithms\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 342, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 292, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 343, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 300, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 344, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 312, i32 25 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 345, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"uacce_mutex\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 12, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"uacce_vm_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 194, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 151, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [30 x i8] c"../drivers/misc/uacce/uacce.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 532, i32 16 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_uacce_exit, ptr @__initcall__kmod_uacce__232_549_uacce_init4, ptr @__ksymtab_uacce_alloc, ptr @__ksymtab_uacce_register, ptr @__ksymtab_uacce_remove, ptr @uacce_enable_sva._entry, ptr @uacce_enable_sva._entry.7, ptr @uacce_enable_sva._entry_ptr, ptr @uacce_enable_sva._entry_ptr.9, ptr @uacce_exit, ptr @uacce_xa, ptr @uacce_alloc.__key, ptr @.str, ptr @uacce_devt, ptr @uacce_class, ptr @uacce_dev_groups, ptr @.str.1, ptr @uacce_fops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @uacce_dev_group, ptr @uacce_dev_attrs, ptr @dev_attr_region_mmio_size, ptr @dev_attr_region_dus_size, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @dev_attr_api, ptr @dev_attr_flags, ptr @dev_attr_available_instances, ptr @dev_attr_algorithms, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @uacce_mutex, ptr @.str.21, ptr @.str.22, ptr @uacce_vm_ops, ptr @uacce_fops_open.__key, ptr @.str.23, ptr @uacce_init.__key, ptr @.str.24], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_xa to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_enable_sva._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_enable_sva._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_dev_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_region_mmio_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_region_dus_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_api to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flags to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_instances to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_algorithms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_fops_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uacce_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uacce_alloc(ptr noundef %parent, ptr noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.uacce_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1080) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.uacce_enable_sva.exit_crit_edge, label %if.end.i

if.end.uacce_enable_sva.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_enable_sva.exit

if.end.i:                                         ; preds = %if.end
  %and1.i = and i32 %1, -2
  %call.i = tail call i32 @iommu_dev_enable_feature(ptr noundef %parent, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = inttoptr i32 %call.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #11
  br label %uacce_enable_sva.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @iommu_dev_enable_feature(ptr noundef %parent, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end14.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = inttoptr i32 %call6.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #11
  %call13.i = tail call i32 @iommu_dev_disable_feature(ptr noundef %parent, i32 noundef 2) #7
  br label %uacce_enable_sva.exit

if.end14.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %1, 1
  br label %uacce_enable_sva.exit

uacce_enable_sva.exit:                            ; preds = %if.end14.i, %do.end11.i, %do.end.i, %if.end.uacce_enable_sva.exit_crit_edge
  %retval.0.i = phi i32 [ %and1.i, %do.end.i ], [ %and1.i, %do.end11.i ], [ %or.i, %if.end14.i ], [ %1, %if.end.uacce_enable_sva.exit_crit_edge ]
  %parent4 = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %parent4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent, ptr %parent4, align 4
  %flags5 = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %flags5, align 4
  %ops = getelementptr inbounds %struct.uacce_interface, ptr %interface, i32 0, i32 2
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %ops6 = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ops6, align 8
  %dev_id = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef nonnull @uacce_xa) #7
  %call.i49 = tail call i32 @__xa_alloc(ptr noundef nonnull @uacce_xa, ptr noundef %dev_id, ptr noundef nonnull %call7.i.i, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @uacce_xa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp = icmp slt i32 %call.i49, 0
  br i1 %cmp, label %err_with_uacce, label %if.end9

if.end9:                                          ; preds = %uacce_enable_sva.exit
  call void @__sanitizer_cov_trace_pc() #9
  %queues = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %queues, ptr %queues, align 4
  %prev.i = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queues, ptr %prev.i, align 8
  %queues_lock = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %queues_lock, ptr noundef nonnull @.str, ptr noundef nonnull @uacce_alloc.__key) #7
  %dev = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 9
  tail call void @device_initialize(ptr noundef %dev) #7
  %12 = load i32, ptr @uacce_devt, align 4
  %shr = and i32 %12, -1048576
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_id, align 8
  %or = or i32 %shr, %14
  %devt = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 9, i32 29
  %15 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %devt, align 8
  %16 = load ptr, ptr @uacce_class, align 4
  %class = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 9, i32 33
  %17 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %class, align 4
  %groups = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 9, i32 34
  %18 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @uacce_dev_groups, ptr %groups, align 8
  %19 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent4, align 4
  %parent16 = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %parent16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %parent16, align 8
  %release = getelementptr inbounds %struct.uacce_device, ptr %call7.i.i, i32 0, i32 9, i32 35
  %22 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @uacce_release, ptr %release, align 4
  %call20 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %interface, i32 noundef %14) #7
  br label %cleanup

err_with_uacce:                                   ; preds = %uacce_enable_sva.exit
  %23 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags5, align 4
  %and.i50 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i51, label %err_with_uacce.uacce_disable_sva.exit_crit_edge, label %if.end.i53

err_with_uacce.uacce_disable_sva.exit_crit_edge:  ; preds = %err_with_uacce
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_disable_sva.exit

if.end.i53:                                       ; preds = %err_with_uacce
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent4, align 4
  %call.i52 = tail call i32 @iommu_dev_disable_feature(ptr noundef %26, i32 noundef 1) #7
  %27 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent4, align 4
  %call2.i = tail call i32 @iommu_dev_disable_feature(ptr noundef %28, i32 noundef 2) #7
  br label %uacce_disable_sva.exit

uacce_disable_sva.exit:                           ; preds = %if.end.i53, %err_with_uacce.uacce_disable_sva.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %29 = inttoptr i32 %call.i49 to ptr
  br label %cleanup

cleanup:                                          ; preds = %uacce_disable_sva.exit, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %uacce_disable_sva.exit ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uacce_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uacce_register(ptr noundef %uacce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %uacce, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @cdev_alloc() #7
  %cdev = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 8
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %cdev, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.cdev, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @uacce_fops, ptr %ops, align 4
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %owner = getelementptr inbounds %struct.cdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner, align 4
  %5 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 9
  %call8 = tail call i32 @cdev_device_add(ptr noundef %5, ptr noundef %dev) #7
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end4 ], [ -19, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uacce_remove(ptr noundef %uacce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %uacce, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %inode = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 13
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  tail call void @unmap_mapping_range(ptr noundef %3, i64 noundef 0, i64 noundef 0, i32 noundef 1) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %queues_lock = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %queues_lock, i32 noundef 0) #7
  %queues = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 11
  %4 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queues, align 4
  %cmp.not45 = icmp eq ptr %5, %queues
  br i1 %cmp.not45, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %uacce_unbind_queue.exit.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn.in46 = phi ptr [ %.pn, %uacce_unbind_queue.exit.for.body_crit_edge ], [ %5, %if.end4.for.body_crit_edge ]
  %q.0 = getelementptr i8, ptr %.pn.in46, i32 -60
  %6 = ptrtoint ptr %.pn.in46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in46, align 4
  %7 = ptrtoint ptr %q.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %q.0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @uacce_mutex, i32 noundef 0) #7
  %state.i = getelementptr i8, ptr %.pn.in46, i32 16
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %for.body.if.end7.i_crit_edge [
    i32 0, label %for.body.uacce_put_queue.exit_crit_edge
    i32 2, label %land.lhs.true.i
  ]

for.body.uacce_put_queue.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_put_queue.exit

for.body.if.end7.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %for.body
  %ops.i = getelementptr inbounds %struct.uacce_device, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 8
  %stop_queue.i = getelementptr inbounds %struct.uacce_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %stop_queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop_queue.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %q.0) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end7.i_crit_edge, %for.body.if.end7.i_crit_edge
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true12.i, label %if.end7.i.if.end18.i_crit_edge

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end7.i
  %ops13.i = getelementptr inbounds %struct.uacce_device, ptr %8, i32 0, i32 2
  %18 = ptrtoint ptr %ops13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops13.i, align 8
  %put_queue.i = getelementptr inbounds %struct.uacce_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %put_queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %put_queue.i, align 4
  %tobool14.not.i = icmp eq ptr %21, null
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.end18.i_crit_edge, label %if.then15.i

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then15.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %21(ptr noundef %q.0) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %land.lhs.true12.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state.i, align 4
  br label %uacce_put_queue.exit

uacce_put_queue.exit:                             ; preds = %if.end18.i, %for.body.uacce_put_queue.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uacce_mutex) #7
  %handle.i = getelementptr i8, ptr %.pn.in46, i32 24
  %23 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle.i, align 4
  %tobool.not.i42 = icmp eq ptr %24, null
  br i1 %tobool.not.i42, label %uacce_put_queue.exit.uacce_unbind_queue.exit_crit_edge, label %if.end.i

uacce_put_queue.exit.uacce_unbind_queue.exit_crit_edge: ; preds = %uacce_put_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_unbind_queue.exit

if.end.i:                                         ; preds = %uacce_put_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iommu_sva_unbind_device(ptr noundef nonnull %24) #7
  %25 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %handle.i, align 4
  br label %uacce_unbind_queue.exit

uacce_unbind_queue.exit:                          ; preds = %if.end.i, %uacce_put_queue.exit.uacce_unbind_queue.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %queues
  br i1 %cmp.not, label %uacce_unbind_queue.exit.for.end_crit_edge, label %uacce_unbind_queue.exit.for.body_crit_edge

uacce_unbind_queue.exit.for.body_crit_edge:       ; preds = %uacce_unbind_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

uacce_unbind_queue.exit.for.end_crit_edge:        ; preds = %uacce_unbind_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %uacce_unbind_queue.exit.for.end_crit_edge, %if.end4.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %queues_lock) #7
  %flags.i = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i43 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i43, label %for.end.uacce_disable_sva.exit_crit_edge, label %if.end.i44

for.end.uacce_disable_sva.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_disable_sva.exit

if.end.i44:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 4
  %28 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i, align 4
  %call.i = tail call i32 @iommu_dev_disable_feature(ptr noundef %29, i32 noundef 1) #7
  %30 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i, align 4
  %call2.i = tail call i32 @iommu_dev_disable_feature(ptr noundef %31, i32 noundef 2) #7
  br label %uacce_disable_sva.exit

uacce_disable_sva.exit:                           ; preds = %if.end.i44, %for.end.uacce_disable_sva.exit_crit_edge
  %cdev = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 8
  %32 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cdev, align 4
  %tobool17.not = icmp eq ptr %33, null
  br i1 %tobool17.not, label %uacce_disable_sva.exit.if.end20_crit_edge, label %if.then18

uacce_disable_sva.exit.if.end20_crit_edge:        ; preds = %uacce_disable_sva.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %uacce_disable_sva.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 9
  tail call void @cdev_device_del(ptr noundef nonnull %33, ptr noundef %dev) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %uacce_disable_sva.exit.if.end20_crit_edge
  %dev_id = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 7
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev_id, align 8
  %call21 = tail call ptr @xa_erase(ptr noundef nonnull @uacce_xa, i32 noundef %35) #7
  %dev22 = getelementptr inbounds %struct.uacce_device, ptr %uacce, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uacce_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @uacce_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048575) #7
  %1 = load ptr, ptr @uacce_class, align 4
  tail call void @class_destroy(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uacce_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @uacce_init.__key) #7
  store ptr %call, ptr @uacce_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @uacce_devt, i32 noundef 0, i32 noundef 1048575, ptr noundef nonnull @.str.24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load ptr, ptr @uacce_class, align 4
  tail call void @class_destroy(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_dev_enable_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_dev_disable_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @uacce_dev_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_region_mmio_size
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %qf_pg_num = getelementptr i8, ptr %kobj, i32 -28
  %0 = ptrtoint ptr %qf_pg_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qf_pg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq ptr %attr, @dev_attr_region_dus_size
  br i1 %cmp1, label %land.lhs.true2, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr i8, ptr %kobj, i32 -24
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end ], [ 0, %land.lhs.true2.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @region_mmio_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qf_pg_num = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %qf_pg_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qf_pg_num, align 4
  %shl = shl i32 %1, 12
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %shl) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @region_dus_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %1, 12
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %shl) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %api_ver = getelementptr i8, ptr %dev, i32 -36
  %0 = ptrtoint ptr %api_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %api_ver, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flags_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_instances_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 -32
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  %call = tail call i32 %3(ptr noundef %add.ptr) #7
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @algorithms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uacce_fops_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %wait2 = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wait2, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait2, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %ops = getelementptr inbounds %struct.uacce_device, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 8
  %is_q_updated = getelementptr inbounds %struct.uacce_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %is_q_updated to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_q_updated, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %poll_wait.exit.if.end_crit_edge, label %land.lhs.true

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %poll_wait.exit
  %call = tail call i32 %9(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %poll_wait.exit.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 65, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uacce_fops_unl_ioctl(ptr nocapture noundef readonly %filep, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %sw.default [
    i32 22272, label %sw.bb
    i32 22273, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @uacce_mutex, i32 noundef 0) #7
  %state.i = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.uacce_start_queue.exit_crit_edge

sw.bb.uacce_start_queue.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_start_queue.exit

if.end.i:                                         ; preds = %sw.bb
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %ops.i = getelementptr inbounds %struct.uacce_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 8
  %start_queue.i = getelementptr inbounds %struct.uacce_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %start_queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %start_queue.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then1.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then1.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 %10(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.then1.i.uacce_start_queue.exit_crit_edge, label %if.then1.i.if.end8.i_crit_edge

if.then1.i.if.end8.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then1.i.uacce_start_queue.exit_crit_edge:      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_start_queue.exit

if.end8.i:                                        ; preds = %if.then1.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then1.i.if.end8.i_crit_edge ], [ 0, %if.end.i.if.end8.i_crit_edge ]
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %state.i, align 4
  br label %uacce_start_queue.exit

uacce_start_queue.exit:                           ; preds = %if.end8.i, %if.then1.i.uacce_start_queue.exit_crit_edge, %sw.bb.uacce_start_queue.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i, %if.then1.i.uacce_start_queue.exit_crit_edge ], [ %ret.0.i, %if.end8.i ], [ -22, %sw.bb.uacce_start_queue.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uacce_mutex) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @uacce_mutex, i32 noundef 0) #7
  %state.i13 = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %state.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i13, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %15, label %sw.bb2.if.end7.i_crit_edge [
    i32 0, label %sw.bb2.uacce_put_queue.exit_crit_edge
    i32 2, label %land.lhs.true.i
  ]

sw.bb2.uacce_put_queue.exit_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_put_queue.exit

sw.bb2.if.end7.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %sw.bb2
  %ops.i14 = getelementptr inbounds %struct.uacce_device, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %ops.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i14, align 8
  %stop_queue.i = getelementptr inbounds %struct.uacce_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %stop_queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stop_queue.i, align 4
  %tobool.not.i15 = icmp eq ptr %20, null
  br i1 %tobool.not.i15, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %20(ptr noundef %1) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end7.i_crit_edge, %sw.bb2.if.end7.i_crit_edge
  %21 = ptrtoint ptr %state.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i13, align 4
  %.off.i = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true12.i, label %if.end7.i.if.end18.i_crit_edge

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end7.i
  %ops13.i = getelementptr inbounds %struct.uacce_device, ptr %13, i32 0, i32 2
  %23 = ptrtoint ptr %ops13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops13.i, align 8
  %put_queue.i = getelementptr inbounds %struct.uacce_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %put_queue.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %put_queue.i, align 4
  %tobool14.not.i = icmp eq ptr %26, null
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.end18.i_crit_edge, label %if.then15.i

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then15.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %26(ptr noundef %1) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %land.lhs.true12.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %27 = ptrtoint ptr %state.i13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state.i13, align 4
  br label %uacce_put_queue.exit

uacce_put_queue.exit:                             ; preds = %if.end18.i, %sw.bb2.uacce_put_queue.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uacce_mutex) #7
  br label %cleanup

sw.default:                                       ; preds = %entry
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.uacce_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 8
  %ioctl = getelementptr inbounds %struct.uacce_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioctl, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %sw.default.cleanup_crit_edge, label %if.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 %33(ptr noundef %1, i32 noundef %cmd, i32 noundef %arg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.default.cleanup_crit_edge, %uacce_put_queue.exit, %uacce_start_queue.exit
  %retval.0 = phi i32 [ %call6, %if.end ], [ 0, %uacce_put_queue.exit ], [ %ret.1.i, %uacce_start_queue.exit ], [ -22, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uacce_fops_mmap(ptr nocapture noundef readonly %filep, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.then
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %7 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_flags, align 4
  %or = or i32 %8, 33947648
  store i32 %or, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %9 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uacce_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %10 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %vm_private_data, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %call7.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @uacce_mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %.off = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch52 = icmp ult i32 %.off, 2
  br i1 %switch52, label %if.end10, label %if.end4.out_with_lock_crit_edge

if.end4.out_with_lock_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_with_lock

if.end10:                                         ; preds = %if.end4
  %arrayidx = getelementptr %struct.uacce_queue, ptr %1, i32 0, i32 4, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %sw.bb, label %if.end10.out_with_lock_crit_edge

if.end10.out_with_lock_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_with_lock

sw.bb:                                            ; preds = %if.end10
  %ops = getelementptr inbounds %struct.uacce_device, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 8
  %mmap = getelementptr inbounds %struct.uacce_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmap, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %sw.bb.out_with_lock_crit_edge, label %if.end16

sw.bb.out_with_lock_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_with_lock

if.end16:                                         ; preds = %sw.bb
  %call19 = tail call i32 %19(ptr noundef %1, ptr noundef %vma, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %sw.epilog, label %if.end16.out_with_lock_crit_edge

if.end16.out_with_lock_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_with_lock

sw.epilog:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @uacce_mutex) #7
  br label %cleanup

out_with_lock:                                    ; preds = %if.end16.out_with_lock_crit_edge, %sw.bb.out_with_lock_crit_edge, %if.end10.out_with_lock_crit_edge, %if.end4.out_with_lock_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end16.out_with_lock_crit_edge ], [ -22, %if.end4.out_with_lock_crit_edge ], [ -17, %if.end10.out_with_lock_crit_edge ], [ -22, %sw.bb.out_with_lock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uacce_mutex) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_with_lock, %sw.epilog, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_with_lock ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uacce_fops_open(ptr noundef %inode, ptr nocapture noundef writeonly %filep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @xa_load(ptr noundef nonnull @uacce_xa, i32 noundef %and.i) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 88) #10
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.uacce_device, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i45 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i, label %if.end5.if.end9_crit_edge, label %if.end.i

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i:                                         ; preds = %if.end5
  %parent.i = getelementptr inbounds %struct.uacce_device, ptr %call1, i32 0, i32 4
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !87) #7
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mm.i, align 8
  %call1.i = tail call ptr @iommu_sva_bind_device(ptr noundef %6, ptr noundef %12, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uacce_bind_queue.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @iommu_sva_get_pasid(ptr noundef %call1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp.i = icmp eq i32 %call6.i, -1
  br i1 %cmp.i, label %uacce_bind_queue.exit.thread50, label %if.end8.i

uacce_bind_queue.exit.thread50:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iommu_sva_unbind_device(ptr noundef %call1.i) #7
  br label %out_with_mem

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %handle9.i = getelementptr inbounds %struct.uacce_queue, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %handle9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1.i, ptr %handle9.i, align 4
  %pasid10.i = getelementptr inbounds %struct.uacce_queue, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %pasid10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call6.i, ptr %pasid10.i, align 8
  br label %if.end9

uacce_bind_queue.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call1.i to i32
  br label %out_with_mem

if.end9:                                          ; preds = %if.end8.i, %if.end5.if.end9_crit_edge
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1, ptr %call7.i.i, align 8
  %ops = getelementptr inbounds %struct.uacce_device, ptr %call1, i32 0, i32 2
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 8
  %get_queue = getelementptr inbounds %struct.uacce_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %get_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_queue, align 4
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.end9.do.body_crit_edge, label %if.then12

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then12:                                        ; preds = %if.end9
  %pasid = getelementptr inbounds %struct.uacce_queue, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pasid, align 8
  %call15 = tail call i32 %20(ptr noundef nonnull %call1, i32 noundef %22, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %out_with_bond, label %if.then12.do.body_crit_edge

if.then12.do.body_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.then12.do.body_crit_edge, %if.end9.do.body_crit_edge
  %wait = getelementptr inbounds %struct.uacce_queue, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.23, ptr noundef nonnull @uacce_fops_open.__key) #7
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %23 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %private_data, align 4
  %inode19 = getelementptr inbounds %struct.uacce_device, ptr %call1, i32 0, i32 13
  %24 = ptrtoint ptr %inode19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %inode, ptr %inode19, align 8
  %state = getelementptr inbounds %struct.uacce_queue, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %state, align 4
  %queues_lock = getelementptr inbounds %struct.uacce_device, ptr %call1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %queues_lock, i32 noundef 0) #7
  %list = getelementptr inbounds %struct.uacce_queue, ptr %call7.i.i, i32 0, i32 3
  %queues = getelementptr inbounds %struct.uacce_device, ptr %call1, i32 0, i32 11
  %26 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queues, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %queues, ptr noundef %27) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_add.exit_crit_edge

do.body.list_add.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.uacce_queue, ptr %call7.i.i, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %queues, ptr %prev3.i.i, align 8
  %31 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list, ptr %queues, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %queues_lock) #7
  br label %cleanup

out_with_bond:                                    ; preds = %if.then12
  %handle.i = getelementptr inbounds %struct.uacce_queue, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handle.i, align 4
  %tobool.not.i46 = icmp eq ptr %33, null
  br i1 %tobool.not.i46, label %out_with_bond.out_with_mem_crit_edge, label %if.end.i47

out_with_bond.out_with_mem_crit_edge:             ; preds = %out_with_bond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_with_mem

if.end.i47:                                       ; preds = %out_with_bond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iommu_sva_unbind_device(ptr noundef nonnull %33) #7
  %34 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %handle.i, align 4
  br label %out_with_mem

out_with_mem:                                     ; preds = %if.end.i47, %out_with_bond.out_with_mem_crit_edge, %uacce_bind_queue.exit, %uacce_bind_queue.exit.thread50
  %ret.0 = phi i32 [ %15, %uacce_bind_queue.exit ], [ -19, %uacce_bind_queue.exit.thread50 ], [ %call15, %out_with_bond.out_with_mem_crit_edge ], [ %call15, %if.end.i47 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_with_mem, %list_add.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_with_mem ], [ 0, %list_add.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uacce_fops_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %queues_lock = getelementptr inbounds %struct.uacce_device, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %queues_lock, i32 noundef 0) #7
  %list = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %queues_lock2 = getelementptr inbounds %struct.uacce_device, ptr %13, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %queues_lock2) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @uacce_mutex, i32 noundef 0) #7
  %state.i = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %17, label %list_del.exit.if.end7.i_crit_edge [
    i32 0, label %list_del.exit.uacce_put_queue.exit_crit_edge
    i32 2, label %land.lhs.true.i
  ]

list_del.exit.uacce_put_queue.exit_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_put_queue.exit

list_del.exit.if.end7.i_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %list_del.exit
  %ops.i = getelementptr inbounds %struct.uacce_device, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 8
  %stop_queue.i = getelementptr inbounds %struct.uacce_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %stop_queue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop_queue.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %22(ptr noundef %1) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end7.i_crit_edge, %list_del.exit.if.end7.i_crit_edge
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true12.i, label %if.end7.i.if.end18.i_crit_edge

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end7.i
  %ops13.i = getelementptr inbounds %struct.uacce_device, ptr %15, i32 0, i32 2
  %25 = ptrtoint ptr %ops13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops13.i, align 8
  %put_queue.i = getelementptr inbounds %struct.uacce_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %put_queue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %put_queue.i, align 4
  %tobool14.not.i = icmp eq ptr %28, null
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.end18.i_crit_edge, label %if.then15.i

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then15.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %28(ptr noundef %1) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %land.lhs.true12.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %state.i, align 4
  br label %uacce_put_queue.exit

uacce_put_queue.exit:                             ; preds = %if.end18.i, %list_del.exit.uacce_put_queue.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uacce_mutex) #7
  %handle.i = getelementptr inbounds %struct.uacce_queue, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle.i, align 4
  %tobool.not.i8 = icmp eq ptr %31, null
  br i1 %tobool.not.i8, label %uacce_put_queue.exit.uacce_unbind_queue.exit_crit_edge, label %if.end.i

uacce_put_queue.exit.uacce_unbind_queue.exit_crit_edge: ; preds = %uacce_put_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %uacce_unbind_queue.exit

if.end.i:                                         ; preds = %uacce_put_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iommu_sva_unbind_device(ptr noundef nonnull %31) #7
  %32 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %handle.i, align 4
  br label %uacce_unbind_queue.exit

uacce_unbind_queue.exit:                          ; preds = %if.end.i, %uacce_put_queue.exit.uacce_unbind_queue.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uacce_vma_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %arrayidx = getelementptr %struct.uacce_queue, ptr %3, i32 0, i32 4, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %qfr.0 = phi ptr [ %5, %if.then ], [ null, %entry.if.end_crit_edge ]
  tail call void @kfree(ptr noundef %qfr.0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_sva_bind_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_sva_get_pasid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_sva_unbind_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77, !78, !79, !81, !83, !84, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @uacce_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/misc/uacce/uacce.c", i32 453, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/misc/uacce/uacce.c", i32 460, i32 28}
!5 = !{ptr @__ksymtab_uacce_alloc, !6, !"__ksymtab_uacce_alloc", i1 false, i1 false}
!6 = !{!"../drivers/misc/uacce/uacce.c", i32 469, i32 1}
!7 = !{ptr @__ksymtab_uacce_register, !8, !"__ksymtab_uacce_register", i1 false, i1 false}
!8 = !{!"../drivers/misc/uacce/uacce.c", i32 491, i32 1}
!9 = !{ptr @__ksymtab_uacce_remove, !10, !"__ksymtab_uacce_remove", i1 false, i1 false}
!10 = !{!"../drivers/misc/uacce/uacce.c", i32 526, i32 1}
!11 = !{ptr @__initcall__kmod_uacce__232_549_uacce_init4, !12, !"__initcall__kmod_uacce__232_549_uacce_init4", i1 false, i1 false}
!12 = !{!"../drivers/misc/uacce/uacce.c", i32 549, i32 1}
!13 = !{ptr @__exitcall_uacce_exit, !14, !"__exitcall_uacce_exit", i1 false, i1 false}
!14 = !{!"../drivers/misc/uacce/uacce.c", i32 550, i32 1}
!15 = !{ptr @__UNIQUE_ID_file233, !16, !"__UNIQUE_ID_file233", i1 false, i1 false}
!16 = !{!"../drivers/misc/uacce/uacce.c", i32 552, i32 1}
!17 = !{ptr @__UNIQUE_ID_license234, !16, !"__UNIQUE_ID_license234", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author235, !19, !"__UNIQUE_ID_author235", i1 false, i1 false}
!19 = !{!"../drivers/misc/uacce/uacce.c", i32 553, i32 1}
!20 = !{ptr @__UNIQUE_ID_description236, !21, !"__UNIQUE_ID_description236", i1 false, i1 false}
!21 = !{!"../drivers/misc/uacce/uacce.c", i32 554, i32 1}
!22 = !{ptr @uacce_class, !23, !"uacce_class", i1 false, i1 false}
!23 = !{!"../drivers/misc/uacce/uacce.c", i32 10, i32 22}
!24 = !{ptr @uacce_devt, !25, !"uacce_devt", i1 false, i1 false}
!25 = !{!"../drivers/misc/uacce/uacce.c", i32 11, i32 14}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/uacce/uacce.c", i32 399, i32 3}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @uacce_enable_sva._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @uacce_enable_sva._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/uacce/uacce.c", i32 405, i32 3}
!36 = !{ptr @uacce_enable_sva._entry.7, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @uacce_enable_sva._entry_ptr.9, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/uacce/uacce.c", i32 13, i32 8}
!40 = !{ptr @uacce_xa, !39, !"uacce_xa", i1 false, i1 false}
!41 = !{ptr @uacce_dev_groups, !42, !"uacce_dev_groups", i1 false, i1 false}
!42 = !{!"../drivers/misc/uacce/uacce.c", i32 379, i32 1}
!43 = !{ptr @uacce_dev_group, !44, !"uacce_dev_group", i1 false, i1 false}
!44 = !{!"../drivers/misc/uacce/uacce.c", i32 374, i32 31}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/uacce/uacce.c", i32 346, i32 8}
!47 = !{ptr @dev_attr_region_mmio_size, !46, !"dev_attr_region_mmio_size", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/misc/uacce/uacce.c", i32 329, i32 25}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/uacce/uacce.c", i32 347, i32 8}
!52 = !{ptr @dev_attr_region_dus_size, !51, !"dev_attr_region_dus_size", i1 false, i1 false}
!53 = !{ptr @uacce_dev_attrs, !54, !"uacce_dev_attrs", i1 false, i1 false}
!54 = !{!"../drivers/misc/uacce/uacce.c", i32 349, i32 26}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/uacce/uacce.c", i32 342, i32 8}
!57 = !{ptr @dev_attr_api, !56, !"dev_attr_api", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/uacce/uacce.c", i32 292, i32 25}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/uacce/uacce.c", i32 343, i32 8}
!62 = !{ptr @dev_attr_flags, !61, !"dev_attr_flags", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/uacce/uacce.c", i32 300, i32 25}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/uacce/uacce.c", i32 344, i32 8}
!67 = !{ptr @dev_attr_available_instances, !66, !"dev_attr_available_instances", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/misc/uacce/uacce.c", i32 312, i32 25}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/uacce/uacce.c", i32 345, i32 8}
!72 = !{ptr @dev_attr_algorithms, !71, !"dev_attr_algorithms", i1 false, i1 false}
!73 = !{ptr @uacce_fops, !74, !"uacce_fops", i1 false, i1 false}
!74 = !{!"../drivers/misc/uacce/uacce.c", i32 273, i32 37}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/misc/uacce/uacce.c", i32 12, i32 8}
!77 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @uacce_mutex, !76, !"uacce_mutex", i1 false, i1 false}
!79 = !{ptr @uacce_vm_ops, !80, !"uacce_vm_ops", i1 false, i1 false}
!80 = !{!"../drivers/misc/uacce/uacce.c", i32 194, i32 42}
!81 = !{ptr @uacce_fops_open.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/misc/uacce/uacce.c", i32 151, i32 2}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @uacce_init.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/misc/uacce/uacce.c", i32 532, i32 16}
!86 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
