; ModuleID = '/llk/IR_all_yes/drivers/vhost/vdpa.c_pt.bc'
source_filename = "../drivers/vhost/vdpa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdpa_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vhost_vdpa = type { %struct.vhost_dev, ptr, ptr, %struct.completion, ptr, %struct.device, %struct.cdev, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.vdpa_iova_range }
%struct.vhost_dev = type { ptr, %struct.mutex, ptr, i32, ptr, %struct.llist_head, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i64, i8, ptr }
%struct.llist_head = type { ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.vdpa_iova_range = type { i64, i64 }
%struct.vdpa_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vhost_vdpa_iova_range = type { i64, i64 }
%struct.vdpa_callback = type { ptr, ptr }
%struct.vhost_vdpa_config = type { i32, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vhost_virtqueue = type { ptr, %struct.mutex, i32, ptr, ptr, ptr, [3 x ptr], ptr, %struct.vhost_vring_call, ptr, ptr, %struct.vhost_poll, ptr, i16, i16, i16, i16, i16, i8, i8, i64, [1024 x %struct.iovec], [64 x %struct.iovec], ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, [64 x %struct.iovec], i8, i8, i32 }
%struct.vhost_vring_call = type { ptr, %struct.irq_bypass_producer }
%struct.irq_bypass_producer = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.vhost_poll = type { %struct.poll_table_struct, ptr, %struct.wait_queue_entry, %struct.vhost_work, i32, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vhost_work = type { %struct.llist_node, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.iovec = type { ptr, i32 }
%struct.vdpa_notification_area = type { i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.104, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.105, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.106, ptr, %struct.address_space, %struct.list_head, %union.anon.107, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.104 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.105 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.106 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.107 = type { ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.vdpa_vq_state = type { %union.anon.102 }
%union.anon.102 = type { %struct.vdpa_vq_state_packed }
%struct.vdpa_vq_state_packed = type { i32 }
%struct.vhost_vring_state = type { i32, i32 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.vhost_iotlb_msg = type { i64, i64, i64, i8, i8 }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vdpa_map_file = type { ptr, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
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
%union.anon.83 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.vhost_iotlb_map = type { %struct.rb_node, %struct.list_head, i64, i64, i64, i64, i32, i32, i64, ptr }

@__initcall__kmod_vhost_vdpa__367_1216_vhost_vdpa_init6 = internal global ptr @vhost_vdpa_init, section ".initcall6.init", align 4
@vhost_vdpa_driver = internal global { %struct.vdpa_driver, [44 x i8] } { %struct.vdpa_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vhost_vdpa_probe, ptr @vhost_vdpa_remove }, [44 x i8] zeroinitializer }, align 32
@vhost_vdpa_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__exitcall_vhost_vdpa_exit = internal global ptr @vhost_vdpa_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version368 = internal constant [25 x i8] c"vhost_vdpa.version=0.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vhost_vdpa\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file369 = internal constant [41 x i8] c"vhost_vdpa.file=drivers/vhost/vhost_vdpa\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [26 x i8] c"vhost_vdpa.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author371 = internal constant [36 x i8] c"vhost_vdpa.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description372 = internal constant [59 x i8] c"vhost_vdpa.description=vDPA-based vhost backend for virtio\00", section ".modinfo", align 1
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vhost-vdpa\00", [21 x i8] zeroinitializer }, align 32
@vhost_vdpa_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vhost-vdpa-%u\00", [18 x i8] zeroinitializer }, align 32
@vhost_vdpa_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vhost_vdpa_chr_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @vhost_vdpa_unlocked_ioctl, ptr null, ptr @vhost_vdpa_mmap, i32 0, ptr @vhost_vdpa_open, ptr null, ptr @vhost_vdpa_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vhost_vdpa_ida.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vhost_vdpa_setup_vq_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 109, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"vq %u, irq bypass producer (token %p) registration fails, ret =  %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhost_vdpa_setup_vq_irq\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/vhost/vdpa.c\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vhost_vdpa_setup_vq_irq._entry_ptr = internal global ptr @vhost_vdpa_setup_vq_irq._entry, section ".printk_index", align 4
@vhost_vdpa_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vhost_vdpa_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalidate vhost IOTLB permission\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 1073852274, i64 1074048775, i64 1074048887, i64 1074310912, i64 1074310916, i64 1074311028, i64 2147594097, i64 2147659638, i64 2147790704, i64 2148052736, i64 2148052774, i64 2148052851, i64 2148577144]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1074311029, i64 3221794578]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 1074310928, i64 1074310930, i64 1074310945, i64 1076408081]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 5, i64 6]
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"vhost_vdpa_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1188, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"vhost_vdpa_major\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 55, i32 14 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1225, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1201, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"vhost_vdpa_ida\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1150, i32 28 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"vhost_vdpa_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1093, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 53, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 230, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 214, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 156, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 108, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"vhost_vdpa_vm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1054, i32 42 }
@___asan_gen_.80 = private constant [24 x i8] c"../drivers/vhost/vdpa.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 577, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 87, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_description372, ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__UNIQUE_ID_version368, ptr @__exitcall_vhost_vdpa_exit, ptr @__initcall__kmod_vhost_vdpa__367_1216_vhost_vdpa_init6, ptr @__modver_attr, ptr @vhost_vdpa_exit, ptr @vhost_vdpa_setup_vq_irq._entry, ptr @vhost_vdpa_setup_vq_irq._entry_ptr, ptr @vhost_vdpa_driver, ptr @vhost_vdpa_major, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vhost_vdpa_ida, ptr @.str.4, ptr @vhost_vdpa_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vhost_vdpa_vm_ops, ptr @.str.14, ptr @init_completion.__key, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vdpa_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vdpa_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vdpa_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vdpa_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vdpa_setup_vq_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vdpa_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @vhost_vdpa_major, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__vdpa_register_driver(ptr noundef nonnull @vhost_vdpa_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_vdpa_register_driver

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_vdpa_register_driver:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @vhost_vdpa_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #10
  br label %cleanup

cleanup:                                          ; preds = %err_vdpa_register_driver, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %err_vdpa_register_driver ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vhost_vdpa_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vdpa_unregister_driver(ptr noundef nonnull @vhost_vdpa_driver) #10
  %0 = load i32, ptr @vhost_vdpa_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vdpa_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_probe(ptr noundef %vdpa) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vdpa_device, ptr %vdpa, i32 0, i32 3
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 19904, i32 noundef 1464) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ida_alloc_range(ptr noundef nonnull @vhost_vdpa_ida, i32 noundef 0, i32 noundef 1048575, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %opened = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened, i32 noundef 4) #10
  %3 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %opened, align 8
  %minor4 = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %minor4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %minor4, align 4
  %vdpa5 = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %vdpa5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vdpa, ptr %vdpa5, align 8
  %nvqs = getelementptr inbounds %struct.vdpa_device, ptr %vdpa, i32 0, i32 8
  %6 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nvqs, align 8
  %nvqs6 = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %nvqs6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %nvqs6, align 4
  %get_device_id = getelementptr inbounds %struct.vdpa_config_ops, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %get_device_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_device_id, align 4
  %call7 = tail call i32 %10(ptr noundef %vdpa) #10
  %virtio_id = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %virtio_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call7, ptr %virtio_id, align 8
  %dev = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 5
  tail call void @device_initialize(ptr noundef %dev) #10
  %release = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 5, i32 35
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vhost_vdpa_release_dev, ptr %release, align 4
  %parent = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vdpa, ptr %parent, align 8
  %14 = load i32, ptr @vhost_vdpa_major, align 4
  %shr = and i32 %14, -1048576
  %or = or i32 %shr, %call1
  %devt = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 5, i32 29
  %15 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %devt, align 8
  %16 = ptrtoint ptr %nvqs6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nvqs6, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 9520) #10
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !62

kmalloc_array.exit.thread:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %vqs68 = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %vqs68 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %vqs68, align 4
  br label %err

if.end7.i:                                        ; preds = %if.end3
  %21 = extractvalue { i32, i1 } %18, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #14
  %vqs = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i, ptr %vqs, align 4
  %tobool15.not = icmp eq ptr %call8.i, null
  br i1 %tobool15.not, label %if.end7.i.err_crit_edge, label %if.end17

if.end7.i.err_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end17:                                         ; preds = %if.end7.i
  %call19 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.err_crit_edge

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end22:                                         ; preds = %if.end17
  %cdev = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 6
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @vhost_vdpa_fops) #10
  %owner = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %owner, align 8
  %call26 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end22.err_crit_edge

if.end22.err_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %completion = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %completion, align 8
  %wait.i = getelementptr inbounds %struct.vhost_vdpa, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #10
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %vdpa, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err:                                              ; preds = %if.end22.err_crit_edge, %if.end17.err_crit_edge, %if.end7.i.err_crit_edge, %kmalloc_array.exit.thread
  %r.0 = phi i32 [ %call19, %if.end17.err_crit_edge ], [ %call26, %if.end22.err_crit_edge ], [ -12, %if.end7.i.err_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  tail call void @put_device(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end29, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %r.0, %err ], [ 0, %if.end29 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_vdpa_remove(ptr nocapture noundef readonly %vdpa) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %vdpa, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cdev = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 6
  %dev = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 5
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #10
  %opened1 = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 7
  %completion = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %opened1, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %opened1, ptr %opened1, i32 0, i32 1, ptr elementtype(i32) %opened1) #10, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  %tobool.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

if.end:                                           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wait_for_completion(ptr noundef %completion) #10
  br label %do.body

do.end:                                           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_device(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_vdpa_release_dev(ptr noundef %device) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -336
  %minor = getelementptr i8, ptr %device, i32 1100
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  tail call void @ida_free(ptr noundef nonnull @vhost_vdpa_ida, i32 noundef %1) #10
  %vqs = getelementptr i8, ptr %device, i32 -68
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_chr_write_iter(ptr nocapture noundef readonly %iocb, ptr noundef %from) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @vhost_chr_write_iter(ptr noundef %3, ptr noundef %from) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_unlocked_ioctl(ptr nocapture noundef readonly %filep, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %range.i = alloca %struct.vhost_vdpa_iova_range, align 8
  %cb.i = alloca %struct.vdpa_callback, align 4
  %fd.i = alloca i32, align 4
  %num.i = alloca i16, align 2
  %features.i177 = alloca i64, align 8
  %features.i = alloca i64, align 8
  %config.i136 = alloca %struct.vhost_vdpa_config, align 4
  %config.i110 = alloca %struct.vhost_vdpa_config, align 4
  %status.i98 = alloca i8, align 1
  %status.i = alloca i8, align 1
  %device_id.i = alloca i32, align 4
  %features = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features) #10
  %3 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %features, align 8, !annotation !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074310949, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1074310949
  br i1 %cmp, label %if.end8.i.i, label %if.end6

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #15, !srcloc !67
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !68

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %features, i32 noundef 8) #10
  %5 = call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !69
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %features, ptr noundef %2, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !68

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i246 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i246
  %add.ptr.i.i = getelementptr i8, ptr %features, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i246)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features, align 8
  %and = and i64 %10, -7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @vhost_set_backend_features(ptr noundef %1, i64 noundef %10) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 -2147176592, label %sw.bb
    i32 -2147373199, label %sw.bb8
    i32 1073852274, label %sw.bb10
    i32 -2146914445, label %sw.bb12
    i32 1074311028, label %sw.bb14
    i32 -2146914560, label %sw.bb16
    i32 1074310912, label %sw.bb18
    i32 -2147307658, label %sw.bb20
    i32 1074310916, label %if.end6.sw.epilog_crit_edge
    i32 1074048775, label %if.end6.sw.epilog_crit_edge251
    i32 1074048887, label %sw.bb23
    i32 -2146914522, label %sw.bb25
    i32 -2146390152, label %sw.bb30
  ]

if.end6.sw.epilog_crit_edge251:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %vdpa1.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdpa1.i, align 8
  %config.i = getelementptr inbounds %struct.vdpa_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_id.i) #10
  %get_device_id.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %get_device_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_device_id.i, align 4
  %call.i = tail call i32 %17(ptr noundef %13) #10
  %18 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %device_id.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i.i85 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i85, label %sw.bb.vhost_vdpa_get_device_id.exit_crit_edge, label %if.end.i.i.i

sw.bb.vhost_vdpa_get_device_id.exit_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_device_id.exit

if.end.i.i.i:                                     ; preds = %sw.bb
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #15, !srcloc !72
  %asmresult.i.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.vhost_vdpa_get_device_id.exit_crit_edge

if.end.i.i.i.vhost_vdpa_get_device_id.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_device_id.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %device_id.i, i32 noundef 4) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %device_id.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %vhost_vdpa_get_device_id.exit

vhost_vdpa_get_device_id.exit:                    ; preds = %copy_to_user.exit.i, %if.end.i.i.i.vhost_vdpa_get_device_id.exit_crit_edge, %sw.bb.vhost_vdpa_get_device_id.exit_crit_edge
  %20 = phi i32 [ -14, %sw.bb.vhost_vdpa_get_device_id.exit_crit_edge ], [ -14, %if.end.i.i.i.vhost_vdpa_get_device_id.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i) #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  %vdpa1.i86 = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %vdpa1.i86 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdpa1.i86, align 8
  %config.i87 = getelementptr inbounds %struct.vdpa_device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %config.i87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i87, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #10
  %get_status.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_status.i, align 4
  %call.i88 = tail call zeroext i8 %26(ptr noundef %22) #10
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call.i88, ptr %status.i, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i.i89 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i89, label %sw.bb8.vhost_vdpa_get_status.exit_crit_edge, label %if.end.i.i.i92

sw.bb8.vhost_vdpa_get_status.exit_crit_edge:      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_status.exit

if.end.i.i.i92:                                   ; preds = %sw.bb8
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 1, i32 -1226833920) #15, !srcloc !72
  %asmresult.i.i.i90 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i90)
  %cmp.i6.i.i91 = icmp eq i32 %asmresult.i.i.i90, 0
  br i1 %cmp.i6.i.i91, label %copy_to_user.exit.i97, label %if.end.i.i.i92.vhost_vdpa_get_status.exit_crit_edge

if.end.i.i.i92.vhost_vdpa_get_status.exit_crit_edge: ; preds = %if.end.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_status.exit

copy_to_user.exit.i97:                            ; preds = %if.end.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i93 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %status.i, i32 noundef 1) #10
  %call.i12.i.i.i94 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %status.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i94)
  %tobool.not.i95 = icmp eq i32 %call.i12.i.i.i94, 0
  %spec.select.i96 = select i1 %tobool.not.i95, i32 0, i32 -14
  br label %vhost_vdpa_get_status.exit

vhost_vdpa_get_status.exit:                       ; preds = %copy_to_user.exit.i97, %if.end.i.i.i92.vhost_vdpa_get_status.exit_crit_edge, %sw.bb8.vhost_vdpa_get_status.exit_crit_edge
  %29 = phi i32 [ -14, %sw.bb8.vhost_vdpa_get_status.exit_crit_edge ], [ -14, %if.end.i.i.i92.vhost_vdpa_get_status.exit_crit_edge ], [ %spec.select.i96, %copy_to_user.exit.i97 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  %vdpa1.i99 = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %vdpa1.i99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdpa1.i99, align 8
  %config.i100 = getelementptr inbounds %struct.vdpa_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %config.i100 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i100, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i98) #10
  %34 = ptrtoint ptr %status.i98 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %status.i98, align 1, !annotation !66
  %nvqs2.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %nvqs2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nvqs2.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i.i101 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i101, label %sw.bb10.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb10.if.then11.i.i.i_crit_edge:                ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb10
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 1, i32 -1226833920) #15, !srcloc !67
  %asmresult.i.i.i102 = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i102)
  %cmp.i6.i.i103 = icmp eq i32 %asmresult.i.i.i102, 0
  br i1 %cmp.i6.i.i103, label %if.end.i.i.i105, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !68

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i105:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i104 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %status.i98, i32 noundef 1) #10
  %38 = call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !69
  %and.i.i.i.i.i = and i32 %40, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %status.i98, ptr noundef %2, i32 noundef 1) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i105.if.then11.i.i.i_crit_edge, !prof !68

if.end.i.i.i105.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i105.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb10.if.then11.i.i.i_crit_edge
  %res.0.i.i77.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i105.if.then11.i.i.i_crit_edge ], [ 1, %sw.bb10.if.then11.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 1, %res.0.i.i77.i
  %add.ptr.i.i.i = getelementptr i8, ptr %status.i98, i32 %sub.i.i.i
  %41 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i77.i)
  br label %vhost_vdpa_set_status.exit

if.end.i:                                         ; preds = %if.end.i.i.i105
  %get_status.i106 = getelementptr inbounds %struct.vdpa_config_ops, ptr %33, i32 0, i32 19
  %42 = ptrtoint ptr %get_status.i106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_status.i106, align 4
  %call3.i = call zeroext i8 %43(ptr noundef %31) #10
  %44 = ptrtoint ptr %status.i98 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %status.i98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.not.i = icmp eq i8 %45, 0
  br i1 %cmp.not.i, label %if.end.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %conv.i = zext i8 %45 to i32
  %conv5.i = zext i8 %call3.i to i32
  %neg.i = xor i32 %conv.i, -1
  %and.i = and i32 %neg.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.vhost_vdpa_set_status.exit_crit_edge

land.lhs.true.i.vhost_vdpa_set_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_set_status.exit

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %46 = and i8 %call3.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool13.not.i = icmp eq i8 %46, 0
  %tobool13.not.not80.i = xor i1 %tobool13.not.i, true
  %47 = and i8 %45, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool17.not.i = icmp eq i8 %47, 0
  %or.cond.i = select i1 %tobool13.not.not80.i, i1 %tobool17.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp2081.i = icmp sgt i32 %36, 0
  %or.cond88.i = select i1 %or.cond.i, i1 %cmp2081.i, i1 false
  br i1 %or.cond88.i, label %for.body.lr.ph.i, label %if.end10.i.if.end22.i_crit_edge

if.end10.i.if.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

for.body.lr.ph.i:                                 ; preds = %if.end10.i
  %vqs.i.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv1983.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv19.i, %for.body.i.for.body.i_crit_edge ]
  %i.082.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vqs.i.i, align 4
  %producer.i.i = getelementptr %struct.vhost_virtqueue, ptr %49, i32 %conv1983.i, i32 8, i32 1
  call void @irq_bypass_unregister_producer(ptr noundef %producer.i.i) #10
  %inc.i = add i16 %i.082.i, 1
  %conv19.i = zext i16 %inc.i to i32
  %cmp20.i = icmp sgt i32 %36, %conv19.i
  br i1 %cmp20.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end22.i_crit_edge

for.body.i.if.end22.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end22.i:                                       ; preds = %for.body.i.if.end22.i_crit_edge, %if.end10.i.if.end22.i_crit_edge
  %50 = ptrtoint ptr %status.i98 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %status.i98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp24.i = icmp eq i8 %51, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %if.end22.i
  %52 = ptrtoint ptr %config.i100 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config.i100, align 8
  %cf_mutex.i.i = getelementptr inbounds %struct.vdpa_device, ptr %31, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %cf_mutex.i.i, i32 noundef 0) #10
  %features_valid.i.i = getelementptr inbounds %struct.vdpa_device, ptr %31, i32 0, i32 6
  %54 = ptrtoint ptr %features_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %features_valid.i.i, align 4
  %reset.i.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %53, i32 0, i32 21
  %55 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reset.i.i, align 4
  %call.i.i107 = call i32 %56(ptr noundef %31) #10
  call void @mutex_unlock(ptr noundef %cf_mutex.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %tobool28.not.i = icmp eq i32 %call.i.i107, 0
  br i1 %tobool28.not.i, label %if.then26.i.if.end31.i_crit_edge, label %if.then26.i.vhost_vdpa_set_status.exit_crit_edge

if.then26.i.vhost_vdpa_set_status.exit_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_set_status.exit

if.then26.i.if.end31.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @vdpa_set_status(ptr noundef %31, i8 noundef zeroext %51) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.then26.i.if.end31.i_crit_edge
  %57 = ptrtoint ptr %status.i98 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %status.i98, align 1
  %59 = and i8 %58, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool34.not.i = icmp ne i8 %59, 0
  %brmerge.not.i = select i1 %tobool34.not.i, i1 %tobool13.not.i, i1 false
  %or.cond89.i = select i1 %brmerge.not.i, i1 %cmp2081.i, i1 false
  br i1 %or.cond89.i, label %for.body44.lr.ph.i, label %if.end31.i.vhost_vdpa_set_status.exit_crit_edge

if.end31.i.vhost_vdpa_set_status.exit_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_set_status.exit

for.body44.lr.ph.i:                               ; preds = %if.end31.i
  %vqs.i72.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 2
  %dev.i.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 5
  br label %for.body44.i

for.body44.i:                                     ; preds = %vhost_vdpa_setup_vq_irq.exit.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %conv4187.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %conv41.i, %vhost_vdpa_setup_vq_irq.exit.i.for.body44.i_crit_edge ]
  %i.185.i = phi i16 [ 0, %for.body44.lr.ph.i ], [ %inc46.i, %vhost_vdpa_setup_vq_irq.exit.i.for.body44.i_crit_edge ]
  %60 = ptrtoint ptr %vdpa1.i99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vdpa1.i99, align 8
  %config.i71.i = getelementptr inbounds %struct.vdpa_device, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %config.i71.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i71.i, align 8
  %get_vq_irq.i.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %get_vq_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_vq_irq.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %for.body44.i.vhost_vdpa_setup_vq_irq.exit.i_crit_edge, label %if.end.i.i109

for.body44.i.vhost_vdpa_setup_vq_irq.exit.i_crit_edge: ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_setup_vq_irq.exit.i

if.end.i.i109:                                    ; preds = %for.body44.i
  %66 = ptrtoint ptr %vqs.i72.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vqs.i72.i, align 4
  %call.i73.i = call i32 %65(ptr noundef %61, i16 noundef zeroext %i.185.i) #10
  %call_ctx.i.i = getelementptr %struct.vhost_virtqueue, ptr %67, i32 %conv4187.i, i32 8
  %producer.i74.i = getelementptr %struct.vhost_virtqueue, ptr %67, i32 %conv4187.i, i32 8, i32 1
  call void @irq_bypass_unregister_producer(ptr noundef %producer.i74.i) #10
  %68 = ptrtoint ptr %call_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call_ctx.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %69, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp.i.i108 = icmp slt i32 %call.i73.i, 0
  %or.cond.i.i = select i1 %tobool5.not.i.i, i1 true, i1 %cmp.i.i108
  br i1 %or.cond.i.i, label %if.end.i.i109.vhost_vdpa_setup_vq_irq.exit.i_crit_edge, label %if.end7.i.i

if.end.i.i109.vhost_vdpa_setup_vq_irq.exit.i_crit_edge: ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_setup_vq_irq.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i109
  %token.i.i = getelementptr %struct.vhost_virtqueue, ptr %67, i32 %conv4187.i, i32 8, i32 1, i32 1
  %70 = ptrtoint ptr %token.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %token.i.i, align 4
  %irq14.i.i = getelementptr %struct.vhost_virtqueue, ptr %67, i32 %conv4187.i, i32 8, i32 1, i32 2
  %71 = ptrtoint ptr %irq14.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i73.i, ptr %irq14.i.i, align 4
  %call17.i.i = call i32 @irq_bypass_register_producer(ptr noundef %producer.i74.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end7.i.i.vhost_vdpa_setup_vq_irq.exit.i_crit_edge, label %do.end.i.i, !prof !68

if.end7.i.i.vhost_vdpa_setup_vq_irq.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_setup_vq_irq.exit.i

do.end.i.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %token.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %token.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.9, i32 noundef %conv4187.i, ptr noundef %73, i32 noundef %call17.i.i) #16
  br label %vhost_vdpa_setup_vq_irq.exit.i

vhost_vdpa_setup_vq_irq.exit.i:                   ; preds = %do.end.i.i, %if.end7.i.i.vhost_vdpa_setup_vq_irq.exit.i_crit_edge, %if.end.i.i109.vhost_vdpa_setup_vq_irq.exit.i_crit_edge, %for.body44.i.vhost_vdpa_setup_vq_irq.exit.i_crit_edge
  %inc46.i = add i16 %i.185.i, 1
  %conv41.i = zext i16 %inc46.i to i32
  %cmp42.i = icmp sgt i32 %36, %conv41.i
  br i1 %cmp42.i, label %vhost_vdpa_setup_vq_irq.exit.i.for.body44.i_crit_edge, label %vhost_vdpa_setup_vq_irq.exit.i.vhost_vdpa_set_status.exit_crit_edge

vhost_vdpa_setup_vq_irq.exit.i.vhost_vdpa_set_status.exit_crit_edge: ; preds = %vhost_vdpa_setup_vq_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_set_status.exit

vhost_vdpa_setup_vq_irq.exit.i.for.body44.i_crit_edge: ; preds = %vhost_vdpa_setup_vq_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44.i

vhost_vdpa_set_status.exit:                       ; preds = %vhost_vdpa_setup_vq_irq.exit.i.vhost_vdpa_set_status.exit_crit_edge, %if.end31.i.vhost_vdpa_set_status.exit_crit_edge, %if.then26.i.vhost_vdpa_set_status.exit_crit_edge, %land.lhs.true.i.vhost_vdpa_set_status.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -22, %land.lhs.true.i.vhost_vdpa_set_status.exit_crit_edge ], [ %call.i.i107, %if.then26.i.vhost_vdpa_set_status.exit_crit_edge ], [ 0, %if.end31.i.vhost_vdpa_set_status.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ 0, %vhost_vdpa_setup_vq_irq.exit.i.vhost_vdpa_set_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i98) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  %vdpa1.i111 = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %74 = ptrtoint ptr %vdpa1.i111 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vdpa1.i111, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config.i110) #10
  %76 = ptrtoint ptr %config.i110 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %config.i110, align 4, !annotation !66
  %77 = getelementptr inbounds %struct.vhost_vdpa_config, ptr %config.i110, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %77, align 4, !annotation !66
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i.i112 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i112, label %sw.bb12.if.then11.i.i.i126_crit_edge, label %land.lhs.true.i.i.i115

sw.bb12.if.then11.i.i.i126_crit_edge:             ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i126

land.lhs.true.i.i.i115:                           ; preds = %sw.bb12
  %79 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #15, !srcloc !67
  %asmresult.i.i.i113 = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i113)
  %cmp.i6.i.i114 = icmp eq i32 %asmresult.i.i.i113, 0
  br i1 %cmp.i6.i.i114, label %if.end.i.i.i123, label %land.lhs.true.i.i.i115.if.then11.i.i.i126_crit_edge, !prof !68

land.lhs.true.i.i.i115.if.then11.i.i.i126_crit_edge: ; preds = %land.lhs.true.i.i.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i126

if.end.i.i.i123:                                  ; preds = %land.lhs.true.i.i.i115
  %call.i.i.i.i116 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config.i110, i32 noundef 8) #10
  %80 = call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i.i.i117 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i.i.i117 to ptr
  %cpu_domain.i.i.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 4
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i118) #7, !srcloc !69
  %and.i.i.i.i.i119 = and i32 %82, -13
  %or.i.i.i.i.i120 = or i32 %and.i.i.i.i.i119, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i120) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  %call1.i.i.i.i121 = call i32 @arm_copy_from_user(ptr noundef nonnull %config.i110, ptr noundef %2, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i121)
  %tobool4.not.i.i.i122 = icmp eq i32 %call1.i.i.i.i121, 0
  br i1 %tobool4.not.i.i.i122, label %if.end.i129, label %if.end.i.i.i123.if.then11.i.i.i126_crit_edge, !prof !68

if.end.i.i.i123.if.then11.i.i.i126_crit_edge:     ; preds = %if.end.i.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i126

if.then11.i.i.i126:                               ; preds = %if.end.i.i.i123.if.then11.i.i.i126_crit_edge, %land.lhs.true.i.i.i115.if.then11.i.i.i126_crit_edge, %sw.bb12.if.then11.i.i.i126_crit_edge
  %res.0.i.i39.i = phi i32 [ %call1.i.i.i.i121, %if.end.i.i.i123.if.then11.i.i.i126_crit_edge ], [ 8, %sw.bb12.if.then11.i.i.i126_crit_edge ], [ 8, %land.lhs.true.i.i.i115.if.then11.i.i.i126_crit_edge ]
  %sub.i.i.i124 = sub i32 8, %res.0.i.i39.i
  %add.ptr.i.i.i125 = getelementptr i8, ptr %config.i110, i32 %sub.i.i.i124
  %83 = call ptr @memset(ptr %add.ptr.i.i.i125, i32 0, i32 %res.0.i.i39.i)
  br label %vhost_vdpa_get_config.exit

if.end.i129:                                      ; preds = %if.end.i.i.i123
  %84 = ptrtoint ptr %vdpa1.i111 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vdpa1.i111, align 8
  %config.i.i = getelementptr inbounds %struct.vdpa_device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config.i.i, align 8
  %get_config_size.i.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %87, i32 0, i32 22
  %88 = ptrtoint ptr %get_config_size.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_config_size.i.i, align 4
  %call.i.i127 = call i32 %89(ptr noundef %85) #10
  %90 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i.i128 = icmp eq i32 %91, 0
  br i1 %cmp.i.i128, label %if.end.i129.vhost_vdpa_get_config.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i129.vhost_vdpa_get_config.exit_crit_edge: ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_config.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i129
  %92 = ptrtoint ptr %config.i110 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %config.i110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i127, i32 %93)
  %cmp2.i.i = icmp ult i32 %call.i.i127, %93
  %sub.i.i130 = sub i32 %call.i.i127, %93
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %sub.i.i130)
  %cmp5.i.i = icmp ugt i32 %91, %sub.i.i130
  %or.cond.i131 = select i1 %cmp2.i.i, i1 true, i1 %cmp5.i.i
  br i1 %or.cond.i131, label %lor.lhs.false.i.i.vhost_vdpa_get_config.exit_crit_edge, label %if.end5.i

lor.lhs.false.i.i.vhost_vdpa_get_config.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_config.exit

if.end5.i:                                        ; preds = %lor.lhs.false.i.i
  %call.i.i36.i = call noalias ptr @kvmalloc_node(i32 noundef %91, i32 noundef 3520, i32 noundef -1) #14
  %tobool7.not.i = icmp eq ptr %call.i.i36.i, null
  br i1 %tobool7.not.i, label %if.end5.i.vhost_vdpa_get_config.exit_crit_edge, label %if.end9.i

if.end5.i.vhost_vdpa_get_config.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_config.exit

if.end9.i:                                        ; preds = %if.end5.i
  %94 = ptrtoint ptr %config.i110 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %config.i110, align 4
  %96 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %77, align 4
  call void @vdpa_get_config(ptr noundef %75, i32 noundef %95, ptr noundef nonnull %call.i.i36.i, i32 noundef %97) #10
  %buf11.i = getelementptr inbounds %struct.vhost_vdpa_config, ptr %2, i32 0, i32 2
  %98 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp9.i.i.i = icmp slt i32 %99, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end9.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.then15.i_crit_edge, label %if.then27.i.i.i, !prof !68

land.rhs16.i.i.i.if.then15.i_crit_edge:           ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.then15.i

if.then.i.i.i.i:                                  ; preds = %if.end9.i
  call void @__check_object_size(ptr noundef nonnull %call.i.i36.i, i32 noundef %99, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i30.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i30.i, label %if.then.i.i.i.i.copy_to_user.exit.i134_crit_edge, label %if.end.i.i33.i

if.then.i.i.i.i.copy_to_user.exit.i134_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i134

if.end.i.i33.i:                                   ; preds = %if.then.i.i.i.i
  %100 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf11.i, i32 %99, i32 -1226833920) #15, !srcloc !72
  %asmresult.i.i31.i = extractvalue { i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i31.i)
  %cmp.i6.i32.i = icmp eq i32 %asmresult.i.i31.i, 0
  br i1 %cmp.i6.i32.i, label %if.then2.i.i.i, label %if.end.i.i33.i.copy_to_user.exit.i134_crit_edge

if.end.i.i33.i.copy_to_user.exit.i134_crit_edge:  ; preds = %if.end.i.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i134

if.then2.i.i.i:                                   ; preds = %if.end.i.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i34.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i.i36.i, i32 noundef %99) #10
  %call.i12.i.i.i133 = call i32 @arm_copy_to_user(ptr noundef %buf11.i, ptr noundef nonnull %call.i.i36.i, i32 noundef %99) #10
  br label %copy_to_user.exit.i134

copy_to_user.exit.i134:                           ; preds = %if.then2.i.i.i, %if.end.i.i33.i.copy_to_user.exit.i134_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i134_crit_edge
  %n.addr.0.i35.i = phi i32 [ %99, %if.then.i.i.i.i.copy_to_user.exit.i134_crit_edge ], [ %call.i12.i.i.i133, %if.then2.i.i.i ], [ %99, %if.end.i.i33.i.copy_to_user.exit.i134_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i35.i)
  %tobool14.not.i = icmp eq i32 %n.addr.0.i35.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %copy_to_user.exit.i134.if.then15.i_crit_edge

copy_to_user.exit.i134.if.then15.i_crit_edge:     ; preds = %copy_to_user.exit.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.then15.i:                                      ; preds = %copy_to_user.exit.i134.if.then15.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then15.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i36.i) #10
  br label %vhost_vdpa_get_config.exit

if.end16.i:                                       ; preds = %copy_to_user.exit.i134
  call void @__sanitizer_cov_trace_pc() #12
  call void @kvfree(ptr noundef nonnull %call.i.i36.i) #10
  br label %vhost_vdpa_get_config.exit

vhost_vdpa_get_config.exit:                       ; preds = %if.end16.i, %if.then15.i, %if.end5.i.vhost_vdpa_get_config.exit_crit_edge, %lor.lhs.false.i.i.vhost_vdpa_get_config.exit_crit_edge, %if.end.i129.vhost_vdpa_get_config.exit_crit_edge, %if.then11.i.i.i126
  %retval.0.i135 = phi i32 [ -14, %if.then15.i ], [ 0, %if.end16.i ], [ -12, %if.end5.i.vhost_vdpa_get_config.exit_crit_edge ], [ -14, %if.then11.i.i.i126 ], [ -22, %lor.lhs.false.i.i.vhost_vdpa_get_config.exit_crit_edge ], [ -22, %if.end.i129.vhost_vdpa_get_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config.i110) #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end6
  %vdpa1.i137 = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %101 = ptrtoint ptr %vdpa1.i137 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vdpa1.i137, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config.i136) #10
  %103 = ptrtoint ptr %config.i136 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %config.i136, align 4, !annotation !66
  %104 = getelementptr inbounds %struct.vhost_vdpa_config, ptr %config.i136, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %104, align 4, !annotation !66
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i.i138 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i138, label %sw.bb14.if.then11.i.i.i152_crit_edge, label %land.lhs.true.i.i.i141

sw.bb14.if.then11.i.i.i152_crit_edge:             ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i152

land.lhs.true.i.i.i141:                           ; preds = %sw.bb14
  %106 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #15, !srcloc !67
  %asmresult.i.i.i139 = extractvalue { i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i139)
  %cmp.i6.i.i140 = icmp eq i32 %asmresult.i.i.i139, 0
  br i1 %cmp.i6.i.i140, label %if.end.i.i.i149, label %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge, !prof !68

land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge: ; preds = %land.lhs.true.i.i.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i152

if.end.i.i.i149:                                  ; preds = %land.lhs.true.i.i.i141
  %call.i.i.i.i142 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config.i136, i32 noundef 8) #10
  %107 = call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i.i.i143 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i.i.i143 to ptr
  %cpu_domain.i.i.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 4
  %109 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i144) #7, !srcloc !69
  %and.i.i.i.i.i145 = and i32 %109, -13
  %or.i.i.i.i.i146 = or i32 %and.i.i.i.i.i145, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i146) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  %call1.i.i.i.i147 = call i32 @arm_copy_from_user(ptr noundef nonnull %config.i136, ptr noundef %2, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i147)
  %tobool4.not.i.i.i148 = icmp eq i32 %call1.i.i.i.i147, 0
  br i1 %tobool4.not.i.i.i148, label %if.end.i157, label %if.end.i.i.i149.if.then11.i.i.i152_crit_edge, !prof !68

if.end.i.i.i149.if.then11.i.i.i152_crit_edge:     ; preds = %if.end.i.i.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i152

if.then11.i.i.i152:                               ; preds = %if.end.i.i.i149.if.then11.i.i.i152_crit_edge, %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge, %sw.bb14.if.then11.i.i.i152_crit_edge
  %res.0.i.i24.i = phi i32 [ %call1.i.i.i.i147, %if.end.i.i.i149.if.then11.i.i.i152_crit_edge ], [ 8, %sw.bb14.if.then11.i.i.i152_crit_edge ], [ 8, %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge ]
  %sub.i.i.i150 = sub i32 8, %res.0.i.i24.i
  %add.ptr.i.i.i151 = getelementptr i8, ptr %config.i136, i32 %sub.i.i.i150
  %110 = call ptr @memset(ptr %add.ptr.i.i.i151, i32 0, i32 %res.0.i.i24.i)
  br label %vhost_vdpa_set_config.exit

if.end.i157:                                      ; preds = %if.end.i.i.i149
  %111 = ptrtoint ptr %vdpa1.i137 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vdpa1.i137, align 8
  %config.i.i153 = getelementptr inbounds %struct.vdpa_device, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %config.i.i153 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %config.i.i153, align 8
  %get_config_size.i.i154 = getelementptr inbounds %struct.vdpa_config_ops, ptr %114, i32 0, i32 22
  %115 = ptrtoint ptr %get_config_size.i.i154 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %get_config_size.i.i154, align 4
  %call.i.i155 = call i32 %116(ptr noundef %112) #10
  %117 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i.i156 = icmp eq i32 %118, 0
  br i1 %cmp.i.i156, label %if.end.i157.vhost_vdpa_set_config.exit_crit_edge, label %lor.lhs.false.i.i162

if.end.i157.vhost_vdpa_set_config.exit_crit_edge: ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_set_config.exit

lor.lhs.false.i.i162:                             ; preds = %if.end.i157
  %119 = ptrtoint ptr %config.i136 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %config.i136, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i155, i32 %120)
  %cmp2.i.i158 = icmp ult i32 %call.i.i155, %120
  %sub.i.i159 = sub i32 %call.i.i155, %120
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %sub.i.i159)
  %cmp5.i.i160 = icmp ugt i32 %118, %sub.i.i159
  %or.cond.i161 = select i1 %cmp2.i.i158, i1 true, i1 %cmp5.i.i160
  br i1 %or.cond.i161, label %lor.lhs.false.i.i162.vhost_vdpa_set_config.exit_crit_edge, label %if.end5.i163

lor.lhs.false.i.i162.vhost_vdpa_set_config.exit_crit_edge: ; preds = %lor.lhs.false.i.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_set_config.exit

if.end5.i163:                                     ; preds = %lor.lhs.false.i.i162
  %buf6.i = getelementptr inbounds %struct.vhost_vdpa_config, ptr %2, i32 0, i32 2
  %call7.i = call ptr @vmemdup_user(ptr noundef %buf6.i, i32 noundef %118) #10
  %cmp.i21.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end5.i163
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %call7.i to i32
  br label %vhost_vdpa_set_config.exit

if.end11.i:                                       ; preds = %if.end5.i163
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %config.i136 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %config.i136, align 4
  %124 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %104, align 4
  call void @vdpa_set_config(ptr noundef %102, i32 noundef %123, ptr noundef %call7.i, i32 noundef %125) #10
  call void @kvfree(ptr noundef %call7.i) #10
  br label %vhost_vdpa_set_config.exit

vhost_vdpa_set_config.exit:                       ; preds = %if.end11.i, %if.then9.i, %lor.lhs.false.i.i162.vhost_vdpa_set_config.exit_crit_edge, %if.end.i157.vhost_vdpa_set_config.exit_crit_edge, %if.then11.i.i.i152
  %retval.0.i164 = phi i32 [ %121, %if.then9.i ], [ 0, %if.end11.i ], [ -14, %if.then11.i.i.i152 ], [ -22, %lor.lhs.false.i.i162.vhost_vdpa_set_config.exit_crit_edge ], [ -22, %if.end.i157.vhost_vdpa_set_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config.i136) #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end6
  %vdpa1.i165 = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %126 = ptrtoint ptr %vdpa1.i165 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %vdpa1.i165, align 8
  %config.i166 = getelementptr inbounds %struct.vdpa_device, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %config.i166 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %config.i166, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features.i) #10
  %get_device_features.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %129, i32 0, i32 11
  %130 = ptrtoint ptr %get_device_features.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %get_device_features.i, align 4
  %call.i167 = tail call i64 %131(ptr noundef %127) #10
  %132 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %call.i167, ptr %features.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i.i168 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i168, label %sw.bb16.vhost_vdpa_get_features.exit_crit_edge, label %if.end.i.i.i171

sw.bb16.vhost_vdpa_get_features.exit_crit_edge:   ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_features.exit

if.end.i.i.i171:                                  ; preds = %sw.bb16
  %133 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #15, !srcloc !72
  %asmresult.i.i.i169 = extractvalue { i32, i32 } %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i169)
  %cmp.i6.i.i170 = icmp eq i32 %asmresult.i.i.i169, 0
  br i1 %cmp.i6.i.i170, label %copy_to_user.exit.i176, label %if.end.i.i.i171.vhost_vdpa_get_features.exit_crit_edge

if.end.i.i.i171.vhost_vdpa_get_features.exit_crit_edge: ; preds = %if.end.i.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_features.exit

copy_to_user.exit.i176:                           ; preds = %if.end.i.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i172 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %features.i, i32 noundef 8) #10
  %call.i12.i.i.i173 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %features.i, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i173)
  %tobool.not.i174 = icmp eq i32 %call.i12.i.i.i173, 0
  %spec.select.i175 = select i1 %tobool.not.i174, i32 0, i32 -14
  br label %vhost_vdpa_get_features.exit

vhost_vdpa_get_features.exit:                     ; preds = %copy_to_user.exit.i176, %if.end.i.i.i171.vhost_vdpa_get_features.exit_crit_edge, %sw.bb16.vhost_vdpa_get_features.exit_crit_edge
  %134 = phi i32 [ -14, %sw.bb16.vhost_vdpa_get_features.exit_crit_edge ], [ -14, %if.end.i.i.i171.vhost_vdpa_get_features.exit_crit_edge ], [ %spec.select.i175, %copy_to_user.exit.i176 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features.i) #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end6
  %vdpa1.i178 = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %135 = ptrtoint ptr %vdpa1.i178 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %vdpa1.i178, align 8
  %config.i179 = getelementptr inbounds %struct.vdpa_device, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %config.i179 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %config.i179, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features.i177) #10
  %139 = ptrtoint ptr %features.i177 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 -1, ptr %features.i177, align 8, !annotation !66
  %get_status.i180 = getelementptr inbounds %struct.vdpa_config_ops, ptr %138, i32 0, i32 19
  %140 = ptrtoint ptr %get_status.i180 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %get_status.i180, align 4
  %call.i181 = tail call zeroext i8 %141(ptr noundef %136) #10
  %142 = and i8 %call.i181, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i182 = icmp eq i8 %142, 0
  br i1 %tobool.not.i182, label %if.end8.i.i.i, label %sw.bb18.vhost_vdpa_set_features.exit_crit_edge

sw.bb18.vhost_vdpa_set_features.exit_crit_edge:   ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_set_features.exit

if.end8.i.i.i:                                    ; preds = %sw.bb18
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i.i183 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i183, label %if.end8.i.i.i.if.then11.i.i.i197_crit_edge, label %land.lhs.true.i.i.i186

if.end8.i.i.i.if.then11.i.i.i197_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i197

land.lhs.true.i.i.i186:                           ; preds = %if.end8.i.i.i
  %143 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #15, !srcloc !67
  %asmresult.i.i.i184 = extractvalue { i32, i32 } %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i184)
  %cmp.i6.i.i185 = icmp eq i32 %asmresult.i.i.i184, 0
  br i1 %cmp.i6.i.i185, label %if.end.i.i.i194, label %land.lhs.true.i.i.i186.if.then11.i.i.i197_crit_edge, !prof !68

land.lhs.true.i.i.i186.if.then11.i.i.i197_crit_edge: ; preds = %land.lhs.true.i.i.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i197

if.end.i.i.i194:                                  ; preds = %land.lhs.true.i.i.i186
  %call.i.i.i.i187 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %features.i177, i32 noundef 8) #10
  %144 = call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i.i.i188 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i.i.i.i188 to ptr
  %cpu_domain.i.i.i.i.i.i189 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 4
  %146 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i189) #7, !srcloc !69
  %and.i.i.i.i.i190 = and i32 %146, -13
  %or.i.i.i.i.i191 = or i32 %and.i.i.i.i.i190, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i191) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  %call1.i.i.i.i192 = call i32 @arm_copy_from_user(ptr noundef nonnull %features.i177, ptr noundef %2, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i192)
  %tobool4.not.i.i.i193 = icmp eq i32 %call1.i.i.i.i192, 0
  br i1 %tobool4.not.i.i.i193, label %if.end5.i200, label %if.end.i.i.i194.if.then11.i.i.i197_crit_edge, !prof !68

if.end.i.i.i194.if.then11.i.i.i197_crit_edge:     ; preds = %if.end.i.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i197

if.then11.i.i.i197:                               ; preds = %if.end.i.i.i194.if.then11.i.i.i197_crit_edge, %land.lhs.true.i.i.i186.if.then11.i.i.i197_crit_edge, %if.end8.i.i.i.if.then11.i.i.i197_crit_edge
  %res.0.i.i17.i = phi i32 [ %call1.i.i.i.i192, %if.end.i.i.i194.if.then11.i.i.i197_crit_edge ], [ 8, %if.end8.i.i.i.if.then11.i.i.i197_crit_edge ], [ 8, %land.lhs.true.i.i.i186.if.then11.i.i.i197_crit_edge ]
  %sub.i.i.i195 = sub i32 8, %res.0.i.i17.i
  %add.ptr.i.i.i196 = getelementptr i8, ptr %features.i177, i32 %sub.i.i.i195
  %147 = call ptr @memset(ptr %add.ptr.i.i.i196, i32 0, i32 %res.0.i.i17.i)
  br label %vhost_vdpa_set_features.exit

if.end5.i200:                                     ; preds = %if.end.i.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %features.i177 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %features.i177, align 8
  %cf_mutex.i.i198 = getelementptr inbounds %struct.vdpa_device, ptr %136, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %cf_mutex.i.i198, i32 noundef 0) #10
  %150 = ptrtoint ptr %config.i179 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %config.i179, align 8
  %features_valid.i.i.i = getelementptr inbounds %struct.vdpa_device, ptr %136, i32 0, i32 6
  %152 = ptrtoint ptr %features_valid.i.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %features_valid.i.i.i, align 4
  %set_driver_features.i.i.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %151, i32 0, i32 12
  %153 = ptrtoint ptr %set_driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %set_driver_features.i.i.i, align 4
  %call.i.i14.i = call i32 %154(ptr noundef %136, i64 noundef %149) #10
  call void @mutex_unlock(ptr noundef %cf_mutex.i.i198) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool7.not.i199 = icmp eq i32 %call.i.i14.i, 0
  %..i = select i1 %tobool7.not.i199, i32 0, i32 -22
  br label %vhost_vdpa_set_features.exit

vhost_vdpa_set_features.exit:                     ; preds = %if.end5.i200, %if.then11.i.i.i197, %sw.bb18.vhost_vdpa_set_features.exit_crit_edge
  %retval.0.i201 = phi i32 [ -16, %sw.bb18.vhost_vdpa_set_features.exit_crit_edge ], [ %..i, %if.end5.i200 ], [ -14, %if.then11.i.i.i197 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features.i177) #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end6
  %vdpa1.i202 = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %155 = ptrtoint ptr %vdpa1.i202 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %vdpa1.i202, align 8
  %config.i203 = getelementptr inbounds %struct.vdpa_device, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %config.i203 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %config.i203, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num.i) #10
  %get_vq_num_max.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %158, i32 0, i32 15
  %159 = ptrtoint ptr %get_vq_num_max.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %get_vq_num_max.i, align 4
  %call.i204 = tail call zeroext i16 %160(ptr noundef %156) #10
  %161 = ptrtoint ptr %num.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %call.i204, ptr %num.i, align 2
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i.i205 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i205, label %sw.bb20.vhost_vdpa_get_vring_num.exit_crit_edge, label %if.end.i.i.i208

sw.bb20.vhost_vdpa_get_vring_num.exit_crit_edge:  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_vring_num.exit

if.end.i.i.i208:                                  ; preds = %sw.bb20
  %162 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #15, !srcloc !72
  %asmresult.i.i.i206 = extractvalue { i32, i32 } %162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i206)
  %cmp.i6.i.i207 = icmp eq i32 %asmresult.i.i.i206, 0
  br i1 %cmp.i6.i.i207, label %copy_to_user.exit.i213, label %if.end.i.i.i208.vhost_vdpa_get_vring_num.exit_crit_edge

if.end.i.i.i208.vhost_vdpa_get_vring_num.exit_crit_edge: ; preds = %if.end.i.i.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_vring_num.exit

copy_to_user.exit.i213:                           ; preds = %if.end.i.i.i208
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i209 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %num.i, i32 noundef 2) #10
  %call.i12.i.i.i210 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %num.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i210)
  %tobool.not.i211 = icmp eq i32 %call.i12.i.i.i210, 0
  %spec.select.i212 = select i1 %tobool.not.i211, i32 0, i32 -14
  br label %vhost_vdpa_get_vring_num.exit

vhost_vdpa_get_vring_num.exit:                    ; preds = %copy_to_user.exit.i213, %if.end.i.i.i208.vhost_vdpa_get_vring_num.exit_crit_edge, %sw.bb20.vhost_vdpa_get_vring_num.exit_crit_edge
  %163 = phi i32 [ -14, %sw.bb20.vhost_vdpa_get_vring_num.exit_crit_edge ], [ -14, %if.end.i.i.i208.vhost_vdpa_get_vring_num.exit_crit_edge ], [ %spec.select.i212, %copy_to_user.exit.i213 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num.i) #10
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb.i) #10
  %164 = getelementptr inbounds %struct.vdpa_callback, ptr %cb.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fd.i) #10
  %165 = ptrtoint ptr %fd.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %fd.i, align 4, !annotation !66
  %166 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @vhost_vdpa_config_cb, ptr %cb.i, align 4
  %167 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %1, ptr %164, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i.i214 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i214, label %sw.bb23.if.then11.i.i.i228_crit_edge, label %land.lhs.true.i.i.i217

sw.bb23.if.then11.i.i.i228_crit_edge:             ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i228

land.lhs.true.i.i.i217:                           ; preds = %sw.bb23
  %168 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #15, !srcloc !67
  %asmresult.i.i.i215 = extractvalue { i32, i32 } %168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i215)
  %cmp.i6.i.i216 = icmp eq i32 %asmresult.i.i.i215, 0
  br i1 %cmp.i6.i.i216, label %if.end.i.i.i225, label %land.lhs.true.i.i.i217.if.then11.i.i.i228_crit_edge, !prof !68

land.lhs.true.i.i.i217.if.then11.i.i.i228_crit_edge: ; preds = %land.lhs.true.i.i.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i228

if.end.i.i.i225:                                  ; preds = %land.lhs.true.i.i.i217
  %call.i.i.i.i218 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fd.i, i32 noundef 4) #10
  %169 = call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i.i.i219 = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i.i.i.i.i219 to ptr
  %cpu_domain.i.i.i.i.i.i220 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 4
  %171 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i220) #7, !srcloc !69
  %and.i.i.i.i.i221 = and i32 %171, -13
  %or.i.i.i.i.i222 = or i32 %and.i.i.i.i.i221, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i222) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  %call1.i.i.i.i223 = call i32 @arm_copy_from_user(ptr noundef nonnull %fd.i, ptr noundef %2, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i223)
  %tobool4.not.i.i.i224 = icmp eq i32 %call1.i.i.i.i223, 0
  br i1 %tobool4.not.i.i.i224, label %if.end.i229, label %if.end.i.i.i225.if.then11.i.i.i228_crit_edge, !prof !68

if.end.i.i.i225.if.then11.i.i.i228_crit_edge:     ; preds = %if.end.i.i.i225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i228

if.then11.i.i.i228:                               ; preds = %if.end.i.i.i225.if.then11.i.i.i228_crit_edge, %land.lhs.true.i.i.i217.if.then11.i.i.i228_crit_edge, %sw.bb23.if.then11.i.i.i228_crit_edge
  %res.0.i.i28.i = phi i32 [ %call1.i.i.i.i223, %if.end.i.i.i225.if.then11.i.i.i228_crit_edge ], [ 4, %sw.bb23.if.then11.i.i.i228_crit_edge ], [ 4, %land.lhs.true.i.i.i217.if.then11.i.i.i228_crit_edge ]
  %sub.i.i.i226 = sub i32 4, %res.0.i.i28.i
  %add.ptr.i.i.i227 = getelementptr i8, ptr %fd.i, i32 %sub.i.i.i226
  %172 = call ptr @memset(ptr %add.ptr.i.i.i227, i32 0, i32 %res.0.i.i28.i)
  br label %vhost_vdpa_set_config_call.exit

if.end.i229:                                      ; preds = %if.end.i.i.i225
  %173 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %fd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %174)
  %cmp.i = icmp eq i32 %174, -1
  br i1 %cmp.i, label %if.end.i229.cond.end.i_crit_edge, label %cond.false.i

if.end.i229.cond.end.i_crit_edge:                 ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call ptr @eventfd_ctx_fdget(i32 noundef %174) #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i229.cond.end.i_crit_edge
  %cond.i = phi ptr [ %call1.i, %cond.false.i ], [ null, %if.end.i229.cond.end.i_crit_edge ]
  %config_ctx.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 11
  %175 = ptrtoint ptr %config_ctx.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %config_ctx.i, align 8
  store ptr %cond.i, ptr %config_ctx.i, align 8
  %tobool.not.i.i230 = icmp eq ptr %176, null
  %cmp.i.i231 = icmp ugt ptr %176, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i230, %cmp.i.i231
  br i1 %spec.select.i.i, label %cond.end.i.if.end5.i232_crit_edge, label %if.then4.i

cond.end.i.if.end5.i232_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i232

if.then4.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @eventfd_ctx_put(ptr noundef nonnull %176) #10
  %177 = ptrtoint ptr %config_ctx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %.pr.i = load ptr, ptr %config_ctx.i, align 8
  br label %if.end5.i232

if.end5.i232:                                     ; preds = %if.then4.i, %cond.end.i.if.end5.i232_crit_edge
  %178 = phi ptr [ %.pr.i, %if.then4.i ], [ %cond.i, %cond.end.i.if.end5.i232_crit_edge ]
  %cmp.i25.i = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %if.then8.i, label %if.end12.i

if.then8.i:                                       ; preds = %if.end5.i232
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %178 to i32
  %180 = ptrtoint ptr %config_ctx.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %config_ctx.i, align 8
  br label %vhost_vdpa_set_config_call.exit

if.end12.i:                                       ; preds = %if.end5.i232
  call void @__sanitizer_cov_trace_pc() #12
  %vdpa.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %181 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %vdpa.i, align 8
  %config.i233 = getelementptr inbounds %struct.vdpa_device, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %config.i233 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %config.i233, align 8
  %set_config_cb.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %184, i32 0, i32 14
  %185 = ptrtoint ptr %set_config_cb.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %set_config_cb.i, align 4
  call void %186(ptr noundef %182, ptr noundef nonnull %cb.i) #10
  br label %vhost_vdpa_set_config_call.exit

vhost_vdpa_set_config_call.exit:                  ; preds = %if.end12.i, %if.then8.i, %if.then11.i.i.i228
  %retval.0.i234 = phi i32 [ %179, %if.then8.i ], [ 0, %if.end12.i ], [ -14, %if.then11.i.i.i228 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fd.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb.i) #10
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end6
  %187 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 6, ptr %features, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i79 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i79, label %sw.bb25.sw.epilog_crit_edge, label %if.end.i.i82

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i82:                                     ; preds = %sw.bb25
  %188 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #15, !srcloc !72
  %asmresult.i.i80 = extractvalue { i32, i32 } %188, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i80)
  %cmp.i6.i81 = icmp eq i32 %asmresult.i.i80, 0
  br i1 %cmp.i6.i81, label %copy_to_user.exit, label %if.end.i.i82.sw.epilog_crit_edge

if.end.i.i82.sw.epilog_crit_edge:                 ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i83 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %features, i32 noundef 8) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %features, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool27.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool27.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range.i) #10
  %189 = getelementptr inbounds %struct.vhost_vdpa_iova_range, ptr %range.i, i32 0, i32 1
  %range1.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 13
  %190 = ptrtoint ptr %range1.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %range1.i, align 8
  %192 = ptrtoint ptr %range.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %191, ptr %range.i, align 8
  %last4.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 13, i32 1
  %193 = ptrtoint ptr %last4.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %last4.i, align 8
  %195 = ptrtoint ptr %189 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %194, ptr %189, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i.i235 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i235, label %sw.bb30.vhost_vdpa_get_iova_range.exit_crit_edge, label %if.end.i.i.i238

sw.bb30.vhost_vdpa_get_iova_range.exit_crit_edge: ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_iova_range.exit

if.end.i.i.i238:                                  ; preds = %sw.bb30
  %196 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #15, !srcloc !72
  %asmresult.i.i.i236 = extractvalue { i32, i32 } %196, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i236)
  %cmp.i6.i.i237 = icmp eq i32 %asmresult.i.i.i236, 0
  br i1 %cmp.i6.i.i237, label %copy_to_user.exit.i243, label %if.end.i.i.i238.vhost_vdpa_get_iova_range.exit_crit_edge

if.end.i.i.i238.vhost_vdpa_get_iova_range.exit_crit_edge: ; preds = %if.end.i.i.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_get_iova_range.exit

copy_to_user.exit.i243:                           ; preds = %if.end.i.i.i238
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i239 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range.i, i32 noundef 16) #10
  %call.i12.i.i.i240 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %range.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i240)
  %tobool.not.i241 = icmp eq i32 %call.i12.i.i.i240, 0
  %spec.select.i242 = select i1 %tobool.not.i241, i32 0, i32 -14
  br label %vhost_vdpa_get_iova_range.exit

vhost_vdpa_get_iova_range.exit:                   ; preds = %copy_to_user.exit.i243, %if.end.i.i.i238.vhost_vdpa_get_iova_range.exit_crit_edge, %sw.bb30.vhost_vdpa_get_iova_range.exit_crit_edge
  %197 = phi i32 [ -14, %sw.bb30.vhost_vdpa_get_iova_range.exit_crit_edge ], [ -14, %if.end.i.i.i238.vhost_vdpa_get_iova_range.exit_crit_edge ], [ %spec.select.i242, %copy_to_user.exit.i243 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range.i) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  %call33 = tail call i32 @vhost_dev_ioctl(ptr noundef %1, i32 noundef %cmd, ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call33)
  %cmp34 = icmp eq i32 %call33, -515
  br i1 %cmp34, label %if.then35, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then35:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call fastcc i32 @vhost_vdpa_vring_ioctl(ptr noundef %1, i32 noundef %cmd, ptr noundef %2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then35, %sw.default.sw.epilog_crit_edge, %vhost_vdpa_get_iova_range.exit, %copy_to_user.exit, %if.end.i.i82.sw.epilog_crit_edge, %sw.bb25.sw.epilog_crit_edge, %vhost_vdpa_set_config_call.exit, %vhost_vdpa_get_vring_num.exit, %vhost_vdpa_set_features.exit, %vhost_vdpa_get_features.exit, %vhost_vdpa_set_config.exit, %vhost_vdpa_get_config.exit, %vhost_vdpa_set_status.exit, %vhost_vdpa_get_status.exit, %vhost_vdpa_get_device_id.exit, %if.end6.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge251
  %r.0 = phi i32 [ %call36, %if.then35 ], [ %call33, %sw.default.sw.epilog_crit_edge ], [ %197, %vhost_vdpa_get_iova_range.exit ], [ %retval.0.i234, %vhost_vdpa_set_config_call.exit ], [ %163, %vhost_vdpa_get_vring_num.exit ], [ %retval.0.i201, %vhost_vdpa_set_features.exit ], [ %134, %vhost_vdpa_get_features.exit ], [ %retval.0.i164, %vhost_vdpa_set_config.exit ], [ %retval.0.i135, %vhost_vdpa_get_config.exit ], [ %retval.0.i, %vhost_vdpa_set_status.exit ], [ %29, %vhost_vdpa_get_status.exit ], [ %20, %vhost_vdpa_get_device_id.exit ], [ -515, %if.end6.sw.epilog_crit_edge ], [ -515, %if.end6.sw.epilog_crit_edge251 ], [ -14, %sw.bb25.sw.epilog_crit_edge ], [ -14, %if.end.i.i82.sw.epilog_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %r.0, %sw.epilog ], [ -95, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_mmap(ptr nocapture noundef readnone %file, ptr nocapture noundef %vma) #3 align 64 {
entry:
  %tmp = alloca %struct.vdpa_notification_area, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %vdpa1 = getelementptr inbounds %struct.vhost_vdpa, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdpa1, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %8 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  %12 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vma, align 4
  %sub = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp.not = icmp eq i32 %sub, 4096
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %14 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_flags, align 4
  %16 = and i32 %15, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %17 = icmp ne i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %9)
  %cmp9 = icmp ugt i32 %9, 65535
  %or.cond44 = select i1 %17, i1 true, i1 %cmp9
  br i1 %or.cond44, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %get_vq_notification = getelementptr inbounds %struct.vdpa_config_ops, ptr %7, i32 0, i32 8
  %18 = ptrtoint ptr %get_vq_notification to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_vq_notification, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #10
  %conv = trunc i32 %9 to i16
  call void %19(ptr nonnull sret(%struct.vdpa_notification_area) align 4 %tmp, ptr noundef %5, i16 noundef zeroext %conv) #10
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %notify.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  %notify.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %21 = ptrtoint ptr %notify.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %notify.sroa.5.0.copyload = load i32, ptr %notify.sroa.5.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #10
  %and16 = and i32 %notify.sroa.0.0.copyload, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %22 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_end, align 4
  %24 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vma, align 4
  %sub22 = sub i32 %23, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %notify.sroa.5.0.copyload)
  %cmp23.not = icmp eq i32 %sub22, %notify.sroa.5.0.copyload
  br i1 %cmp23.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_flags, align 4
  %or = or i32 %27, 67388416
  store i32 %or, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %28 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vhost_vdpa_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -524, %if.end11.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -524, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filep) #3 align 64 {
entry:
  %tmp.i = alloca %struct.vdpa_iova_range, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %opened1 = getelementptr i8, ptr %2, i32 160
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %opened1, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %opened1, ptr %opened1, i32 0, i32 1, ptr elementtype(i32) %opened1) #10, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %add.ptr = getelementptr i8, ptr %2, i32 -1264
  %asmresult3.i.i.i = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %atomic_cmpxchg.exit.cleanup_crit_edge

atomic_cmpxchg.exit.cleanup_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %atomic_cmpxchg.exit
  %nvqs2 = getelementptr i8, ptr %2, i32 164
  %4 = ptrtoint ptr %nvqs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nvqs2, align 4
  %vdpa1.i = getelementptr i8, ptr %2, i32 -936
  %6 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdpa1.i, align 8
  %in_batch.i = getelementptr i8, ptr %2, i32 180
  %8 = ptrtoint ptr %in_batch.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %in_batch.i, align 4
  %config.i.i = getelementptr inbounds %struct.vdpa_device, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i.i, align 8
  %cf_mutex.i.i = getelementptr inbounds %struct.vdpa_device, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cf_mutex.i.i, i32 noundef 0) #10
  %features_valid.i.i = getelementptr inbounds %struct.vdpa_device, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %features_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %features_valid.i.i, align 4
  %reset.i.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %10, i32 0, i32 21
  %12 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset.i.i, align 4
  %call.i.i55 = tail call i32 %13(ptr noundef %7) #10
  tail call void @mutex_unlock(ptr noundef %cf_mutex.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %tobool4.not = icmp eq i32 %call.i.i55, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end6:                                          ; preds = %if.end
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #10
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.end6.err_crit_edge, label %if.end7.i, !prof !62

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end7.i:                                        ; preds = %if.end6
  %16 = extractvalue { i32, i1 } %14, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #14
  %tobool8.not = icmp eq ptr %call8.i, null
  br i1 %tobool8.not, label %if.end7.i.err_crit_edge, label %for.cond.preheader

if.end7.i.err_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp69.not = icmp eq i32 %5, 0
  br i1 %cmp69.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vqs11 = getelementptr i8, ptr %2, i32 -996
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %vqs11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vqs11, align 4
  %arrayidx = getelementptr %struct.vhost_virtqueue, ptr %18, i32 %i.070
  %arrayidx12 = getelementptr ptr, ptr %call8.i, i32 %i.070
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx, ptr %arrayidx12, align 4
  %handle_kick = getelementptr %struct.vhost_virtqueue, ptr %18, i32 %i.070, i32 12
  %20 = ptrtoint ptr %handle_kick to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @handle_vq_kick, ptr %handle_kick, align 8
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @vhost_dev_init(ptr noundef %add.ptr, ptr noundef nonnull %call8.i, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull @vhost_vdpa_process_iotlb_msg) #10
  %call14 = tail call ptr @vhost_iotlb_alloc(i32 noundef 0, i32 noundef 0) #10
  %iotlb = getelementptr i8, ptr %2, i32 -1144
  %21 = ptrtoint ptr %iotlb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call14, ptr %iotlb, align 8
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %for.end.err_init_iotlb_crit_edge, label %if.end18

for.end.err_init_iotlb_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_iotlb

if.end18:                                         ; preds = %for.end
  %22 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdpa1.i, align 8
  %config.i = getelementptr inbounds %struct.vdpa_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i, align 8
  %dma_dev.i.i = getelementptr inbounds %struct.vdpa_device, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_dev.i.i, align 8
  %set_map.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %25, i32 0, i32 27
  %28 = ptrtoint ptr %set_map.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_map.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

lor.lhs.false.i:                                  ; preds = %if.end18
  %dma_map.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %25, i32 0, i32 28
  %30 = ptrtoint ptr %dma_map.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_map.i, align 4
  %tobool2.not.i = icmp eq ptr %31, null
  br i1 %tobool2.not.i, label %if.end.i58, label %lor.lhs.false.i.if.end22_crit_edge

lor.lhs.false.i.if.end22_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end.i58:                                       ; preds = %lor.lhs.false.i
  %bus3.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 5
  %32 = ptrtoint ptr %bus3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus3.i, align 8
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %if.end.i58.err_init_iotlb_crit_edge, label %if.end6.i

if.end.i58.err_init_iotlb_crit_edge:              ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_iotlb

if.end6.i:                                        ; preds = %if.end.i58
  %call7.i = tail call zeroext i1 @iommu_capable(ptr noundef nonnull %33, i32 noundef 0) #10
  br i1 %call7.i, label %if.end9.i, label %if.end6.i.err_init_iotlb_crit_edge

if.end6.i.err_init_iotlb_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_iotlb

if.end9.i:                                        ; preds = %if.end6.i
  %call10.i = tail call ptr @iommu_domain_alloc(ptr noundef nonnull %33) #10
  %domain.i = getelementptr i8, ptr %2, i32 -1000
  %34 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call10.i, ptr %domain.i, align 8
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %if.end9.i.err_init_iotlb_crit_edge, label %if.end14.i

if.end9.i.err_init_iotlb_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_iotlb

if.end14.i:                                       ; preds = %if.end9.i
  %call16.i = tail call i32 @iommu_attach_device(ptr noundef nonnull %call10.i, ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end22_crit_edge, label %err_attach.i

if.end14.i.if.end22_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

err_attach.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %domain.i, align 8
  tail call void @iommu_domain_free(ptr noundef %36) #10
  br label %err_init_iotlb

if.end22:                                         ; preds = %if.end14.i.if.end22_crit_edge, %lor.lhs.false.i.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %range1.i = getelementptr i8, ptr %2, i32 184
  %37 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdpa1.i, align 8
  %config.i60 = getelementptr inbounds %struct.vdpa_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %config.i60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i60, align 8
  %get_iova_range.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %40, i32 0, i32 26
  %41 = ptrtoint ptr %get_iova_range.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_iova_range.i, align 4
  %tobool.not.i61 = icmp eq ptr %42, null
  br i1 %tobool.not.i61, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void %42(ptr nonnull sret(%struct.vdpa_iova_range) align 8 %tmp.i, ptr noundef %38) #10
  %43 = call ptr @memcpy(ptr %range1.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  br label %vhost_vdpa_set_iova_range.exit

if.else.i:                                        ; preds = %if.end22
  %domain.i62 = getelementptr i8, ptr %2, i32 -1000
  %44 = ptrtoint ptr %domain.i62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domain.i62, align 8
  %tobool4.not.i63 = icmp eq ptr %45, null
  br i1 %tobool4.not.i63, label %if.else.i.if.else13.i_crit_edge, label %land.lhs.true.i64

if.else.i.if.else13.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

land.lhs.true.i64:                                ; preds = %if.else.i
  %force_aperture.i = getelementptr inbounds %struct.iommu_domain, ptr %45, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %force_aperture.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %force_aperture.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool6.not.i = icmp eq i8 %47, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i64.if.else13.i_crit_edge, label %if.then7.i

land.lhs.true.i64.if.else13.i_crit_edge:          ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

if.then7.i:                                       ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #12
  %geometry.i = getelementptr inbounds %struct.iommu_domain, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %geometry.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %geometry.i, align 4
  %conv.i = zext i32 %49 to i64
  %50 = ptrtoint ptr %range1.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv.i, ptr %range1.i, align 8
  %aperture_end.i = getelementptr inbounds %struct.iommu_domain, ptr %45, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %aperture_end.i, align 4
  %conv12.i = zext i32 %52 to i64
  %last.i = getelementptr i8, ptr %2, i32 192
  %53 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv12.i, ptr %last.i, align 8
  br label %vhost_vdpa_set_iova_range.exit

if.else13.i:                                      ; preds = %land.lhs.true.i64.if.else13.i_crit_edge, %if.else.i.if.else13.i_crit_edge
  %54 = ptrtoint ptr %range1.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %range1.i, align 8
  %last15.i = getelementptr i8, ptr %2, i32 192
  %55 = ptrtoint ptr %last15.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %last15.i, align 8
  br label %vhost_vdpa_set_iova_range.exit

vhost_vdpa_set_iova_range.exit:                   ; preds = %if.else13.i, %if.then7.i, %if.then.i
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %56 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr, ptr %private_data, align 4
  br label %cleanup

err_init_iotlb:                                   ; preds = %err_attach.i, %if.end9.i.err_init_iotlb_crit_edge, %if.end6.i.err_init_iotlb_crit_edge, %if.end.i58.err_init_iotlb_crit_edge, %for.end.err_init_iotlb_crit_edge
  %r.0 = phi i32 [ -12, %for.end.err_init_iotlb_crit_edge ], [ -5, %if.end9.i.err_init_iotlb_crit_edge ], [ -524, %if.end6.i.err_init_iotlb_crit_edge ], [ -14, %if.end.i58.err_init_iotlb_crit_edge ], [ %call16.i, %err_attach.i ]
  tail call void @vhost_dev_cleanup(ptr noundef %add.ptr) #10
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %err

err:                                              ; preds = %err_init_iotlb, %if.end7.i.err_crit_edge, %if.end6.err_crit_edge, %if.end.err_crit_edge
  %r.1 = phi i32 [ %call.i.i55, %if.end.err_crit_edge ], [ %r.0, %err_init_iotlb ], [ -12, %if.end7.i.err_crit_edge ], [ -12, %if.end6.err_crit_edge ]
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened1, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %opened1, i32 1, i32 3, i32 1) #10
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %opened1, ptr %opened1, i32 1, ptr elementtype(i32) %opened1) #10, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %err, %vhost_vdpa_set_iova_range.exit, %atomic_cmpxchg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err ], [ 0, %vhost_vdpa_set_iova_range.exit ], [ -16, %atomic_cmpxchg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  %nvqs.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nvqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.i = icmp sgt i32 %4, 0
  br i1 %cmp4.i, label %for.body.lr.ph.i, label %entry.vhost_vdpa_clean_irq.exit_crit_edge

entry.vhost_vdpa_clean_irq.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_clean_irq.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %vqs.i.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vqs.i.i, align 4
  %idxprom.i.i = and i32 %i.05.i, 65535
  %producer.i.i = getelementptr %struct.vhost_virtqueue, ptr %6, i32 %idxprom.i.i, i32 8, i32 1
  tail call void @irq_bypass_unregister_producer(ptr noundef %producer.i.i) #10
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %7 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nvqs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vhost_vdpa_clean_irq.exit_crit_edge

for.body.i.vhost_vdpa_clean_irq.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_clean_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

vhost_vdpa_clean_irq.exit:                        ; preds = %for.body.i.vhost_vdpa_clean_irq.exit_crit_edge, %entry.vhost_vdpa_clean_irq.exit_crit_edge
  %vdpa1.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdpa1.i, align 8
  %in_batch.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %in_batch.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %in_batch.i, align 4
  %config.i.i = getelementptr inbounds %struct.vdpa_device, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i, align 8
  %cf_mutex.i.i = getelementptr inbounds %struct.vdpa_device, ptr %10, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cf_mutex.i.i, i32 noundef 0) #10
  %features_valid.i.i = getelementptr inbounds %struct.vdpa_device, ptr %10, i32 0, i32 6
  %14 = ptrtoint ptr %features_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %features_valid.i.i, align 4
  %reset.i.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %13, i32 0, i32 21
  %15 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset.i.i, align 4
  %call.i.i18 = tail call i32 %16(ptr noundef %10) #10
  tail call void @mutex_unlock(ptr noundef %cf_mutex.i.i) #10
  tail call void @vhost_dev_stop(ptr noundef %1) #10
  tail call fastcc void @vhost_vdpa_iotlb_unmap(ptr noundef %1, i64 noundef 0, i64 noundef -1) #10
  %iotlb.i = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iotlb.i, align 8
  tail call void @kfree(ptr noundef %18) #10
  %19 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %iotlb.i, align 8
  %domain.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %vhost_vdpa_clean_irq.exit.vhost_vdpa_free_domain.exit_crit_edge, label %if.then.i

vhost_vdpa_clean_irq.exit.vhost_vdpa_free_domain.exit_crit_edge: ; preds = %vhost_vdpa_clean_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_free_domain.exit

if.then.i:                                        ; preds = %vhost_vdpa_clean_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdpa1.i, align 8
  %dma_dev.i.i = getelementptr inbounds %struct.vdpa_device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_dev.i.i, align 8
  tail call void @iommu_detach_device(ptr noundef nonnull %21, ptr noundef %25) #10
  %26 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %domain.i, align 8
  tail call void @iommu_domain_free(ptr noundef %27) #10
  br label %vhost_vdpa_free_domain.exit

vhost_vdpa_free_domain.exit:                      ; preds = %if.then.i, %vhost_vdpa_clean_irq.exit.vhost_vdpa_free_domain.exit_crit_edge
  %28 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %domain.i, align 8
  %config_ctx.i = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %config_ctx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config_ctx.i, align 8
  %tobool.not.i20 = icmp eq ptr %30, null
  br i1 %tobool.not.i20, label %vhost_vdpa_free_domain.exit.vhost_vdpa_config_put.exit_crit_edge, label %if.then.i21

vhost_vdpa_free_domain.exit.vhost_vdpa_config_put.exit_crit_edge: ; preds = %vhost_vdpa_free_domain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %vhost_vdpa_config_put.exit

if.then.i21:                                      ; preds = %vhost_vdpa_free_domain.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @eventfd_ctx_put(ptr noundef nonnull %30) #10
  %31 = ptrtoint ptr %config_ctx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %config_ctx.i, align 8
  br label %vhost_vdpa_config_put.exit

vhost_vdpa_config_put.exit:                       ; preds = %if.then.i21, %vhost_vdpa_free_domain.exit.vhost_vdpa_config_put.exit_crit_edge
  tail call void @vhost_dev_cleanup(ptr noundef %1) #10
  %vqs = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vqs, align 8
  tail call void @kfree(ptr noundef %33) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %opened = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %opened, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %opened, ptr %opened, i32 1, ptr elementtype(i32) %opened) #10, !srcloc !74
  %completion = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_chr_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_set_backend_features(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_dev_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_vdpa_vring_ioctl(ptr noundef %v, i32 noundef %cmd, ptr noundef %argp) unnamed_addr #3 align 64 {
entry:
  %vq_state = alloca %struct.vdpa_vq_state, align 4
  %cb = alloca %struct.vdpa_callback, align 4
  %s = alloca %struct.vhost_vring_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa1 = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 4
  %0 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa1, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vq_state) #10
  %4 = ptrtoint ptr %vq_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vq_state, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb) #10
  %5 = getelementptr inbounds %struct.vdpa_callback, ptr %cb, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s) #10
  %6 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %s, align 4, !annotation !66
  %7 = getelementptr inbounds %struct.vhost_vring_state, ptr %s, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !66
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 370) #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !69
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %argp, i32 -1226833921) #10, !srcloc !75
  %asmresult = extractvalue { i32, i32 } %12, 0
  %asmresult2 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp slt i32 %asmresult, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %nvqs = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 8
  %13 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nvqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult2, i32 %14)
  %cmp4.not = icmp ult i32 %asmresult2, %14
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %asmresult2, i32 %14) #10, !srcloc !76
  %and = and i32 %15, %asmresult2
  %vqs = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 2
  %16 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vqs, align 4
  %arrayidx = getelementptr %struct.vhost_virtqueue, ptr %17, i32 %and
  %18 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %if.end6.sw.epilog_crit_edge [
    i32 1074311029, label %if.end8.i.i
    i32 -1073172718, label %sw.bb17
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end8.i.i:                                      ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 8, i32 -1226833920) #15, !srcloc !67
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !68

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %s, i32 noundef 8) #10
  %20 = call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !69
  %and.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %s, ptr noundef %argp, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end15, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !68

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i111 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i111
  %add.ptr.i.i = getelementptr i8, ptr %s, i32 %sub.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i111)
  br label %cleanup

if.end15:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %set_vq_ready = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %set_vq_ready to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_vq_ready, align 4
  %conv = trunc i32 %and to i16
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool16 = icmp ne i32 %27, 0
  call void %25(ptr noundef %1, i16 noundef zeroext %conv, i1 noundef zeroext %tobool16) #10
  br label %cleanup

sw.bb17:                                          ; preds = %if.end6
  %get_vq_state = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %get_vq_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_vq_state, align 4
  %30 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdpa1, align 8
  %conv19 = trunc i32 %and to i16
  %call20 = call i32 %29(ptr noundef %31, i16 noundef zeroext %conv19, ptr noundef nonnull %vq_state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %vq_state to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vq_state, align 4
  %last_avail_idx = getelementptr %struct.vhost_virtqueue, ptr %17, i32 %and, i32 13
  %34 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %last_avail_idx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end23, %if.end6.sw.epilog_crit_edge
  %call24 = call i32 @vhost_vring_ioctl(ptr noundef %v, i32 noundef %cmd, ptr noundef %argp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %sw.epilog
  %35 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %cmd, label %if.end27.cleanup_crit_edge [
    i32 1076408081, label %sw.bb28
    i32 1074310930, label %sw.bb37
    i32 1074310945, label %sw.bb45
    i32 1074310928, label %sw.bb53
  ]

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb28:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %conv29 = trunc i32 %and to i16
  %desc = getelementptr %struct.vhost_virtqueue, ptr %17, i32 %and, i32 3
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc, align 4
  %40 = ptrtoint ptr %39 to i32
  %conv30 = zext i32 %40 to i64
  %avail = getelementptr %struct.vhost_virtqueue, ptr %17, i32 %and, i32 4
  %41 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %avail, align 8
  %43 = ptrtoint ptr %42 to i32
  %conv31 = zext i32 %43 to i64
  %used = getelementptr %struct.vhost_virtqueue, ptr %17, i32 %and, i32 5
  %44 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %used, align 4
  %46 = ptrtoint ptr %45 to i32
  %conv32 = zext i32 %46 to i64
  %call33 = call i32 %37(ptr noundef %1, i16 noundef zeroext %conv29, i64 noundef %conv30, i64 noundef %conv31, i64 noundef %conv32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %spec.select = select i1 %tobool34.not, i32 0, i32 -22
  br label %cleanup

sw.bb37:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %last_avail_idx38 = getelementptr %struct.vhost_virtqueue, ptr %17, i32 %and, i32 13
  %47 = ptrtoint ptr %last_avail_idx38 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %last_avail_idx38, align 4
  %49 = ptrtoint ptr %vq_state to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %vq_state, align 4
  %set_vq_state = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 6
  %50 = ptrtoint ptr %set_vq_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_vq_state, align 4
  %conv40 = trunc i32 %and to i16
  %call41 = call i32 %51(ptr noundef %1, i16 noundef zeroext %conv40, ptr noundef nonnull %vq_state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %spec.select108 = select i1 %tobool42.not, i32 0, i32 -22
  br label %cleanup

sw.bb45:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call_ctx = getelementptr %struct.vhost_virtqueue, ptr %17, i32 %and, i32 8
  %52 = ptrtoint ptr %call_ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call_ctx, align 8
  %tobool46.not = icmp eq ptr %53, null
  %.vhost_vdpa_virtqueue_cb = select i1 %tobool46.not, ptr null, ptr @vhost_vdpa_virtqueue_cb
  %.arrayidx = select i1 %tobool46.not, ptr null, ptr %arrayidx
  %54 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %.vhost_vdpa_virtqueue_cb, ptr %cb, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %.arrayidx, ptr %5, align 4
  %set_vq_cb = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 3
  %56 = ptrtoint ptr %set_vq_cb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_vq_cb, align 4
  %conv51 = trunc i32 %and to i16
  call void %57(ptr noundef %1, i16 noundef zeroext %conv51, ptr noundef nonnull %cb) #10
  call fastcc void @vhost_vdpa_setup_vq_irq(ptr noundef %v, i16 noundef zeroext %conv51)
  br label %cleanup

sw.bb53:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %set_vq_num = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 1
  %58 = ptrtoint ptr %set_vq_num to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_vq_num, align 4
  %conv54 = trunc i32 %and to i16
  %num55 = getelementptr %struct.vhost_virtqueue, ptr %17, i32 %and, i32 2
  %60 = ptrtoint ptr %num55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num55, align 8
  call void %59(ptr noundef %1, i16 noundef zeroext %conv54, i32 noundef %61) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb53, %sw.bb45, %sw.bb37, %sw.bb28, %if.end27.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %if.end15, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %asmresult, %entry.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ], [ %call20, %sw.bb17.cleanup_crit_edge ], [ %call24, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %sw.bb53 ], [ 0, %sw.bb45 ], [ %spec.select, %sw.bb28 ], [ %spec.select108, %sw.bb37 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vq_state) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_set_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_vdpa_setup_vq_irq(ptr noundef %v, i16 noundef zeroext %qid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %qid to i32
  %vdpa = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 4
  %0 = ptrtoint ptr %vdpa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %get_vq_irq = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_vq_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_vq_irq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vqs = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 2
  %6 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vqs, align 4
  %call = tail call i32 %5(ptr noundef %1, i16 noundef zeroext %qid) #10
  %call_ctx = getelementptr %struct.vhost_virtqueue, ptr %7, i32 %idxprom, i32 8
  %producer = getelementptr %struct.vhost_virtqueue, ptr %7, i32 %idxprom, i32 8, i32 1
  tail call void @irq_bypass_unregister_producer(ptr noundef %producer) #10
  %8 = ptrtoint ptr %call_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call_ctx, align 8
  %tobool5.not = icmp eq ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %token = getelementptr %struct.vhost_virtqueue, ptr %7, i32 %idxprom, i32 8, i32 1, i32 1
  %10 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %token, align 4
  %irq14 = getelementptr %struct.vhost_virtqueue, ptr %7, i32 %idxprom, i32 8, i32 1, i32 2
  %11 = ptrtoint ptr %irq14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %irq14, align 4
  %call17 = tail call i32 @irq_bypass_register_producer(ptr noundef %producer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end7.cleanup_crit_edge, label %do.end, !prof !68

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 5
  %12 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %token, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %idxprom, ptr noundef %13, i32 noundef %call17) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_bypass_unregister_producer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_bypass_register_producer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_get_config(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmemdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_set_config(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_config_cb(ptr nocapture noundef readonly %private) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config_ctx1 = getelementptr inbounds %struct.vhost_vdpa, ptr %private, i32 0, i32 11
  %0 = ptrtoint ptr %config_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_ctx1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 @eventfd_signal(ptr noundef nonnull %1, i64 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_vring_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_virtqueue_cb(ptr nocapture noundef readonly %private) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call_ctx1 = getelementptr inbounds %struct.vhost_virtqueue, ptr %private, i32 0, i32 8
  %0 = ptrtoint ptr %call_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call_ctx1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 @eventfd_signal(ptr noundef nonnull %1, i64 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_fault(ptr nocapture noundef readonly %vmf) #3 align 64 {
entry:
  %tmp = alloca %struct.vdpa_notification_area, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %vdpa1 = getelementptr inbounds %struct.vhost_vdpa, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdpa1, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff, align 4
  %conv = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #10
  %get_vq_notification = getelementptr inbounds %struct.vdpa_config_ops, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %get_vq_notification to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_vq_notification, align 4
  call void %13(ptr nonnull sret(%struct.vdpa_notification_area) align 4 %tmp, ptr noundef %7, i16 noundef zeroext %conv) #10
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %notify.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #10
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %16, -61
  store i32 %and, ptr %vm_page_prot, align 4
  %address = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 3
  %17 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %address, align 4
  %and5 = and i32 %18, -4096
  %shr = lshr i32 %notify.sroa.0.0.copyload, 12
  %call = call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %and5, i32 noundef %shr, i32 noundef 4096, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 256, i32 2
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_vq_kick(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %vdpa = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vdpa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdpa, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %kick_vq = getelementptr inbounds %struct.vdpa_config_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %kick_vq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kick_vq, align 4
  %vqs = getelementptr inbounds %struct.vhost_vdpa, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vqs, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 9520
  %conv = trunc i32 %sub.ptr.div to i16
  tail call void %7(ptr noundef %3, i16 noundef zeroext %conv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vdpa_process_iotlb_msg(ptr noundef %dev, ptr nocapture noundef readonly %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa1 = getelementptr inbounds %struct.vhost_vdpa, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa1, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %mutex = getelementptr inbounds %struct.vhost_dev, ptr %dev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = tail call i32 @vhost_dev_check_owner(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.vhost_iotlb_msg, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %5, label %if.end.unlock_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb3
    i8 5, label %sw.bb4
    i8 6, label %sw.bb5
  ]

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdpa1, align 8
  %iotlb2.i = getelementptr inbounds %struct.vhost_dev, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %iotlb2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iotlb2.i, align 8
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %msg, align 8
  %range.i = getelementptr inbounds %struct.vhost_vdpa, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %range.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp.i = icmp ult i64 %12, %14
  br i1 %cmp.i, label %sw.bb.unlock_crit_edge, label %lor.lhs.false.i

sw.bb.unlock_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

lor.lhs.false.i:                                  ; preds = %sw.bb
  %size.i = getelementptr inbounds %struct.vhost_iotlb_msg, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not.i = icmp eq i64 %16, 0
  %add.i = sub i64 0, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %add.i)
  %cmp6.i = icmp ugt i64 %12, %add.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp6.i
  br i1 %or.cond.i, label %lor.lhs.false.i.unlock_crit_edge, label %lor.lhs.false7.i

lor.lhs.false.i.unlock_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %add10.i = add i64 %12, -1
  %sub11.i = add i64 %add10.i, %16
  %last.i = getelementptr inbounds %struct.vhost_vdpa, ptr %dev, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %last.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub11.i, i64 %18)
  %cmp13.i = icmp ugt i64 %sub11.i, %18
  br i1 %cmp13.i, label %lor.lhs.false7.i.unlock_crit_edge, label %if.end.i

lor.lhs.false7.i.unlock_crit_edge:                ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end.i:                                         ; preds = %lor.lhs.false7.i
  %call.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %10, i64 noundef %12, i64 noundef %sub11.i) #10
  %tobool19.not.i = icmp eq ptr %call.i, null
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end21.i:                                       ; preds = %if.end.i
  %use_va.i = getelementptr inbounds %struct.vdpa_device, ptr %8, i32 0, i32 7
  %19 = ptrtoint ptr %use_va.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_va.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not.i = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %msg, align 8
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %size.i, align 8
  %uaddr30.i = getelementptr inbounds %struct.vhost_iotlb_msg, ptr %msg, i32 0, i32 2
  %25 = ptrtoint ptr %uaddr30.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %uaddr30.i, align 8
  %perm31.i = getelementptr inbounds %struct.vhost_iotlb_msg, ptr %msg, i32 0, i32 3
  %27 = ptrtoint ptr %perm31.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %perm31.i, align 8
  %conv32.i = zext i8 %28 to i32
  br i1 %tobool22.not.i, label %if.end27.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %call26.i = tail call fastcc i32 @vhost_vdpa_va_map(ptr noundef %dev, i64 noundef %22, i64 noundef %24, i64 noundef %26, i32 noundef %conv32.i) #10
  br label %unlock

if.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = tail call fastcc i32 @vhost_vdpa_pa_map(ptr noundef %dev, i64 noundef %22, i64 noundef %24, i64 noundef %26, i32 noundef %conv32.i) #10
  br label %unlock

sw.bb3:                                           ; preds = %if.end
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %msg, align 8
  %size = getelementptr inbounds %struct.vhost_iotlb_msg, ptr %msg, i32 0, i32 1
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %size, align 8
  %33 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdpa1, align 8
  %config.i = getelementptr inbounds %struct.vdpa_device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config.i, align 8
  %add.i31 = add i64 %30, -1
  %sub.i = add i64 %add.i31, %32
  tail call fastcc void @vhost_vdpa_iotlb_unmap(ptr noundef %dev, i64 noundef %30, i64 noundef %sub.i) #10
  %dma_map.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %36, i32 0, i32 28
  %37 = ptrtoint ptr %dma_map.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_map.i, align 4
  %tobool.not.i32 = icmp eq ptr %38, null
  br i1 %tobool.not.i32, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %dma_unmap.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %36, i32 0, i32 29
  %39 = ptrtoint ptr %dma_unmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_unmap.i, align 4
  %call.i33 = tail call i32 %40(ptr noundef %34, i64 noundef %30, i64 noundef %32) #10
  br label %unlock

if.else.i:                                        ; preds = %sw.bb3
  %set_map.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %36, i32 0, i32 27
  %41 = ptrtoint ptr %set_map.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_map.i, align 4
  %tobool2.not.i = icmp eq ptr %42, null
  br i1 %tobool2.not.i, label %if.else8.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %in_batch.i = getelementptr inbounds %struct.vhost_vdpa, ptr %dev, i32 0, i32 12
  %43 = ptrtoint ptr %in_batch.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %in_batch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool4.not.i = icmp eq i32 %44, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then3.i.unlock_crit_edge

if.then3.i.unlock_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %iotlb.i = getelementptr inbounds %struct.vhost_dev, ptr %dev, i32 0, i32 8
  %45 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iotlb.i, align 8
  %call7.i = tail call i32 %42(ptr noundef %34, ptr noundef %46) #10
  br label %unlock

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %domain.i = getelementptr inbounds %struct.vhost_vdpa, ptr %dev, i32 0, i32 1
  %47 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %domain.i, align 8
  %conv.i = trunc i64 %30 to i32
  %conv9.i = trunc i64 %32 to i32
  %call10.i = tail call i32 @iommu_unmap(ptr noundef %48, i32 noundef %conv.i, i32 noundef %conv9.i) #10
  br label %unlock

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %in_batch = getelementptr inbounds %struct.vhost_vdpa, ptr %dev, i32 0, i32 12
  %49 = ptrtoint ptr %in_batch to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %in_batch, align 4
  br label %unlock

sw.bb5:                                           ; preds = %if.end
  %in_batch6 = getelementptr inbounds %struct.vhost_vdpa, ptr %dev, i32 0, i32 12
  %50 = ptrtoint ptr %in_batch6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %in_batch6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool7.not = icmp eq i32 %51, 0
  br i1 %tobool7.not, label %sw.bb5.if.end12_crit_edge, label %land.lhs.true

sw.bb5.if.end12_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %sw.bb5
  %set_map = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 27
  %52 = ptrtoint ptr %set_map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_map, align 4
  %tobool8.not = icmp eq ptr %53, null
  br i1 %tobool8.not, label %land.lhs.true.if.end12_crit_edge, label %if.then9

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %iotlb = getelementptr inbounds %struct.vhost_dev, ptr %dev, i32 0, i32 8
  %54 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iotlb, align 8
  %call11 = tail call i32 %53(ptr noundef %1, ptr noundef %55) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true.if.end12_crit_edge, %sw.bb5.if.end12_crit_edge
  %56 = ptrtoint ptr %in_batch6 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %in_batch6, align 4
  br label %unlock

unlock:                                           ; preds = %if.end12, %sw.bb4, %if.else8.i, %if.then5.i, %if.then3.i.unlock_crit_edge, %if.then.i, %if.end27.i, %if.then23.i, %if.end.i.unlock_crit_edge, %lor.lhs.false7.i.unlock_crit_edge, %lor.lhs.false.i.unlock_crit_edge, %sw.bb.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %r.0 = phi i32 [ %call, %entry.unlock_crit_edge ], [ 0, %if.end12 ], [ 0, %sw.bb4 ], [ -22, %if.end.unlock_crit_edge ], [ %call26.i, %if.then23.i ], [ %call33.i, %if.end27.i ], [ -22, %lor.lhs.false7.i.unlock_crit_edge ], [ -22, %lor.lhs.false.i.unlock_crit_edge ], [ -22, %sw.bb.unlock_crit_edge ], [ -17, %if.end.i.unlock_crit_edge ], [ 0, %if.then.i ], [ 0, %if.then3.i.unlock_crit_edge ], [ 0, %if.then5.i ], [ 0, %if.else8.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_dev_check_owner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_first(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_vdpa_va_map(ptr nocapture noundef readonly %v, i64 noundef %iova, i64 noundef %size, i64 noundef %uaddr, i32 noundef %perm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@vhost_vdpa_va_map, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !77

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@vhost_vdpa_va_map, %if.then.i3.i)) #10
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !77

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool.not79 = icmp eq i64 %size, 0
  br i1 %tobool.not79, label %mmap_read_lock.exit.if.end34_crit_edge, label %mmap_read_lock.exit.while.body_crit_edge

mmap_read_lock.exit.while.body_crit_edge:         ; preds = %mmap_read_lock.exit
  br label %while.body

mmap_read_lock.exit.if.end34_crit_edge:           ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

while.body:                                       ; preds = %next.while.body_crit_edge, %mmap_read_lock.exit.while.body_crit_edge
  %size.addr.084 = phi i64 [ %sub28, %next.while.body_crit_edge ], [ %size, %mmap_read_lock.exit.while.body_crit_edge ]
  %map_iova.082 = phi i64 [ %add30, %next.while.body_crit_edge ], [ %iova, %mmap_read_lock.exit.while.body_crit_edge ]
  %uaddr.addr.080 = phi i64 [ %add29, %next.while.body_crit_edge ], [ %uaddr, %mmap_read_lock.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v, align 8
  %conv = trunc i64 %uaddr.addr.080 to i32
  %call = tail call ptr @find_vma(ptr noundef %3, i32 noundef %conv) #10
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %while.body.if.then32_crit_edge, label %if.end

while.body.if.then32_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.end:                                           ; preds = %while.body
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %conv3 = zext i32 %5 to i64
  %sub = sub i64 %conv3, %uaddr.addr.080
  %6 = tail call i64 @llvm.umin.i64(i64 %size.addr.084, i64 %sub)
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm_file, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.next_crit_edge, label %land.lhs.true

if.end.next_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

land.lhs.true:                                    ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags, align 4
  %11 = and i32 %10, 17416
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %if.end12, label %land.lhs.true.next_crit_edge

land.lhs.true.next_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

if.end12:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 16) #13
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.if.then32_crit_edge, label %if.end16

if.end12.if.then32_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.end16:                                         ; preds = %if.end12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %15, 12
  %conv17 = zext i32 %shl to i64
  %add = add i64 %uaddr.addr.080, %conv17
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call, align 4
  %conv18 = zext i32 %17 to i64
  %sub19 = sub i64 %add, %conv18
  %offset20 = getelementptr inbounds %struct.vdpa_map_file, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %offset20 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sub19, ptr %offset20, align 8
  %19 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vm_file, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #10, !srcloc !78
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %call7.i.i, align 8
  %call23 = tail call fastcc i32 @vhost_vdpa_map(ptr noundef %v, i64 noundef %map_iova.082, i64 noundef %6, i64 noundef %uaddr.addr.080, i32 noundef %perm, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end16.next_crit_edge, label %if.then25

if.end16.next_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  tail call void @fput(ptr noundef %24) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.then32

next:                                             ; preds = %if.end16.next_crit_edge, %land.lhs.true.next_crit_edge, %if.end.next_crit_edge
  %sub28 = sub i64 %size.addr.084, %6
  %add29 = add i64 %6, %uaddr.addr.080
  %add30 = add i64 %6, %map_iova.082
  %tobool.not = icmp eq i64 %sub28, 0
  br i1 %tobool.not, label %next.if.end34_crit_edge, label %next.while.body_crit_edge

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

next.if.end34_crit_edge:                          ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.then25, %if.end12.if.then32_crit_edge, %while.body.if.then32_crit_edge
  %ret.2.ph = phi i32 [ %call23, %if.then25 ], [ -22, %while.body.if.then32_crit_edge ], [ -12, %if.end12.if.then32_crit_edge ]
  %sub33 = sub i64 %map_iova.082, %iova
  %vdpa1.i = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 4
  %25 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdpa1.i, align 8
  %config.i = getelementptr inbounds %struct.vdpa_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 8
  %sub.i = add i64 %map_iova.082, -1
  tail call fastcc void @vhost_vdpa_iotlb_unmap(ptr noundef %v, i64 noundef %iova, i64 noundef %sub.i) #10
  %dma_map.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %28, i32 0, i32 28
  %29 = ptrtoint ptr %dma_map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_map.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %dma_unmap.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %28, i32 0, i32 29
  %31 = ptrtoint ptr %dma_unmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_unmap.i, align 4
  %call.i = tail call i32 %32(ptr noundef %26, i64 noundef %iova, i64 noundef %sub33) #10
  br label %if.end34

if.else.i:                                        ; preds = %if.then32
  %set_map.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %28, i32 0, i32 27
  %33 = ptrtoint ptr %set_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_map.i, align 4
  %tobool2.not.i = icmp eq ptr %34, null
  br i1 %tobool2.not.i, label %if.else8.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %in_batch.i = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 12
  %35 = ptrtoint ptr %in_batch.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_batch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.not.i = icmp eq i32 %36, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then3.i.if.end34_crit_edge

if.then3.i.if.end34_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %iotlb.i = getelementptr inbounds %struct.vhost_dev, ptr %v, i32 0, i32 8
  %37 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iotlb.i, align 8
  %call7.i = tail call i32 %34(ptr noundef %26, ptr noundef %38) #10
  br label %if.end34

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %domain.i = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 1
  %39 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %domain.i, align 8
  %conv.i = trunc i64 %iova to i32
  %conv9.i = trunc i64 %sub33 to i32
  %call10.i = tail call i32 @iommu_unmap(ptr noundef %40, i32 noundef %conv.i, i32 noundef %conv9.i) #10
  br label %if.end34

if.end34:                                         ; preds = %if.else8.i, %if.then5.i, %if.then3.i.if.end34_crit_edge, %if.then.i, %next.if.end34_crit_edge, %mmap_read_lock.exit.if.end34_crit_edge
  %ret.275 = phi i32 [ %ret.2.ph, %if.then.i ], [ %ret.2.ph, %if.then3.i.if.end34_crit_edge ], [ %ret.2.ph, %if.then5.i ], [ %ret.2.ph, %if.else8.i ], [ 0, %mmap_read_lock.exit.if.end34_crit_edge ], [ 0, %next.if.end34_crit_edge ]
  %41 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %v, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@vhost_vdpa_va_map, %if.then.i.i70)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i70], !srcloc !77

if.then.i.i70:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %42, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i70, %if.end34
  %mmap_lock.i71 = getelementptr inbounds %struct.anon.10, ptr %42, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i71) #10
  ret i32 %ret.275
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_vdpa_pa_map(ptr nocapture noundef readonly %v, i64 noundef %iova, i64 noundef %size, i64 noundef %uaddr, i32 noundef %perm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup115_crit_edge, label %if.end

entry.cleanup115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

if.end:                                           ; preds = %entry
  %and = and i32 %perm, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, i32 65536, i32 65537
  %and4 = and i64 %iova, 4095
  %add = add i64 %size, 4095
  %sub = add i64 %add, %and4
  %shr = lshr i64 %sub, 12
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool6.not = icmp eq i32 %conv, 0
  br i1 %tobool6.not, label %if.end.free_crit_edge, label %if.end8

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

if.end8:                                          ; preds = %if.end
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %v, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@vhost_vdpa_pa_map, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !77

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %2, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end8
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %2, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@vhost_vdpa_pa_map, %if.then.i3.i)) #10
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !77

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %3 = tail call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 111
  %7 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 51, i32 8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 8
  %shr10 = lshr i32 %10, 12
  %conv11 = and i64 %shr, 4294967295
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v, align 8
  %pinned_vm = getelementptr inbounds %struct.anon.10, ptr %12, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pinned_vm, i32 noundef 8) #10
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %pinned_vm) #10
  %add14 = add i64 %call.i, %conv11
  %conv15 = zext i32 %shr10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add14, i64 %conv15)
  %cmp = icmp sgt i64 %add14, %conv15
  br i1 %cmp, label %mmap_read_lock.exit.unlock_crit_edge, label %while.body.preheader

mmap_read_lock.exit.unlock_crit_edge:             ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

while.body.preheader:                             ; preds = %mmap_read_lock.exit
  %and21 = and i64 %iova, -4096
  %13 = trunc i64 %uaddr to i32
  %conv20 = and i32 %13, -4096
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.preheader
  %iova.addr.0241 = phi i64 [ %iova.addr.3.ph, %for.end.while.body_crit_edge ], [ %and21, %while.body.preheader ]
  %nchunks.0240 = phi i32 [ %nchunks.3.ph, %for.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %last_pfn.0239 = phi i32 [ %add45, %for.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %map_pfn.0238 = phi i32 [ %map_pfn.4.ph, %for.end.while.body_crit_edge ], [ -1, %while.body.preheader ]
  %cur_base.0237 = phi i32 [ %add67, %for.end.while.body_crit_edge ], [ %conv20, %while.body.preheader ]
  %npages.0236 = phi i32 [ %sub68, %for.end.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %14 = tail call i32 @llvm.umin.i32(i32 %npages.0236, i32 1024)
  %call25 = tail call i32 @pin_user_pages(i32 noundef %cur_base.0237, i32 noundef %14, i32 noundef %spec.select, ptr noundef nonnull %0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call25)
  %cmp26.not = icmp eq i32 %14, %call25
  br i1 %cmp26.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp29 = icmp slt i32 %call25, 0
  br i1 %cmp29, label %if.then28.if.then77_crit_edge, label %if.else

if.then28.if.then77_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unpin_user_pages(ptr noundef nonnull %0, i32 noundef %call25) #10
  br label %if.then77

if.end33:                                         ; preds = %while.body
  %inc = add i32 %nchunks.0240, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_pfn.0239)
  %tobool34.not = icmp eq i32 %last_pfn.0239, 0
  br i1 %tobool34.not, label %if.then35, label %if.end33.for.body.preheader_crit_edge

if.end33.for.body.preheader_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add36 = add i32 %sub.ptr.div, %18
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then35, %if.end33.for.body.preheader_crit_edge
  %map_pfn.2226.ph = phi i32 [ %add36, %if.then35 ], [ %map_pfn.0238, %if.end33.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %iova.addr.1231 = phi i64 [ %iova.addr.3.ph, %for.inc.for.body_crit_edge ], [ %iova.addr.0241, %for.body.preheader ]
  %i.0229 = phi i32 [ %inc65, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %nchunks.1228 = phi i32 [ %nchunks.3.ph, %for.inc.for.body_crit_edge ], [ %inc, %for.body.preheader ]
  %last_pfn.1227 = phi i32 [ %add45, %for.inc.for.body_crit_edge ], [ %last_pfn.0239, %for.body.preheader ]
  %map_pfn.2226 = phi i32 [ %map_pfn.4.ph, %for.inc.for.body_crit_edge ], [ %map_pfn.2226.ph, %for.body.preheader ]
  %arrayidx40 = getelementptr ptr, ptr %0, i32 %i.0229
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast41 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast42 = ptrtoint ptr %21 to i32
  %sub.ptr.sub43 = sub i32 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %sub.ptr.div44 = sdiv exact i32 %sub.ptr.sub43, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add45 = add i32 %sub.ptr.div44, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_pfn.1227)
  %tobool46.not = icmp eq i32 %last_pfn.1227, 0
  %add47 = add i32 %last_pfn.1227, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %add47)
  %cmp48.not = icmp eq i32 %add45, %add47
  %or.cond = select i1 %tobool46.not, i1 true, i1 %cmp48.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then50:                                        ; preds = %for.body
  %sub51 = sub i32 %last_pfn.1227, %map_pfn.2226
  %add52 = shl i32 %sub51, 12
  %shl = add i32 %add52, 4096
  %conv53 = zext i32 %shl to i64
  %shl54 = shl i32 %map_pfn.2226, 12
  %conv55 = zext i32 %shl54 to i64
  %call56 = tail call fastcc i32 @vhost_vdpa_map(ptr noundef %v, i64 noundef %iova.addr.1231, i64 noundef %conv53, i64 noundef %conv55, i32 noundef %perm, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end61, label %cleanup

if.end61:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %add62 = add i64 %iova.addr.1231, %conv53
  br label %for.inc

cleanup:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx40.le = getelementptr ptr, ptr %0, i32 %i.0229
  %sub60 = sub i32 %14, %i.0229
  tail call void @unpin_user_pages(ptr noundef %arrayidx40.le, i32 noundef %sub60) #10
  br label %if.then77

for.inc:                                          ; preds = %if.end61, %for.body.for.inc_crit_edge
  %map_pfn.4.ph = phi i32 [ %map_pfn.2226, %for.body.for.inc_crit_edge ], [ %add45, %if.end61 ]
  %nchunks.3.ph = phi i32 [ %nchunks.1228, %for.body.for.inc_crit_edge ], [ 0, %if.end61 ]
  %iova.addr.3.ph = phi i64 [ %iova.addr.1231, %for.body.for.inc_crit_edge ], [ %add62, %if.end61 ]
  %inc65 = add nuw i32 %i.0229, 1
  %exitcond.not = icmp eq i32 %inc65, %14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %shl66 = shl nuw nsw i32 %14, 12
  %add67 = add i32 %shl66, %cur_base.0237
  %sub68 = sub i32 %npages.0236, %14
  %tobool22.not = icmp eq i32 %sub68, 0
  br i1 %tobool22.not, label %out, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

out:                                              ; preds = %for.end
  %sub69 = sub i32 %add45, %map_pfn.4.ph
  %add70 = shl i32 %sub69, 12
  %shl71 = add i32 %add70, 4096
  %conv72 = zext i32 %shl71 to i64
  %shl73 = shl i32 %map_pfn.4.ph, 12
  %conv74 = zext i32 %shl73 to i64
  %call75 = tail call fastcc i32 @vhost_vdpa_map(ptr noundef %v, i64 noundef %iova.addr.3.ph, i64 noundef %conv72, i64 noundef %conv74, i32 noundef %perm, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %out.unlock_crit_edge, label %out.if.then77_crit_edge

out.if.then77_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

out.unlock_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then77:                                        ; preds = %out.if.then77_crit_edge, %cleanup, %if.else, %if.then28.if.then77_crit_edge
  %ret.4210 = phi i32 [ %call75, %out.if.then77_crit_edge ], [ %call25, %if.then28.if.then77_crit_edge ], [ %call56, %cleanup ], [ -12, %if.else ]
  %nchunks.4209 = phi i32 [ %nchunks.3.ph, %out.if.then77_crit_edge ], [ %nchunks.0240, %if.then28.if.then77_crit_edge ], [ %nchunks.1228, %cleanup ], [ %nchunks.0240, %if.else ]
  %last_pfn.3208 = phi i32 [ %add45, %out.if.then77_crit_edge ], [ %last_pfn.0239, %if.then28.if.then77_crit_edge ], [ %last_pfn.1227, %cleanup ], [ %last_pfn.0239, %if.else ]
  %map_pfn.5207 = phi i32 [ %map_pfn.4.ph, %out.if.then77_crit_edge ], [ %map_pfn.0238, %if.then28.if.then77_crit_edge ], [ %map_pfn.2226, %cleanup ], [ %map_pfn.0238, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nchunks.4209)
  %tobool78.not = icmp eq i32 %nchunks.4209, 0
  br i1 %tobool78.not, label %if.then77.if.end112_crit_edge, label %if.then79

if.then77.if.end112_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then79:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_pfn.3208)
  %tobool80.not = icmp eq i32 %last_pfn.3208, 0
  br i1 %tobool80.not, label %do.end, label %if.then79.if.end96_crit_edge, !prof !62

if.then79.if.end96_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.end:                                           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 795, i32 noundef 9, ptr noundef null) #10
  br label %if.end96

if.end96:                                         ; preds = %do.end, %if.then79.if.end96_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %map_pfn.5207, i32 %last_pfn.3208)
  %cmp105.not246 = icmp ugt i32 %map_pfn.5207, %last_pfn.3208
  br i1 %cmp105.not246, label %if.end96.if.end112_crit_edge, label %if.end96.for.body107_crit_edge

if.end96.for.body107_crit_edge:                   ; preds = %if.end96
  br label %for.body107

if.end96.if.end112_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %if.end96.for.body107_crit_edge
  %pfn.0247 = phi i32 [ %inc110, %for.body107.for.body107_crit_edge ], [ %map_pfn.5207, %if.end96.for.body107_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub108 = sub i32 %pfn.0247, %24
  %add.ptr = getelementptr %struct.page, ptr %23, i32 %sub108
  tail call void @unpin_user_page(ptr noundef %add.ptr) #10
  %inc110 = add i32 %pfn.0247, 1
  %cmp105.not = icmp ugt i32 %inc110, %last_pfn.3208
  br i1 %cmp105.not, label %for.body107.if.end112_crit_edge, label %for.body107.for.body107_crit_edge

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body107

for.body107.if.end112_crit_edge:                  ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.end112:                                        ; preds = %for.body107.if.end112_crit_edge, %if.end96.if.end112_crit_edge, %if.then77.if.end112_crit_edge
  %vdpa1.i = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 4
  %25 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdpa1.i, align 8
  %config.i = getelementptr inbounds %struct.vdpa_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 8
  %add.i = add i64 %iova, -1
  %sub.i = add i64 %add.i, %size
  tail call fastcc void @vhost_vdpa_iotlb_unmap(ptr noundef %v, i64 noundef %iova, i64 noundef %sub.i) #10
  %dma_map.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %28, i32 0, i32 28
  %29 = ptrtoint ptr %dma_map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_map.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %dma_unmap.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %28, i32 0, i32 29
  %31 = ptrtoint ptr %dma_unmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_unmap.i, align 4
  %call.i188 = tail call i32 %32(ptr noundef %26, i64 noundef %iova, i64 noundef %size) #10
  br label %unlock

if.else.i:                                        ; preds = %if.end112
  %set_map.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %28, i32 0, i32 27
  %33 = ptrtoint ptr %set_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_map.i, align 4
  %tobool2.not.i = icmp eq ptr %34, null
  br i1 %tobool2.not.i, label %if.else8.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %in_batch.i = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 12
  %35 = ptrtoint ptr %in_batch.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_batch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.not.i = icmp eq i32 %36, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then3.i.unlock_crit_edge

if.then3.i.unlock_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %iotlb.i = getelementptr inbounds %struct.vhost_dev, ptr %v, i32 0, i32 8
  %37 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iotlb.i, align 8
  %call7.i = tail call i32 %34(ptr noundef %26, ptr noundef %38) #10
  br label %unlock

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %domain.i = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 1
  %39 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %domain.i, align 8
  %conv.i = trunc i64 %iova to i32
  %conv9.i = trunc i64 %size to i32
  %call10.i = tail call i32 @iommu_unmap(ptr noundef %40, i32 noundef %conv.i, i32 noundef %conv9.i) #10
  br label %unlock

unlock:                                           ; preds = %if.else8.i, %if.then5.i, %if.then3.i.unlock_crit_edge, %if.then.i, %out.unlock_crit_edge, %mmap_read_lock.exit.unlock_crit_edge
  %ret.5 = phi i32 [ 0, %out.unlock_crit_edge ], [ -12, %mmap_read_lock.exit.unlock_crit_edge ], [ %ret.4210, %if.then.i ], [ %ret.4210, %if.then3.i.unlock_crit_edge ], [ %ret.4210, %if.then5.i ], [ %ret.4210, %if.else8.i ]
  %41 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %v, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@vhost_vdpa_pa_map, %if.then.i.i189)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i189], !srcloc !77

if.then.i.i189:                                   ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %42, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i189, %unlock
  %mmap_lock.i190 = getelementptr inbounds %struct.anon.10, ptr %42, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i190) #10
  br label %free

free:                                             ; preds = %mmap_read_unlock.exit, %if.end.free_crit_edge
  %ret.6 = phi i32 [ %ret.5, %mmap_read_unlock.exit ], [ -22, %if.end.free_crit_edge ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #10
  br label %cleanup115

cleanup115:                                       ; preds = %free, %entry.cleanup115_crit_edge
  %retval.0 = phi i32 [ %ret.6, %free ], [ -12, %entry.cleanup115_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_vdpa_map(ptr nocapture noundef readonly %v, i64 noundef %iova, i64 noundef %size, i64 noundef %pa, i32 noundef %perm, ptr noundef %opaque) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa1 = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 4
  %0 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa1, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %iotlb = getelementptr inbounds %struct.vhost_dev, ptr %v, i32 0, i32 8
  %4 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iotlb, align 8
  %add = add i64 %iova, -1
  %sub = add i64 %add, %size
  %call = tail call i32 @vhost_iotlb_add_range_ctx(ptr noundef %5, i64 noundef %iova, i64 noundef %sub, i64 noundef %pa, i32 noundef %perm, ptr noundef %opaque) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_map = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 28
  %6 = ptrtoint ptr %dma_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_map, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 %7(ptr noundef %1, i64 noundef %iova, i64 noundef %size, i64 noundef %pa, i32 noundef %perm, ptr noundef %opaque) #10
  br label %if.end20

if.else:                                          ; preds = %if.end
  %set_map = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 27
  %8 = ptrtoint ptr %set_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_map, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.else14, label %if.then7

if.then7:                                         ; preds = %if.else
  %in_batch = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 12
  %10 = ptrtoint ptr %in_batch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_batch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.then9, label %if.then7.if.end26_crit_edge

if.then7.if.end26_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iotlb, align 8
  %call12 = tail call i32 %9(ptr noundef %1, ptr noundef %13) #10
  br label %if.end20

if.else14:                                        ; preds = %if.else
  %domain = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 1
  %14 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain, align 8
  %conv = trunc i64 %iova to i32
  %conv15 = trunc i64 %pa to i32
  %conv16 = trunc i64 %size to i32
  %switch.tableidx = add i32 %perm, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 3
  br i1 %16, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 577, i32 noundef 9, ptr noundef nonnull @.str.14) #10
  br label %perm_to_iommu_flags.exit

switch.lookup:                                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  %switch.offset = add i32 %perm, 4
  br label %perm_to_iommu_flags.exit

perm_to_iommu_flags.exit:                         ; preds = %switch.lookup, %do.end.i
  %flags.0.i = phi i32 [ 4, %do.end.i ], [ %switch.offset, %switch.lookup ]
  %call18 = tail call i32 @iommu_map(ptr noundef %15, i32 noundef %conv, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %flags.0.i) #10
  br label %if.end20

if.end20:                                         ; preds = %perm_to_iommu_flags.exit, %if.then9, %if.then3
  %r.0 = phi i32 [ %call5, %if.then3 ], [ %call12, %if.then9 ], [ %call18, %perm_to_iommu_flags.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool21.not = icmp eq i32 %r.0, 0
  br i1 %tobool21.not, label %if.end20.if.end26_crit_edge, label %if.then22

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iotlb, align 8
  tail call void @vhost_iotlb_del_range(ptr noundef %18, i64 noundef %iova, i64 noundef %sub) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end20.if.end26_crit_edge, %if.then7.if.end26_crit_edge
  %use_va = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %use_va to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_va, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool27.not = icmp eq i8 %20, 0
  br i1 %tobool27.not, label %if.then28, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i64 %size, 12
  %21 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v, align 8
  %pinned_vm = getelementptr inbounds %struct.anon.10, ptr %22, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pinned_vm, i32 noundef 8) #10
  tail call void @generic_atomic64_add(i64 noundef %shr, ptr noundef %pinned_vm) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %if.then22 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_iotlb_add_range_ctx(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_del_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_vdpa_iotlb_unmap(ptr nocapture noundef readonly %v, i64 noundef %start, i64 noundef %last) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa1 = getelementptr inbounds %struct.vhost_vdpa, ptr %v, i32 0, i32 4
  %0 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa1, align 8
  %use_va = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %use_va to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_va, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %iotlb1.i6 = getelementptr inbounds %struct.vhost_dev, ptr %v, i32 0, i32 8
  %4 = ptrtoint ptr %iotlb1.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iotlb1.i6, align 8
  %call21.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %5, i64 noundef %start, i64 noundef %last) #10
  %cmp.not22.i = icmp eq ptr %call21.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.not22.i, label %if.then.cleanup_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call21.i, %if.then.while.body.i_crit_edge ]
  %opaque.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call7.i, i32 0, i32 9
  %6 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opaque.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void @fput(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %7) #10
  tail call void @vhost_iotlb_map_free(ptr noundef %5, ptr noundef nonnull %call7.i) #10
  %call.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %5, i64 noundef %start, i64 noundef %last) #10
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp.not22.i, label %if.end.cleanup_crit_edge, label %if.end.while.body.i7_crit_edge

if.end.while.body.i7_crit_edge:                   ; preds = %if.end
  br label %while.body.i7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i7:                                    ; preds = %for.end.i.while.body.i7_crit_edge, %if.end.while.body.i7_crit_edge
  %call23.i = phi ptr [ %call.i8, %for.end.i.while.body.i7_crit_edge ], [ %call21.i, %if.end.while.body.i7_crit_edge ]
  %size.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call23.i, i32 0, i32 4
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size.i, align 8
  %shr.i = lshr i64 %11, 12
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp4.not18.i = icmp eq i32 %conv.i, 0
  br i1 %cmp4.not18.i, label %while.body.i7.for.end.i_crit_edge, label %for.body.lr.ph.i

while.body.i7.for.end.i_crit_edge:                ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body.i7
  %addr.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call23.i, i32 0, i32 5
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %addr.i, align 8
  %shr2.i = lshr i64 %13, 12
  %conv3.i = trunc i64 %shr2.i to i32
  %perm.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call23.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pinned.020.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %pfn.019.i = phi i32 [ %conv3.i, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %pfn.019.i, %15
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %sub.i
  %16 = ptrtoint ptr %perm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %perm.i, align 8
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @set_page_dirty_lock(ptr noundef %add.ptr.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  tail call void @unpin_user_page(ptr noundef %add.ptr.i) #10
  %inc.i = add i32 %pfn.019.i, 1
  %dec.i = add i32 %pinned.020.i, -1
  %cmp4.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %while.body.i7.for.end.i_crit_edge
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.i, align 8
  %shr8.i = lshr i64 %19, 12
  %20 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v, align 8
  %pinned_vm.i = getelementptr inbounds %struct.anon.10, ptr %21, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pinned_vm.i, i32 noundef 8) #10
  tail call void @generic_atomic64_sub(i64 noundef %shr8.i, ptr noundef %pinned_vm.i) #10
  tail call void @vhost_iotlb_map_free(ptr noundef %5, ptr noundef nonnull %call23.i) #10
  %call.i8 = tail call ptr @vhost_iotlb_itree_first(ptr noundef %5, i64 noundef %start, i64 noundef %last) #10
  %cmp.not.i9 = icmp eq ptr %call.i8, null
  br i1 %cmp.not.i9, label %for.end.i.cleanup_crit_edge, label %for.end.i.while.body.i7_crit_edge

for.end.i.while.body.i7_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i7

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_map_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !49, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_vhost_vdpa__367_1216_vhost_vdpa_init6, !1, !"__initcall__kmod_vhost_vdpa__367_1216_vhost_vdpa_init6", i1 false, i1 false}
!1 = !{!"../drivers/vhost/vdpa.c", i32 1216, i32 1}
!2 = !{ptr @__exitcall_vhost_vdpa_exit, !3, !"__exitcall_vhost_vdpa_exit", i1 false, i1 false}
!3 = !{!"../drivers/vhost/vdpa.c", i32 1223, i32 1}
!4 = !{ptr @__UNIQUE_ID_version368, !5, !"__UNIQUE_ID_version368", i1 false, i1 false}
!5 = !{!"../drivers/vhost/vdpa.c", i32 1225, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file369, !11, !"__UNIQUE_ID_file369", i1 false, i1 false}
!11 = !{!"../drivers/vhost/vdpa.c", i32 1226, i32 1}
!12 = !{ptr @__UNIQUE_ID_license370, !11, !"__UNIQUE_ID_license370", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author371, !14, !"__UNIQUE_ID_author371", i1 false, i1 false}
!14 = !{!"../drivers/vhost/vdpa.c", i32 1227, i32 1}
!15 = !{ptr @__UNIQUE_ID_description372, !16, !"__UNIQUE_ID_description372", i1 false, i1 false}
!16 = !{!"../drivers/vhost/vdpa.c", i32 1228, i32 1}
!17 = !{ptr @vhost_vdpa_major, !18, !"vhost_vdpa_major", i1 false, i1 false}
!18 = !{!"../drivers/vhost/vdpa.c", i32 55, i32 14}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/vhost/vdpa.c", i32 1201, i32 5}
!21 = !{ptr @vhost_vdpa_driver, !22, !"vhost_vdpa_driver", i1 false, i1 false}
!22 = !{!"../drivers/vhost/vdpa.c", i32 1188, i32 27}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/vhost/vdpa.c", i32 1150, i32 28}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/vhost/vdpa.c", i32 53, i32 8}
!27 = !{ptr @vhost_vdpa_ida, !26, !"vhost_vdpa_ida", i1 false, i1 false}
!28 = !{ptr @vhost_vdpa_fops, !29, !"vhost_vdpa_fops", i1 false, i1 false}
!29 = !{!"../drivers/vhost/vdpa.c", i32 1093, i32 37}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/vhost/vdpa.c", i32 108, i32 3}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vhost_vdpa_setup_vq_irq._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @vhost_vdpa_setup_vq_irq._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @vhost_vdpa_vm_ops, !46, !"vhost_vdpa_vm_ops", i1 false, i1 false}
!46 = !{!"../drivers/vhost/vdpa.c", i32 1054, i32 42}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/vhost/vdpa.c", i32 577, i32 3}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2148337571}
!64 = !{i64 719484, i64 719508, i64 719529, i64 719546, i64 719563}
!65 = !{i64 2148337797}
!66 = !{!"auto-init"}
!67 = !{i64 2153200302, i64 2153200327}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 5695857}
!70 = !{i64 5696054}
!71 = !{i64 2153181287}
!72 = !{i64 2153200983, i64 2153201008}
!73 = !{i8 0, i8 2}
!74 = !{i64 2148238213, i64 2148238239, i64 2148238268, i64 2148238302, i64 2148238333, i64 2148238356}
!75 = !{i64 2156457492, i64 2156457772, i64 2156458106, i64 2156458440}
!76 = !{i64 683753, i64 683770}
!77 = !{i64 2148717563, i64 2148717568, i64 2148717581, i64 2148717625, i64 2148717659, i64 2148717680}
!78 = !{i64 2148235748, i64 2148235774, i64 2148235803, i64 2148235837, i64 2148235868, i64 2148235891}
